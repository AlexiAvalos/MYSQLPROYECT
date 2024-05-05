<?php

use App\Http\Controllers\TipoCuentaController;
use App\Http\Controllers\CicloFacturacionController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\CuentasController;
use App\Http\Controllers\DepartamentoController;
use App\Http\Controllers\DistritoController;
use App\Http\Controllers\EstadoCivilController;
use App\Http\Controllers\HistorialIngresoController;
use App\Http\Controllers\MunicipioController;
use App\Http\Controllers\PagosController;
use App\Http\Controllers\PrestamosController;
use App\Http\Controllers\SugerenciasAnonimasController;
use App\Http\Controllers\TarjetasCreditoController;
use App\Http\Controllers\TipoPagosController;
use App\Http\Controllers\TipoTransController;
use App\Http\Controllers\TransaccionController;


use Illuminate\Support\Facades\Route;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
    //hola
});

Route::get('/tables', function () {
    return view('tables.tables');
});


Route::get('/typeOfAccounts', [TipoCuentaController::class, "index"]);

Route::post('/create-typeAccount', [TipoCuentaController::class, "create"])->name('create.typeAccount');
Route::post('/update-typeAccount/{id}', [TipoCuentaController::class, "update"])->name('update.typeAccount');

Route::get('/delete-typeAccount/{id}', [TipoCuentaController::class, "destroy"])->name('delete.typeAccount');

// Ciclo de Facturacion
Route::get('/billingCycle', [CicloFacturacionController::class, "index"]);

Route::post('/create-billingCycle', [CicloFacturacionController::class, "create"])->name('create.billingCycle');
Route::post('/update-billingCycle/{id}', [CicloFacturacionController::class, "update"])->name('update.billingCycle');

Route::get('/delete-billingCycle/{id}', [CicloFacturacionController::class, "destroy"])->name('delete.billingCycle');

//Cliente
Route::get('/client', [ClienteController::class, "index"]);

Route::post('/create-client', [ClienteController::class, "create"])->name('create.client');
Route::post('/update-client/{id}', [ClienteController::class, "update"])->name('update.client');

Route::get('/delete-client/{id}', [ClienteController::class, "destroy"])->name('delete.client');

//Cuentas
Route::get('/accounts', [CuentasController::class, "index"]);

Route::post('/create-accounts', [CuentasController::class, "create"])->name('create.accounts');
Route::post('/update-accounts/{id}', [CuentasController::class, "update"])->name('update.accounts');

Route::get('/delete-accounts/{id}', [CuentasController::class, "destroy"])->name('delete.accounts');

//Departamentos
Route::get('/department', [DepartamentoController::class, "index"]);

Route::post('/create-department', [DepartamentoController::class, "create"])->name('create.department');
Route::post('/update-department/{id}', [DepartamentoController::class, "update"])->name('update.department');

Route::get('/delete-department/{id}', [DepartamentoController::class, "destroy"])->name('delete.department');

//Distritos
Route::get('/district', [DistritoController::class, "index"]);

Route::post('/create-district', [DistritoController::class, "create"])->name('create.district');
Route::post('/update-district/{id}', [DistritoController::class, "update"])->name('update.district');

Route::get('/delete-district/{id}', [DistritoController::class, "destroy"])->name('delete.district');

//Estado Civil
Route::get('/maritalStatus', [EstadoCivilController::class, "index"]);

Route::post('/create-maritalStatus', [EstadoCivilController::class, "create"])->name('create.maritalStatus');
Route::post('/update-maritalStatus/{id}', [EstadoCivilController::class, "update"])->name('update.maritalStatus');

Route::get('/delete-maritalStatus/{id}', [EstadoCivilController::class, "destroy"])->name('delete.maritalStatus');

//Historial Ingreso
Route::get('/historyIncome', [HistorialIngresoController::class, "index"]);

Route::post('/create-historyIncome', [HistorialIngresoController::class, "create"])->name('create.historyIncome');
Route::post('/update-historyIncome/{id}', [HistorialIngresoController::class, "update"])->name('update.historyIncome');

Route::get('/delete-historyIncome/{id}', [HistorialIngresoController::class, "destroy"])->name('delete.historyIncome');

//Municipio
Route::get('/municipality', [MunicipioController::class, "index"]);

Route::post('/create-municipality', [MunicipioController::class, "create"])->name('create.municipality');
Route::post('/update-municipality/{id}', [MunicipioController::class, "update"])->name('update.municipality');

Route::get('/delete-municipality/{id}', [MunicipioController::class, "destroy"])->name('delete.municipality');

//Pagos
Route::get('/payments', [PagosController::class, "index"]);

Route::post('/create-payments', [PagosController::class, "create"])->name('create.payments');
Route::post('/update-payments/{id}', [PagosController::class, "update"])->name('update.payments');

Route::get('/delete-payments/{id}', [PagosController::class, "destroy"])->name('delete.payments');

//Prestamos
Route::get('/loans', [PrestamosController::class, "index"]);

Route::post('/create-loans', [PrestamosController::class, "create"])->name('create.loans');
Route::post('/update-loans/{id}', [PrestamosController::class, "update"])->name('update.loans');

Route::get('/delete-loans/{id}', [PrestamosController::class, "destroy"])->name('delete.loans');

//Sugerencias Anonimas
Route::get('/anonymoussuggestions', [SugerenciasAnonimasController::class, "index"]);

Route::post('/create-anonymoussuggestions', [SugerenciasAnonimasController::class, "create"])->name('create.anonymoussuggestions');
Route::post('/update-anonymoussuggestions/{id}', [SugerenciasAnonimasController::class, "update"])->name('update.anonymoussuggestions');

Route::get('/delete-anonymoussuggestions/{id}', [SugerenciasAnonimasController::class, "destroy"])->name('delete.anonymoussuggestions');

//Tarjetas de Creditos
Route::get('/creditscards', [TarjetasCreditoController::class, "index"]);

Route::post('/create-creditscards', [TarjetasCreditoController::class, "create"])->name('create.creditCards');
Route::post('/update-creditscards/{id}', [TarjetasCreditoController::class, "update"])->name('update.creditCards');

Route::get('/delete-creditscards/{id}', [TarjetasCreditoController::class, "destroy"])->name('delete.creditCards');

// Tipo Pago
Route::get('/typePayments', [TipoPagosController::class, "index"]);

Route::post('/create-typePayments', [TipoPagosController::class, "create"])->name('create.typePayments');
Route::post('/update-typePayments/{id}', [TipoPagosController::class, "update"])->name('update.typePayments');

Route::get('/delete-typePayments/{id}', [TipoPagosController::class, "destroy"])->name('delete.typePayments');

//TipoTRANS
Route::get('/TypeTransactions', [TipoTransController::class, "index"]);

Route::post('/create-TypeTransactions', [TipoTransController::class, "create"])->name('create.TypeTrans');
Route::post('/update-TypeTransactions/{id}', [TipoTransController::class, "update"])->name('update.TypeTrans');

Route::get('/delete-TypeTransactions/{id}', [TipoTransController::class, "destroy"])->name('delete.TypeTrans');

//Trans TransaccionController
Route::get('/Transactions', [TransaccionController::class, "index"]);

Route::post('/create-Transactions', [TransaccionController::class, "create"])->name('create.Transactions');
Route::post('/update-Transactions/{id}', [TransaccionController::class, "update"])->name('update.Transactions');

Route::get('/delete-Transactions/{id}', [TransaccionController::class, "destroy"])->name('delete.Transactions');