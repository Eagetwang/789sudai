<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use yii\helpers\Url;

use backend\models\FrontEssence;

$modelLabel = new \backend\models\FrontEssence();
?>
<script type="text/javascript" charset="utf-8" src="../../common/utf8-php/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../common/utf8-php/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="../../common/utf8-php/lang/zh-cn/zh-cn.js"></script>
<div class="modal-body">
    <?php $form = ActiveForm::begin(["id" => "front-essence-form", "class"=>"form-horizontal", "action"=>Url::toRoute("front-essence/save")]); ?>

    <input type="hidden" class="form-control" id="id" name="id" value="<?php if($essence) echo $essence['id'];?>"/>

    <div id="title_div" class="form-group">
        <label for="title" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("title")?></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="title" name="FrontEssence[title]" placeholder="必填" value="<?php if($essence) echo $essence['title'];?>"/>
        </div>
        <div class="clearfix"></div>
    </div>

    <div id="introduce_div" class="form-group">
        <label for="introduce" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("introduce")?></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="introduce" name="FrontEssence[introduce]" placeholder="" value='<?php if($essence) echo $essence['introduce'];?>' />
        </div>
        <div class="clearfix"></div>
    </div>
    <div id="img_div" class="form-group">
        <label for="img" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("img")?></label>
        <div class="col-sm-10">
            <input type="hidden" class="form-control" id="img" name="FrontPlate[img]" placeholder="" value='<?php if($essence) echo $essence['img'];?>'/>
            <input type="file" name="UploadForm[imageFile]">
        </div>
        <div class="clearfix"></div>
    </div>

    <div id="content_div" class="form-group">
        <label for="content" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("content")?></label>
        <div class="col-sm-10">
                    <?php if($essence){echo "<input type='hidden' id='content' name='FrontEssence[content]' value='".$essence['content']."'>";}else{echo "<input type='hidden' id='content' name='FrontEssence[content]'>";}?>
            <div>
                <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>

    <?php ActiveForm::end(); ?>
    <div class="modal-footer">
        <a id="edit_dialog_ok" href="#" class="btn btn-primary">确定</a>
    </div>
    <script>
        //实例化编辑器
        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        var ue = UE.getEditor('editor');
        ue.ready(function(){
            if($("#content").val() != ""){
                console.log($("#content").val());
                UE.getEditor('editor').setContent($("#content").val());
            }
            UE.getEditor('editor').addListener('blur',function(editor){
                var arr = [];
            arr.push(UE.getEditor('editor').getContent());
            $('#content').val(arr);
            });
        });
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

            UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);

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

        $('#edit_dialog_ok').click(function (e) {
            e.preventDefault();
//            var arr = [];
//            arr.push(UE.getEditor('editor').getContent());
//            $('#content').val(arr);
            var id = $("#id").val();
            var action = id == "" ? "<?=Url::toRoute('front-essence/add-essence')?>" : "<?=Url::toRoute('front-essence/update')?>";
            console.log(action);
            $('#front-essence-form').ajaxSubmit({
                type: "post",
                dataType:"json",
                url: action,
                success: function(value)
                {
                    console.log(value);
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
</div>