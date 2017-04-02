<?php

namespace backend\controllers;

use backend\models\FrontIndex;
use backend\models\FrontProduct;
use Yii;
use yii\data\Pagination;
use backend\models\FrontProductLog;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

require '../../common/excel/PHPExcel.php';
/**
 * FrontProductLogController implements the CRUD actions for FrontProductLog model.
 */
class FrontProductLogController extends BaseController
{
	public $layout = "lte_main";

    /**
     * Lists all FrontProductLog models.
     * @return mixed
     */
    public function actionIndex()
    {
        $product_l = new FrontProductLog();
        $product_model = new FrontProduct();
        $index_model = new FrontIndex();
        $products = $product_model->getAllProduct();
        $indexs = $index_model->getAllIndex();
        $query = FrontProductLog::find();
        $datemin = Yii::$app->request->get('date1');
        $datemax = Yii::$app->request->get('date2');
        $excel = Yii::$app->request->get('excel');
         $querys = Yii::$app->request->get('query');
        if($datemax && $datemin){
            $date = FrontWebsiteCountController::getDates($datemin,$datemax);
            $querys['date'] = $date;
        }
        if($querys && array_key_exists('date',$querys)){
            $query = $product_l->getLogByPid($querys['product_id'],$querys['type'],$querys['date']);
        }else if($querys && array_key_exists('product_id',$querys)){

            $query = $product_l->getLogByPid($querys['product_id'],$querys['type']);
        }else{
            foreach ($products as $product){
                $querys['product_id'] = $product['id'];
                break;
            }
            $query= $product_l->getLogByPid($querys['product_id']);
        }
        if($excel){
            $objectPHPExcel = new \PHPExcel();
            $objectPHPExcel->setActiveSheetIndex(0);
            $page_size = 52;
            $dataProvider = $query;
//            $dataProvider->setPagination(false);
            $data = $query->all();
            $count = $query->count();
            $page_count = (int)($count/$page_size) +1;
            $current_page = 0;
            $n = 0;
            foreach ( $data as $log )
            {
                if ( $n % $page_size === 0 )
                {
                    $current_page = $current_page +1;

                    //报表头的输出
                    $objectPHPExcel->getActiveSheet()->mergeCells('B1:G1');
                    $objectPHPExcel->getActiveSheet()->setCellValue('B1','产品申请记录');

                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('B2','产品申请记录');
                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('B2','产品申请记录');
                    $objectPHPExcel->setActiveSheetIndex(0)->getStyle('B1')->getFont()->setSize(24);
                    $objectPHPExcel->setActiveSheetIndex(0)->getStyle('B1')
                        ->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('B2','日期：'.date("Y年m月j日"));
//                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('G2','第'.$current_page.'/'.$page_count.'页');
                    $objectPHPExcel->setActiveSheetIndex(0)->getStyle('G2')
                        ->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);

                    //表格头的输出
                    $objectPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(5);
                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('B3','用户名');
                    $objectPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(6.5);
                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('C3','申请产品');
                    $objectPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(17);
                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('D3','电话');
                    $objectPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(22);
                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('E3','申请时间');
                    $objectPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(15);
                    $objectPHPExcel->setActiveSheetIndex(0)->setCellValue('F3','性别');
                    $objectPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(15);

                    //设置居中
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3')
                        ->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

                    //设置边框
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3' )
                        ->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3' )
                        ->getBorders()->getLeft()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3' )
                        ->getBorders()->getRight()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3' )
                        ->getBorders()->getBottom()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3' )
                        ->getBorders()->getVertical()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);

                    //设置颜色
                    $objectPHPExcel->getActiveSheet()->getStyle('B3:G3')->getFill()
                        ->setFillType(\PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('FF66CCCC');

                }
                //明细的输出
                $objectPHPExcel->getActiveSheet()->setCellValue('B'.($n+4) ,$log['username']);
                $objectPHPExcel->getActiveSheet()->setCellValue('C'.($n+4) ,$log['p_name']);
                $objectPHPExcel->getActiveSheet()->setCellValue('D'.($n+4) ,$log['phone']);
                $objectPHPExcel->getActiveSheet()->setCellValue('E'.($n+4) ,$log['create_date']);
                if($log['sex'] == 'm'){
                    $objectPHPExcel->getActiveSheet()->setCellValue('F'.($n+4) ,'男');
                }else{
                    $objectPHPExcel->getActiveSheet()->setCellValue('F'.($n+4) ,'女');
                }
                //设置边框
                $currentRowNum = $n+4;
                $objectPHPExcel->getActiveSheet()->getStyle('B'.($n+4).':G'.$currentRowNum )
                    ->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                $objectPHPExcel->getActiveSheet()->getStyle('B'.($n+4).':G'.$currentRowNum )
                    ->getBorders()->getLeft()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                $objectPHPExcel->getActiveSheet()->getStyle('B'.($n+4).':G'.$currentRowNum )
                    ->getBorders()->getRight()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                $objectPHPExcel->getActiveSheet()->getStyle('B'.($n+4).':G'.$currentRowNum )
                    ->getBorders()->getBottom()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                $objectPHPExcel->getActiveSheet()->getStyle('B'.($n+4).':G'.$currentRowNum )
                    ->getBorders()->getVertical()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN);
                $n = $n +1;
            }
            //设置分页显示
            //$objectPHPExcel->getActiveSheet()->setBreak( 'I55' , PHPExcel_Worksheet::BREAK_ROW );
            //$objectPHPExcel->getActiveSheet()->setBreak( 'I10' , PHPExcel_Worksheet::BREAK_COLUMN );
            $objectPHPExcel->getActiveSheet()->getPageSetup()->setHorizontalCentered(true);
            $objectPHPExcel->getActiveSheet()->getPageSetup()->setVerticalCentered(false);
            ob_end_clean();
            ob_start();
            header('Content-Type : application/vnd.ms-excel');
            header('Content-Disposition:attachment;filename="'.'产品申请记录-'.date("Y年m月j日").'.xls"');
            $objWriter= \PHPExcel_IOFactory::createWriter($objectPHPExcel,'Excel5');
            $objWriter->save('php://output');
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
            'products'=>$products,
            'pages'=>$pagination,
            'query'=>$querys,
        ]);
    }

    /**
     * Displays a single FrontProductLog model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        echo json_encode($model->getAttributes());

    }

    /**
     * Creates a new FrontProductLog model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new FrontProductLog();
        if ($model->load(Yii::$app->request->post())) {
        
              $model->create_date = date('Y-m-d H:i:s');
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
     * Updates an existing FrontProductLog model.
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
     * Deletes an existing FrontProductLog model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete(array $ids)
    {
        if(count($ids) > 0){
            $c = FrontProductLog::deleteAll(['in', 'id', $ids]);
            echo json_encode(array('errno'=>0, 'data'=>$c, 'msg'=>json_encode($ids)));
        }
        else{
            echo json_encode(array('errno'=>2, 'msg'=>''));
        }
    
  
    }
    public function actionExcel(){
        $objectPHPExcel = new \PHPExcel();
        $objectPHPExcel->setActiveSheetIndex(0);
        $page_size = 52;
    }

    /**
     * Finds the FrontProductLog model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return FrontProductLog the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = FrontProductLog::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
