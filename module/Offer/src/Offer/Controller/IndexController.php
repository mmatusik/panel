<?php
namespace Offer\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Offer\Form\AddForm;
class IndexController extends AbstractActionController
{
    protected $offerTable;
    public function indexAction()
    {
        
        $viewmodel = new ViewModel(array(
            'offers' => $this->getOfferTable()->fetchAll(),
        ));
        return $viewmodel;
    
    }
    
    public function addAction()
    {
        
        $form = $this->getServiceLocator()->get('FormElementManager')->get('AddForm');
        $request = $this->getRequest();
        echo $this->params()->fromQuery('action');
        if ($request->isPost()) {  
            $form->setData($request->getPost());
            if ($form->isValid()) {               
                $offerTable = $this->getOfferTable();
                $link = $offerTable->genOfferLink($request->getPost('name'));
                $offer = array(
                    'name' => $request->getPost('name'),
                    'link' => $offerTable->genOfferLink($request->getPost('name')),
                );
                //$offerTable->addOffer($offer);
                return $this->redirect()->toRoute('offer', array('action' => 'company', ));
                //return $this->redirect()->toRoute('offer');
            }
        }
        
        $viewmodel = new ViewModel();
        $viewmodel->setVariable('form', $form);
        $viewmodel->setTemplate('offer/index/add_1'); // path to phtml file under view folder
        return $viewmodel;
    }
    
    public function companyAction()
    {
        
        $viewmodel = new ViewModel();
        //$viewmodel->setVariable('form', $form);
        $viewmodel->setTemplate('offer/index/add_2'); // path to phtml file under view folder
        return $viewmodel;
    }
    
    public function getOfferTable()
    {
        if (!$this->offerTable) {
            $sm = $this->getServiceLocator();
            $this->offerTable = $sm->get('Dashboard\Model\OfferTable');
        }
        return $this->offerTable;
    }
}
