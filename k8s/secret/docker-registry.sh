NAME=$1
USERNAME=$2
PASSWORD=$3
EMAIL=$4

kubectl create secret docker-registry $NAME --docker-username=$USERNAME --docker-password=$PASSWORD --docker-email=$EMAIL
#--docker-server=<your-registry-server> \ # default to docker