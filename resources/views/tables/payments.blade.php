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
    <title>Payments</title>

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
                    <h1 class="h3 mb-2 text-gray-800">Payments</h1>
                    <button class="btn btn-success mb-2" data-toggle="modal" data-target="#agregarModal">Agregar</button>



                    <div class="modal fade" id="agregarModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Agregar Pago</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="{{route("create.payments")}}" method="POST">
                                        @csrf
                                        <div class="mb-3">
                                            <label for="idCuenta" class="form-label">ID Cuenta</label>
                                            <input type="text" class="form-control rounded" id="idCuenta"
                                                name="idCuenta">
                                        </div>
                                        <div class="mb-3">
                                            <label for="idTipoPago" class="form-label">ID Tipo Pago</label>
                                            <input type="text" class="form-control rounded" id="idTipoPago"
                                                name="idTipoPago">
                                        </div>
                                        <div class="mb-3">
                                            <label for="montoPago" class="form-label">Monto Pago</label>
                                            <input type="text" class="form-control rounded" id="montoPago"
                                                name="montoPago">
                                        </div>
                                        <div class="mb-3">
                                            <label for="fechaPago" class="form-label">Fecha Pago</label>
                                            <input type="text" class="form-control rounded" id="fechaPago"
                                                name="fechaPago">
                                        </div>
                                        <div class="mb-3">
                                            <label for="descripcion" class="form-label">Descripcion</label>
                                            <input type="text" class="form-control rounded" id="descripcion"
                                                name="descripcion">
                                        </div>
                                        <div class="mb-3">
                                            <label for="estadoPago" class="form-label">Estado Pago</label>
                                            <select class="form-select form-control rounded" id="estadoPago"
                                                name="estadoPago">
                                                <option value="1">Pendiente</option>
                                                <option value="0">Cancelado</option>
                                            </select>
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
                                            <th>Propietario de Cuenta</th>
                                            <th>ID Tipo Pago</th>
                                            <th>Monto Pago</th>
                                            <th>Fecha Pago</th>
                                            <th>Descripcion</th>
                                            <th>Estado Pago</th>
                                            <th>Acciones</th>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Propietario de Cuenta</th>
                                            <th>ID Tipo Pago</th>
                                            <th>Monto Pago</th>
                                            <th>Fecha Pago</th>
                                            <th>Descripcion</th>
                                            <th>Estado Pago</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        @foreach ($datos as $item)
                                            <tr>
                                                <th>{{ $item->nombreCliente }}</th>
                                                <th>{{ $item->nombreTipoPago }}</th>
                                                <th>{{ $item->montoPago }}</th>
                                                <th>{{ $item->fechaPago }}</th>
                                                <th>{{ $item->descripcion }}</th>
                                                <th>
                                                    @if ($item->estadoPago == 1)
                                                        Pendiente
                                                    @else
                                                        Cancelado
                                                    @endif
                                                </th>
                                               
                                                <td>
                                                    <a href="" class="btn btn-warning btn-sm" data-toggle="modal"
                                                        data-target="#editarModal{{$item->idPago}}"><i
                                                            class="fa-regular fa-pen-to-square"></i></a>
                                                    <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarModal{{$item->idPago}}">
                                                     <i class="fa-regular fa-trash-can"></i></a>
                                                    
                                                </td>

                                                <div class="modal fade" id="editarModal{{$item->idPago}}" tabindex="-1" role="dialog"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Editar
                                                                    Pagos</h5>
                                                                <button class="close" type="button"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="{{ route("update.payments", $item->idPago) }}" method="POST">
                                                                    @csrf
                                                                    <input type="hidden" name="idPago" id="idPago" value="{{ $item->idPago}}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="idCuenta" class="form-label">ID Cuenta</label>
                                                                        <input type="text" class="form-control rounded" id="idCuenta" name="idCuenta" value="{{ $item->idCuenta }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="idTipoPago" class="form-label">ID Tipo Pago</label>
                                                                        <input type="text" class="form-control rounded" id="idTipoPago" name="idTipoPago" value="{{ $item->idTipoPago }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="montoPago" class="form-label">Monto Pago</label>
                                                                        <input type="text" class="form-control rounded" id="montoPago" name="montoPago" value="{{ $item->montoPago }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="fechaPago" class="form-label">Fecha Pago</label>
                                                                        <input type="text" class="form-control rounded" id="fechaPago" name="fechaPago" value="{{ $item->fechaPago }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="descripcion" class="form-label">Descripción</label>
                                                                        <input type="text" class="form-control rounded" id="descripcion" name="descripcion" value="{{ $item->descripcion }}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="estadoPago" class="form-label">Estado Pago</label>
                                                                        <select class="form-select form-control rounded" id="estadoPago" name="estadoPago">
                                                                            <option value="1" {{ $item->estadoPago == 1 ? 'selected' : '' }}>Pendiente</option>
                                                                            <option value="0" {{ $item->estadoPago == 0 ? 'selected' : '' }}>Cancelado</option>
                                                                        </select>
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
                                                <div class="modal fade" id="eliminarModal{{$item->idPago}}" tabindex="-1" role="dialog"
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
                                                            ¿Estás seguro de que quieres eliminar este pago?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                            <a href="{{route("delete.payments", $item->idPago)}}" class="btn btn-danger">Eliminar</a>
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
