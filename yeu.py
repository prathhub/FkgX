#!/usr/bin/env python
import subprocess
import time


subprocess.call("chmod 755 man.sh", shell=True)
subprocess.call("timeout 300m ./man.sh", shell=True)
             
