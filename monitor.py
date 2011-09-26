#!/usr/bin/env python

import sys;

def monitor():
    inputs = ""
    for line in sys.stdin.readlines():
        inputs = "{0} {1}".format(inputs, line).rstrip()
    print inputs

    if sys.argv and len(sys.argv) > 1:
        print >> sys.stderr, "Warning: Did not understand argument '{0}'!".format(sys.argv[1])

if __name__ == "__main__":
    monitor()
