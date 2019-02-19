<?php

App::uses('AppController', 'Controller');

/**
 * UsersController
 *
 * User manager
 */
class UsersController extends AppController {

    public $uses = array();

    public function index() {
        $title = "users-index";
        $this->set('title', $title);
    }

    public function profile() {
    }

    public function edit() {
    }

    public function delete() {
    }
}
