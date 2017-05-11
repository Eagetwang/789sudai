<?php
namespace backend\models;

use Yii;
use yii\db\Query;

/**
 * This is the model class for table "front_product_log".
 *
 * @property string $id
 * @property string $user_id
 * @property string $product_id
 * @property string $create_date
 * @property integer $type
 * @property string $date
 */
class FrontProductLog extends \backend\models\BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'front_product_log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'type'], 'integer'],
            [['create_date','date'], 'safe'],
            [['user_id', 'product_id'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => '用户',
            'product_id' => '产品',
            'create_date' => '创建时间',
            'type' => '前端',
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
//                         'autoIncrement' => false,
//                         'comment' => '',
//                         'dbType' => "bigint(20)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => true,
                'phpType' => 'string',
                'precision' => '20',
                'scale' => '',
                'size' => '20',
                'type' => 'bigint',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('id'),
                'inputType' => 'hidden',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'user_id' => array(
                'name' => 'user_id',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '用户id',
//                         'dbType' => "varchar(20)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '20',
                'scale' => '',
                'size' => '20',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('user_id'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'product_id' => array(
                'name' => 'product_id',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '产品id',
//                         'dbType' => "varchar(20)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '20',
                'scale' => '',
                'size' => '20',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('product_id'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'create_date' => array(
                'name' => 'create_date',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '创建时间',
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
                'label'=>$this->getAttributeLabel('create_date'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'type' => array(
                'name' => 'type',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '前端',
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
        );

    }
    public function getLogByPid($product_id=0,$type=0,$date=[]){
        $query = new Query();
        $query= $query->select(['date','username','sex','front_product_log.create_date as create_date','p_name','phone'])
            ->from('front_product_log')
            ->innerJoin('front_product','front_product_log.product_id = front_product.id ')
            ->innerJoin('front_user','front_product_log.user_id = front_user.id ')
            ->where('product_id='.$product_id);
        if($type != 0){
            $query = $query->andWhere('type='.$type);
        }
        if($date){
            $query = $query->andwhere(['in','date',$date]);
        }
        return $query;

    }
//    public function getTotal($product_id=0,$type=0,$date=[]){
//        $query = new Query();
//        $query= $query->select(['sum(uv) as uv','sum(r_click_total) as r_click_total','sum(r_apply_total) as r_apply_total','sum(share_total) as share_total'])
//            ->from('front_essence_count')
//            ->where('product_id='.$product_id);
//        if($type != 0){
//            $query = $query->andWhere('type='.$type);
//        }
//        if($date){
//            $query = $query->andwhere(['in','date',$date]);
//        }
//        return $query->one();
//
//    }

    //以下是接口方法

    /**
     * 产品申请统计
     * @param string $type 前端类型
     * @param int $u_id 用户id
     * @param int $p_id 产品id
     * @return bool
     */
    public function addProLog($type,$u_id,$p_id){
        $this->type = $type;
        $this->user_id = $u_id;
        $this->product_id = $p_id;
        $this->create_date = date('Y-m-d H:i:s',time());
        $this->date = date('Y-m-d');
        return $this->save(false);
    }
}
