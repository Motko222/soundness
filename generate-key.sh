path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd) 
folder=$(echo $path | awk -F/ '{print $NF}')

read -p "Name (my-key)? " key
[ -z $key ] && key="my-key"

cd /root/soundness-layer/soundness-cli
soundness-cli generate-key --name $key
