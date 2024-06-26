<!-- resources/views/layouts/sidebar.blade.php -->
<script src="https://kit.fontawesome.com/923c926195.js" crossorigin="anonymous"></script>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon">
            <i class="fas fa-database"></i>
        </div>
        <div class="sidebar-brand-text mx-3">MySQL Administrator</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="/">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <!-- Nav Item - Pages Collapse Menu -->


    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
            aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fa-solid fa-diagram-project"></i>
            <span>Diagram</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/diagram">Diagram</a>

            </div>
        </div>
    </li>

    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTables"
            aria-expanded="true" aria-controls="collapseTables">
            <i class="fas fa-fw fa-table"></i>
            <span>Tables</span></a>
        </a>
        <div id="collapseTables" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/typeOfAccounts">Type of Accounts</a>
                <a class="collapse-item" href="/billingCycle">Billing Cycle</a>
                <a class="collapse-item" href="/client">Client</a>
                <a class="collapse-item" href="/accounts">Accounts</a>
                <a class="collapse-item" href="/department">Department</a>
                <a class="collapse-item" href="/district">District</a>
                <a class="collapse-item" href="/maritalStatus">Marital Status</a>
                <a class="collapse-item" href="/historyIncome">History Income</a>
                <a class="collapse-item" href="/municipality">Municipality</a>
                <a class="collapse-item" href="/payments">Payments</a>
                <a class="collapse-item" href="/loans">Loans</a>
                <a class="collapse-item" href="/anonymoussuggestions">Anonymous Suggestions</a>
                <a class="collapse-item" href="/creditscards">Credits Cards</a>
                <a class="collapse-item" href="/typePayments">Type Payments</a>
                <a class="collapse-item" href="/TypeTransactions">Type Transactions</a>
                <a class="collapse-item" href="/Transactions">Transactions</a>

            </div>
        </div>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>

@include('scripts')
