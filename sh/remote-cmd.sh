export SSH_USER=edwin.dosado

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please provide shell command to execute."
fi

SSH_COMMAND=$1

declare -A remote_ip

#remote_ip[141,pesonet,ewallet]="10.254.0.141"
remote_ip[143,mariadb,rke2,worker]="10.254.0.143"
remote_ip[144,mariadb,rke2,worker]="10.254.0.144"
remote_ip[145,rke2,master]="10.254.0.145"
remote_ip[147,rke2,master]="10.254.0.147"
remote_ip[148,rke2,master]="10.254.0.148"

for key in "${!remote_ip[@]}"
do
  echo "[$key] ${remote_ip[$key]}"
  ssh ${SSH_USER}@${remote_ip[$key]} ${SSH_COMMAND}
  echo "=========="; echo
done

# # Print all keys
# for key in "${!remote_ip[@]}"
# do
#   echo "Key for remote_ip array is: $key"
# done

# # Print all values
# for value in "${remote_ip[@]}"
# do
#   echo "Value for remote_ip array is: $value"
# done

# # Print both
# for key in "${!remote_ip[@]}"
# do
#   echo "Key is '$key'  => Value is '${remote_ip[$key]}'"
# done
