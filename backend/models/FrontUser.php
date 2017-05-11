<?php
namespace backend\models;

use Yii;

/**
 * This is the model class for table "front_user".
 *
 * @property string $id
 * @property string $username
 * @property string $password
 * @property string $auth_key
 * @property string $last_ip
 * @property string $is_online
 * @property string $domain_account
 * @property string $phone
 * @property string $sex
 * @property string $update_date
 * @property string $create_date
 */
class FrontUser extends \backend\models\BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'front_user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['password', 'phone', 'update_date', 'create_date',], 'required'],
            [['update_date', 'create_date'], 'safe'],
            [['username', 'domain_account'], 'string', 'max' => 100],
            [['password'], 'string', 'max' => 200],
            [['auth_key', 'last_ip'], 'string', 'max' => 50],
            [['is_online', 'sex'], 'string', 'max' => 1],
            [['phone'], 'string', 'max' => 11],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => '用户姓名',
            'password' => '密码',
            'auth_key' => '自动登录key',
            'last_ip' => '最近一次登录ip',
            'is_online' => '是否在线',
            'domain_account' => '域账号',
            'phone' => '电话',
            'sex' => '性别',
            'update_date' => '更新时间',
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
//                         'dbType' => "bigint(20) unsigned",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => true,
                'phpType' => 'string',
                'precision' => '20',
                'scale' => '',
                'size' => '20',
                'type' => 'bigint',
                'unsigned' => true,
                'label'=>$this->getAttributeLabel('id'),
                'inputType' => 'hidden',
                'isEdit' => true,
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'username' => array(
                'name' => 'username',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '用户姓名',
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
                'label'=>$this->getAttributeLabel('username'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'password' => array(
                'name' => 'password',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '密码',
//                         'dbType' => "varchar(200)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '200',
                'scale' => '',
                'size' => '200',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('password'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'auth_key' => array(
                'name' => 'auth_key',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '自动登录key',
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
                'label'=>$this->getAttributeLabel('auth_key'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'last_ip' => array(
                'name' => 'last_ip',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '最近一次登录ip',
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
                'label'=>$this->getAttributeLabel('last_ip'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'is_online' => array(
                'name' => 'is_online',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '是否在线',
//                         'dbType' => "char(1)",
                'defaultValue' => 'n',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'char',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('is_online'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'domain_account' => array(
                'name' => 'domain_account',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '域账号',
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
                'label'=>$this->getAttributeLabel('domain_account'),
                'inputType' => 'text',
                'isEdit' => false,
                'isSearch' => false,
                'isDisplay' => false,
                'isSort' => false,
//                         'udc'=>'',
            ),
            'phone' => array(
                'name' => 'phone',
                'allowNull' => false,
//                         'autoIncrement' => false,
//                         'comment' => '电话',
//                         'dbType' => "varchar(11)",
                'defaultValue' => '',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '11',
                'scale' => '',
                'size' => '11',
                'type' => 'string',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('phone'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => true,
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
            'sex' => array(
                'name' => 'sex',
                'allowNull' => true,
//                         'autoIncrement' => false,
//                         'comment' => '性别',
//                         'dbType' => "char(1)",
                'defaultValue' => 'm',
                'enumValues' => null,
                'isPrimaryKey' => false,
                'phpType' => 'string',
                'precision' => '1',
                'scale' => '',
                'size' => '1',
                'type' => 'char',
                'unsigned' => false,
                'label'=>$this->getAttributeLabel('sex'),
                'inputType' => 'text',
                'isEdit' => true,
                'isSearch' => false,
                'isDisplay' => true,
                'isSort' => true,
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
                'isDisplay' => true,
                'isSort' => true,
//                         'udc'=>'',
            ),
		        );
        
    }

    //以下是接口方法
    /**
     * 用户注册
     * @param $name
     * @param $pwd
     * @param $phone
     * @return int|string
     */
    static function insertOne($name,$pwd,$phone){
        $model = new FrontUser();
        $model->username = $name;
        $model->password = md5($pwd);
        $model->phone = $phone;
        $model->update_date = date('Y-m-d H:i:s');
        $model->create_date = date('Y-m-d H:i:s');
        if($model->save()){
            return $model->id;
        }else{
            return 0;
        }
    }


    static function updatePwd($phone,$pwd){
        $model = FrontUser::findOne(
            [
                'phone'=>$phone
            ]
        );
        if($model){
            $model->password = md5($pwd);
            $model->save();
            return $model->id;
        }else{
            return -1;
        }
    }
}
