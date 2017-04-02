<?php

namespace backend\controllers;

use backend\models\FrontAd;
use backend\models\FrontCategory;
use backend\models\FrontEssence;
use backend\models\FrontPlate;
use backend\models\FrontProduct;
use Yii;
use yii\data\Pagination;
use backend\models\Test;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use dosamigos\qrcode\QrCode;

/**
 * TestController implements the CRUD actions for Test model.
 */
class TestController extends Controller
{
	public $layout = "lte_main";

    /**
     * Lists all Test models.
     * @return mixed
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Displays a single Test model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new Test model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Test();
        if ($model->load(Yii::$app->request->post())) {
        
              if(empty($model->create_user) == true){
                  $model->create_user = 'admin';
              }
              $model->create_user = Yii::$app->user->identity->uname;
              $model->create_date = date('Y-m-d H:i:s');
        
            if($model->validate() == true && $model->save()){
                $msg = array('errno'=>0, 'msg'=>'保存成功');
                echo json_encode($msg);
            }
            else{
                $msg = array('errno'=>2, 'data'=>$model->getErrors());
                echo json_encode($msg);
            }
        } else {
            $msg = array('errno'=>2, 'msg'=>'数据出错');
            echo json_encode($msg);
        }
    }

    /**
     * Updates an existing Test model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate()
    {
        $id = Yii::$app->request->post('id');
        $model = $this->findModel($id);
        if ($model->load(Yii::$app->request->post())) {
        
             if(empty($model->create_user) == true){
                 $model->create_user = 'admin';
             }        
        
            if($model->validate() == true && $model->save()){
                $msg = array('errno'=>0, 'msg'=>'保存成功');
                echo json_encode($msg);
            }
            else{
                $msg = array('errno'=>2, 'data'=>$model->getErrors());
                echo json_encode($msg);
            }
        } else {
            $msg = array('errno'=>2, 'msg'=>'数据出错');
            echo json_encode($msg);
        }
    
    }

    /**
     * Deletes an existing Test model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = Test::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the Test model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Test the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Test::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    /**
     * 前端banner接口
     */
    public function actionGetad(){
        $model = new FrontAd();
        $post = Yii::$app->request->post();
        if(isset($post['type']) && $post['type']){
            $ad = $model->getAllAdByType($post['type']);
            $res['data'] = $ad;
            $res['info'] = 0;
        }else{
            $res['data'] = '';
            $res['info'] = 1;
        }
        echo json_encode($res);
    }
    /**
     * 分类
     */
    public function actionGetCategory(){
        $model = new FrontCategory();

    }

    /**
     * 产品接口
     */
    public function actionGetProduct(){
        $model = new FrontProduct();
//        var_dump($model->getProduct(3));exit;
        $post = Yii::$app->request->post();
        $hot = $post['hot'];
        $new = $post['new'];
        $type = $post['type'];
        $rec = $post['rec'];
        $data = $model->getProduct($type,$hot,$rec,$new);
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 根据id获取产品
     */
    public function actionGetProductBy(){
        $model = new FrontProduct();
        $post = Yii::$app->request->post();
        $data = $model->getProductBy($post['id']);
//        var_dump($data);
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 根据分类获取所有产品
     */
    public function actionGetAllProduct(){
        $model = new FrontProduct();
        $post = Yii::$app->request->post();
        $type = $post['type'];
        $data = $model->getProduct($type);
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 推荐攻略
     */
    public function actionGetEssence(){
        $model = new FrontEssence();
//        var_dump($model->getEssence(1,2));exit;
        $post = Yii::$app->request->post();
        $rec = $post['rec'];
        $num = $post['num'];
        $data = $model->getEssence($rec,$num);
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 所有攻略
     */
    public function actionGetAllEssence(){
        $model = new FrontEssence();
        $data = $model->getAllEss();
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 攻略详情
     */
    public function actionGetEssBy(){
        $model = new FrontEssence();
        $post = Yii::$app->request->post();
        $data = $model->getEssBy($post['id']);
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 所有版块
     */
    public function actionGetAllPlate(){
        $model = new FrontPlate();
        $data = $model->getAllPlate();
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 版块详情
     */
    public function actionGetPlateBy(){
        $model = new FrontPlate();
        $post = Yii::$app->request->post();
        $data = $model->getPlateBy($post['id']);
        $res['data'] = $data;
        $res['info'] = 0;
        echo json_encode($res);
    }
    /**
     * 二维码测试
     */
    public function actionEr(){
        $png = QrCode::text('http://www.yii-china.com');
    }
    public function actionAa(){
        $product = new FrontProduct();
        $res = $product->getMaxId();
        var_dump($res);
    }
}
