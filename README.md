## Sample Flask app to run on ElasticBeanstalk multidocker environment

Steps to run this app:
1. git clone https://github.com/rameshmimit/Multidocker-flask.git
2. cd Multidocker-flask/flask-app
3. docker build -t simple-flask-app:latest .
4. docker images
5. docker login # You need to provide your dockerhub.io login crendentials to login
6. docker tag simple-flask-app rameshmimit/simple-flask-app # You should replace the repository to point to your repo
7. docker push rameshmimit/simple-flask-app
8. cd ..
9. Edit Dockerrun.aws.json file to reflect the correct image name
10. eb init # Choose the options as per your need
11. eb create flask-dev --elb-type application
