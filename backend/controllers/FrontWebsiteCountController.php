<?php

namespace backend\controllers;

use backend\models\FrontIndex;
use Yii;
use yii\data\Pagination;
use backend\models\FrontWebsiteCount;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * FrontWebsiteCountController implements the CRUD actions for FrontWebsiteCount model.
 */
class FrontWebsiteCountController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all FrontWebsiteCount models.
     * @return mixed
     */
    public function actionIndex()
    {
        $web_c = new FrontWebsiteCount();
        $index_model = new FrontIndex();
        $indexs = $index_model->getAllIndex();
         $querys = Yii::$app->request->get('query',array('type'=>0));
        $datemin = Yii::$app->request->get('date1');
        $datemax = Yii::$app->request->get('date2');
        if($datemax && $datemin){
            $date = $this->getDates($datemin,$datemax);
            $querys['date'] = $date;
        }
        if($querys && array_key_exists('date',$querys)){
            $query = $web_c->getCount($querys['type'],$querys['date']);
        }else{
            $query = $web_c->getCount($querys['type']);
        }
        if($querys && array_key_exists('date',$querys)){
            $totals = $web_c->getTotal($querys['type'],$querys['date'])->all();
        }else{
            $totals = $web_c->getTotal($querys['type'])->all();
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
            'totals'=>$totals,
            'pages'=>$pagination,
            'query'=>$querys,
            'datemin'=>$datemin,
            'datemax'=>$datemax,
        ]);
    }

    /**
     * Displays a single FrontWebsiteCount model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new FrontWebsiteCount model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new FrontWebsiteCount();
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
     * Updates an existing FrontWebsiteCount model.
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
     * Deletes an existing FrontWebsiteCount model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = FrontWebsiteCount::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }

    /**
     * Finds the FrontWebsiteCount model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return FrontWebsiteCount the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = FrontWebsiteCount::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    static function getDates($start,$end){
        $arr = array();
        $dt_start = strtotime($start);
        $dt_end = strtotime($end);
        while ($dt_start<=$dt_end){
            $arr[] = date('Y-m-d',$dt_start);
//            echo date('Y-m-d',$dt_start)."\n";
            $dt_start = strtotime('+1 day',$dt_start);
        }
        return $arr;
    }
}
