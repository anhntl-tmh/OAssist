<?php

App::uses('AppController', 'Controller');

/**
 * LoginController
 *
 * Login manager
 */
class LoginController extends AppController {

    public $uses = array();

    public function beforFilter() {
        parent::beforeFilter();
    }

    public function login() {
        $title = "tmh-techlab";
        $this->set('title', $title);
    }

    public function logout() {
    }

    public function register() {
    }
}
