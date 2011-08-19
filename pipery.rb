#!/usr/bin/env ruby

def pipe_it
  r, w = IO.pipe
  if fork
    # parent
    w.close
    puts "Parent got: <#{r.read}>"
    r.close
    Process.wait
  else
    #child
    r.close
    puts "Sending message to parent"
    w.write "Hi Dad"
    w.close
  end
end

pipe_it
