#!/usr/bin/env ruby

def zombie
  fork do
    # Exit immediately
  end
  sleep 60
  Process.wait
end

zombie

