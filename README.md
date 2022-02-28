# mac-dev-setup


```bash
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KwakesProject/mac-dev-setup/main/mac-setup.sh)"

# wget -O - https://raw.githubusercontent.com/<username>/<project>/<branch>/<path>/<file> | bash

wget -O - https://raw.githubusercontent.com/KwakesProject/mac-dev-setup/main/mac-setup.sh | bash

# With curl:
bash <(curl -sL ${GIST_URL}) args...

# With wget:
bash <(wget -nv -O - ${GIST_URL}) args...

# If wget-log is generated:
# https://bugs.launchpad.net/ubuntu/+source/wget/+bug/1765690
bash <(wget -o /dev/null -nv -O - ${GIST_URL}) args...

# bash <(curl -sL https://gist.githubusercontent.com/mob-sakai/174a32b95572e7d8fdbf8e6f43a528f6/raw/hello.sh) I am mob-sakai!

# bash <(curl -sL https://raw.githubusercontent.com/KwakesProject/mac-dev-setup/main/hello.sh) I am mob-sakai!


```
