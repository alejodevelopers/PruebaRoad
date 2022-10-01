<div>
    <x-slot name="header">
        <h2 class="text-center text-purple-600">CRUD Para prueba RodApp</h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6  lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg px-4 py-4">
                @if (session()->has('message'))
                <div class="bg-teal-100 border-t-4 border-teal-500 rounded-b text-teal-900 px-4 py-3 shadow-md my-3"
                    role="alert">
                    <div class="flex">
                        <div>
                            <p class="text-sm">{{ session('message') }}</p>
                        </div>
                    </div>
                </div>
                @endif
                <div class=" flex bg-withe px-4 py-3  f sm:px-6">
                    <button wire:click="create()" class="bg-blue-600 text-white px-4 hover:bg-green-700 rounded-md ">
                        <i class="fas fa-user-plus"></i>
                    </button>
                    <input type="text" wire:model="search"
                        class=" form-input rounded-md ml-2 border-gray-200  w-full block "
                        placeholder="Buscar Estudiantes">

                    <select wire:model="pages" class="rounded-md border-none ml-2 focus:border-none " name="" id="">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                </div>
                @if($isModalOpen)
                @include('livewire.modal')
                @endif
                <table class="table-fixed  w-full">
                    <thead>
                        <tr class="bg-gray-800 text-gray-100 uppercase text-sm leading-normal">
                            <th class="py-3 px-6 text-left">Options</th>
                            @foreach ($columns as $column)
                            <th class="py-3 px-6 text-left" wire:click="sortable('{{$column}}')">
                                <button>
                                    {{$column}}
                                    <i class="fas fa-arrow-down"></i>
                                    @if ($sortColumn==$column)
                                    @if ($sortDirection)
                                    <i class="fas {{$sortDirection =='asc' ? 'fa-arrow-up' :'fa-arrow-down' }}"></i>
                                    @endif
                                    @endif
                                </button>
                            </th>
                            @endforeach

                        </tr>
                    </thead>
                    <tbody class="text-gray-600 text-sm font-light">
                        @foreach($students as $student)
                        <tr class="border-b border-gray-200 hover:bg-gray-100">
                            <td class="border px-4 py-2 text-left">
                                <button wire:click="edit({{ $student->id }})"
                                    class="bg-purple-600 p-2 m-1  font-semibold text-white inline-flex items-center space-x-2 rounded">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button wire:click="delete({{ $student->id }})"
                                    class="bg-red-500 p-2 m-1  font-semibold text-white inline-flex items-center space-x-2 rounded">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </td>
                            <td>
                                <div class="w-full flex justify-center">
                                    <img src="{{Storage::url($student->photo)}}"
                                        class="shadow-xl rounded-full align-middle border-none m-2 lg:-ml-16 max-w-[40px]" />
                                </div>
                            </td>
                            <td class=" border px-4 py-2 text-left">{{ $student->name }}</td>
                            <td class=" border px-4 py-2 text-left">{{ $student->note}}</td>
                            <td class=" border text-center "> <span
                                    class="{{$student->status=='Aprobado'?'bg-green-500 text-gray-800':'bg-red-500 text-white'}} py-1 px-2 rounded-lg">{{
                                    $student->status}}</span></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class=" my-4 mx-2">
                    {{$students->links()}}
                </div>
            </div>
        </div>
    </div>
</div>