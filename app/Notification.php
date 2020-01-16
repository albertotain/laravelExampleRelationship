<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $user_id
 * @property int $tipo_id
 * @property string $nombre
 * @property string $created
 * @property string $modified
 * @property User $user
 * @property NotificationsType $notificationsType
 * @property NotificationsUser[] $notificationsUsers
 */
class Notification extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['user_id', 'tipo_id', 'nombre', 'created', 'modified'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function notificationsType()
    {
        return $this->belongsTo('App\NotificationsType', 'tipo_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function notificationsUsers()
    {
        return $this->hasMany('App\NotificationsUser');
    }
}
