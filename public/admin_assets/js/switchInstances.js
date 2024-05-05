function switchInstances() {
    var select = document.getElementById("selectInstance");
    var texto = document.getElementById("instanceName");
    var selectedInstance = select.value;

    switch (selectedInstance) {
        case "firstInstance":
            texto.textContent = "MYSQLPRODUCTION";
            break;
        case "secondInstance":
            texto.textContent = "MYSQLMIRROR";
            break;
        case "thirdInstance":
            texto.textContent = "MYSQLWITNESS";
            break;
        default:
            texto.textContent = "Sin instancia";
    }
    
    submitForm(); 
}

function submitForm(){
    var form = document.getElementById("instanceForm");
    var formData = new FormData(form);
    fetch(form.action, {
        method: form.method,
        body: formData
        
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Hubo un problema al enviar el formulario.');
        }
        return response.text();
    })
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error('Error:', error);
    });


    return false;
}
