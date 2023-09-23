# build docker image
docker build -t flask-app .

# tag and push to dockerhub
docker tag flask-app:latest mhe5423914/flask-app:latest
docker push mhe5423914/flask-app:latest