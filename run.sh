# put your bag in ./data/, run the commands below to start docker
FOLDER=`pwd`
xhost +local:root
docker run -it --rm -e "DISPLAY" -e "QT_X11_NO_MITSHM=1" \
    -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v "$FOLDER/data:/data" kalibr


# run the commands below in docker

# source devel/setup.bash
# rosrun kalibr kalibr_calibrate_cameras --bag /data/YOUR_BAG_NAME.bag --target /data/checkerboard.yaml --models ds-none --topics /crepes/sensors/cam_image_topic
