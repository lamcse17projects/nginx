echo "Checking for grpc config"
if test -f /etc/nginx/sites-enabled/grpc.lamprojects.me; then
    original_grpc=$(md5sum /etc/nginx/sites-enabled/grpc.lamprojects.me | cut -c -32)
    current_grpc=$(md5sum ./grpc.lamprojects.me | cut -c -32)
    if [[ "$original_grpc" == "$current_grpc" ]]; then
        echo "No changes to grpc config"
    else
        sudo rm -rf /etc/nginx/sites-enabled/grpc.lamprojects.me
        sudo cp ./grpc.lamprojects.me /etc/nginx/sites-enabled/grpc.lamprojects.me
    fi
else
    sudo cp ./grpc.lamprojects.me /etc/nginx/sites-enabled/grpc.lamprojects.me
fi



echo "Checking for jenkins config"
if test -f /etc/nginx/sites-enabled/jenkins.lamprojects.me; then
    original_jenkins=$(md5sum /etc/nginx/sites-enabled/jenkins.lamprojects.me | cut -c -32)
    current_jenkins=$(md5sum ./jenkins.lamprojects.me | cut -c -32)
    if [[ "$original_jenkins" == "$current_jenkins" ]]; then
        echo "No changes to jenkins config"
    else
        sudo rm -rf /etc/nginx/sites-enabled/jenkins.lamprojects.me
        sudo cp ./jenkins.lamprojects.me /etc/nginx/sites-enabled/jenkins.lamprojects.me
    fi
else
    sudo cp ./jenkins.lamprojects.me /etc/nginx/sites-enabled/jenkins.lamprojects.me
fi


echo "Checking for home config"
if test -f /etc/nginx/sites-enabled/lamprojects.me; then
    original_home=$(md5sum /etc/nginx/sites-enabled/lamprojects.me | cut -c -32)
    current_home=$(md5sum ./lamprojects.me | cut -c -32)
    if [[ "$original_home" == "$current_home" ]]; then
        echo "No changes to home config"
    else
        sudo rm -rf /etc/nginx/sites-enabled/lamprojects.me
        sudo cp ./lamprojects.me /etc/nginx/sites-enabled/lamprojects.me
    fi
else
    sudo cp ./lamprojects.me /etc/nginx/sites-enabled/lamprojects.me
fi

echo "Checking for letmeet config"
if test -f /etc/nginx/sites-enabled/letmeet.xyz; then
    original_home=$(md5sum /etc/nginx/sites-enabled/letmeet.xyz | cut -c -32)
    current_home=$(md5sum ./letmeet.xyz | cut -c -32)
    if [[ "$original_home" == "$current_home" ]]; then
        echo "No changes to home config"
    else
        sudo rm -rf /etc/nginx/sites-enabled/letmeet.xyz
        sudo cp ./letmeet.xyz /etc/nginx/sites-enabled/letmeet.xyz
    fi
else
    sudo cp ./letmeet.xyz /etc/nginx/sites-enabled/letmeet.xyz
    sudo ln -s /etc/nginx/sites-enabled/letmeet.xyz /etc/nginx/sites-available/letmeet.xyz
fi

echo "Checking for letmeet api config"
if test -f /etc/nginx/sites-enabled/api.letmeet.xyz; then
    original_home=$(md5sum /etc/nginx/sites-enabled/api.letmeet.xyz | cut -c -32)
    current_home=$(md5sum ./api.letmeet.xyz | cut -c -32)
    if [[ "$original_home" == "$current_home" ]]; then
        echo "No changes to home config"
    else
        sudo rm -rf /etc/nginx/sites-enabled/api.letmeet.xyz
        sudo cp ./api.letmeet.xyzz /etc/nginx/sites-enabled/api.letmeet.xyz
    fi
else
    sudo cp ./api.letmeet.xyz /etc/nginx/sites-enabled/api.letmeet.xyz
    sudo ln -s /etc/nginx/sites-enabled/api.letmeet.xyz /etc/nginx/sites-available/api.letmeet.xyz
fi