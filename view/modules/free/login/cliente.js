class CRUDCliente {

    constructor() {
        this.settingsGlobal = new Settings();
        //cliente con minuscula porque e sparte de la ruta 
        this.api = this.settingsGlobal.api + 'cliente';
        this.send = new Send();
        this.parameters = '';
        this.json = '';
        this.actionurl = '?action=' + this.send.action;
        this.modalCargando = document.querySelector('#modalLoadingCliente');
        this.modalCargandoObject = new Modal(this.modalCargando, {
            backdrop: false
        });
        //llamo al documento, luego seleccioando un elemento con query(llamar por clase o por llamar por id en este caso id)
        this.txtLogin = document.querySelector('#txtLogin');
        this.txtPass = document.querySelector('#txtPass');
        this.btnLogin = document.querySelector('#btnLogin');
        this.list = [];
        this.cliente = new Cliente();
        this.eventsDefault();
    }
    setCliente(id) {
        let clase = this;
        this.cliente = new Cliente();
        this.list.forEach(function (element, index) {
            if (element.cod_cliente == id) {
                clase.cliente = element;
                return;
            }
        })
    }
    eventsDefault() {
        let clase = this;
        this.modalCargando.addEventListener("show.bs.modal", function (event) {
            clase.run();
        });
        this.btnLogin.onclick = function () {

            clase.login();
            return false;
        }
    }

    login() {
        if (this.txtLogin.value != '') {
            if (this.txtPass.value != '') {
                this.cliente.usuario = this.txtLogin.value;
                this.cliente.clave = this.txtPass.value;
                this.json = this.cliente;
                this.send.action = 'login';
                this.modalCargandoObject.show();
            } else {
                new ModalAlert('Ingresa Tu Clave', 'error');
            }
        } else {
            new ModalAlert('Ingresa Tu Usuario', 'error');
        }

    }

    run() {
        this.actionurl = '?action=' + this.send.action;
        let clase = this;
        fetch(this.api + this.actionurl + this.parameters, {
            method: this.send.method,
            body: JSON.stringify(this.json),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(function (response) {
            //response.text().then(text=>{console.info(text)});
            return response.json();
        }).then(function (jsonResponse) {
            console.log(jsonResponse);
            if (jsonResponse.error == false) {
                sessionStorage.validate=!jsonResponse.error;
                sessionStorage.cod_cliente=jsonResponse.content.cod_Cliente;
                sessionStorage.apellidos=jsonResponse.content.apellidos;
                sessionStorage.nombres=jsonResponse.content.nombres;
                sessionStorage.usuario=jsonResponse.content.usuario;
                window.location='cupones';
            } else {
                sessionStorage.clear();
                new ModalAlert(jsonResponse.message, 'error');
            }
            clase.modalCargandoObject.hide();
        }).catch(function (error) {
            new ModalAlert(error, 'error');
            clase.modalCargandoObject.hide();
        });
    }
}
new CRUDCliente();