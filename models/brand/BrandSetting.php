<?php

namespace app\models\brand;

use Yii;
use yii\db\Query;

/**
 * This is the model class for table "brand_setting".
 *
 * @property integer $id
 * @property string $name
 * @property integer $org_id
 * @property string $description
 * @property string $address
 * @property string $mobile
 * @property string $logo
 * @property string $updated_time
 * @property string $created_time
 */
class BrandSetting extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return 'brand_setting';
    }

}
