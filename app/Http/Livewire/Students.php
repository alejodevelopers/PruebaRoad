<?php

namespace App\Http\Livewire;

use App\Models\Student;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Storage;

class Students extends Component
{
    use WithPagination;
    use WithFileUploads;

    public $pages = '5';
    protected $queryString = ['search' => ['except' => '']];

    public $sortColumn = 'id';
    public $sortDirection = 'asc';


    public $search;

    public $columns = [

        'Photo',
        'Name',
        'Note',
        'Status'
    ];

    public $name, $identification, $student, $age, $student_id, $description, $note, $photo, $image, $status;
    public $isModalOpen = 0;
    public function render()
    {

        return view('livewire.students', ['students' => Student::where('name', 'LIKE', "%{$this->search}%")
            ->orderBy($this->sortColumn, $this->sortDirection)
            ->paginate($this->pages)]);
    }

    public function sortable($column)
    {
        $this->sortColumn = $column;
        $this->sortDirection = $this->sortDirection == 'asc' ? 'desc' : 'asc';
    }


    public function create()
    {
        $this->resetCreateForm();
        $this->openModal();
    }
    public function openModal()
    {
        $this->isModalOpen = true;
        $this->photo = '';
    }
    public function closeModal()
    {
        $this->isModalOpen = false;
    }
    private function resetCreateForm()
    {
        $this->name = '';
        $this->identification = '';
        $this->photo = '';
        $this->age = '';
        $this->description = '';
        $this->note = '';
        $this->status = '';
    }

    public function store()
    {
        $this->validate([
            'name' => 'required',
            'identification' => 'required',
            'photo' => 'required|image|max:2048',
            'age' => 'required',
            'description' => 'required',
            'note' => 'required',
        ]);

        if ($this->student->photo) {
            Storage::delete($this->student->photo);

            $this->image = $this->photo->store('public/profile_photo');
        } else {
            $this->image = $this->photo->store('public/profile_photo');
        }

        if ($this->note <= 3) {
            $this->status = 'Reprobado';
        } else {
            $this->status = 'Aprobado';
        }

        Student::updateOrCreate(['id' => $this->student_id], [
            'name' => $this->name,
            'photo' => $this->image,
            'identification' => $this->identification,
            'age' => $this->age,
            'description' => $this->description,
            'note' => $this->note,
            'status' => $this->status
        ]);
        session()->flash('message', $this->student_id ? 'Student updated.' : 'Student created.');
        $this->closeModal();
        $this->resetCreateForm();
    }
    public function edit($id)
    {
        $this->student = Student::findOrFail($id);
        $this->student_id = $id;
        $this->name = $this->student->name;
        $this->photo = $this->student->image;
        $this->identification = $this->student->identification;
        $this->age = $this->student->age;
        $this->description = $this->student->description;
        $this->note = $this->student->note;
        $this->status = $this->student->status;
        $this->openModal();
    }

    public function delete($id)
    {
        Student::find($id)->delete();
        session()->flash('message', 'Studen deleted.');
    }
}
