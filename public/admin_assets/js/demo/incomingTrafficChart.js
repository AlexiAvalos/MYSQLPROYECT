// Datos de ejemplo (tráfico de red entrante en Bytes/s)
const incomingTrafficData = [1, 1, 2.5, 1, 0.5,3.5, 0.4, 2, 1.7, 1.6, 1.7, 1.8, 1.5];
// Generar etiquetas para el eje X (intervalos de 1 segundo)
const labels = Array.from({ length: incomingTrafficData.length }, (_, i) => (i + 1) + 's');

// Configuración del gráfico
const config = {
    type: 'line',
    data: {
        labels: labels,
        datasets: [{
            label: 'Incoming Network Traffic (Bytes/Second)',
            data: incomingTrafficData,
            borderColor: 'green',
            borderWidth: 1,
            fill: false
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Bytes/s'
                }
            },
            x: {
                title: {
                    display: true,
                    text: 'Tiempo (s)'
                }
            }
        }
    }
};

// Inicializar el gráfico
const myChart = new Chart(
    document.getElementById('incomingTrafficChart'),
    config
);