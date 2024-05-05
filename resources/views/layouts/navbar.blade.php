<!-- resources/views/layouts/navbar.blade.php -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
    </button>

    <!-- Topbar Search debe buscarse la inplementacion -->
    <form id="instanceForm" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"
        onsubmit="return submitForm()">
        <div class="input-group">
            <select class="form-control bg-light border-0 small" id="selectInstance" onchange="switchInstances()">
                <option value="" disabled selected>Seleccione una instancia</option>
                <option value="firstInstance">MYSQLPRODUCTION</option>
                <option value="secondInstance">MYSQLMIRROR</option>
                <option value="thirdInstance">MYSQLWITNESS</option>
            </select>
        </div>
    </form>

    <!-- Topbar Navbar -->
    <ul class="navbar-nav ml-auto">

        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
        <li class="nav-item dropdown no-arrow d-sm-none">
            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
            </a>
            <!-- Dropdown - Messages -->
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                            aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </li>


        <div class="topbar-divider d-none d-sm-block"></div>

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle">
                <span id="instanceName" class="mr-2 d-none d-lg-inline text-gray-600 small">Sin instancia</span>

                <img class="img-profile rounded-circle" src="{{ asset('admin_assets/img/undraw_profile.svg') }}">
            </a>
        </li>

    </ul>

</nav>

<script src="{{ asset('admin_assets/js/switchInstances.js') }}"></script>
