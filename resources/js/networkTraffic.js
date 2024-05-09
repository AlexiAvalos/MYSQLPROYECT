document.addEventListener('DOMContentLoaded', function() {
    fetch('/network-traffic')
        .then(response => response.json())
        .then(data => {
            const networkTrafficElement = document.getElementById('network-traffic');
            networkTrafficElement.textContent = `Incoming Network Traffic: ${data.incoming_traffic} bits/second`;
        })
        .catch(error => console.error('Error:', error));
});
