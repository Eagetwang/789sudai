<?php
namespace backend\models;

use Yii;
use yii\db\Query;

/**
 * This is the model class for table "front_website_count".
 *
 * @property string $id
 * @property string $date
 * @property integer $type
 * @property integer $pv
 * @property integer $uv
 * @property integer $register_total
 * @property integer $look_total
 * @property integer $apply_total
 */
class FrontWebsiteCount extends \backend\models\BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'front_website_count';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date'], 'required'],
            [['date'], 'safe'],
            [['type', 'pv', 'uv', 'register_total', 'look_total', 'apply_total'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => '日期',
            'type' => '前端',
            'pv' => 'pv',
            'uv' => 'uv',
            'register_total' => '用户注册量',
            'look_total' => '产品查看量',
            'apply_total' => '产品申请量',
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
                        'isDisplay' => false,
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
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'type' => array(
                        'name' => 'type',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '前端类型；1:pc, 2:微信， 3:wap',
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
		'pv' => array(
                        'name' => 'pv',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '浏览次数',
//                         'dbType' => "int(11)",
                        'defaultValue' => '0',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('pv'),
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
//                         'comment' => '浏览人数',
//                         'dbType' => "int(11)",
                        'defaultValue' => '0',
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
		'register_total' => array(
                        'name' => 'register_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '当天用户注册总量',
//                         'dbType' => "int(11)",
                        'defaultValue' => '0',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('register_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'look_total' => array(
                        'name' => 'look_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '产品查看量',
//                         'dbType' => "int(11)",
                        'defaultValue' => '0',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('look_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'apply_total' => array(
                        'name' => 'apply_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '产品申请量',
//                         'dbType' => "int(11)",
                        'defaultValue' => '0',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'integer',
                        'precision' => '11',
                        'scale' => '',
                        'size' => '11',
                        'type' => 'integer',
                        'unsigned' => false,
                        'label'=>$this->getAttributeLabel('apply_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		        );
        
    }
    public function getCount($type=0,$date=[]){
        $query = new Query();
        $query= $query->groupBy('date')
            ->select(['date','sum(pv) as pv','sum(uv) as uv','sum(register_total) as register_total','sum(look_total) as look_total','sum(apply_total) as apply_total'])
            ->from('front_website_count');
        if($type != 0){
            $query = $query->where('type='.$type);
        }
        if($date){
            $query = $query->where(['in','date',$date]);
        }
        return $query;

    }
    public function getTotal($type=0,$date=[]){
        $query = new Query();
        $query= $query->select(['sum(pv) as pv','sum(uv) as uv','sum(register_total) as register_total','sum(look_total) as look_total','sum(apply_total) as apply_total'])
            ->from('front_website_count');
        if($type != 0){
            $query = $query->where('type='.$type);
        }
        if($date){
            $query = $query->where(['in','date',$date]);
        }
        return $query;
    }
}
