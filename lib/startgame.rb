#!/usr/bin/env ruby

require "./janken.rb"

def announce
  puts "input g or c or p or exit."
end

announce

while input = Input.new(gets)
  unless input.right? 
    announce
    next
  end

  if input.exit?
    puts
    puts "#{$win} wins, #{$lose} losses, #{$even} evens."
    break
  end

  Janken.new input
end
