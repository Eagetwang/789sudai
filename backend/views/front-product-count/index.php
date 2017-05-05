
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use yii\helpers\Url;

use backend\models\FrontProductCount;

$modelLabel = new \backend\models\FrontProductCount();
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

            </div>
          </div>
        </div>
        <!-- /.box-header -->
        
        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
            <!-- row start search-->
          	<div class="row">
          	<div class="col-sm-12">
                <?php ActiveForm::begin(['id' => 'front-product-count-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('front-product-count/index')]); ?>     
                
                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('date')?>:</label>
					  <input class="form-control" name="date1" type="date" value="<?php echo $datemin;?>"/>
					  <input class="form-control" name="date2" type="date" value="<?php echo $datemax;?>"/>
<!--                      <input type="text" class="form-control" id="query[date]" name="query[date]"  value="--><?//=isset($query["date"]) ? $query["date"] : "" ?><!--">-->
                  </div>

                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('type')?>:</label>
					  <select class="form-control" name="query[type]">
						  <option value="0">全部</option>
						  <?php
						  foreach($indexs as $index){
							  if($index['index_id'] == $query['type']){
								  echo "<option value='".$index['index_id']."' selected>".$index['name']."</option>";
							  }else{
								  echo "<option value='".$index['index_id']."'>".$index['name']."</option>";
							  }
						  }
						  ?>
					  </select>
<!--                      <input type="text" class="form-control" id="query[type]" name="query[type]"  value="--><?//=isset($query["type"]) ? $query["type"] : "" ?><!--">-->
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
              echo '<th onclick="orderby(\'product_id\', \'desc\')" '.CommonFun::sortClass($orderby, 'product_id').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('product_id').'</th>';
              echo '<th onclick="orderby(\'pv\', \'desc\')" '.CommonFun::sortClass($orderby, 'pv').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('pv').'</th>';
              echo '<th onclick="orderby(\'uv\', \'desc\')" '.CommonFun::sortClass($orderby, 'uv').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('uv').'</th>';
              echo '<th onclick="orderby(\'apply_total\', \'desc\')" '.CommonFun::sortClass($orderby, 'apply_total').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('apply_total').'</th>';
			  echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >申请转化率(%)</th>';
			?>

            </tr>
            </thead>
            <tbody>
               
            <?php
            foreach ($models as $model) {
                echo '<tr>';
                //echo '  <td>' . $model->id . '</td>';
                echo '  <td>' . $model['p_name']. '</td>';
                //echo '  <td>' . $model->date . '</td>';
                //echo '  <td>' . $model->type . '</td>';
                echo '  <td>' . $model['pv'] . '</td>';
                echo '  <td>' . $model['uv'] . '</td>';
                echo '  <td>' . $model['apply_total'] . '</td>';
				if($model['uv']){
					echo '  <td>' . round(($model['apply_total']/$model['uv'])*100,3) . '</td>';
				}else{
					echo '  <td>' . 0 . '</td>';
				}

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
                <?php $form = ActiveForm::begin(["id" => "front-product-count-form", "class"=>"form-horizontal", "action"=>Url::toRoute("front-product-count/save")]); ?>                      
                 
          <input type="hidden" class="form-control" id="id" name="id" />

          <div id="product_id_div" class="form-group">
              <label for="product_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("product_id")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="product_id" name="FrontProductCount[product_id]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="date_div" class="form-group">
              <label for="date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="date" name="FrontProductCount[date]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="type_div" class="form-group">
              <label for="type" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("type")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="type" name="FrontProductCount[type]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="pv_div" class="form-group">
              <label for="pv" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("pv")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="pv" name="FrontProductCount[pv]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="uv_div" class="form-group">
              <label for="uv" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("uv")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="uv" name="FrontProductCount[uv]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="apply_total_div" class="form-group">
              <label for="apply_total" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("apply_total")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="apply_total" name="FrontProductCount[apply_total]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="share_total_div" class="form-group">
              <label for="share_total" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("share_total")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="share_total" name="FrontProductCount[share_total]" placeholder="必填" />
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
		$('#front-product-count-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

 function initEditSystemModule(data, type){
	if(type == 'create'){
		$("#id").val('');
		$("#product_id").val('');
		$("#date").val('');
		$("#type").val('');
		$("#pv").val('');
		$("#uv").val('');
		$("#apply_total").val('');
		$("#share_total").val('');
		
	}
	else{
		$("#id").val(data.id);
    	$("#product_id").val(data.product_id);
    	$("#date").val(data.date);
    	$("#type").val(data.type);
    	$("#pv").val(data.pv);
    	$("#uv").val(data.uv);
    	$("#apply_total").val(data.apply_total);
    	$("#share_total").val(data.share_total);
    	}
	if(type == "view"){
      $("#id").attr({readonly:true,disabled:true});
      $("#product_id").attr({readonly:true,disabled:true});
      $("#date").attr({readonly:true,disabled:true});
      $("#type").attr({readonly:true,disabled:true});
      $("#pv").attr({readonly:true,disabled:true});
      $("#uv").attr({readonly:true,disabled:true});
      $("#apply_total").attr({readonly:true,disabled:true});
      $("#share_total").attr({readonly:true,disabled:true});
	$('#edit_dialog_ok').addClass('hidden');
	}
	else{
      $("#id").attr({readonly:false,disabled:false});
      $("#product_id").attr({readonly:false,disabled:false});
      $("#date").attr({readonly:false,disabled:false});
      $("#type").attr({readonly:false,disabled:false});
      $("#pv").attr({readonly:false,disabled:false});
      $("#uv").attr({readonly:false,disabled:false});
      $("#apply_total").attr({readonly:false,disabled:false});
      $("#share_total").attr({readonly:false,disabled:false});
		$('#edit_dialog_ok').removeClass('hidden');
		}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('front-product-count/view')?>",
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
				   url: "<?=Url::toRoute('front-product-count/delete')?>",
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
	$('#front-product-count-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#front-product-count-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('front-product-count/create')?>" : "<?=Url::toRoute('front-product-count/update')?>";
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

 
</script>
<?php $this->endBlock(); ?>