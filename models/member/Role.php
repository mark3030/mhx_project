<?php

namespace app\models\member;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "role".
 *
 * @property integer $id
 * @property string $name
 * @property string $info
 * @property integer $org_id
 * @property integer $status
 * @property string $updated_time
 * @property string $created_time
 */
class Role extends \yii\db\ActiveRecord {

    public static function tableName() {
        return 'role';
    }


    public static function getRoleName($role) {
        $roleNames = '';
        $allRole = ArrayHelper::index(Yii::$app->params['role'], 'id');
        if (strpos($role, ',')) {
            $roles = explode(',', $role);
            foreach ($roles as $role) {
                $roleNames = $roleNames . '  |  ' . $allRole[$role]['name'];
            }
        }
        return trim($roleNames, '  |');
    }

    public static function getRoleItem($condition = [],$item = []){
        return self::find()->where($condition)->select($item)->one();
    }
}
