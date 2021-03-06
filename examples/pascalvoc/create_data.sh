CAFFE_ROOT=/home/ws/Caffe
DATA_ROOT=/mnt/data
cd $CAFFE_ROOT
redo=1
dataset_name="pascalvoc"
data_root_dir="$DATA_ROOT/$dataset_name/VOCdevkit"
mapfile="$DATA_ROOT/$dataset_name/labelmap_voc.prototxt"
anno_type="detection"
db="lmdb"
min_dim=0
max_dim=0
width=0
height=0

extra_cmd="--encode-type=jpg --encoded"
if [ $redo ]
then
  extra_cmd="$extra_cmd --redo"
fi
for subset in test trainval
do
  python3 $CAFFE_ROOT/scripts/create_annoset.py --anno-type=$anno_type --label-map-file=$mapfile --min-dim=$min_dim --max-dim=$max_dim --resize-width=$width --resize-height=$height --check-label $extra_cmd $data_root_dir $DATA_ROOT/$dataset_name/$subset.txt $DATA_ROOT/$dataset_name/$db/$dataset_name"_"$subset"_"$db examples/$dataset_name
done
