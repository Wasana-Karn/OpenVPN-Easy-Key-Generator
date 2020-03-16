if [ "$#" -ne 1 ]; then
    echo "enter name after comand"
    exit 1
fi

source ./vars

sudo -E ./build-key-batch "$1"

cd keys

mkdir "$1"
mv "$1".* "$1"
cp ta.key "$1"
cp server.crt "$1"
cp ca.crt "$1"
cp client_template.ovpn "$1"/"$1".ovpn

cd "$1"
sed -i "s/replacebyname/$1/" "$1".ovpn
cd ..

zip -r "$1".zip "$1"
rm -r "$1"

cd ..
