#!/bin/bash

# Create environment
${BUILDER} -m ${BUILDER_VERSION} ${ENV_PATH}

# Activate the environment
_log "Setting up the environment..."
source ${ENV_PATH}/bin/activate

# Install packages in the environment
_log "Installing packages from ${REQ_PATH}..."
pip install -r "${REQ_PATH}"
