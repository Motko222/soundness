path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd) 
source $path/env

read -p "cmd? " c1
c2=./$(echo $c1 | sed 's/--key-name=""/--key-name="my-key"/')
echo "-------------------------------------------------"
echo "Password: "$PASS
echo "-------------------------------------------------"
cd /root/.soundness/bin
echo $c2 >cmd
./cmd
