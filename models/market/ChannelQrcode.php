<?php

namespace app\models\market;

use Yii;

/**
 * This is the model class for table "channel_qrcode".
 *
 * @property string $id
 * @property string $name
 * @property string $qrcode_info
 * @property string $expired_time
 * @property integer $total_scan_count
 * @property integer $total_reg_count
 * @property string $updated_time
 * @property string $created_time
 */
class ChannelQrcode extends \yii\db\ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'channel_qrcode';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['expired_time', 'updated_time', 'created_time'], 'safe'],
            [['total_scan_count', 'total_reg_count'], 'integer'],
            [['name'], 'string', 'max' => 20],
            [['qrcode_info'], 'string', 'max' => 62],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'qrcode_info' => 'Qrcode Info',
            'expired_time' => 'Expired Time',
            'total_scan_count' => 'Total Scan Count',
            'total_reg_count' => 'Total Reg Count',
            'updated_time' => 'Updated Time',
            'created_time' => 'Created Time',
        ];
    }

    public  function geneQrcode($id){
        $prePath = Yii::$app->params['path']['qrcode'];
        $params = [
            'id'=>$id
        ];
        return $prePath.'?'.http_build_query($params);
    }
}
