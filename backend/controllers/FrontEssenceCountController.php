<?php

namespace backend\controllers;

use backend\models\FrontEssence;
use backend\models\FrontIndex;
use Yii;
use yii\data\Pagination;
use backend\models\FrontEssenceCount;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * FrontEssenceCountController implements the CRUD actions for FrontEssenceCount model.
 */
class FrontEssenceCountController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all FrontEssenceCount models.
     * @return mixed
     */
    public function actionIndex()
    {
        $ess_c = new FrontEssenceCount();
        $index_model = new FrontIndex();
        $essence_model = new FrontEssence();
        $indexs = $index_model->getAllIndex();
        $essences = $essence_model->getAllEssence();
        $querys = Yii::$app->request->get('query');
        $datemin = Yii::$app->request->get('date1');
        $datemax = Yii::$app->request->get('date2');
        if($datemax && $datemin){
            $date = FrontWebsiteCountController::getDates($datemin,$datemax);
            $querys['date'] = $date;
        }
        if($querys && array_key_exists('date',$querys)){
            $query = $ess_c->getCount($querys['essence_id'],$querys['type'],$querys['date']);
        }else if($querys && array_key_exists('essence_id',$querys)){

            $query = $ess_c->getCount($querys['essence_id'],$querys['type']);
        }else{
            foreach ($essences as $essence){
                $querys['essence_id'] = $essence['id'];
                break;
            }
            $query = $ess_c->getCount($querys['essence_id'],$querys['type']);
        }

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
            'indexs'=>$indexs,
            'essences'=>$essences,
            'pages'=>$pagination,
            'query'=>$querys,
        ]);
    }

    /**
     * Displays a single FrontEssenceCount model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new FrontEssenceCount model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new FrontEssenceCount();
        if ($model->load(Yii::$app->request->post())) {
        
              if(empty($model->type) == true){
                  $model->type = 1;
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
     * Updates an existing FrontEssenceCount model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate()
    {
        $id = Yii::$app->request->post('id');
        $model = $this->findModel($id);
        if ($model->load(Yii::$app->request->post())) {
        
             if(empty($model->type) == true){
                 $model->type = 1;
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
     * Deletes an existing FrontEssenceCount model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = FrontEssenceCount::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the FrontEssenceCount model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return FrontEssenceCount the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = FrontEssenceCount::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
