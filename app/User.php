<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $nombre
 * @property string $created
 * @property string $modified
 * @property Notification[] $notifications
 * @property NotificationsUser[] $notificationsUsers
 */
class User extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['nombre', 'created', 'modified'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function notifications()
    {
        return $this->hasMany('App\Notification');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function notificationsUsers()
    {
        return $this->hasMany('App\NotificationsUser');
    }
}
