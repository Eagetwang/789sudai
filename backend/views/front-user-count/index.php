
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use yii\helpers\Url;

use backend\models\FrontUserCount;

$modelLabel = new \backend\models\FrontUserCount();
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
                <?php ActiveForm::begin(['id' => 'front-user-count-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('front-user-count/index')]); ?>     
                
                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('date')?>:</label>
					  <input class="form-control" name="date1" type="date" />
					  <input class="form-control" name="date2" type="date" />
<!--                      <input type="text" class="form-control" id="query[date]" name="query[date]"  value="--><?//=isset($query["date"]) ? $query["date"] : "" ?><!--">-->
                  </div>

                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('type')?>:</label>
					  <select class="form-control" name="query[type]">
						  <option value="0">全部</option>
						  <?php
						  foreach($indexs as $index){
							  echo "<option value='".$index['index_id']."'>".$index['name']."</option>";
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
              echo '<th onclick="orderby(\'date\', \'desc\')" '.CommonFun::sortClass($orderby, 'date').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('date').'</th>';
              echo '<th onclick="orderby(\'register_total\', \'desc\')" '.CommonFun::sortClass($orderby, 'register_total').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('register_total').'</th>';
              echo '<th onclick="orderby(\'login_total\', \'desc\')" '.CommonFun::sortClass($orderby, 'login_total').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('login_total').'</th>';
              echo '<th onclick="orderby(\'login_user_total\', \'desc\')" '.CommonFun::sortClass($orderby, 'login_user_total').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('login_user_total').'</th>';
         
			?>
	
            <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >活跃度(%)</th>
            </tr>
            </thead>
            <tbody>
            
            <?php
            foreach ($models as $model) {
                echo '<tr>';
                //echo '  <td>' . $model->id . '</td>';
                echo '  <td>' . $model->date . '</td>';
                //echo '  <td>' . $model->type . '</td>';
                echo '  <td>' . $model->register_total . '</td>';
                echo '  <td>' . $model->login_total . '</td>';
                echo '  <td>' . $model->login_user_total . '</td>';
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
                <?php $form = ActiveForm::begin(["id" => "front-user-count-form", "class"=>"form-horizontal", "action"=>Url::toRoute("front-user-count/save")]); ?>                      
                 
          <input type="hidden" class="form-control" id="id" name="id" />

          <div id="date_div" class="form-group">
              <label for="date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="date" name="FrontUserCount[date]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="type_div" class="form-group">
              <label for="type" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("type")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="type" name="FrontUserCount[type]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="register_total_div" class="form-group">
              <label for="register_total" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("register_total")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="register_total" name="FrontUserCount[register_total]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="login_total_div" class="form-group">
              <label for="login_total" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("login_total")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="login_total" name="FrontUserCount[login_total]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="login_user_total_div" class="form-group">
              <label for="login_user_total" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("login_user_total")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="login_user_total" name="FrontUserCount[login_user_total]" placeholder="必填" />
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
		$('#front-user-count-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

 function initEditSystemModule(data, type){
	if(type == 'create'){
		$("#id").val('');
		$("#date").val('');
		$("#type").val('');
		$("#register_total").val('');
		$("#login_total").val('');
		$("#login_user_total").val('');
		
	}
	else{
		$("#id").val(data.id);
    	$("#date").val(data.date);
    	$("#type").val(data.type);
    	$("#register_total").val(data.register_total);
    	$("#login_total").val(data.login_total);
    	$("#login_user_total").val(data.login_user_total);
    	}
	if(type == "view"){
      $("#id").attr({readonly:true,disabled:true});
      $("#date").attr({readonly:true,disabled:true});
      $("#type").attr({readonly:true,disabled:true});
      $("#register_total").attr({readonly:true,disabled:true});
      $("#login_total").attr({readonly:true,disabled:true});
      $("#login_user_total").attr({readonly:true,disabled:true});
	$('#edit_dialog_ok').addClass('hidden');
	}
	else{
      $("#id").attr({readonly:false,disabled:false});
      $("#date").attr({readonly:false,disabled:false});
      $("#type").attr({readonly:false,disabled:false});
      $("#register_total").attr({readonly:false,disabled:false});
      $("#login_total").attr({readonly:false,disabled:false});
      $("#login_user_total").attr({readonly:false,disabled:false});
		$('#edit_dialog_ok').removeClass('hidden');
		}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('front-user-count/view')?>",
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
				   url: "<?=Url::toRoute('front-user-count/delete')?>",
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
	$('#front-user-count-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#front-user-count-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('front-user-count/create')?>" : "<?=Url::toRoute('front-user-count/update')?>";
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