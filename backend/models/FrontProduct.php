<?php
namespace backend\models;

use dosamigos\qrcode\QrCode;
use Yii;
use yii\db\Query;

/**
 * This is the model class for table "front_product".
 *
 * @property string $id
 * @property string $p_name
 * @property integer $order
 * @property string $category_id
 * @property integer $new
 * @property integer $hot
 * @property integer $recommend
 * @property integer $status
 * @property string $limit
 * @property string $age
 * @property string $identity_id
 * @property string $money_rate
 * @property string $term
 * @property string $handle_time
 * @property string $aptitude
 * @property string $credit
 * @property string $materials
 * @property string $prompt
 * @property string $logo_url
 * @property string $describe
 * @property string $apply_total
 * @property string $link
 * @property string $telephone
 * @property integer $success_rate
 * @property string $update_user
 * @property string $update_date
 * @property string $create_user
 * @property string $create_date
 * @property string $return
 * @property string $check
 */
class FrontProduct extends \backend\models\BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'front_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['p_name', 'order', 'category_id', 'limit', 'age', 'identity_id', 'money_rate', 'term', 'handle_time', 'aptitude', 'credit', 'materials', 'prompt', 'logo_url', 'describe', 'apply_total', 'link', 'telephone', 'update_date', 'create_user', 'create_date'], 'required'],
            [['order', 'new', 'hot', 'recommend', 'status', 'success_rate'], 'integer'],
            [['update_date', 'create_date'], 'safe'],
            [['p_name', 'limit', 'age', 'identity_id', 'money_rate', 'term', 'handle_time', 'apply_total', 'telephone'], 'string', 'max' => 100],
            [['category_id'], 'string', 'max' => 50],
            [['aptitude', 'credit', 'materials', 'prompt', 'logo_url', 'describe', 'link','return','check'], 'string', 'max' => 255],
            [['update_user', 'create_user'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'p_name' => '产品名称',
            'order' => '排序',
            'category_id' => '类别',
            'new' => '新口子',
            'hot' => '热门',
            'recommend' => '推荐',
            'status' => '上架',
            'limit' => '额度',
            'age' => '年龄范围',
            'identity_id' => '身份',
            'money_rate' => '利率',
            'term' => '还款期限',
            'handle_time' => '办理时间',
            'aptitude' => '资质要求',
            'credit' => '信用要求',
            'materials' => '申报材料',
            'prompt' => '注意事项',
            'logo_url' => 'logo',
            'describe' => '产品描述',
            'apply_total' => '申请量',
            'link' => '产品链接',
            'telephone' => '产品热线',
            'success_rate' => '成功率',
            'update_user' => '更新人',
            'update_date' => '更新时间',
            'create_user' => '创建人',
            'create_date' => '创建时间',
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
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'p_name' => array(
                'name' => 'p_name',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '产品名称',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('p_name'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'order' => array(
                'name' => 'order',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '排序',
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
                'label'=>$this->getAttributeLabel('order'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'category_id' => array(
                'name' => 'category_id',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '类别',
//                         'dbType' => "varchar(50)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '50',
                'scale' => '',
                'size' => '50',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('category_id'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'new' => array(
                'name' => 'new',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '是否是新口子',
//                         'dbType' => "tinyint(1)",
                'defaultValue' => '0',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'integer',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'smallint',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('new'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'hot' => array(
                'name' => 'hot',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '是否是热门',
//                         'dbType' => "tinyint(1)",
                'defaultValue' => '0',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'integer',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'smallint',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('hot'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'recommend' => array(
                'name' => 'recommend',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '是否推荐',
//                         'dbType' => "tinyint(1)",
                'defaultValue' => '0',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'integer',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'smallint',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('recommend'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'status' => array(
                'name' => 'status',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '是否上架',
//                         'dbType' => "tinyint(1)",
                'defaultValue' => '0',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'integer',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'smallint',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('status'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'limit' => array(
                'name' => 'limit',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '额度',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('limit'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'age' => array(
                'name' => 'age',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '年龄范围',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('age'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'identity_id' => array(
                'name' => 'identity_id',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '身份id',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('identity_id'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'money_rate' => array(
                'name' => 'money_rate',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '利率',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('money_rate'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'term' => array(
                'name' => 'term',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '还款期限',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('term'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'handle_time' => array(
                'name' => 'handle_time',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '办理时间',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('handle_time'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'aptitude' => array(
                'name' => 'aptitude',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '资质要求',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('aptitude'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'credit' => array(
                'name' => 'credit',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '信用要求',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('credit'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'materials' => array(
                'name' => 'materials',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '申请材料',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('materials'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'prompt' => array(
                'name' => 'prompt',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '申请提示',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('prompt'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'logo_url' => array(
                'name' => 'logo_url',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => 'logo地址',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('logo_url'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'describe' => array(
                'name' => 'describe',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '产品描述',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('describe'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'apply_total' => array(
                'name' => 'apply_total',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '申请量',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('apply_total'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'link' => array(
                'name' => 'link',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '产品链接',
//                         'dbType' => "varchar(255)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '255',
                'scale' => '',
                'size' => '255',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('link'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'telephone' => array(
                'name' => 'telephone',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '产品热线',
//                         'dbType' => "varchar(100)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '100',
                'scale' => '',
                'size' => '100',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('telephone'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'success_rate' => array(
                'name' => 'success_rate',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '成功率',
//                         'dbType' => "tinyint(1)",
                'defaultValue' => '5',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'integer',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'smallint',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('success_rate'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'update_user' => array(
                'name' => 'update_user',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '更新人',
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
                'label'=>$this->getAttributeLabel('update_user'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'update_date' => array(
                'name' => 'update_date',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '更新时间',
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
                'label'=>$this->getAttributeLabel('update_date'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'create_user' => array(
                'name' => 'create_user',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '创建人',
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
                'label'=>$this->getAttributeLabel('create_user'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'create_date' => array(
                'name' => 'create_date',
                'allowNull' => false,
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
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
        );

    }
    public function getAllProduct(){
        return $this->find()->where(1)->all();
    }
    //返回最大id
    public function getMaxId(){
        return $this->find()->select('id')->orderBy('id desc')->one();
    }
    //以下是接口方法
    public function getProduct($type=0,$hot=0,$rec=0,$new=0){
        $c['category_id'] = array('like', '%'.$type.'%');
        $c['hot'] = $hot;
        $c['new'] = $new;
        $c['recommend'] = $rec;
//        return $c;
        $query = new Query();
        $query = $query->from('front_product');
        if($type){
            $query = $query->andWhere('category_id like"%'.$type.'%"');
        }
        if($hot){
            $query = $query->andWhere('hot='.$hot);
        }
        if($new){
            $query = $query->andWhere('new='.$new);
        }
        if($rec){
            $query = $query->andWhere('recommend='.$rec);
        }
        return $query->orderBy('id desc')->all();
    }
    public function getProductBy($id){
        $query = new Query();
        return $query->from('front_product')->where('id='.$id)->one();
    }
    //分页查询
    public function getProductPage($type,$page,$num){
        $query = new Query();
        $query->from('front_product')
            ->andWhere('category_id like"%'.$type.'%"');
        $count = $query->count();
        if($page){
            $offset = ($page-1)*$num;
        }else{
            $offset = $count -($count % $num);
        }
        $query->limit($num)
             ->offset($offset)
             ->orderBy('id desc');
        return $query->all();
    }
    //根据分类获取count
    public function getCountByType($type){
        $query = new Query();
        $res = $query->from('front_product')
            ->andWhere('category_id like"%'.$type.'%"')
            ->count();
        return $res;
    }
}
