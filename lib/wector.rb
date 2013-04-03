require "wector/version"

class Wector < Array
	def [](*args)
		args.each do |arg|
			raise "Non-numeric item" unless arg.is_a?(Integer) or arg.is_a?(Float)
			unshift arg
		end
	end
end

# Comparison operators
[
	:*,:+,:/,:-,:**,:%,:^,:==,:===,:<=>,:>,:>=,:<,:<=,:~,:&,:|
].map { |v| v.to_s }.each do |attr_name|
  Wector.class_eval %Q{
	  def #{attr_name}(other)
	    if other.is_a? Array
	      raise "Incorrect Dimensions" unless self.size == other.size
	      other = other.dup
	      self.class.new(map { |i| i #{attr_name} other.shift })
	    elsif other.is_a?(Integer) or other.is_a?(Float)
	      self.class.new(map { |i| i #{attr_name} other })
	    else
	      super
	    end
	  end
  }
end

# Comparison methods
[
	:-@, :+@, :modulo, :coerce, :div, :divmod, :eql?, :fdiv, :quo, :remainder,
	:round
].map { |v| v.to_s }.each do |attr_name|
  Wector.class_eval %Q{
	  def #{attr_name}(other)
	    if other.is_a? Array
	      raise "Incorrect Dimensions" unless self.size == other.size
	      other = other.dup
	      self.class.new(map { |i| i.#{attr_name} other.shift })
	    elsif other.is_a?(Integer) or other.is_a?(Float)
	      self.class.new(map { |i| i.#{attr_name} other })
	    else
	      super
	    end
	  end
  }
end

# Transform methods
[
	:ceil, :abs, :abs2, :magnitude, :arg, :angle, :phase, :conj, :conjugate,
	:denominator, :floor, :imag, :imaginary, :integer?, :nonzero?, :numerator,
	:polar, :real, :real?, :rect, :to_c, :to_int, :truncate, :zero?
].map { |v| v.to_s }.each do |attr_name|
  Wector.class_eval %Q{
	  def #{attr_name}
	    self.class.new(map { |i| i.#{attr_name} })
	  end
  }
end

# Add interface to convert arrays to vectors
class Array
  def to_wector
    Wector.new(self)
  end
end