name: Android ROM Builder
on:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
    - name: Checkout repo
      uses: actions/checkout@v4

    - name: Fix setup script directly
      run: |
        cat << 'EOF' > setup.sh
        #!/bin/bash
        echo "***BuildBot исправлен под GitHub Actions***"
        echo "no_token" > /tmp/tg_token
        echo "no_chat" > /tmp/tg_chat
        echo "no_token" > /tmp/gh_token
        echo "1" > /tmp/build_no
        sudo cp github-release /usr/bin/ 2>/dev/null || true
        sudo cp telegram /usr/bin/ 2>/dev/null || true
        sudo apt-get update
        sudo apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev python3 openjdk-17-jdk
        EOF

    - name: Run Build System
      run: |
        chmod +x *.sh
        ./setup.sh
        ./clone.sh
        ./build.sh
