
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use yii\helpers\Url;
use yii\bootstrap\Modal;
use backend\models\FrontEssence;
use yii\bootstrap\Html;
$modelLabel = new \backend\models\FrontEssence();
?>

<?php $this->beginBlock('header');  ?>
<!-- <head></head>中代码块 -->
<?php $this->endBlock(); ?>

<script type="text/javascript" charset="utf-8" src="../../common/utf8-php/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../common/utf8-php/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="../../common/utf8-php/lang/zh-cn/zh-cn.js"></script>

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
                <?php ActiveForm::begin(['id' => 'front-essence-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('front-essence/index')]); ?>     
                
                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                      <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                  </div>

                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('title')?>:</label>
                      <input type="text" class="form-control" id="query[title]" name="query[title]"  value="<?=isset($query["title"]) ? $query["title"] : "" ?>">
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
              echo '<th onclick="orderby(\'title\', \'desc\')" '.CommonFun::sortClass($orderby, 'title').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('title').'</th>';
              echo '<th onclick="orderby(\'introduce\', \'desc\')" '.CommonFun::sortClass($orderby, 'introduce').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('introduce').'</th>';
			echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >图片</th>';
			echo '<th onclick="orderby(\'content\', \'desc\')" '.CommonFun::sortClass($orderby, 'content').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('content').'</th>';
              echo '<th onclick="orderby(\'update_date\', \'desc\')" '.CommonFun::sortClass($orderby, 'update_date').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_date').'</th>';
              echo '<th onclick="orderby(\'cteate_date\', \'desc\')" '.CommonFun::sortClass($orderby, 'cteate_date').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('cteate_date').'</th>';
         
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
                echo '  <td>' . $model->title . '</td>';
                echo '  <td>' . $model->introduce . '</td>';
				echo '  <td><img style="width: 100px;height: 60px" src="' . $model->img . '"></img></td>';
				echo "<input type='hidden' id='content_".$model->id."' value='".$model->content."'>";
				echo '  <td>' . Html::a('点击查看', '#', [
					'id' => 'create_'.$model->id ,
					'data-toggle' => 'modal',
					'data-target' => '#create-modal'.$model->id ,
					'class' => 'btn btn-success btn-eaget',
				]).'</td>';
				Modal::begin([
					'id' => 'create-modal'.$model->id ,
					'header' => '<h4 class="modal-title">'.$model->title .'</h4>',
					'footer' => '<a href="#" class="btn btn-primary" data-dismiss="modal">Close</a>',
				]);
				Modal::end();
//				echo "<script>$('.modal-body').html(".$model->id.");</script>";
				echo '  <td>' . $model->update_date . '</td>';
                echo '  <td>' . $model->cteate_date . '</td>';
                echo '  <td class="center">';
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
                <?php $form = ActiveForm::begin(["id" => "front-essence-form", "class"=>"form-horizontal", "action"=>Url::toRoute("front-essence/save")]); ?>                      
                 
          <input type="hidden" class="form-control" id="id" name="id" />

          <div id="title_div" class="form-group">
              <label for="title" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("title")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="title" name="FrontEssence[title]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="introduce_div" class="form-group">
              <label for="introduce" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("introduce")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="introduce" name="FrontEssence[introduce]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="content_div" class="form-group">
              <label for="content" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("content")?></label>
              <div class="col-sm-10">
<!--                  <input type="text" class="form-control" id="content" name="FrontEssence[content]" placeholder="必填" />-->
				  <div>
					  <script id="editor" type="text/plain" style="width:450px;height:400px;"></script>
				  </div>
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="update_date_div" class="form-group">
              <label for="update_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="update_date" name="FrontEssence[update_date]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="cteate_date_div" class="form-group">
              <label for="cteate_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("cteate_date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="cteate_date" name="FrontEssence[cteate_date]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>
                    <p><dialog open> xxx</dialog></p>

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
		$('#front-essence-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

 function initEditSystemModule(data, type){
	if(type == 'create'){
		$("#id").val('');
		$("#title").val('');
		$("#introduce").val('');
		$("#content").val('');
		$("#update_date").val('');
		$("#cteate_date").val('');
		
	}
	else{
		$("#id").val(data.id);
    	$("#title").val(data.title);
    	$("#introduce").val(data.introduce);
    	$("#content").val(data.content);
    	$("#update_date").val(data.update_date);
    	$("#cteate_date").val(data.cteate_date);
    	}
	if(type == "view"){
      $("#id").attr({readonly:true,disabled:true});
      $("#title").attr({readonly:true,disabled:true});
      $("#introduce").attr({readonly:true,disabled:true});
      $("#content").attr({readonly:true,disabled:true});
      $("#update_date").attr({readonly:true,disabled:true});
      $("#update_date").parent().parent().show();
      $("#cteate_date").attr({readonly:true,disabled:true});
      $("#cteate_date").parent().parent().show();
	$('#edit_dialog_ok').addClass('hidden');
	}
	else{
      $("#id").attr({readonly:false,disabled:false});
      $("#title").attr({readonly:false,disabled:false});
      $("#introduce").attr({readonly:false,disabled:false});
      $("#content").attr({readonly:false,disabled:false});
      $("#update_date").attr({readonly:false,disabled:false});
      $("#update_date").parent().parent().hide();
      $("#cteate_date").attr({readonly:false,disabled:false});
      $("#cteate_date").parent().parent().hide();
		$('#edit_dialog_ok').removeClass('hidden');
		}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('front-essence/view')?>",
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
	window.location.href= "<?php echo Url::toRoute(['front-essence/create' ])?>"+'&id='+id;
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
				   url: "<?=Url::toRoute('front-essence/delete')?>",
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
	$('#front-essence-form').submit();
});

$('#create_btn').click(function (e) {
	window.location.href= "<?=Url::toRoute('front-essence/create')?>";
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#front-essence-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('front-essence/create')?>" : "<?=Url::toRoute('front-essence/update')?>";
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

//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var ue = UE.getEditor('editor');


function isFocus(e){
	alert(UE.getEditor('editor').isFocus());
	UE.dom.domUtils.preventDefault(e)
}
function setblur(e){
	UE.getEditor('editor').blur();
	UE.dom.domUtils.preventDefault(e)
}
function insertHtml() {
	var value = prompt('插入html代码', '');
	UE.getEditor('editor').execCommand('insertHtml', value)
}
function createEditor() {
	enableBtn();
	UE.getEditor('editor');
}
function getAllHtml() {
	alert(UE.getEditor('editor').getAllHtml())
}
function getContent() {
	var arr = [];
	arr.push("使用editor.getContent()方法可以获得编辑器的内容");
	arr.push("内容为：");
	arr.push(UE.getEditor('editor').getContent());
	alert(arr.join("\n"));
}
function getPlainTxt() {
	var arr = [];
	arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
	arr.push("内容为：");
	arr.push(UE.getEditor('editor').getPlainTxt());
	alert(arr.join('\n'))
}
function setContent(isAppendTo) {
	var arr = [];
	arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
	UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
	alert(arr.join("\n"));
}
function setDisabled() {
	UE.getEditor('editor').setDisabled('fullscreen');
	disableBtn("enable");
}

function setEnabled() {
	UE.getEditor('editor').setEnabled();
	enableBtn();
}

function getText() {
	//当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
	var range = UE.getEditor('editor').selection.getRange();
	range.select();
	var txt = UE.getEditor('editor').selection.getText();
	alert(txt)
}

function getContentTxt() {
	var arr = [];
	arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
	arr.push("编辑器的纯文本内容为：");
	arr.push(UE.getEditor('editor').getContentTxt());
	alert(arr.join("\n"));
}
function hasContent() {
	var arr = [];
	arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
	arr.push("判断结果为：");
	arr.push(UE.getEditor('editor').hasContents());
	alert(arr.join("\n"));
}
function setFocus() {
	UE.getEditor('editor').focus();
}
function deleteEditor() {
	disableBtn();
	UE.getEditor('editor').destroy();
}
function disableBtn(str) {
	var div = document.getElementById('btns');
	var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
	for (var i = 0, btn; btn = btns[i++];) {
		if (btn.id == str) {
			UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
		} else {
			btn.setAttribute("disabled", "true");
		}
	}
}
function enableBtn() {
	var div = document.getElementById('btns');
	var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
	for (var i = 0, btn; btn = btns[i++];) {
		UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
	}
}

function getLocalData () {
	alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
}

function clearLocalData () {
	UE.getEditor('editor').execCommand( "clearlocaldata" );
	alert("已清空草稿箱")
}
function showModel(){

}
$(".btn-eaget").click(function(){
	var id = $(this).attr('id').split('_')[1];
	$('.modal-body').html($('#content_'+id).val());
});
</script>
<?php $this->endBlock(); ?>