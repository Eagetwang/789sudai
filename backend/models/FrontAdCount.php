<?php
namespace backend\models;

use Yii;
use yii\db\Query;

/**
 * This is the model class for table "front_ad_count".
 *
 * @property string $id
 * @property integer $ad_id
 * @property integer $show_total
 * @property string $date
 * @property integer $type
 * @property integer $click_total
 * @property integer $uv
 */
class FrontAdCount extends \backend\models\BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'front_ad_count';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ad_id', 'show_total', 'date', 'click_total', 'uv'], 'required'],
            [['ad_id', 'show_total', 'type', 'click_total', 'uv'], 'integer'],
            [['date'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ad_id' => '广告位名称',
            'show_total' => '广告位的展示次数',
            'date' => '日期',
            'type' => '前端',
            'click_total' => '点击量',
            'uv' => '展示页uv',
        ];
    }

  /**
     * 返回数据库字段信息，仅在生成CRUD时使用，如不需要生成CRUD，请注释或删除该getTableColumnInfo()代码
     * COLUMN_COMMENT可用key如下:
     * label - 显示的label
     * inputType 控件类型, 暂时只支持text,hidden  // select,checkbox,radio,file,password,
     * isEdit   是否允许编辑，如果允许编辑将在添加和修改时输入
     * isSearch 是否允许搜索
     * isDisplay 是否在列表中显示
     * isOrder 是否排序
     * udc - udc code，inputtype为select,checkbox,radio三个值时用到。
     * 特别字段：
     * id：主键。必须含有主键，统一都是id
     * create_date: 创建时间。生成的代码自动赋值
     * update_date: 修改时间。生成的代码自动赋值
     */
    public function getTableColumnInfo(){
        return array(
        'id' => array(
                        'name' => 'id',
                        'allowNull' => false,
//                         'autoIncrement' => true,
//                         'comment' => '',
//                         'dbType' => "int(11) unsigned",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => true,
                        'phpType' => 'string',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => true,
                        'label'=>$this->getAttributeLabel('id'),
                        'inputType' => 'hidden',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'ad_id' => array(
                        'name' => 'ad_id',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '广告id',
//                         'dbType' => "int(11)",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('ad_id'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => true,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'show_total' => array(
                        'name' => 'show_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '当天广告位的展示次数',
//                         'dbType' => "int(11)",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('show_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'date' => array(
                        'name' => 'date',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '日期',
//                         'dbType' => "date",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'string',
                        'precision' => '',
                        'scale' => '',
                        'size' => '',
                        'type' => 'date',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('date'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => true,
                        'isDisplay' => false,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'type' => array(
                        'name' => 'type',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '前端类型；1:pc,2:微信，3:wap',
//                         'dbType' => "tinyint(1)",
                        'defaultValue' => '1',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '1',
                        'scale' => '',
                        'size' => '1',
                        'type' => 'smallint',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('type'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => true,
                        'isDisplay' => false,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'click_total' => array(
                        'name' => 'click_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '当天广告点击量',
//                         'dbType' => "int(11)",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('click_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'uv' => array(
                        'name' => 'uv',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '展示页uv',
//                         'dbType' => "int(11)",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('uv'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		        );
        
    }
    //根据日期和广告id返回广告的各项数据和
    public function getCount($ad_id=0,$date=[]){
        $query = new Query();
        $query= $query->groupBy('ad_id')
            ->select(['ad_id','name','sum(show_total) as show_total','sum(click_total) as click_total','sum(uv) as uv'])
            ->from('front_ad_count')
            ->innerJoin('front_ad','front_ad_count.ad_id = front_ad.id ');
        if($ad_id != 0){
            $query = $query->andwhere('ad_id='.$ad_id);
        }
        if($date){
            $query = $query->andwhere(['in','date',$date]);
        }
        return $query;

    }
}
