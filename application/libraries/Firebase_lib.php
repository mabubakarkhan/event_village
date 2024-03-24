<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH . 'libraries/Firebase/Factory.php';
require_once APPPATH . 'libraries/Firebase/Messaging/CloudMessage.php';
require_once APPPATH . 'libraries/Firebase/Messaging/Notification.php';

use Kreait\Firebase\Factory;
use Kreait\Firebase\Messaging\CloudMessage;
use Kreait\Firebase\Messaging\Notification;

class Firebase_lib {

    protected $CI;
    protected $firebase;

    public function __construct() {
        $this->CI =& get_instance();
        $this->CI->config->load('firebase');

        $firebaseConfig = [
            'apiKey' => $this->CI->config->item('firebase_server_key'),
            'projectId' => '',
            'messagingSenderId' => $this->CI->config->item('firebase_sender_id'),
        ];

        $factory = (new Factory)->withServiceAccount($firebaseConfig);
        $this->firebase = $factory->createMessaging();
    }

    public function sendNotification($title, $body, $deviceToken) {
        $message = CloudMessage::withTarget('token', $deviceToken)
            ->withNotification(Notification::create($title, $body));

        $this->firebase->send($message);
    }
}