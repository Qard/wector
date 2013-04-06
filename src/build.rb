require 'erb'

operator_methods = [
	:*,:+,:/,:-,:**,:%,:==,:===,:<=>,:>,:>=,:<,:<=
]

comparison_methods = [
	:modulo, :coerce, :div, :divmod, :eql?, :fdiv, :gcd, :gcdlcm, :lcm, :quo,
	:rationalize, :remainder, :round
]

transform_methods = [
	:ceil, :abs, :abs2, :magnitude, :arg, :angle, :phase, :conj, :conjugate,
	:denominator, :even?, :floor, :imag, :imaginary, :integer?, :nonzero?,
	:odd?, :numerator, :polar, :pred, :real, :real?, :rect, :truncate, :zero?
]

operator_tests = {
	# Basic math
	multiplication: '*',
	subtraction: '-',
	addition: '+',
	division: '/',

	# Complex math
	exponent: '**',
	modulus: '%',

	# Comparisons
	greater: '>',
	lesser: '<',
	equal: '==',
	strict_equal: '===',
	greater_or_equal: '>=',
	lesser_or_equal: '<=',
	greater_equal_or_lesser: '<=>'
}

unary_operator_tests = {
	inversion: '~',
	minus: '-',
	plus: '+'
}

base_folder = File.join(File.dirname(__FILE__), '..')

# Generate lib/wector.rb
File.open(File.join(base_folder, 'lib', 'wector.rb'), 'w') do |file|
	file.write ERB.new(File.read('wector.erb'), 0, "%<>").result
end

# Generate tests/basic.rb
File.open(File.join(base_folder, 'test', 'test_basic.rb'), 'w') do |file|
	file.write ERB.new(File.read('test.erb'), 0, "%<>").result
end