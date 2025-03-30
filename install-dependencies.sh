path=$(cd -- $(dirname -- "${BASH_SOURCE[0]}") && pwd) 
folder=$(echo $path | awk -F/ '{print $NF}')

sudo apt update
sudo apt install build-essential clang cmake pkg-config libssl-dev -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source /root/.cargo/env
sudo apt update
git clone https://github.com/soundnesslabs/soundness-layer.git
cd soundness-layer/soundness-cli
cargo install --path .
