POD=`kubectl get pod -l=app=flask-app --output=name --no-headers=true | head -1`

kubectl port-forward $POD 5000:5000