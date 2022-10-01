<div>

</div>

<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-900 opacity-95"></div>
        </div>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">


            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="mb-4">
                        <label for="name" class="block text-gray-700 text-sm font-bold mb-2">Name:</label>
                        <input type="text"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="name" placeholder="Enter Name" wire:model="name">
                        @error('name') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>




                    @if($photo)
                    <img class="mb-4 mx-auto" height="auto" width="200px" src="{{ $photo->temporaryUrl()  }}">
                    @endif
                    @if($student->photo)
                    <img class="mb-4 mx-auto" height="auto" width="200px" src="{{ Storage::url($student->photo)  }}">
                    @else
                    <div class="mb-4 mx-auto ">
                        <small class="bg-red-400 text-center rounded-md  py-2 px-4 text-white ">Este estudiante no tiene
                            foto de perfil</small>
                    </div>
                    @endif


                    <div class="mb-4">
                        <div wire:loading wire:target="photo" class="mb-4 mx-auto ">
                            <small class="bg-yellow-500 text-center rounded-md  py-2 px-4 text-gray-100">
                                <i class="fas fa-exclamation-triangle"></i> Cargando Imagen!</small>
                        </div>
                    </div>

                    <label for="">Add profile Photo</label>
                    <input type="file" wire:model="photo">


                    <div class="mb-4">
                        <label for="age" class="block text-gray-700 text-sm font-bold mb-2">Age:</label>
                        <input type="number"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="age" placeholder="Enter age" wire:model="age">
                        @error('age') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                    <div class="mb-4">
                        <label for="identification"
                            class="block text-gray-700 text-sm font-bold mb-2">Identification:</label>
                        <input type="number"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="identification" placeholder="Enter identification" wire:model="identification">
                        @error('identification') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>

                    <div class="mb-4">
                        <label for="description" class="block text-gray-700 text-sm font-bold mb-2">Description:</label>
                        <textarea rows="4"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="description" wire:model="description" placeholder="Enter description"></textarea>
                        @error('description') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                    <div class="mb-4">
                        <label for="note" class="block text-gray-700 text-sm font-bold mb-2">note</label>
                        <input type="number"
                            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                            id="note" placeholder="Enter note" wire:model="note">
                        @error('note') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                </div>

                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <span class="flex w-full rounded-md shadow-sm sm:ml-3 sm:w-auto">
                        <button wire:click.prevent="store()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-red-600 text-base leading-6 font-bold text-white shadow-sm hover:bg-red-700 focus:outline-none focus:border-green-700 focus:shadow-outline-green transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Store
                        </button>
                    </span>
                    <span class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:w-auto">
                        <button wire:click="closeModal()" type="button"
                            class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-bold text-gray-700 shadow-sm hover:text-gray-700 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                            Close
                        </button>
                    </span>
                </div>

            </form>
        </div>
    </div>
</div>