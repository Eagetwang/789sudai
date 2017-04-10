
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use yii\helpers\Url;
use yii\web\UploadedFile;
use backend\models\FrontProduct;

$modelLabel = new \backend\models\FrontProduct();
?>

<?php $this->beginBlock('header');  ?>
<!-- <head></head>中代码块 -->
<?php $this->endBlock(); ?>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
      
        <div class="box-header">
          <h3 class="box-title">数据列表</h3>
          <div class="box-tools">
            <div class="input-group input-group-sm" style="width: 150px;">
                <button id="create_btn" type="button" class="btn btn-xs btn-primary">添&nbsp;&emsp;加</button>
        			|
        		<button id="delete_btn" type="button" class="btn btn-xs btn-danger">批量删除</button>
            </div>
          </div>
        </div>
        <!-- /.box-header -->
        
        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
            <!-- row start search-->
          	<div class="row">
          	<div class="col-sm-12">
                <?php ActiveForm::begin(['id' => 'front-product-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('front-product/index')]); ?>     
                
                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                      <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                  </div>

                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('p_name')?>:</label>
                      <input type="text" class="form-control" id="query[p_name]" name="query[p_name]"  value="<?=isset($query["p_name"]) ? $query["p_name"] : "" ?>">
                  </div>
              <div class="form-group">
              	<a onclick="searchAction()" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>搜索</a>
           	  </div>
               <?php ActiveForm::end(); ?> 
            </div>
          	</div>
          	<!-- row end search -->
          	
          	<!-- row start -->
          	<div class="row">
          	<div class="col-sm-12">
          	<table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
            <thead>
            <tr role="row">
            
            <?php 
              $orderby = isset($_GET['orderby']) ? $_GET['orderby'] : '';
		      echo '<th><input id="data_table_check" type="checkbox"></th>';
              echo '<th onclick="orderby(\'id\', \'desc\')" '.CommonFun::sortClass($orderby, 'id').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('id').'</th>';
              echo '<th onclick="orderby(\'p_name\', \'desc\')" '.CommonFun::sortClass($orderby, 'p_name').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('p_name').'</th>';
              echo '<th onclick="orderby(\'order\', \'desc\')" '.CommonFun::sortClass($orderby, 'order').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('order').'</th>';
              echo '<th onclick="orderby(\'category_id\', \'desc\')" '.CommonFun::sortClass($orderby, 'category_id').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('category_id').'</th>';
              echo '<th onclick="orderby(\'recommend\', \'desc\')" '.CommonFun::sortClass($orderby, 'recommend').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('recommend').'</th>';
              echo '<th onclick="orderby(\'status\', \'desc\')" '.CommonFun::sortClass($orderby, 'status').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('status').'</th>';
         
			?>
	
            <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >操作</th>
            </tr>
            </thead>
            <tbody>
            
            <?php
            foreach ($models as $model) {
                echo '<tr id="rowid_' . $model->id . '">';
                echo '  <td><label><input type="checkbox" value="' . $model->id . '"></label></td>';
                echo '  <td>' . $model->id . '</td>';
                echo '  <td>' . $model->p_name . '</td>';
                echo '  <td>' . $model->order . '</td>';
                $category_arr = explode(',',$model->category_id);
                $identity_arr = explode(',',$model->identity_id);
                $category_str = "";
                $identity_str = "";
                foreach($category as $value){
                    if(in_array($value['id'],$category_arr)){
                        $category_str .= $value['name'].',';
                    }
                }
                foreach($identity as $value){
                    if(in_array($value['id'],$identity_arr)){
                        $identity_str .= $value['name'].',';
                    }
                }
//                $category_td = "td_ca_".$value['id'];
                $category_str = rtrim($category_str,',');
                $identity_str = rtrim($identity_str,',');
                echo '  <td>' . $category_str . '</td>';
                echo "<input type='hidden' id='td_ca_".$model->id."' value='".$category_str."'/>";
                echo "<input type='hidden' id='td_id_".$model->id."' value='".$identity_str."'/>";
                //echo '  <td>' . $model->new . '</td>';
                //echo '  <td>' . $model->hot . '</td>';
                if($model->recommend){
                    echo '  <td>' . "是" . '</td>';
                }else{
                    echo '  <td>' . "否" . '</td>';
                }
                if($model->status){
                    echo '  <td>' . "在线" . '</td>';
                }else{
                    echo '  <td>' . "暂停" . '</td>';
                }
                //echo '  <td>' . $model->limit . '</td>';
                //echo '  <td>' . $model->age . '</td>';
                //echo '  <td>' . $model->identity_id . '</td>';
                //echo '  <td>' . $model->money_rate . '</td>';
                //echo '  <td>' . $model->term . '</td>';
                //echo '  <td>' . $model->handle_time . '</td>';
                //echo '  <td>' . $model->aptitude . '</td>';
                //echo '  <td>' . $model->credit . '</td>';
                //echo '  <td>' . $model->materials . '</td>';
                //echo '  <td>' . $model->prompt . '</td>';
                //echo '  <td>' . $model->logo_url . '</td>';
                //echo '  <td>' . $model->describe . '</td>';
                //echo '  <td>' . $model->apply_total . '</td>';
                //echo '  <td>' . $model->link . '</td>';
                //echo '  <td>' . $model->telephone . '</td>';
                //echo '  <td>' . $model->success_rate . '</td>';
                //echo '  <td>' . $model->update_user . '</td>';
                //echo '  <td>' . $model->update_date . '</td>';
                //echo '  <td>' . $model->create_user . '</td>';
                //echo '  <td>' . $model->create_date . '</td>';
                echo '  <td class="center">';
                echo '      <a id="view_btn" onclick="viewAction(' . $model->id . ')" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>查看</a>';
                echo '      <a id="edit_btn" onclick="editAction(' . $model->id . ')" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-edit icon-white"></i>修改</a>';
                echo '      <a id="delete_btn" onclick="deleteAction(' . $model->id . ')" class="btn btn-danger btn-sm" href="#"> <i class="glyphicon glyphicon-trash icon-white"></i>删除</a>';
                echo '  </td>';
                echo '</tr>';
            }
            
            ?>
            
           
           
            </tbody>
            <!-- <tfoot></tfoot> -->
          </table>
          </div>
          </div>
          <!-- row end -->
          
          <!-- row start -->
          <div class="row">
          	<div class="col-sm-5">
            	<div class="dataTables_info" id="data_table_info" role="status" aria-live="polite">
            		<div class="infos">
            		从<?= $pages->getPage() * $pages->getPageSize() + 1 ?>            		到 <?= ($pageCount = ($pages->getPage() + 1) * $pages->getPageSize()) < $pages->totalCount ?  $pageCount : $pages->totalCount?>            		 共 <?= $pages->totalCount?> 条记录</div>
            	</div>
            </div>
          	<div class="col-sm-7">
              	<div class="dataTables_paginate paging_simple_numbers" id="data_table_paginate">
              	<?= LinkPager::widget([
              	    'pagination' => $pages,
              	    'nextPageLabel' => '»',
              	    'prevPageLabel' => '«',
              	    'firstPageLabel' => '首页',
              	    'lastPageLabel' => '尾页',
              	]); ?>	
              	
              	</div>
          	</div>
		  </div>
		  <!-- row end -->
        </div>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
<!-- /.content -->

<div class="modal fade" id="edit_dialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "front-product-form", "class"=>"form-horizontal", "action"=>Url::toRoute("front-product/save")]); ?>                      
                 
          <input type="hidden" class="form-control" id="id" name="id" />

          <div id="p_name_div" class="form-group">
              <label for="p_name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("p_name")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="p_name" name="FrontProduct[p_name]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="order_div" class="form-group">
              <label for="order" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("order")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="order" name="FrontProduct[order]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="category_id_div" class="form-group">
              <label for="category_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("category_id")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="category_id" style="display: none" />
                  <?php foreach ($category as $val):?>
                  <input type="checkbox" class="checkbox_ca" id="<?php echo 'category'.$val['id'];?>" name="category[]" value="<?php echo $val['id'];?>" /><span class="span_ca"><?php echo $val['name'];?></span>
                  <?php endforeach;?>
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="new_div" class="form-group">
              <label for="new" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("new")?></label>
              <div class="col-sm-10">
                  <input type="hidden" class="form-control" id="new" name="FrontProduct[new]" />
                  <input type="radio" name="is_new" id="new_yes">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="is_new" id="new_no" checked="checked">否
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="hot_div" class="form-group">
              <label for="hot" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("hot")?></label>
              <div class="col-sm-10">
                  <input type="hidden" class="form-control" id="hot" name="FrontProduct[hot]" value="0"/>
                  <input type="radio" name="is_hot" id="hot_yes">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="is_hot" id="hot_no" checked="checked">否
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="recommend_div" class="form-group">
              <label for="recommend" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("recommend")?></label>
              <div class="col-sm-10">
                  <input type="hidden" class="form-control" id="recommend" name="FrontProduct[recommend]" value="0" />
                  <input type="radio" name="is_recommend" id="rec_yes">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="is_recommend" id="rec_no" checked="checked">否
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="status_div" class="form-group">
              <label for="status" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("status")?></label>
              <div class="col-sm-10">
                  <input type="hidden" class="form-control" id="status" name="FrontProduct[status]" value="0" />
                  <input type="radio" name="is_on" id="on_yes">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="is_on" id="on_no" checked="checked">否
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="limit_div" class="form-group">
              <label for="limit" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("limit")?></label>
              <div class="col-sm-10">
                  <input type="hidden" id="limit" name="FrontProduct[limit]"/>
                  <input type="number" id="limit_min"  placeholder="最低" />元--
                  <input type="number" id="limit_max" placeholder="最高" />元
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="age_div" class="form-group">
              <label for="age" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("age")?></label>
              <div class="col-sm-10">
                  <input type="hidden" class="form-control" id="age" name="FrontProduct[age]"/>
                  <input type="number" id="age_min"  placeholder="最低" />岁--
                  <input type="number" id="age_max" placeholder="最高" />岁
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="identity_id_div" class="form-group">
              <label for="identity_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("identity_id")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="identity_id"  style="display: none"/>
              <?php foreach($identity as $value):?>
                  <input type="checkbox" class="checkbox_id" id="<?php echo 'identity'.$value['id'];?>" name="identity[]" value="<?php echo $value['id'];?>"><span class="span_id"><?php echo $value['name'];?></span>
              <?php endforeach;?>
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="money_rate_div" class="form-group">
              <label for="money_rate" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("money_rate")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="money_rate" name="FrontProduct[money_rate]" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="term_div" class="form-group">
              <label for="term" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("term")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="term" name="FrontProduct[term]" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="handle_time_div" class="form-group">
              <label for="handle_time" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("handle_time")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="handle_time" name="FrontProduct[handle_time]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="aptitude_div" class="form-group">
              <label for="aptitude" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("aptitude")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="aptitude" name="FrontProduct[aptitude]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="credit_div" class="form-group">
              <label for="credit" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("credit")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="credit" name="FrontProduct[credit]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="materials_div" class="form-group">
              <label for="materials" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("materials")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="materials" name="FrontProduct[materials]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="prompt_div" class="form-group">
              <label for="prompt" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("prompt")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="prompt" name="FrontProduct[prompt]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="logo_url_div" class="form-group">
              <label for="logo_url" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("logo_url")?></label>
              <div class="col-sm-10">
<!--                  <input type="text" class="form-control" id="logo_url" name="FrontProduct[logo_url]" placeholder="必填" />-->
                  <input type="image" id="logo_img" style="height: 100px;width: 150px">
                  <input type="file" class="form-control" id="logo_file" name="UploadForm[imageFile]">
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="describe_div" class="form-group">
              <label for="describe" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("describe")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="describe" name="FrontProduct[describe]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="apply_total_div" class="form-group">
              <label for="apply_total" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("apply_total")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="apply_total" name="FrontProduct[apply_total]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="link_div" class="form-group">
              <label for="link" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("link")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="link" name="FrontProduct[link]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="telephone_div" class="form-group">
              <label for="telephone" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("telephone")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="telephone" name="FrontProduct[telephone]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="success_rate_div" class="form-group">
              <label for="success_rate" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("success_rate")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="success_rate" name="FrontProduct[success_rate]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>
                <div id="return_div" class="form-group">
                    <label for="return" class="col-sm-2 control-label">还款方式</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="return" name="FrontProduct[return]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div id="check_div" class="form-group">
                    <label for="check" class="col-sm-2 control-label">审核方式</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="check" name="FrontProduct[check]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>
          <div id="update_user_div" class="form-group">
              <label for="update_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_user")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="update_user" name="FrontProduct[update_user]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="update_date_div" class="form-group">
              <label for="update_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="update_date" name="FrontProduct[update_date]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="create_user_div" class="form-group">
              <label for="create_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_user")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="create_user" name="FrontProduct[create_user]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="create_date_div" class="form-group">
              <label for="create_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="create_date" name="FrontProduct[create_date]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>
                    

			<?php ActiveForm::end(); ?>          
                </div>
			<div class="modal-footer">
				<a href="#" class="btn btn-default" data-dismiss="modal">关闭</a> <a
					id="edit_dialog_ok" href="#" class="btn btn-primary">确定</a>
			</div>
		</div>
	</div>
</div>
<?php $this->beginBlock('footer');  ?>
<!-- <body></body>后代码块 -->
 <script>
function orderby(field, op){
	 var url = window.location.search;
	 var optemp = field + " desc";
	 if(url.indexOf('orderby') != -1){
		 url = url.replace(/orderby=([^&?]*)/ig,  function($0, $1){ 
			 var optemp = field + " desc";
			 optemp = decodeURI($1) != optemp ? optemp : field + " asc";
			 return "orderby=" + optemp;
		   }); 
	 }
	 else{
		 if(url.indexOf('?') != -1){
			 url = url + "&orderby=" + encodeURI(optemp);
		 }
		 else{
			 url = url + "?orderby=" + encodeURI(optemp);
		 }
	 }
	 window.location.href=url; 
 }
 function searchAction(){
		$('#front-product-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

 function initEditSystemModule(data, type){
	if(type == 'create'){
        console.log('create');
		$("#id").val('');
		$("#p_name").val('');
		$("#order").val('');
		$("#category_id").hide();
        $("input[class='checkbox_ca']").each(function(){
            $(this).prop('checked',false).show();
        });
        $(".span_ca").show();
		$("#new").val(0);
        $("#new_no").prop('checked',true);
		$("#hot").val(0);
        $("#hot_no").prop('checked',true);
		$("#recommend").val(0);
        $("#rec_no").prop('checked',true);
		$("#status").val(0);
        $("#on_no").prop('checked',true);
		$("#limit").val('0-0元');
        $("#limit_min").val('');
        $("#limit_max").val('');
		$("#age").val('0-0岁');
        $("#age_min").val('');
        $("#age_max").val('');
        $("#identity_id").hide();
        $("input[class='checkbox_id']").each(function(){
            $(this).prop('checked',false).show();
        });
		$("#money_rate").val('');

		$("#term").val('');
		$("#handle_time").val('');
		$("#aptitude").val('');
		$("#credit").val('');
		$("#materials").val('');
		$("#prompt").val('');
		$("#logo_url").val('');
		$("#describe").val('');
		$("#apply_total").val('');
		$("#link").val('');
		$("#telephone").val('');
		$("#success_rate").val('');
		$("#check").val('');
		$("#return").val('');
		$("#update_user").val('');
		$("#update_date").val('');
		$("#create_user").val('');
		$("#create_date").val('');
		
	}
	else{
        console.log('create_else');
		$("#id").val(data.id);
    	$("#p_name").val(data.p_name);
    	$("#order").val(data.order);
        $("#category_id").hide();
        category_arr = data.category_id.split(',');
        $("input[class='checkbox_ca']").each(function(){
            if($.inArray($(this).val(),category_arr) != -1){
                $(this).prop("checked",true).show();
            }else{
                $(this).prop("checked",false).show();
            }
        });
        $('.span_ca').show();
        if(data.new){
            $("#new_yes").prop("checked",true);
        }else{
            $("#new_no").prop("checked",true);
        }
    	$("#new").val(data.new);
        console.log(data.hot);
        if(data.hot){
            $("#hot_yes").prop("checked",true);
        }else{
            $("#hot_no").prop("checked",true);
        }
    	$("#hot").val(data.hot);
        if(data.recommend){
            $("#rec_yes").prop("checked",'checked');
        }else{
            $("#rec_no").prop("checked",'checked');
        }
    	$("#recommend").val(data.recommend);
        if(data.status){
            $("#on_yes").prop("checked",true);
        }else{
            $("#on_no").prop("checked",true);
        }
    	$("#status").val(data.status);
        var limit = data.limit.split('-');
        $.each(limit,function(index,value){
            if(index == 0){
                $("#limit_min").val(value);
            }else{
                $("#limit_max").val(value.substring(0,value.length-1));
            }
        });
    	$("#limit").val(data.limit);
        var age = data.age.split('-');
        $.each(age,function(index,value){
            if(index == 0){
                $("#age_min").val(value);
            }else{
                $("#age_max").val(value.substring(0,value.length-1));
            }
        });
    	$("#age").val(data.age);
        identity_arr = data.identity_id.split(',');
        $("input[class='checkbox_id']").each(function(){
            if($.inArray($(this).val(),identity_arr) != -1){
                $(this).prop("checked",true);
            }else{
                $(this).prop("checked",false);
            }
        });
//    	$("#identity_id").val(data.identity_id);

    	$("#money_rate").val(data.money_rate);
    	$("#term").val(data.term);
    	$("#handle_time").val(data.handle_time);
    	$("#aptitude").val(data.aptitude);
    	$("#credit").val(data.credit);
    	$("#materials").val(data.materials);
    	$("#prompt").val(data.prompt);
    	$("#logo_url").val(data.logo_url);
    	$("#describe").val(data.describe);
    	$("#apply_total").val(data.apply_total);
    	$("#link").val(data.link);
    	$("#telephone").val(data.telephone);
    	$("#success_rate").val(data.success_rate);
    	$("#check").val(data.check);
    	$("#return").val(data.return);
    	$("#update_user").val(data.update_user);
    	$("#update_date").val(data.update_date);
    	$("#create_user").val(data.create_user);
    	$("#create_date").val(data.create_date);
    	}
	if(type == "view"){
        console.log('查看');
        console.log($("#td_ca_"+data.id).val());
      $("#id").attr({readonly:true,disabled:true});
      $("#p_name").attr({readonly:true,disabled:true});
      $("#order").attr({readonly:true,disabled:true});
      $("#category_id").val($("#td_ca_"+data.id).val()).show();
      $("#category_id").attr({readonly:true,disabled:true});
      $("input[class='checkbox_ca']").each(function(){
          $(this).hide();
      });
      $('.span_ca').hide();
      $("#new").attr({readonly:true,disabled:true});
      $("#new_yes").attr({readonly:true,disabled:true});
      $("#new_no").attr({readonly:true,disabled:true});
      $("#hot").attr({readonly:true,disabled:true});
      $("#hot_yes").attr({readonly:true,disabled:true});
      $("#hot_no").attr({readonly:true,disabled:true});
      $("#recommend").attr({readonly:true,disabled:true});
      $("#rec_yes").attr({readonly:true,disabled:true});
      $("#rec_no").attr({readonly:true,disabled:true});
      $("#status").attr({readonly:true,disabled:true});
      $("#on_yes").attr({readonly:true,disabled:true});
      $("#on_no").attr({readonly:true,disabled:true});
      $("#limit").attr({readonly:true,disabled:true});
      $("#limit_min").attr({readonly:true,disabled:true});
      $("#limit_max").attr({readonly:true,disabled:true});
      $("#age").attr({readonly:true,disabled:true});
      $("#age_min").attr({readonly:true,disabled:true});
      $("#age_max").attr({readonly:true,disabled:true});
      $("#identity_id").val($("#td_id_"+data.id).val()).show();
      $("#identity_id").attr({readonly:true,disabled:true});
        $("input[class='checkbox_id']").each(function(){
            $(this).hide();
        });
        $('.span_id').hide();
      $("#money_rate").attr({readonly:true,disabled:true});
      $("#term").attr({readonly:true,disabled:true});
      $("#handle_time").attr({readonly:true,disabled:true});
      $("#aptitude").attr({readonly:true,disabled:true});
      $("#credit").attr({readonly:true,disabled:true});
      $("#materials").attr({readonly:true,disabled:true});
      $("#prompt").attr({readonly:true,disabled:true});
      $("#logo_url").attr({readonly:true,disabled:true});
        $("#logo_img").prop('src',data.logo_url).show();
        $("#logo_file").hide();
      $("#describe").attr({readonly:true,disabled:true});
      $("#apply_total").attr({readonly:true,disabled:true});
      $("#link").attr({readonly:true,disabled:true});
      $("#telephone").attr({readonly:true,disabled:true});
      $("#success_rate").attr({readonly:true,disabled:true});
      $("#check").attr({readonly:true,disabled:true});
      $("#return").attr({readonly:true,disabled:true});
      $("#update_user").attr({readonly:true,disabled:true});
      $("#update_user").parent().parent().show();
      $("#update_date").attr({readonly:true,disabled:true});
      $("#update_date").parent().parent().show();
      $("#create_user").attr({readonly:true,disabled:true});
      $("#create_user").parent().parent().show();
      $("#create_date").attr({readonly:true,disabled:true});
      $("#create_date").parent().parent().show();
	$('#edit_dialog_ok').addClass('hidden');
	}
	else{
        console.log('22');
      $("#id").attr({readonly:false,disabled:false});
      $("#p_name").attr({readonly:false,disabled:false});
      $("#order").attr({readonly:false,disabled:false});
      $("#category_id").attr({readonly:false,disabled:false});
      $("#new").attr({readonly:false,disabled:false});
      $("#new_yes").attr({readonly:false,disabled:false});
      $("#new_no").attr({readonly:false,disabled:false});
      $("#hot").attr({readonly:false,disabled:false});
      $("#hot_yes").attr({readonly:false,disabled:false});
      $("#hot_no").attr({readonly:false,disabled:false});
      $("#recommend").attr({readonly:false,disabled:false});
      $("#rec_yes").attr({readonly:false,disabled:false});
      $("#rec_no").attr({readonly:false,disabled:false});
      $("#status").attr({readonly:false,disabled:false});
      $("#on_yes").attr({readonly:false,disabled:false});
      $("#on_no").attr({readonly:false,disabled:false});
      $("#limit").attr({readonly:false,disabled:false});
      $("#limit_min").attr({readonly:false,disabled:false});
      $("#limit_max").attr({readonly:false,disabled:false});
      $("#age").attr({readonly:false,disabled:false});
      $("#age_min").attr({readonly:false,disabled:false});
      $("#age_max").attr({readonly:false,disabled:false});
      $("#identity_id").attr({readonly:false,disabled:false});
      $("#money_rate").attr({readonly:false,disabled:false});
      $("#term").attr({readonly:false,disabled:false});
      $("#handle_time").attr({readonly:false,disabled:false});
      $("#aptitude").attr({readonly:false,disabled:false});
      $("#credit").attr({readonly:false,disabled:false});
      $("#materials").attr({readonly:false,disabled:false});
      $("#prompt").attr({readonly:false,disabled:false});
      $("#logo_url").attr({readonly:false,disabled:false});
      $("#logo_img").hide();
      $("#logo_file").show();
      $("#describe").attr({readonly:false,disabled:false});
      $("#apply_total").attr({readonly:false,disabled:false});
      $("#link").attr({readonly:false,disabled:false});
      $("#telephone").attr({readonly:false,disabled:false});
      $("#success_rate").attr({readonly:false,disabled:false});
      $("#check").attr({readonly:false,disabled:false});
      $("#return").attr({readonly:false,disabled:false});
      $("#update_user").attr({readonly:false,disabled:false});
      $("#update_user").parent().parent().hide();
      $("#update_date").attr({readonly:false,disabled:false});
      $("#update_date").parent().parent().hide();
      $("#create_user").attr({readonly:false,disabled:false});
      $("#create_user").parent().parent().hide();
      $("#create_date").attr({readonly:false,disabled:false});
      $("#create_date").parent().parent().hide();
		$('#edit_dialog_ok').removeClass('hidden');
		}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('front-product/view')?>",
		   data: {"id":id},
		   cache: false,
		   dataType:"json",
		   error: function (xmlHttpRequest, textStatus, errorThrown) {
			    alert("出错了，" + textStatus);
			},
		   success: function(data){
			   initEditSystemModule(data, type);
		   }
		});
}
	
function editAction(id){
	initModel(id, 'edit');
}

function deleteAction(id){
	var ids = [];
	if(!!id == true){
		ids[0] = id;
	}
	else{
		var checkboxs = $('#data_table :checked');
	    if(checkboxs.size() > 0){
	        var c = 0;
	        for(i = 0; i < checkboxs.size(); i++){
	            var id = checkboxs.eq(i).val();
	            if(id != ""){
	            	ids[c++] = id;
	            }
	        }
	    }
	}
	if(ids.length > 0){
		admin_tool.confirm('请确认是否删除', function(){
		    $.ajax({
				   type: "GET",
				   url: "<?=Url::toRoute('front-product/delete')?>",
				   data: {"ids":ids},
				   cache: false,
				   dataType:"json",
				   error: function (xmlHttpRequest, textStatus, errorThrown) {
					    admin_tool.alert('msg_info', '出错了，' + textStatus, 'warning');
					},
				   success: function(data){
					   for(i = 0; i < ids.length; i++){
						   $('#rowid_' + ids[i]).remove();
					   }
					   admin_tool.alert('msg_info', '删除成功', 'success');
					   window.location.reload();
				   }
				});
		});
	}
	else{
		admin_tool.alert('msg_info', '请先选择要删除的数据', 'warning');
	}
    
}

function getSelectedIdValues(formId)
{
	var value="";
	$( formId + " :checked").each(function(i)
	{
		if(!this.checked)
		{
			return true;
		}
		value += this.value;
		if(i != $("input[name='id']").size()-1)
		{
			value += ",";
		}
	 });
	return value;
}

$('#edit_dialog_ok').click(function (e) {
    e.preventDefault();
	$('#front-product-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#front-product-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('front-product/create')?>" : "<?=Url::toRoute('front-product/update')?>";
    $(this).ajaxSubmit({
    	type: "post",
    	dataType:"json",
    	url: action,
    	success: function(value) 
    	{
        	if(value.errno == 0){
        		$('#edit_dialog').modal('hide');
        		admin_tool.alert('msg_info', '添加成功', 'success');
        		window.location.reload();
        	}
        	else{
            	var json = value.data;
        		for(var key in json){
        			$('#' + key).attr({'data-placement':'bottom', 'data-content':json[key], 'data-toggle':'popover'}).addClass('popover-show').popover('show');
        			
        		}
        	}

    	}
    });
});
$('#new_yes').click(function(){
    $('#new').val(1);
});
$('#new_no').click(function(){
    $('#new').val(0);
});
$('#hot_yes').click(function(){
    $('#hot').val(1);
});
$('#hot_no').click(function(){
    $('#hot').val(0);
});
$('#rec_yes').click(function(){
    $('#recommend').val(1);
});
$('#rec_no').click(function(){
    $('#recommend').val(0);
});
$('#on_yes').click(function(){
    $('#status').val(1);
});
$('#on_no').click(function(){
    $('#status').val(0);
});
$('#limit_min').blur(function(){
    $("#limit").val($("#limit_min").val()+'-'+$("#limit_max").val()+'元');
});
$('#limit_max').blur(function(){
    $("#limit").val($("#limit_min").val()+'-'+$("#limit_max").val()+'元');
});
$('#age_min').blur(function(){
    $("#age").val($("#age_min").val()+'-'+$("#age_max").val()+'岁');
});
$('#age_max').blur(function(){
    $("#age").val($("#age_min").val()+'-'+$("#age_max").val()+'岁');
});
 </script>
<?php $this->endBlock(); ?>