<?php
namespace backend\models;

use Yii;
use yii\db\Query;

/**
 * This is the model class for table "front_essence_count".
 *
 * @property string $id
 * @property integer $essence_id
 * @property string $date
 * @property integer $type
 * @property integer $pv
 * @property integer $uv
 * @property integer $r_click_total
 * @property integer $r_apply_total
 * @property integer $share_total
 */
class FrontEssenceCount extends \backend\models\BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'front_essence_count';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['essence_id', 'date'], 'required'],
            [['essence_id', 'type', 'pv', 'uv', 'r_click_total', 'r_apply_total', 'share_total'], 'integer'],
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
            'essence_id' => '攻略',
            'date' => '日期',
            'type' => '前端',
            'pv' => '浏览次数(pv)',
            'uv' => '浏览人数(uv)',
            'r_click_total' => '推荐产品点击量',
            'r_apply_total' => '推荐产品申请量',
            'share_total' => '分享次数',
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
		'essence_id' => array(
                        'name' => 'essence_id',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '攻略id',
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
                        'label'=>$this->getAttributeLabel('essence_id'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => true,
                        'isDisplay' => false,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'date' => array(
                        'name' => 'date',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '日期',
//                         'dbType' => "datetime",
                        'defaultValue' => '',
                        'enumValues' => null,
                        'isPrimaryKey' => false,
                        'phpType' => 'string',
                        'precision' => '',
                        'scale' => '',
                        'size' => '',
                        'type' => 'datetime',
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
//                         'comment' => '前端类型 1:pc,2:微信,3:wap',
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
//                         'comment' => '当天攻略浏览次数',
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
                        'isDisplay' => false,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'uv' => array(
                        'name' => 'uv',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '当天攻略浏览人数',
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
		'r_click_total' => array(
                        'name' => 'r_click_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '推荐产品点击量',
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
                        'label'=>$this->getAttributeLabel('r_click_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'r_apply_total' => array(
                        'name' => 'r_apply_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '推荐产品申请量',
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
                        'label'=>$this->getAttributeLabel('r_apply_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		'share_total' => array(
                        'name' => 'share_total',
                        'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '分享次数',
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
                        'label'=>$this->getAttributeLabel('share_total'),
                        'inputType' => 'text',
                        'isEdit' => true,
                        'isSearch' => false,
                        'isDisplay' => true,
                        'isSort' => true,
//                         'udc'=>'',
                    ),
		        );
        
    }
    public function getCount($essence_id=0,$type=0,$date=[]){
        $query = new Query();
        $query= $query->groupBy('date')
            ->select(['date','sum(uv) as uv','sum(r_click_total) as r_click_total','sum(r_apply_total) as r_apply_total','sum(share_total) as share_total'])
            ->from('front_essence_count')
            ->where('essence_id='.$essence_id);
        if($type != 0){
            $query = $query->andWhere('type='.$type);
        }
        if($date){
            $query = $query->andwhere(['in','date',$date]);
        }
        return $query;

    }
    public function getTotal($essence_id=0,$type=0,$date=[]){
        $query = new Query();
        $query= $query->select(['sum(uv) as uv','sum(r_click_total) as r_click_total','sum(r_apply_total) as r_apply_total','sum(share_total) as share_total'])
            ->from('front_essence_count')
            ->where('essence_id='.$essence_id);
        if($type != 0){
            $query = $query->andWhere('type='.$type);
        }
        if($date){
            $query = $query->andwhere(['in','date',$date]);
        }
        return $query->one();

    }

    //以下是接口方法

    /**
     * 攻略统计
     * @param string $type 前端类型
     * @param string $date 日期，日期只要年月日如(2017-03-22)
     * @param int $ess_id 攻略id
     * @param int $pv pv
     * @param int $uv uv
     * @param int $click 推荐产品点击量
     * @param int $apply 推荐产品申请量
     * @param int $share 分享次数
     * @return bool
     */
    public function addEssCount($type,$date,$ess_id,$pv=0,$uv=0,$click =0,$apply=0,$share=0){
        $model = FrontEssenceCount::findOne(['type'=>$type,'date'=>$date,'essence_id'=>$ess_id]);
        if($model){
            $model->pv += $pv;
            $model->uv += $uv;
            $model->r_click_total += $click;
            $model->share_total +=$share;
            $model->r_apply_total +=$apply;
            $res = $model->save();
        }else{
            $this->type = $type;
            $this->date = $date;
            $this->essence_id = $ess_id;
            $this->pv = $pv;
            $this->uv = $uv;
            $this->r_click_total = $click;
            $this->share_total = $share;
            $this->r_apply_total = $apply;
            $res = $this->save();
        }
        return $res;
    }
}
