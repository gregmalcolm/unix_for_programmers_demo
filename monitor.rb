#!/usr/bin/env ruby

while line = STDIN.gets
  input="#{input} #{line}".strip
end

puts "Monitored: #{input}"
if ARGV && ARGV[0]
  STDERR.puts "Warning: Did not understand argument '#{ARGV[0]}'!"
end
