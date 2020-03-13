ans=y
if [ $# = 0 ]; then
    echo "Do you need desktop environment?(Y/n)"
    read ans
elif [ $1 = "false" ]; then
    ans=n
fi
dir=$(dirname $0)
isguineeded=true
if [ $ans = "n" ]; then
    isguineeded=false
fi

sudo bash $dir/setuptool_forroot.sh $isguineeded
bash $dir/setuptool_foruser.sh
