# ffmpeg-converter

---

## Installing

To get this working on your system you need to place the shell file in the home directory, to do this run the command: 

> mv reno_ffmpeg.sh ~

then in your .bashrc file you add an alias at your alias list (you can call the alias anything you want but for simplicity keep it short):

> alias ff='bash ~/reno_ffmpeg.sh'

You would then need to source your .bashrc file in order to apply the changes:

> source .bashrc

## Using

The script will ask you for the ouput file location (you can use .. to go up a directory) and then it will confirm you want to do this. It will then get all the .mov files in the current directory and convert them using the ffmpeg command with the given arguments:

> fmpeg -i input.mov -vcodec dnxhd -acodec pcm_s16le -s 1920x1080 -r 30000/1001 -b:v 36M -pix_fmt yuv422p -f mov output.mov

--- 
