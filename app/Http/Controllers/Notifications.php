<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notification;


class Notifications extends Controller
{

    public function index(){

        $result = Notification::all()->load('User', 'NotificationsType')->fresh('NotificationsUsers.User');

        dd($result);

    }

}
