<?php

namespace app\models\market;

use Yii;

/**
 * This is the model class for table "org".
 *
 * @property integer $id
 * @property string $org_name
 */
class Org extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'org';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['org_name'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'org_name' => 'Org Name',
        ];
    }
}
