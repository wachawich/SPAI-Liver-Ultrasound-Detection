# SPAI-Liver-Ultrasound-Detection!
Super AI engineer ss4 level2


# Resource
**Model YoLov10** -> [Github](https://github.com/THU-MIG/yolov10) <br>
this hackathon using resource A100*4 with **LANTA!**

# Pipe Line
- 1 sample EDA and data understanding
    - in  [EDA Notebook](http://handlebarsjs.com/) 
    - Plot data in format yolo for understanding
    - after EDA we know we should generate the mobile data set more
 - 2 Generate Artifact Data
	 -  in [Generate Artifact Notebook](http://handlebarsjs.com/)
	 - Select machine image from train set for generate the artifact
- 3 Preprocess the mobile image set
	- in [Preprocess Notebook](http://handlebarsjs.com/)
	- Select the mobile image for preprocess 
	- preprocess the image by **Glare Reduction**  - Image Processing by the [Github](https://github.com/ducthotran2010/glare-reduction)
- 4 Training YoLov10
	- in [Training Notebook](http://handlebarsjs.com/)
	- Just training the yolov10 and predict
- 5 YoLo to pascal
  - in [Format Notebook](http://handlebarsjs.com/)
  - Just convert the YoLo format to pascal format


## Result and Score

**The results of my experiment**
* dataset   
	-  Normal -> Normal Dataset no generate
	- Generate data -> generate artifact dataset [Generate Artifact Notebook](http://handlebarsjs.com/)
* Preprocess
	-  Cut The Background image -> Cut background that no labels in .txt
	- Add a little fillera -> in [EDA Notebook](http://handlebarsjs.com/)  #Enhance Image
	- Usin Glare Reduction on mobile image -> [Preprocess Notebook](http://handlebarsjs.com/) # Preprocess New Data - artifact 
	

|     Model   | epoch  |   dataset  |          preprocess           |    Public  | Private
|-------------|--------|---------   |-----------------------------  |----|----|
|YOLOv10n     |   100  |   Normal   |Cut The Background image that no labels|0.12108|0.11054|
|YOLOv10x     |   50   |   Normal   |   Add a little filler         |0.14403|0.14221|
|YOLOv10x     |   50   |   Normal   |Usin Glare Reduction on mobile image |0.14456|0.16122|
|YOLOv10x     |   50   |   Normal + <br> Generate Data|Usin Glare Reduction on mobile image |0.17194|0.18321|
|YOLOv10x     |   80   |   Normal + <br> Generate Data|Usin Glare Reduction on mobile image |0.17566|0.18687|

```
