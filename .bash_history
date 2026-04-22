aws sts get-caller-identity
aws ecr create-repository --repository-name dynamic-app
aws eks update-kubeconfig   --region ap-southeast-1   --name my-eks-cluster
aws sts get-caller-identity
aws eks update-kubeconfig   --region ap-southeast-1   --name my-eks-cluster
aws eks list-clusters --region ap-southeast-1
aws sts get-caller-identity
sudo apt update -y
sudo apt install -y unzip curl git
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip
unzip awscliv2.zip
sudo ./aws/install
aws --version
clear
aws --version
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.0/2024-01-04/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
sudo apt install -y docker.io
sudo usermod -aG docker ubuntu
newgrp docker
aws eks list-clusters --region ap-southeast-1
clear
aws eks list-clusters --region ap-southeast-1
curl http://169.254.169.254/latest/meta-data/iam/security-credentials/
curl -H "X-aws-ec2-metadata-token-ttl-seconds: 21600" -X PUT http://169.254.169.254/latest/api/token
curl -H "X-aws-ec2-metadata-token: AQAAAGkZgrGiFO15WHV2LeB3BDe958MeYqs5lVHN_8SQ37isycUFlg==" http://169.254.169.254/latest/meta-data/iam/security-credentials/
clear
aws eks list-clusters --region ap-southeast-1
kubectl get nodes
clear
aws eks list-clusters --region ap-southeast-1
aws eks update-kubeconfig   --region ap-southeast-1   --name dev-eks-test
kubectl get nodes
aws eks update-kubeconfig   --region ap-southeast-1   --name my-test-cluster
kubectl get nodes
clear
aws eks update-kubeconfig   --region ap-southeast-1   --name dev-eks-test
kubectl get nodes
aws sts get-caller-identity
kubectl edit configmap aws-auth -n kube-system
aws eks update-kubeconfig --region ap-southeast-1 --name dev-eks-test
kubectl edit configmap aws-auth -n kube-system
clear
eksctl create cluster   --name dynamic-eks-cluster   --region ap-south-1   --nodegroup-name workers   --node-type t3.large  --nodes 2   --managed
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
sudo chmod +x /usr/local/bin/eksctl
eksctl version
eksctl create cluster   --name dynamic-eks-cluster   --region ap-south-1   --nodegroup-name workers   --node-type t3.large   --nodes 2   --managed
aws sts get-caller-identity
aws ec2 describe-instance-type-offerings --region ap-south-1
clear
eksctl create cluster   --name dynamic-eks-cluster   --region ap-south-1   --nodegroup-name workers   --node-type t3.large   --nodes 1   --managed
aws sts get-caller-identity
eksctl delete cluster   --name dynamic-eks-cluster   --region ap-south-1
eksctl create cluster   --name dynamic-eks-cluster   --region ap-south-1   --nodegroup-name workers   --node-type t3.large   --nodes 1   --managed
kubectl get nodes
clear
mkdir dynamic-k8s && cd dynamic-k8s
exit
clear
vi namespace.yaml
vi serviceaccount.yaml
vi role.yaml
vi rolebinding.yaml
kubectl apply -f namespace.yaml
kubectl apply -f serviceaccount.yaml
kubectl apply -f role.yaml
kubectl apply -f rolebinding.yaml
kubectl get ns
kubectl get sa -n dynamic-app
kubectl get role -n dynamic-app
kubectl get rolebinding -n dynamic-app
docker --version
docker ps
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com
aws sts get-caller-identity
clear
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 771358506448.dkr.ecr.ap-south-1.amazonaws.com
docker build -t dynamic-app .
ls
vi Dockerfile
ls
docker build -t dynamic-app .
docker tag dynamic-app:latest 771358506448.dkr.ecr.ap-south-1.amazonaws.com/dynamic-app:latest
docker push 771358506448.dkr.ecr.ap-south-1.amazonaws.com/dynamic-app:latest
clear
aws ecr create-repository --repository-name dynamic-app --region ap-south-1
docker push 771358506448.dkr.ecr.ap-south-1.amazonaws.com/dynamic-app:latest
aws eks list-clusters --region ap-south-1
clear
mkdir -p .github/workflows
vi .github/workflows/test.yml
git add .
exit
