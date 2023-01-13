# [1] base image
FROM python:3-alpine3.15
# [2] copy requirements.txt
COPY requirements.txt .
# [3] install python requirements
RUN python -m pip install -r requirements.txt
# [4] create a working directory
WORKDIR /app
# [5] copy contents of current directory to app/
COPY . /app
# [6] e3xpose port 5000
EXPOSE 5000
# [7] Run app.py 0.0.0.0:5000
CMD python ./app.py
