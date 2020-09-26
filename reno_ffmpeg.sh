echo -n "Enter output directory: $PWD/"
read output_dir_temp
output_dir=$PWD/$output_dir_temp

echo -n "Convert all .mov files in this folder into $output_dir (y/N): ";
read convert_confirm

if [ "$convert_confirm" == "y" ]; then

    for file in *.mov; do
        file_name=$file
        echo  "Converting $file"
        ffmpeg -loglevel panic -i $file -vcodec dnxhd -acodec pcm_s16le -s 1920x1080 -r 30000/1001 -b:v 36M -pix_fmt yuv422p -f mov $output_dir/$file
    done
    echo "Complete"
fi 
