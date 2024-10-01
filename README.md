# docker commands
for creating images: [docker build -t <imagename>:tag .]
to check docker images run docker images command
creating container [docker run -itd -p p1:p2 <imageid>] where p1 is the intance port it can be anything but p2 depends on process on which container is running

AND you can push to docker hub by doing login docker hub qand using docker push command

# docker-
basic file for python image 
The image size was 1.03gb
you can find above image code in docker file

To reduce this i have used multibuildstage concept
The image size was 998mb
you can find above image code in multibuildstage file

To reduce the image size i used distroless image concept
Now the image size is 53.8mb
you can find above image code in distroless image files
