# docker commands
for creating images: [docker build -t <imagename>:tag .]
to check docker images run [docker images] command
creating container [docker run -itd -p p1:p2 <imageid>] where p1 is the intance port it can be anything but p2 depends on process on which container is running

AND you can push to docker hub we need to use [docker login] command for login to the docker hub and for pushing docker image we use [docker push command]
to check docker containers we use [docker ps] command

# docker-
basic file for python image 
The image size was 1.03gb
you can find above image code in docker file

To reduce this i have used multibuildstage concept
The image size was 998mb
you can find above image code in multibuildstage file
we can create n number of mutiple stages within single docker file and When you run a Docker image using the docker run command, it only includes the final stage and excludes build stage which has developments= tools , and libraries for the final image creation of the multi-stage build if we want to use any dependencies from build-stage we need to explicitily copy them to final stage. This approach helps keep the final image lightweight and more secured by only including the necessary components needed to run your application.

To reduce the image size less than multibuild-stage i used distroless image concept
Now the image size is 53.8mb
you can find above image code in distroless image files
In distroless image it don't even require runtime environment
