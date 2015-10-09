#!/usr/bin/env ruby

def zombie
  fork do
    # Exit immediately
  end
  sleep 20
  Process.wait
end

zombie

