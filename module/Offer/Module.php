<?php
namespace Offer;

use Zend\Mvc\ModuleRouteListener;
use Zend\Mvc\MvcEvent;
use Testy\Model\Testy;
use Testy\Model\TestyTable;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;

class Module
{
    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\ClassMapAutoloader' => array(
                __DIR__ . '/autoload_classmap.php',
            ),
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
    
    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'Testy\Model\TestyTable' =>  function($sm) {
                    $tableGateway = $sm->get('TestyTableGateway');
                    $table = new TestyTable($tableGateway);
                    return $table;
                },
                'TestyTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Testy());
                    return new TableGateway('offers', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }

}