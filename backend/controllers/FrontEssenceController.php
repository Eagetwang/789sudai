<?php

namespace backend\controllers;

use app\models\UploadForm;
use Yii;
use yii\data\Pagination;
use backend\models\FrontEssence;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * FrontEssenceController implements the CRUD actions for FrontEssence model.
 */
class FrontEssenceController extends BaseController
{
    public $enableCsrfValidation = false;
	public $layout = "lte_main";

    /**
     * Lists all FrontEssence models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = FrontEssence::find();
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
        $query = $query->orderBy('`order`');
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
        ]);
    }

    /**
     * Displays a single FrontEssence model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new FrontEssence model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $essence = "";
        if($id = Yii::$app->request->get('id')){
            $model = new FrontEssence();
            $essence = $model->getById($id);
        }
        return $this->render('create',[
            'essence'=>$essence,
        ]);
    }
    public function actionAddEssence(){
        $img_url = "";
        $upload = new UploadForm();
        $model = new FrontEssence();
        $upload->imageFile = UploadedFile::getInstance($upload,'imageFile');
        if ($upload->imageFile && $upload->validate()) {
            $img_url = $upload->upload();
        }else{
            $msg = array('errno'=>2, 'msg'=>'图片格式错误');
            echo json_encode($msg);
        }
//        var_dump(Yii::$app->request->post());exit;
        if ($model->load(Yii::$app->request->post())) {
            $model->img = $img_url;
              $model->update_date = date('Y-m-d H:i:s');
            $model->cteate_date = date('Y-m-d H:i:s');
            if($model->validate() == true && $model->save()){
                $msg = array('errno'=>0, 'msg'=>'保存成功','pid'=>$model->id,'sign'=>md5($model->id));
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
    public function actionGetContent(){
        return 1;
    }
    /**
     * Updates an existing FrontEssence model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate()
    {
        $img_url = "";
        $upload = new UploadForm();
        $id = Yii::$app->request->post('id');
        $model = $this->findModel($id);
        $upload->imageFile = UploadedFile::getInstance($upload,'imageFile');
        if ($upload->imageFile && $upload->validate()) {
            $img_url = $upload->upload();
        }
        if ($model->load(Yii::$app->request->post())) {
            if($img_url){
                $model->img = $img_url;
            }
                $model->rec = Yii::$app->request->post('rec');
              $model->update_date = date('Y-m-d H:i:s');
            if($model->validate() == true && $model->save()){
                $msg = array('errno'=>0, 'msg'=>'保存成功','pid'=>$model->id,'sign'=>md5($model->id));
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
     * Deletes an existing FrontEssence model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = FrontEssence::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the FrontEssence model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return FrontEssence the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = FrontEssence::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
