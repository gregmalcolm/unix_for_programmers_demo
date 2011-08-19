#!/usr/bin/env ruby

puts "Parent pid is #{$$}"
unless fork
  puts "In child process. Pid is now #{$$}"
  exit 42
end

child_pid = Process.wait
puts "Child (pid #{child_pid}) terminated with status #{$?.exitstatus}"

