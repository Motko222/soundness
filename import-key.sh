path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd) 
folder=$(echo $path | awk -F/ '{print $NF}')

read -p "Name (my-key)? " key
[ -z $key ] && key="my-key"

read -p "Mnemonic? " m

cd /root/.soundness/bin
./soundness-cli import-key --name $key --mnemonic "$m"
