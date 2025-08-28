read -p "cmd? " c1
c2=./$(echo $c1 | sed 's/--key-name=""/--key-name="my-key"/')
cd /root/.soundness/bin
$c2
