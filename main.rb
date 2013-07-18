#!/usr/bin/ruby
#arg 0 == seed, arg 1 == listlength
require 'prime'

if ARGV.size()  < 2
	abort('usage: main.rb <seed> <listsize>, example: ruby main.rb 22 3')
end
x = Integer(ARGV[0])
listLen = Integer(ARGV[1])
begin
	begin
		p = Random.new.rand(100..1000) 
	end while !Prime.prime?(p) and p % 4 != 3
	begin
		q = Random.new.rand(100..1000) 
	end while !Prime.prime?(q) && q % 4 != 3
	n = p*q
end while n.gcd(x) != 1
workVar = x**2 % n

for i in 0..listLen
	puts workVar = workVar**2 % n
end