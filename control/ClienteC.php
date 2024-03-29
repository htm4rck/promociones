<?php
class ClienteC
{
    private $data;
    private $parameters;
    private $cliente;
    private $action;

    public function __construct()
    {
        $this->data = file_get_contents('php://input');
        $this->data = json_decode($this->data);
        $this->cliente = Cliente::getCliente($this->data);
        $this->parameters = array();
        $this->action = $_GET['action'];
        $this->main();
    }
    public function main()
    {
        switch ($this->action) {
            case 'read':
                $this->read();
                break;
            /*case 'create':
            $this->create();
            break;
            case 'update':
            $this->update();
            break;
            case 'delete':
            $this->delete();
            break;
            case 'changepass':
            $this->changePass();
            break;
            case 'deltmtb':
            $this->DelTmtb();
            break;
            case 'delwork':
            $this->DelWork();
            break;
             */
            case 'login':
                $this->login();
                break;
            default:
                echo json_encode('{"Error": "Metodo no permitido"}');
                break;
        }
    }
    public function read()
    {
        $_GET['filter'] != '' ? $this->parameters['filter'] = '%' . strtolower($_GET['filter']) . '%' : $this->parameters['filter'] = '%%';
        #$_GET['gender'] != -1 ? $this->parameters['gender'] = " AND GENDER = '" . $_GET["gender"] . "' " : $this->parameters['gender'] = '';
        $this->parameters['paginate'] = ' LIMIT ' . $_GET['size'] . ' OFFSET ' . (((int) $_GET['page'] - 1) * (int) $_GET['size']) . ' ';
        $this->parameters['orderby'] = ' ORDER BY APELLIDOS ';
        echo json_encode(ClienteM::readM($this->parameters)->getResponse());
    }
/*
public function create()
{
echo json_encode(EmployeeM::createM($this->employee));
}
public function update()
{
echo json_encode(EmployeeM::updateM($this->employee));
}
public function delete()
{
echo json_encode(EmployeeM::deleteM($this->employee));
}
public function delTmtb()
{
echo json_encode(EmployeeM::delTmtbM($this->employee));
}
public function delWork()
{
echo json_encode(EmployeeM::delWorkM($this->employee));
}
public function changePass()
{
echo json_encode(EmployeeM::changePassM($this->employee));
}*/
public function login()
{
    echo json_encode(ClienteM::loginM($this->cliente));   
}
}
new ClienteC();
