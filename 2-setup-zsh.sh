#!/bin/bash

set -xe

# Terraform Plugin Cache
mkdir -p "$HOME/.terraform.d/plugin-cache"
echo "export TF_PLUGIN_CACHE_DIR=$HOME/.terraform.d/plugin-cache" >> "$HOME/.zshrc"


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i "s/robbyrussell/agnoster/" $HOME/.zshrc
sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions gcloud terraform)/" $HOME/.zshrc
echo 'HYPHEN_INSENSITIVE="true"' >> "$HOME/.zshrc"
echo 'DISABLE_AUTO_TITLE="true"' >> "$HOME/.zshrc"
echo "CLOUDSDK_HOME=$HOME/.local/google-cloud-sdk" >> "$HOME/.zshrc"