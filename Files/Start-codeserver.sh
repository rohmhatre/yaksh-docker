#!/bin/bash
git clone https://github.com/rohmhatre/online_test.git /src/online_test
rsync -a --remove-source-files /src/online_test/* /Sites/online_test/
usermod -u 48 nobody
chown -R nobody /Sites/online_test
chmod -R 666 /Sites/online_test
chmod -R +X /Sites/online_test/
/usr/bin/sudo -su nobody python -m yaksh.code_server
