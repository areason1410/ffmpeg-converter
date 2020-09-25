echo -n "Enter input file type: "
read file_type_1

echo -n "Enter output file type: "
read file_type_2

echo -n "Convert all $file_type_1 files in this folder into $file_type_2 files? (y/n): ";
read convert_confirm
echo ""

if [ "$convert_confirm" == "y" ]; then

    for ftype_1 in *$file_type_1; do
        file_name=${ftype_1%$file_type_1}$file_type_2
        echo  "Converting $ftype_1 into $file_name"
        ffmpeg -loglevel panic -i $ftype_1 $file_name
        echo "Converted $ftype_1 into $file_name successfully"
        echo ""
    done
fi 
