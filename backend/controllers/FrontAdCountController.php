<?php

namespace backend\controllers;

use backend\models\FrontAd;
use Yii;
use yii\data\Pagination;
use backend\models\FrontAdCount;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * FrontAdCountController implements the CRUD actions for FrontAdCount model.
 */
class FrontAdCountController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all FrontAdCount models.
     * @return mixed
     */
    public function actionIndex()
    {
        $ad_model = new FrontAd();
        $ad = $ad_model->getAllAd();
        $query = FrontAdCount::find();
//        var_dump($query);exit;
         $querys = Yii::$app->request->get('query');
        $ad_id = 0;
         $datemin = Yii::$app->request->get('date1');
         $datemax = Yii::$app->request->get('date2');
        if($datemax && $datemin){
            $date = $this->getDates($datemin,$datemax);
            $querys['date'] = $date;
        }

        if(count($querys) > 0){
            $ad_id = $querys['ad_id'];
            foreach($querys as $key=>$value){
                if(empty($value)){
                    unset($querys[$key]);
                }
            }
            $query = $query->where($querys);
        }else{
            $query = $query->where(1);
//            $query1 = $query->where(1)->sum('show_total');
//            $query2 = $query->where(1)->sum('uv');
//            var_dump($query1,$query2);exit;
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
        $data = [];
        $show_total = array();
        $click_total = [];
        $uv = [];
        $total = $query->all();
        foreach($total as $value){
            if(array_key_exists($value['ad_id'], $show_total)){
                $show_total[$value['ad_id']] += $value['show_total'];
            }else{
                $show_total[$value['ad_id']] = $value['show_total'];
            }
            if(array_key_exists($value['ad_id'], $click_total)){
                $click_total[$value['ad_id']] += $value['click_total'];
            }else{
                $click_total[$value['ad_id']] = $value['click_total'];
            }
            if(array_key_exists($value['ad_id'], $uv)){
                $uv[$value['ad_id']] += $value['uv'];
            }else{
                $uv[$value['ad_id']] = $value['uv'];
            }
//            $click_total[$value['ad_id']] += $value['click_total'];
//            $uv[$value['ad_id']] += $value['uv'];
        }
//        var_dump($show_total,$click_total,$uv);exit;
        $models = $query
        ->offset($pagination->offset)
        ->limit($pagination->limit)
        ->all();
        return $this->render('index', [
            'models'=>$models,
            'pages'=>$pagination,
            'query'=>$querys,
            'ad'=>$ad,
            'ad_id'=>$ad_id,
            'show_total'=>$show_total,
            'click_total'=>$click_total,
            'uv'=>$uv,
        ]);
    }

    /**
     * Displays a single FrontAdCount model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new FrontAdCount model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new FrontAdCount();
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
     * Updates an existing FrontAdCount model.
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
     * Deletes an existing FrontAdCount model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = FrontAdCount::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }
    protected function getDates($start,$end){
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
    /**
     * Finds the FrontAdCount model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return FrontAdCount the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = FrontAdCount::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
