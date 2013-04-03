# Wector

Wector does what we all wish the built-in Vector class did; it makes vector math easy by allowing any method of the Numeric interface to be used to combine two arrays or an array and a number.

## Installation

Add `wector` to your application's Gemfile and `bundle install` or install it yourself with `gem install wector`.

## Usage
		
		vector = Wector.new([1.2, 3.4, 5.6, 7.8])
		p vector + (vector ** 2)