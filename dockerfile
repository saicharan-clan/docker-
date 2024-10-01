#base image
FROM python:3

#working directory
WORKDIR /app

#copy the requirements.txt from local machine to container directory
COPY requirements.txt .

#It will install all packages in reqyuirements.txt
RUN pip install -r requirements.txt

#It copies application code from source to destination
COPY . .

#expose process port
EXPOSE 80

#Entry point cannot be changed
ENTRYPOINT ["python"]

#The executables in cmd can be changed
CMD ["app.py"]  
