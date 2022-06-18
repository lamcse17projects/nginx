echo "Checking for files config"
if test -f /etc/nginx/sites-enabled/files.lamprojects.me; then
    original_files=$(md5sum /etc/nginx/sites-enabled/files.lamprojects.me | cut -c -32)
    current_files=$(md5sum ./files.lamprojects.me | cut -c -32)
    if [[ "$original_files" == "$current_files" ]]; then
        echo "No changes to files config"
    else
        sudo rm -rf /etc/nginx/sites-enabled/files.lamprojects.me
        sudo cp ./files.lamprojects.me /etc/nginx/sites-enabled/files.lamprojects.me
    fi
else
    sudo cp ./files.lamprojects.me /etc/nginx/sites-enabled/files.lamprojects.me
fi