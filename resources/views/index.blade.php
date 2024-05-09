<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MySQL Administrator</title>

    <link rel="shortcut icon" href="{{ asset('admin_assets/img/icon.png') }}" type="image/x-icon">
    <!-- Custom fonts for this template-->
    <link href="{{ asset('admin_assets/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{ asset('admin_assets/css/sb-admin-2.min.css') }}" rel="stylesheet">

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

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">

                    </div>

                    <!-- Content Row -->
                    <div class="row">


                    </div>
                    <div>
                        <h1 style="text-align: center;">Welcome</h1>
                        <img style="display: block; margin: auto; width: 1000px; height: auto; border-radius: 10px;" src="https://th.bing.com/th/id/R.9ef7cfbe82a81668de5e0ee0718a4a16?rik=cK91e3bCRgB2vA&riu=http%3a%2f%2fmuniorotina.go.cr%2fimages%2f2020%2f03%2f14%2fsentisis-connector.gif&ehk=sXWADPg1qN%2f%2bJRXP03FKgoU8FsSeXwHAFKjetXEXVdI%3d&ri">




                    </div>





                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <script>
        setInterval(function() {
            $.ajax({
                url: "{{ route('check-connection') }}",
                type: 'GET',
                success: function(response) {
                    if (response.connected) {
                        $('#connection-status').html('<i class="fas fa-signal fa-2x text-green-300" style="color: #1cc88a;"></i>');
                        $('#connection-text').text('Online');
                    } else {
                        $('#connection-status').html('<i class="fas fa-ban fa-2x text-gray-300"></i>');
                        $('#connection-text').text('Offline');
                    }
                },
                error: function() {
                    $('#connection-status').html('<i class="fas fa-ban fa-2x text-gray-300"></i>');
                    $('#connection-text').text('Offline');
                }
            });
        }, 2000);
    </script>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('admin_assets/vendor/chart.js/Chart.min.js') }}"></script>
<!-- Page level custom scripts -->

    <script src="{{ asset('admin_assets/js/demo/incomingTrafficChart.js') }}"></script>
    <script src="{{ asset('admin_assets/js/demo/chart-pie-demo.js') }}"></script>


</body>

</html>
