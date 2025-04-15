# Make a directory and change to that directory
mkdir actions-runner
cd actions-runner

# Download (for x64, adjust if using ARM)
curl -L -o actions-runner-linux-x64-2.323.0.tar.gz https://github.com/actions/runner/releases/download/v2.323.0/actions-runner-linux-x64-2.323.0.tar.gz
tar xzf actions-runner-linux-x64-2.323.0.tar.gz

./config.sh --url https://github.com/YOUR_USER/YOUR_REPO --token YOUR_TOKEN
./run.sh
