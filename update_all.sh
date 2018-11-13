PAR_DIR=$(pwd)
echo "Pulling the latest changes for all repositories..."
for i in $(find . -name ".git" | cut -c 3-)
do
    echo "$i"
    #Go to the parent directory of repo
    cd "$i";
    cd ..;
    git pull
    #Go back to the starting directory
    cd "$PAR_DIR"
done
echo "Complete!"
