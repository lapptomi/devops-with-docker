#! /bin/sh

echo Enter repository owner username:
read repo_owner

echo Enter repository name:
read repo_name

git clone https://github.com/$repo_owner/$repo_name

echo Downloaded https://github.com/$repo_owner/$repo_name

cd $repo_name

FILE=./Dockerfile
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist, could not build Docker image."
    exit 0
fi

echo Building Docker image...

docker build -t $repo_name .

docker login

docker tag $repo_name $repo_owner/$repo_name

docker push $repo_owner/$repo_name
