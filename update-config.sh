echo "Checking for grpc config"
original_grpc=$(md5sum /etc/nginx/sites-enabled/grpc.lamprojects.me | cut -c -32)
current_grpc=$(md5sum ./grpc.lamprojects.me | cut -c -32)
if [[ "$original_grpc" == "$current_grpc" ]]; then
    echo "No changes to grpc config"
else
    sudo rm -rf /etc/nginx/sites-enabled/grpc.lamprojects.me
    sudo cp ./grpc.lamprojects.me /etc/nginx/sites-enabled/grpc.lamprojects.me
fi

echo "Checking for jenkins config"
original_jenkins=$(md5sum /etc/nginx/sites-enabled/jenkins.lamprojects.me | cut -c -32)
current_jenkins=$(md5sum ./jenkins.lamprojects.me | cut -c -32)
if [[ "$original_jenkins" == "$current_jenkins" ]]; then
    echo "No changes to jenkins config"
else
    sudo rm -rf /etc/nginx/sites-enabled/jenkins.lamprojects.me
    sudo cp ./jenkins.lamprojects.me /etc/nginx/sites-enabled/jenkins.lamprojects.me
fi

echo "Checking for home config"
original_home=$(md5sum /etc/nginx/sites-enabled/lamprojects.me | cut -c -32)
current_home=$(md5sum ./lamprojects.me | cut -c -32)
if [[ "$original_home" == "$current_home" ]]; then
    echo "No changes to home config"
else
    sudo rm -rf /etc/nginx/sites-enabled/lamprojects.me
    sudo cp ./lamprojects.me /etc/nginx/sites-enabled/lamprojects.me
fi