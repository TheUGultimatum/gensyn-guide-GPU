#!/bin/bash

echo ""
echo "🧠 Welcome to the GENSYN Installer by theUG 🚀"
echo "=========================================="
echo ""

sleep 1
apt install curl sudo
echo "🔄 Updating system packages..."
apt update && apt install -y python3 python3-venv python3-pip curl wget screen git lsof

echo ""
echo "🟢 Installing Node.js 20.x..."
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt update && apt install -y nodejs

echo ""
echo "📦 Installing Yarn..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list > /dev/null
apt update && apt install -y yarn

echo ""
echo "🖥️ Creating new screen session: gensyn"
screen -dmS gensyn

echo ""
echo "📥 Cloning the Gensyn repo..."
git clone https://github.com/gensyn-ai/rl-swarm

echo ""
echo "📂 Changing directory to rl-swarm..."
cd rl-swarm || { echo "❌ Failed to enter rl-swarm folder"; exit 1; }

echo ""
echo "✅ Setup Complete!"
echo "🚀 You can now attach to the screen with:  screen -r gensyn"
echo ""
