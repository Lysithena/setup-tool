echo "Do you need desktop environment?(Y/n)"
read ans
dir=$(dirname $0)
isguineeded=true
if [ $ans = "n" ]; then
    isguineeded=false
fi
sudo bash $dir/setuptool_forroot.sh true
bash $dir/setuptool_foruser.sh true
