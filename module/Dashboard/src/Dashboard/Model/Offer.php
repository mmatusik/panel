<?php
namespace Dashboard\Model;

class Offer
{
    public $id;
    public $name;
    public $disc;
    public $how;
    public $end_time;
    protected $inputFilter;    

    public function exchangeArray($data)
    {
        $this->name     = (isset($data['name'])) ? $data['name'] : null;
        $this->disc = (isset($data['disc'])) ? $data['disc'] : null;
        $this->how  = (isset($data['how'])) ? $data['how'] : null;
        $this->end_time  = (isset($data['end_time'])) ? $data['end_time'] : null;
    }
    

}

