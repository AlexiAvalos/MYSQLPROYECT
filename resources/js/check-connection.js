$(document).ready(function() {
    setInterval(function() {
        $.ajax({
            url: "{{ route('check-connection') }}",
            type: 'GET',
            success: function(response) {
                if (response.connected) {
                    $('#connection-status').html('<i class="fas fa-signal fa-2x text-green-300" style="color: #1cc88a;"></i>');
                } else {
                    $('#connection-status').html('<i class="fas fa-ban fa-2x text-gray-300"></i>');
                }
            },
            error: function() {
                $('#connection-status').html('<i class="fas fa-ban fa-2x text-gray-300"></i>');
            }
        });
    }, 3000); // Realiza la petición cada 3 segundos (ajusta este valor según tus necesidades)
});
