#base image
FROM python:3

#working directory
WORKDIR /app

#copy the requirements.txt from local machine to container directory
COPY requirements.txt .

#It will install all packages in reqyuirements.txt
RUN pip install -r requirements.txt

#It copies rest of application code from source to destination
COPY . .

#expose process port
EXPOSE 80

#Entry point cannot be changed
ENTRYPOINT ["python"]

#The executables in cmd can be changed
CMD ["app.py"]  


######################notepoints##########################
# basically if you observe the code we use copy command two times because the first copy command will copy file and used for installing all dependencies and second 
# copy command copies application code because application code may changes but if dependencies remains same it reduce or avoids re installing them in future builds 
# so first we focus on dependencies and then application code
