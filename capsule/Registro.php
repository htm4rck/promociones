<?php
class Registro implements JsonSerializable
{
    private $cod_registro;
    private $nombres;
    private $apellidos;
    private $f_nacimiento;
    private $dni;
    private $numero;
    private $correo;
    private $distrito;
    private $direccion;
    private $promocion;
    private $usuario;
    private $clave;

    public function __construct($cod_registro = 0)
    {
        $this->cod_registro = $cod_registro;
    }
    public static function getRegistro($std)
    {
        $registro = new Registro();
        $registro->setCod_registro(@$std->cod_registro);
        $registro->setNombres(@$std->nombres);
        $registro->setApellidos(@$std->apellidos);
        $registro->setF_nacimiento(@$std->f_nacimiento);
        $registro->setDni(@$std->dni);
        $registro->setNumero(@$std->numero);
        $registro->setCorreo(@$std->correo);
        $registro->setDistrito(@$std->distrito);
        $registro->setDireccion(@$std->direccion);
        $registro->setPromocion(@$std->promocion);
        $registro->setUsuario(@$std->usuario);
        $registro->setClave(@$std->clave);
        return $registro;
    }
    

    public function jsonSerialize()
    {
        return
            [
                 'cod_registro'=>$this->cod_registro,
                 'nombres'=>$this->nombres,
                 'apellidos'=>$this->apellidos,
                 'f_nacimiento'=>$this->f_nacimiento,
                 'dni'=>$this->dni,
                 'numero'=>$this->numero,
                 'correo'=>$this->correo,
                 'distrito'=>$this->distrito,
                 'direccion'=>$this->direccion,
                 'promocion'=>$this->promocion,
                 'usuario'=>$this->usuario,
                 'clave'=>$this->clave
            ];
    }

    public function getCod_registro()
    {
        return $this->cod_registro;
    }

    public function setCod_registro($cod_registro)
    {
        $this->cod_registro = $cod_registro;
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

    public function getNumero()
    {
        return $this->numero;
    }

    public function setNumero($numero)
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
