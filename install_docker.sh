docker build --platform=linux/amd64 -t mlebench-env -f environment/Dockerfile .
export SUBMISSION_DIR=/home/submission
export LOGS_DIR=/home/logs
export CODE_DIR=/home/code
export AGENT_DIR=/home/agent

echo "Building Docker agent container..."
docker build --platform=linux/amd64 -t aide agents/aide --build-arg SUBMISSION_DIR=$SUBMISSION_DIR --build-arg LOGS_DIR=$LOGS_DIR --build-arg CODE_DIR=$CODE_DIR --build-arg AGENT_DIR=$AGENT_DIR
