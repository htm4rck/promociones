<?php
class Cliente implements JsonSerializable
{
    private $cod_cliente;
    private $nombres;
    private $apellidos;
    private $f_nacimiento;
    private $dni;
    private $telefono;
    private $correo;
    private $distrito;
    private $direccion;
    private $promocion;
    private $usuario;
    private $clave;

    public function __construct($cod_cliente = 0)
    {
        $this->cod_cliente = $cod_cliente;
    }
    public static function getCliente($std)
    {
        $usuario = new Usuario();
        $usuario->setcod_cliente(@$std->cod_cliente);
        $usuario->setNombres(@$std->nombres);
        $usuario->setApellidos(@$std->apellidos);
        $usuario->setF_nacimiento(@$std->f_nacimiento);
        $usuario->setDni(@$std->dni);
        $usuario->setTelefono(@$std->numero);
        $usuario->setCorreo(@$std->correo);
        $usuario->setDistrito(@$std->distrito);
        $usuario->setDireccion(@$std->direccion);
        $usuario->setPromocion(@$std->promocion);
        $usuario->setUsuario(@$std->usuario);
        $usuario->setClave(@$std->clave);
        return $usuario;
    }

    public function jsonSerialize()
    {
        return
            [
            'cod_cliente' => $this->cod_cliente,
            'nombres' => $this->nombres,
            'apellidos' => $this->apellidos,
            'f_nacimiento' => $this->f_nacimiento,
            'dni' => $this->dni,
            'telefono' => $this->numero,
            'correo' => $this->correo,
            'distrito' => $this->distrito,
            'direccion' => $this->direccion,
            'promocion' => $this->promocion,
            'usuario' => $this->usuario,
            'clave' => $this->clave,
        ];
    }

    public function getcod_cliente()
    {
        return $this->cod_cliente;
    }

    public function setcod_cliente($cod_cliente)
    {
        $this->cod_cliente = $cod_cliente;
    }

    public function getNombres()
    {
        return $this->nombres;
    }

    public function setNombres($nombres)
    {
        $this->nombres = $nombres;
    }

    public function getApellidos()
    {
        return $this->apellidos;
    }

    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;
    }

    public function getF_nacimiento()
    {
        return $this->f_nacimiento;
    }

    public function setF_nacimiento($f_nacimiento)
    {
        $this->f_nacimiento = $f_nacimiento;
    }

    public function getDni()
    {
        return $this->dni;
    }

    public function setDni($dni)
    {
        $this->dni = $dni;
    }

    public function getTelefono()
    {
        return $this->numero;
    }

    public function setTelefono($numero)
    {
        $this->numero = $numero;
    }

    public function getCorreo()
    {
        return $this->correo;
    }

    public function setCorreo($correo)
    {
        $this->correo = $correo;
    }

    public function getDistrito()
    {
        return $this->distrito;
    }

    public function setDistrito($distrito)
    {
        $this->distrito = $distrito;
    }

    public function getDireccion()
    {
        return $this->direccion;
    }

    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;
    }

    public function getPromocion()
    {
        return $this->promocion;
    }

    public function setPromocion($promocion)
    {
        $this->promocion = $promocion;
    }

    public function getUsuario()
    {
        return $this->usuario;
    }

    public function setUsuario($usuario)
    {
        $this->usuario = $usuario;
    }

    public function getClave()
    {
        return $this->clave;
    }

    public function setClave($clave)
    {
        $this->clave = $clave;
    }
}
