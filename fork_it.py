#!/usr/bin/env python

import os
import sys

def fork_it():
    print "Parent pid is {0}".format(os.getpid())
    if (not os.fork()):
        print "In child process. Pid is now {0}".format(os.getpid())
        sys.exit(42)

    child_pid, status = os.wait()
    exit_status = status >> 8 # Keep high byte only
    print "Child (pid {0}) terminated with status {1}" \
        .format(child_pid, exit_status)

if __name__ == "__main__":
    fork_it()
