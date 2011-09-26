#!/usr/bin/env python

import os
import time

def zombie():
    if os.fork():
        # Exit immediately
        time.sleep(60)
        os.wait()

if __name__ == "__main__":
    zombie()
