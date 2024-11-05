<?php
class Dbb{
    private $conn;
    public function __construct($host,$user,$pass,$db){
        $this->conn=new mysqli($host,$user,$pass,$db);
        if(!$this->conn){
            die("Connection Fail!".$this->conn->connect_error);
        }
    }

    public function Insert($table, $cols){
        $sql="INSERT INTO $table SET $cols";
        $result=$this->conn->query($sql);
        if ($this->conn->affected_rows>0) {
            return true;
        } return false;
    }

    public function getById($table,$cols,$condition){
        $sql="SELECT $cols FROM $table WHERE $condition";
        $result=$this->conn->query($sql);
        if($result->num_rows>0){
            return $result->fetch_assoc();
        }
        else{
            return false;
        }
    }    
}

$connectsami=new Dbb("localhost","u558951646_pwire","@Faysal25524","u558951646_processwire");
?>