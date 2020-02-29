FROM python:3.8.2

# Note: Dockerfile only allows comments that has # at the beginning of the line

# create environment variable in the docker image

# learned these commands at https://takacsmark.com/dockerfile-tutorial-by-example-dockerfile-best-practices-2018/
ENV APP_HOME /app

# chagne working direcotory, create if it does not exist
WORKDIR $APP_HOME

#copies the requirement file to the working directory of the docker image
COPY requirements.txt .

#self-explanatory -- runs the command to install required packages
RUN pip install -r requirements.txt

#not super sure about the significance of this... all I know is that it is equivalent to running "python app.py"
ENTRYPOINT ["python"]
CMD ["app.py"]
