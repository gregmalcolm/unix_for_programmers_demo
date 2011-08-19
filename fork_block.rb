#!/usr/bin/env ruby

def fork_it
  fork do
    3.times {|i| puts "Child (PID=#{$$}): #{i}" }
  end
  3.times {|i| puts "Parent: (PID=#{$$}) #{i}" }
  Process.wait
end

fork_it

