
## Installation 
1. Install a miniconda (or Anaconda)  
   on Windows  
      https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe  
   on Linux  
      `$ MINICONDA_INSTALLER_SCRIPT=Miniconda3-latest-Linux-x86_64.sh`  
      `$ MINICONDA_PREFIX=/usr/local`  
      `$ wget https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER_SCRIPT`  
      `$ chmod +x $MINICONDA_INSTALLER_SCRIPT`  
      `$ ./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX`  
 
2. Create an [Anaconda environment] for this project:
    1. `conda env create -f environment.yaml`
    2. `conda activate mot_neural_solver`
    3. `pip install -e tracking_wo_bnw`
    4. `pip install -e .`

3. Download the [MOTChallenge data](https://motchallenge.net/) and pretrained models:
    ```
    bash scripts/setup/download_motcha.sh
    bash scripts/setup/download_models.sh
    bash scripts/setup/download_prepr_dets.sh
    bash scripts/setup/download_mot20.sh
    ```

## Training
You can train a model by running:
```
python scripts/train.py 
```
Sequences `MOT17-02` , `MOT17-04` , `MOT17-10` and `MOT17-13` will be used for validation, and all remaining sequences in the `MOT15`
and `MOT17` datasets will be used for training

For training a model on the `MOT20` dataset,
```
python scripts/train.py with configs/mot20/tracking_cfg.yaml train_params.save_every_epoch=True train_params.num_epochs=22
```

**NOTE**: The first time you use a sequence for training or testing, it will need to be processed. This means that
ground truth boxes (if available) will be assigned to detection boxes, detection files will be stored with sequence metainformation, and (possibly) reid embeddings
will be computed and stored. This process should take ~30 mins for train/test sets of `MOT15` and `MOT17` and more than 1.5 hours for train sets of MOT20 only needs to be performed once per set of detections. 

## Evaluation
You can evaluate a trained model on a set of sequences by running:
```
python scripts/evaluate.py 
```  
In order to evaluate a model on the `MOT20` dataset, run the following:
```
python scripts/evaluate.py with configs/mot20/tracking_cfg.py 
```


## Citation
Original Repo -> https://github.com/dvl-tum/mot_neural_solver.git
 If you use our work in your research, please cite our publication:

```
    @InProceedings{braso_2020_CVPR,
    author={Guillem Brasó and Laura Leal-Taixé},
    title={Learning a Neural Solver for Multiple Object Tracking},
    booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
    month = {June},
    year = {2020}
}
```
Please, also consider citing Tracktor if you use it for preprocessing detections:
```
  @InProceedings{tracktor_2019_ICCV,
  author = {Bergmann, Philipp and Meinhardt, Tim and Leal{-}Taix{\'{e}}, Laura},
  title = {Tracking Without Bells and Whistles},
  booktitle = {The IEEE International Conference on Computer Vision (ICCV)},
  month = {October},
  year = {2019}}
```






