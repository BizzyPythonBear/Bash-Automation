#! /usr/bin/bash
read -p "What would you like the file, (with extension)? " name
read -p "Where do you want the file to go? (e.g /home/username/desktop) " createDir
read -p "Would you like to open Visual Studio Code in the provided directory? " yesOrNo

function alreadyExists(){
    echo "$name already exists"
}

function createFile(){
    echo "Creating $name..."
    touch "$name"
    echo
    echo "Created"
}

function dirExists(){
    echo "Directory found!"
    cd $createDir
    if [ -f $name ]; then
        alreadyExists
    else
        createFile
    fi
}

function dirCreate(){
    echo "Directory not found, creating..."
    mkdir "$createDir"
    cd "$createDir"
    if [ -f $name ]; then
        alreadyExists
    else
        createFile
    fi
}

if [ $yesOrNo = "Yes" ]; then
    if [ -d $createDir ]; then
        dirExists
        code .
    elif [ ! -d $createDir ]; then
        dirCreate
        code .
    fi
fi

if [ $yesOrNo = "No" ]; then
    if [ -d $createDir ]; then
        dirExists
    elif [ ! -d $createDir ]; then
        dirCreate
    fi
fi