<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $user_id
 * @property int $notification_id
 * @property User $user
 * @property Notification $notification
 */
class NotificationsUser extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['user_id', 'notification_id'];

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
    public function notification()
    {
        return $this->belongsTo('App\Notification');
    }
}
