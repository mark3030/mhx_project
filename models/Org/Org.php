<?php

namespace app\models\org;

use app\common\services\ConstantMapService;
use app\models\User;
use Yii;
use yii\db\Query;

/**
 * This is the model class for table "org".
 *
 * @property integer $id
 * @property string $org_name
 * @property integer $deadline
 * @property integer $balance
 * @property integer $status
 * @property integer $updated_time
 * @property integer $created_time
 */
class Org extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return 'org';
    }

    public static function getList($mix_kw, $status, $org_id, $offset, $limit)
    {
        $list = [];
        $query = new Query();
        $select = [
            'org_id', 'uid', 'org_name', 'nickname', 'mobile', 'ident', 'deadline', 'balance',
            'user.created_time as created_time', 'login_name', 'org.status as status'
        ];
        $query->from(['org' => Org::tableName()])->innerJoin(['user' => User::tableName()], 'org.id = user.org_id');
        $query->where(['!=', 'org_id', $org_id]);
        if ($mix_kw) {
            $where_org_name = ['LIKE', 'org_name', '%' . strtr($mix_kw, ['%' => '\%', '_' => '\_', '\\' => '\\\\']) . '%', false];
            $where_nickname = ['LIKE', 'nickname', '%' . strtr($mix_kw, ['%' => '\%', '_' => '\_', '\\' => '\\\\']) . '%', false];
            $query->andWhere(['OR', $where_org_name, $where_nickname]);
        }
        if ($status > ConstantMapService::$status_default) {
            $query->andWhere(['user.status' => $status]);
        }
        $query->select($select);
        $total_count = $query->count();
        $query->orderBy(['org.id' => SORT_DESC])
            ->offset($offset)
            ->limit($limit);
        //echo $query->createCommand()->getRawSql();exit;
        $list = $query->all();
        return [$total_count, $list];
    }


    public static function getInfo($condition)
    {
        $query = new Query();
        $select = [
            'org_id', 'uid', 'org_name', 'nickname', 'mobile', 'ident', 'deadline', 'balance',
            'user.created_time as created_time', 'login_name','user.status as status'
        ];
        $query->from(['org' => Org::tableName()])->innerJoin(['user' => User::tableName()], 'org.id = user.org_id');
        $query->filterWhere($condition);
        $result = $query->select($select)->limit(1)->one();
        return $result;
    }
}
