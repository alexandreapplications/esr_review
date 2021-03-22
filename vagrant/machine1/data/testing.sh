#! /bin/bash

function needs_update () {
    if [[ "$#" -ne 2 ]]
    then
        echo "Usage: needsUpdate appversion desired version"
        return 2
    fi
    mapfile -t < <(echo $1 | grep -Eo "[0-9]+") current_version
    mapfile -t < <(echo $2 | grep -Eo "[0-9]+") desired_version

    if [[ ${#current_version[@]} -ne ${#desired_version[@]} ]]
    then
        echo "The sizes of the versions are different"
        return 2
    fi

    for idx in {0..1}; do
        if [[ ${current_version[idx]} -lt ${desired_version[idx]} ]]
        then
            return 1
        fi
    done

    return 0
}

needs_update $(python3 --version | grep -Eo "[0-9]+.[0-9]+") "3.6"
needs_python_update="$?"

case $needs_python_update in
0)
    echo "Don't need to update Python.";;
1) 
    echo "Updating Python"
    sudo apt-get install --assume-yes python3.6;;
*) 
    echo "Error finding the Python version";;
esac

if ! command -v unzip &> /dev/null
then
    echo "unzip could not be found, installing id"
    sudo apt-get install -y zip unzip
fi

if ! command -v terraform &> /dev/null
then
    TERRAFORM_VERSION=0.13.6
    TERRAFORM_SHA256SUM=55f2db00b05675026be9c898bdd3e8230ff0c5c78dd12d743ca38032092abfc9

    if ! [[ -f "terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ]] 
    then
        curl -fSL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip 
    fi
    echo "${TERRAFORM_SHA256SUM} /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" | sha256sum -c - 
    sudo unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin 
    rm -f /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
fi

