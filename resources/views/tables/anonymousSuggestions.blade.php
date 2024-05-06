<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="{{ asset('admin_assets/img/icon.png') }}" type="image/x-icon">
    <script src="https://kit.fontawesome.com/923c926195.js" crossorigin="anonymous"></script>
    <title>Anonymous suggestions</title>

    <!-- Custom fonts for this template -->
    <link href="{{ asset('admin_assets/vendor/fontawesome-free/css/all.min.css') }} " rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{{ asset('admin_assets/css/sb-admin-2.min.css') }}" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="{{ asset('admin_assets/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">

</head>

<body id="page-top">




    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        @include('layouts.sidebar')
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                @include('layouts.navbar')
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    @if (session("Correcto"))
                    <div class="alert alert-success">{{session("Correcto")}}</div>
                    @endif

                    @if (session("Incorrecto"))
                    <div class="alert alert-danger">{{session("Incorrecto")}}</div>
                    @endif
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Anonymous suggestions</h1>
                    <button class="btn btn-success mb-2" data-toggle="modal" data-target="#agregarModal">Agregar</button>



                    <div class="modal fade" id="agregarModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Agregar Sugerencia Anonima</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="{{route("create.anonymoussuggestions")}}" method="POST">
                                        @csrf
                                        <div class="mb-3">
                                            <label for="asunto" class="form-label">Asunto</label>
                                            <input type="text" class="form-control rounded" id="asunto"
                                                name="asunto">
                                        </div>
                                        <div class="mb-3">
                                            <label for="descripcion" class="form-label">Descripcion</label>
                                            <input type="text" class="form-control rounded" id="descripcion"
                                                name="descripcion">
                                        </div>
                                        
                                        
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" type="button"
                                                data-dismiss="modal">Cancelar</button>
                                            <button class="btn btn-primary" type="submit">Guardar cambios</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- DataTales Example -->
                    <div class="card shadow">

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Asunto</th>
                                            <th>Descripcion</th>
                                            <th>Acciones</th>
                                          
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Asunto</th>
                                            <th>Descripcion</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        @foreach ($datos as $item)
                                            <tr>
                                                <th>{{ $item->asunto }}</th>
                                                <th>{{ $item->descripcion }}</th>
                                                
                                               
                                                <td>
                                                    <a href="" class="btn btn-warning btn-sm" data-toggle="modal"
                                                        data-target="#editarModal{{$item->idSugerencia}}"><i
                                                            class="fa-regular fa-pen-to-square"></i></a>
                                                    <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarModal{{$item->idSugerencia}}">
                                                     <i class="fa-regular fa-trash-can"></i>
                                                    </a>
                                                </td>

                                                <div class="modal fade" id="editarModal{{$item->idSugerencia}}" tabindex="-1" role="dialog"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Editar
                                                                    Sugerencias</h5>
                                                                <button class="close" type="button"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="{{ route("update.anonymoussuggestions", $item->idSugerencia) }}" method="POST">
                                                                    @csrf
                                                                    <input type="hidden" name="idSugerencia" id="idSugerencia" value="{{ $item->idSugerencia }}">
                                                                    <div class="mb-3">
                                                                        <label for="asunto" class="form-label">Asunto</label>
                                                                        <input type="text" class="form-control rounded" id="asunto" name="asunto" value="{{ $item->asunto }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="descripcion" class="form-label">Descripcion</label>
                                                                        <input type="text" class="form-control rounded" id="descripcion" name="descripcion" value="{{ $item->descripcion }}">
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                                        <button class="btn btn-primary" type="submit">Guardar cambios</button>
                                                                    </div>
                                                                </form>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal fade" id="eliminarModal{{$item->idSugerencia}}" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Confirmar Eliminación</h5>
                                                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">×</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            ¿Estás seguro de que quieres eliminar esta sugerencia?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                            <a href="{{route("delete.anonymoussuggestions", $item->idSugerencia)}}" class="btn btn-danger">Eliminar</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <script>
        var res=function(){
            var not=confirm("Estas seguro de eliminar este registro?");
            return not;
        }
    </script> 

    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('admin_assets/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('admin_assets/') }}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('admin_assets/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('admin_assets/js/sb-admin-2.min.js') }}"></script>

    <!-- Page level plugins -->
    <script src="{{ asset('admin_assets/vendor/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('admin_assets/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Page level custom scripts -->
    <script src="{{ asset('admin_assets/js/demo/datatables-demo.js') }}"></script>

</body>

</html>
