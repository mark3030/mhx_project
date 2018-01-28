<?php

namespace app\models\market;

use app\models\brand\BrandSetting;
use Yii;
use yii\db\Query;

/**
 * This is the model class for table "channel_qrcode".
 *
 * @property string $id
 * @property string $name
 * @property string $org_id
 * @property string $qrcode_info
 * @property string $expired_time
 * @property integer $total_scan_count
 * @property integer $total_reg_count
 * @property string $updated_time
 * @property string $created_time
 */
class ChannelQrcode extends \yii\db\ActiveRecord
{

    public static function tableName()
    {
        return 'channel_qrcode';
    }

    public function geneQrcode($id)
    {
        $prePath = Yii::$app->params['path']['qrcode'];
        $params = [
            'id' => $id
        ];
        return $prePath . '?' . http_build_query($params);
    }

    public static function getInfoById($channel_id){
        $query = new Query();
        $query->from(['ch'=>self::tableName()])->innerJoin(['br'=>BrandSetting::tableName()],'ch.org_id = br.org_id')
            ->select(['br.name as name','logo','status']);
        $query->where(['ch.id'=>$channel_id]);
        $info = $query->limit(1)->one();
        return $info;
    }
}
