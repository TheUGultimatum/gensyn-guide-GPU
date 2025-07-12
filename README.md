# gensyn-guide-GPU
install curl via ( apt install curl ) then run script..

```
curl -sSL https://raw.githubusercontent.com/TheUGultimatum/gensyn-guide-GPU/main/gensyn.sh | bash
```

edit config file :

```
nano rgym_exp/config/rg-swarm.yaml
```

15 second timeout fix for pyhton 10

```
sed -i 's/startup_timeout: float = *15/startup_timeout: float = 120/' .venv/lib/python3.10/site-packages/hivemind/p2p/p2p_daemon.py
```
15 second timeout fix for python 12
```
sed -i 's/startup_timeout: float = *15/startup_timeout: float = 120/' .venv/lib/python3.12/site-packages/hivemind/p2p/p2p_daemon.py
```

#create virtual environment#

```
cd rl-swarm
python3 -m venv .venv
source .venv/bin/activate
```

```
./run_rl_swarm.sh
```


OOM ERROR FIX :

```
python -c "import torch; torch.cuda.set_per_process_memory_fraction(0.85, device=torch.device('cuda:0'))"
```

#LOGIN METHOD#

```
screen -S tunnel
```

```
npm install -g localtunnel
```

```
curl ifconfig.me
```
```
lt --port 3000
```

choose model if u have a good GPU 

```
 Gensyn/Qwen2.5-0.5B-Instruct

 Qwen/Qwen3-0.6B

 nvidia/AceInstruct-1.5B

 dnotitia/Smoothie-Qwen3-1.7B

 Gensyn/Qwen2.5-1.5B-Instruct
```
