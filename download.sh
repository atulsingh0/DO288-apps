mkdir -p $1 && cd $1
lab $1 start && sleep 2  
cp -R ~/DO288/* .
ls -lr */*
cd ~/DO288-apps
lab $1 finish
git add --all :/
git commit -m $1
git push
