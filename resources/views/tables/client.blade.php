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
    <title>Client</title>

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
                    <h1 class="h3 mb-2 text-gray-800">Client</h1>
                    <button class="btn btn-success mb-2" data-toggle="modal" data-target="#agregarModal">Agregar</button>



                    <div class="modal fade" id="agregarModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Agregar cliente</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="{{route("create.client")}}" method="POST">
                                        @csrf
                                        <div class="mb-3">
                                            <label for="idDistrito" class="form-label">idDistrito</label>
                                            <input type="text" class="form-control rounded" id="idDistrito"
                                                name="idDistrito">
                                        </div>
                                        <div class="mb-3">
                                            <label for="idEstadoCivil" class="form-label">idEstadoCivil</label>
                                            <input type="text" class="form-control rounded" id="idEstadoCivil"
                                                name="idEstadoCivil">
                                        </div>
                                        <div class="mb-3">
                                            <label for="nombre" class="form-label">Nombre</label>
                                            <input type="text" class="form-control rounded" id="nombre"
                                                name="nombre">
                                        </div>
                                        <div class="mb-3">
                                            <label for="apellido" class="form-label">Apellido</label>
                                            <input type="text" class="form-control rounded" id="apellido"
                                                name="apellido">
                                        </div>
                                        <div class="mb-3">
                                            <label for="dui" class="form-label">DUI</label>
                                            <input type="text" class="form-control rounded" id="dui"
                                                name="dui">
                                        </div>
                                        <div class="mb-3">
                                            <label for="numeroCelular" class="form-label">Numero Celular</label>
                                            <input type="text" class="form-control rounded" id="numeroCelular"
                                                name="numeroCelular">
                                        </div>
                                        <div class="mb-3">
                                            <label for="numeroFijo" class="form-label">Numero Fijo</label>
                                            <input type="text" class="form-control rounded" id="numeroFijo"
                                                name="numeroFijo">
                                        </div>
                                        <div class="mb-3">
                                            <label for="correo" class="form-label">Correo</label>
                                            <input type="text" class="form-control rounded" id="correo"
                                                name="correo">
                                        </div>
                                        <div class="mb-3">
                                            <label for="fechaNacimiento" class="form-label">Fecha De Nacimiento</label>
                                            <input type="text" class="form-control rounded" id="fechaNacimiento"
                                                name="fechaNacimiento">
                                        </div>
                                        <div class="mb-3">
                                            <label for="ingresos" class="form-label">Ingresos</label>
                                            <input type="text" class="form-control rounded" id="ingresos"
                                                name="ingresos">
                                        </div>
                                        <div class="mb-3">
                                            <label for="direccion" class="form-label">Direccion</label>
                                            <input type="text" class="form-control rounded" id="direccion"
                                                name="direccion">
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
                                        <th>Distrito</th>
                                        <th>Estado Civil</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>DUI</th>
                                        <th>Número Celular</th>
                                        <th>Número Fijo</th>
                                        <th>Correo</th>
                                        <th>Fecha Nacimiento</th>
                                        <th>Ingresos</th>
                                        <th>Dirección</th>
                                        <th>Acciones</th>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        <th>Distrito</th>
                                        <th>Estado Civil</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>DUI</th>
                                        <th>Número Celular</th>
                                        <th>Número Fijo</th>
                                        <th>Correo</th>
                                        <th>Fecha Nacimiento</th>
                                        <th>Ingresos</th>
                                        <th>Dirección</th>
                                        <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        @foreach ($datos as $item)
                                            <tr>
                                            <td>{{ $item->Nombre_Distrito }}</td>
                                            <td>{{ $item->Nombre_EstadoCivil }}</td>
                                            <td>{{ $item->nombre }}</td>
                                            <td>{{ $item->apellido }}</td>
                                            <td>{{ $item->dui }}</td>
                                            <td>{{ $item->numeroCelular }}</td>
                                            <td>{{ $item->numeroFijo }}</td>
                                            <td>{{ $item->correo }}</td>
                                            <td>{{ $item->fechaNacimiento }}</td>
                                            <td>{{ $item->ingresos }}</td>
                                            <td>{{ $item->direccion }}</td>
                                                <td>
                                                    <a href="" class="btn btn-warning btn-sm" data-toggle="modal"
                                                        data-target="#editarModal{{$item->idCliente}}"><i
                                                            class="fa-regular fa-pen-to-square"></i></a>
                                                    <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarModal{{$item->idCliente}}">
                                                     <i class="fa-regular fa-trash-can"></i>
                                                     </a>
                                                </td>

                                                <div class="modal fade" id="editarModal{{$item->idCliente}}" tabindex="-1" role="dialog"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Editar Cliente</h5>
                                                                <button class="close" type="button"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="{{ route("update.client", $item->idCliente) }}" method="POST">
                                                                    @csrf
                                                                    <input type="hidden" name="idCliente" id="idCliente" value="{{ $item->idCliente }}">
                                                                    <div class="mb-3">
                                                                        <label for="idDistrito" class="form-label">ID Distrito</label>
                                                                        <input type="text" class="form-control rounded" id="idDistrito" name="idDistrito" value="{{ $item->idDistrito }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="idEstadoCivil" class="form-label">ID Estado Civil</label>
                                                                        <input type="text" class="form-control rounded" id="idEstadoCivil" name="idEstadoCivil" value="{{ $item->idEstadoCivil }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="nombre" class="form-label">Nombre</label>
                                                                        <input type="text" class="form-control rounded" id="nombre" name="nombre" value="{{ $item->nombre }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="apellido" class="form-label">Apellido</label>
                                                                        <input type="text" class="form-control rounded" id="apellido" name="apellido" value="{{ $item->apellido }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="dui" class="form-label">DUI</label>
                                                                        <input type="text" class="form-control rounded" id="dui" name="dui" value="{{ $item->dui }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="numeroCelular" class="form-label">Número Celular</label>
                                                                        <input type="text" class="form-control rounded" id="numeroCelular" name="numeroCelular" value="{{ $item->numeroCelular }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="numeroFijo" class="form-label">Número Fijo</label>
                                                                        <input type="text" class="form-control rounded" id="numeroFijo" name="numeroFijo" value="{{ $item->numeroFijo }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="correo" class="form-label">Correo</label>
                                                                        <input type="text" class="form-control rounded" id="correo" name="correo" value="{{ $item->correo }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                                                                        <input type="text" class="form-control rounded" id="fechaNacimiento" name="fechaNacimiento" value="{{ $item->fechaNacimiento }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="ingresos" class="form-label">Ingresos</label>
                                                                        <input type="text" class="form-control rounded" id="ingresos" name="ingresos" value="{{ $item->ingresos }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="direccion" class="form-label">Dirección</label>
                                                                        <input type="text" class="form-control rounded" id="direccion" name="direccion" value="{{ $item->direccion }}">
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
                                                <div class="modal fade" id="eliminarModal{{$item->idCliente}}" tabindex="-1" role="dialog"
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
                                                            ¿Estás seguro de que quieres eliminar este cliente?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                            <a href="{{route("delete.client", $item->idCliente)}}" class="btn btn-danger">Eliminar</a>
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
