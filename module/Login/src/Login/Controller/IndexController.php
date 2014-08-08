<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Login\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel; 

class IndexController extends AbstractActionController
{
    protected $produktyTable;
    public function indexAction()
    {
        return $this->redirect()->toRoute('home');
    
    }
    
    public function logoutAction()
    {
        $title = 'WYLOGOWANIE';
        $undertitle = '';
        
        $username = $this->params()->fromRoute('username');
        $session = $this->params()->fromRoute('session');
        $user_ip = $_SERVER['REMOTE_ADDR'];
        $sessionTable = $this->getSessionTable();
        
        $sessionTable->deleteSession($username,$session, $user_ip);
        
        $message = '<div class="confirmation-box round">Wylogowywanie zakończone sukcesem! Zostaniesz przeniesiony.</div>'
                               .'<META HTTP-EQUIV="refresh" CONTENT="2; URL=../../../../public">'
                               ;        
        $layout = $this->layout();
        $layout->setTemplate('layout/custom');
        $viewmodel = new ViewModel();
        $viewmodel->setVariable('message', $message);
        $this->layout()->setVariables(array(
            'title' => $title,
            'undertitle'  => $undertitle,
        ));
        return $viewmodel;
    }
    
    public function getUzytkownicyTable()
    {
        if (!$this->uzytkownicyTable) {
            $sm = $this->getServiceLocator();
            $this->uzytkownicyTable = $sm->get('Application\Model\UzytkownicyTable');
        }
        return $this->uzytkownicyTable;
    }
    
    public function getSessionTable()
    {
        if (!$this->sessionTable) {
            $sm = $this->getServiceLocator();
            $this->sessionTable = $sm->get('Application\Model\SessionTable');
        }
        return $this->sessionTable;
    }
}
