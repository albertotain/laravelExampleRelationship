<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $nombre
 * @property string $created
 * @property string $modified
 * @property Notification[] $notifications
 */
class NotificationsType extends Model
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
        return $this->hasMany('App\Notification', 'tipo_id');
    }
}
