<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property string $uid
 * @property string $org_id
 * @property string $nickname
 * @property string $mobile
 * @property string $ident
 * @property integer $sex
 * @property string $avatar
 * @property string $role
 * @property string $login_name
 * @property string $login_pwd
 * @property string $login_salt
 * @property integer $status
 * @property string $updated_time
 * @property string $created_time
 */
class User extends \yii\db\ActiveRecord
{
    public function setPassword($password)
    {

        $this->login_pwd = $this->getSaltPassword($password);
    }


    public function setSalt($length = 16)
    {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
        $salt = '';
        for ($i = 0; $i < $length; $i++) {
            $salt .= $chars[mt_rand(0, strlen($chars) - 1)];
        }
        $this->login_salt = $salt;
    }

    public function getSaltPassword($password)
    {
        return md5($password . md5($this->login_salt));
    }


    public function verifyPassword($password)
    {
        return $this->login_pwd === $this->getSaltPassword($password);
    }

    public static function tableName()
    {
        return 'user';
    }

}
