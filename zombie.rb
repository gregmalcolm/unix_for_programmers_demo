#!/usr/bin/env ruby

def zombie
  fork do
    # Exit immedietely
  end
  sleep 60
  Process.wait
end

zombie

