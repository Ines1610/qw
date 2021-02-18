#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0x5916e8b1865E65d068f2529d9E5eC2BBe80ECb42
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
