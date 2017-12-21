cd ~
KEY_PEM_NAME=HongyiScript.pem
export DEEPLEARNING_WORKERS_COUNT=`wc -l < hosts`

sudo bash -c "cat hosts >> /etc/hosts"

for i in $(seq 2 $DEEPLEARNING_WORKERS_COUNT);
  do
  ssh -i ${KEY_PEM_NAME} deeplearning-worker${i} 'git config --global user.name samfu1994; git config --global user.email hfu@cs.wisc.edu; cd ~/ps_759; git pull'
  echo "Done pull git repo on worker: deeplearning-worker${i}"
 done