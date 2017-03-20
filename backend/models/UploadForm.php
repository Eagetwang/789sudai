<?php
namespace app\models;

use backend\models\BaseModel;
use yii\base\Model;
use yii\web\UploadedFile;

/**
 * UploadForm is the model behind the upload form.
 */
class UploadForm extends BaseModel
{
    /**
     * @var UploadedFile file attribute
     */
    public $imageFile;
    public $imageFile5;
    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['imageFile'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg'],
        ];
    }
    public function upload()
    {
        if ($this->validate()) {

            $time = time().mt_rand('1000','9999');
            $flog = $this->imageFile->saveAs('../../common/uploads/' . $time . '.' . $this->imageFile->extension);
            if ($flog) {
                $img_url = '../../common/uploads/' . $time . '.' . $this->imageFile->extension;
                return $img_url;
            }

            return false;
        }
    }
    public function uploadMulti()
    {
        if ($this->validate()) {
            $files = array();
            foreach($this->imageFile5 as $file){
                $time = time().mt_rand('1000','9999');
                $filename = $file->saveAs('skin/uploads/' . $time . '.' . $file->extension);
                if ($filename) {
                    $img_url = 'skin/uploads/' . $time . '.' . $file->extension;
                    $files[] = $img_url;
                    //return $files;
                }
            }
            return $files ;
        }
    }
}