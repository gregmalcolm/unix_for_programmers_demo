#!/usr/bin/env python

import os

def pipe_it():
    r, w = os.pipe()
    r = os.fdopen(r,'r',0)
    w = os.fdopen(w,'w',0)

    if os.fork():
        # parent
        w.close()
        print "Parent got: <{0}>".format(r.read().rstrip())
        r.close()
        os.wait()
    else:
        #child
        r.close()
        print "Sending message to parent"
        print >> w, "Hi Dad"
        w.close()

if __name__ == "__main__":
    pipe_it()

