#!/bin/bash

# Checks if the provided Acc-Py version is valid
if [ -n "$BUILDER_VERSION" ] && [ ! -e "$ACCPY_PATH/base/$BUILDER_VERSION" ]; then
    echo "ERROR: Invalid Acc-Py version (${BUILDER_VERSION})."
    exit 1
fi

# Activate Acc-Py and create environment
source "${ACCPY_PATH}/base/${BUILDER_VERSION}/setup.sh"
acc-py venv ${ENV_PATH}

# Activate the environment
_log "Setting up the environment..."
source ${ENV_PATH}/bin/activate

# Install packages in the environment
_log "Installing packages from ${REQ_PATH}..."
pip install -r "${REQ_PATH}"
