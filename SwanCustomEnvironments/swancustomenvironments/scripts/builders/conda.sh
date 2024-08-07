#!/bin/bash

# Create environment and install packages
${BUILDER_VERSION} env create -f ${REQ_PATH} -n ${ENV_NAME} -y

# With a symlink on the user's home, no other customenvs can be created
ln -f -s /opt/conda/envs/${ENV_NAME} ${ENV_PATH}
ENV_PATH="/opt/conda/envs/${ENV_NAME}"

# Activate the environment
_log "Setting up the environment..."
source activate ${ENV_NAME}
