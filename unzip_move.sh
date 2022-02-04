


DATA_PATH=$(python -c "from mot_neural_solver.path_cfg import DATA_PATH; print(DATA_PATH)")

unzip "MOT17-02-GT.zip" -d "/content/"
unzip "MOT17-04-GT.zip" -d "/content/"
unzip "MOT17-09-GT.zip" -d "/content/"
unzip "MOT20-01-GT.zip" -d "/content/"
unzip "MOT20-02-GT.zip" -d "/content/"
unzip "MOT20-03-GT.zip" -d "/content/"
unzip "MOT20-05-GT.zip" -d "/content/"

mv "/content/usr/local/lib/python3.6/site-packages/data/MOT17Labels/train/MOT17-02-GT" $DATA_PATH/MOT17Labels/train/
mv "/content/usr/local/lib/python3.6/site-packages/data/MOT17Labels/train/MOT17-04-GT" $DATA_PATH/MOT17Labels/train/
mv "/content/usr/local/lib/python3.6/site-packages/data/MOT17Labels/train/MOT17-09-GT" $DATA_PATH/MOT17Labels/train/
mv "/content/usr/local/lib/python3.6/site-packages/data/MOT20/train/MOT20-01-GT" $DATA_PATH/MOT20/train/
mv "/content/usr/local/lib/python3.6/site-packages/data/MOT20/train/MOT20-02-GT" $DATA_PATH/MOT20/train/
mv "/content/usr/local/lib/python3.6/site-packages/data/MOT20/train/MOT20-03-GT" $DATA_PATH/MOT20/train/
mv "/content/usr/local/lib/python3.6/site-packages/data/MOT20/train/MOT20-05-GT" $DATA_PATH/MOT20/train/

rm "/content/MOT17-02-GT.zip"
rm "/content/MOT17-04-GT.zip"
rm "/content/MOT17-09-GT.zip"
rm "/content/MOT20-01-GT.zip"
rm "/content/MOT20-02-GT.zip"
rm "/content/MOT20-03-GT.zip"
rm "/content/MOT20-05-GT.zip"