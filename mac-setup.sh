#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "MacOS Developer Environment Setup"
# --------------------------------------------------------------------------------
echo "\r"

get_consent "Absolutely NO WARRANTIES or GUARANTEES are provided. Are you sure you want to continue?"

echo "\r"

if has_consent; then
  e_settled "MacOS Developer Environment Setup Starting!"
  source defaults.sh
  source tools.sh
  # source casks.sh
  source optimizations.sh
  source summary.sh
else
  e_failure "Setup Aborted."
fi

echo "\r"
