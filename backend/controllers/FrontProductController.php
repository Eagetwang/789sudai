<?php

namespace backend\controllers;

use app\models\UploadForm;
use backend\models\FrontCategory;
use backend\models\FrontIdentity;
use dosamigos\qrcode\QrCode;
use Yii;
use yii\data\Pagination;
use backend\models\FrontProduct;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * FrontProductController implements the CRUD actions for FrontProduct model.
 */
class FrontProductController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all FrontProduct models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = FrontProduct::find();
         $querys = Yii::$app->request->get('query');
        if(count($querys) > 0){
            $condition = "";
            $parame = array();
            foreach($querys as $key=>$value){
                $value = trim($value);
                if(empty($value) == false){
                    $parame[":{$key}"]=$value;
                    if(empty($condition) == true){
                        $condition = " {$key}=:{$key} ";
                    }
                    else{
                        $condition = $condition . " AND {$key}=:{$key} ";
                    }
                }
            }
            if(count($parame) > 0){
                $query = $query->where($condition, $parame);
            }
        }
        $category_model = new FrontCategory();
        $category = $category_model->getCategory();
        $identity_model = new FrontIdentity();
        $identity = $identity_model->getIdentity();
        $pagination = new Pagination([
            'totalCount' =>$query->count(), 
            'pageSize' => '10', 
            'pageParam'=>'page', 
            'pageSizeParam'=>'per-page']
        );
        
        $orderby = Yii::$app->request->get('orderby', '');
        if(empty($orderby) == false){
            $query = $query->orderBy($orderby);
        }
        
        
        $models = $query
        ->offset($pagination->offset)
        ->limit($pagination->limit)
        ->all();
        return $this->render('index', [
            'models'=>$models,
            'pages'=>$pagination,
            'query'=>$querys,
            'category'=>$category,
            'identity'=>$identity,
        ]);
    }

    /**
     * Displays a single FrontProduct model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new FrontProduct model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $img_url = "";
        $model = new FrontProduct();
        $upload = new UploadForm();
        $upload->imageFile = UploadedFile::getInstance($upload,'imageFile');
        if ($upload->imageFile && $upload->validate()) {
            $img_url = $upload->upload();
        }else{
            $msg = array('errno'=>2, 'msg'=>'图片格式错误');
            echo json_encode($msg);
        }
        if ($model->load(Yii::$app->request->post())) {
              if(empty($model->success_rate) == true){
                  $model->success_rate = 5;
              }
            $category = Yii::$app->request->post()['category'];
            $identity = Yii::$app->request->post()['identity'];
            $category_id = "";
            $identity_id = "";
            foreach($category as $value){
                $category_id .= $value.',';
            }
            foreach($identity as $value){
                $identity_id .= $value.',';
            }
              $category_id = rtrim($category_id,',');
              $identity_id = rtrim($identity_id,',');
              $model->category_id = $category_id;
              $model->identity_id = $identity_id;
              $model->logo_url = $img_url;
              $model->update_user = Yii::$app->user->identity->uname;
              $model->update_date = date('Y-m-d H:i:s');
              $model->create_user = Yii::$app->user->identity->uname;
              $model->create_date = date('Y-m-d H:i:s');
            if($model->validate() == true && $id = $model->save()){
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
     * Updates an existing FrontProduct model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate()
    {
        $id = Yii::$app->request->post('id');
        $model = $this->findModel($id);
        $upload = new UploadForm();
        $upload->imageFile = UploadedFile::getInstance($upload,'imageFile');
        if ($upload->imageFile && $upload->validate()){
            $img_url = $upload->upload();
            $model->logo_url = $img_url;
        }
        if ($model->load(Yii::$app->request->post())) {

             if(empty($model->success_rate) == true){
                 $model->success_rate = 5;
             }
            $category = Yii::$app->request->post()['category'];
            $identity = Yii::$app->request->post()['identity'];
            $category_str = implode(',',$category);
            $identity_str = implode(',',$identity);
            $model->category_id = $category_str;
            $model->identity_id = $identity_str;
            $model->update_user = Yii::$app->user->identity->uname;
            $model->update_date = date('Y-m-d H:i:s');
        
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
     * Deletes an existing FrontProduct model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = FrontProduct::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the FrontProduct model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return FrontProduct the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = FrontProduct::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
