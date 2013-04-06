class Wector < Array
  def [](*args)
    args.each do |arg|
      raise "Non-numeric item" unless arg.is_a?(Integer) or arg.is_a?(Float)
      unshift arg
    end
  end

  # 
  # wector.~
  # 
  def ~
    self.class.new(map { |i| ~i })
  end
  
  # 
  # wector.-
  # 
  def -@
    self.class.new(map { |i| -i })
  end
  
  # 
  # wector.+
  # 
  def +@
    self.class.new(map { |i| +i })
  end
  
  # Operators
  # 
  # wector.*
  # 
  # Arguments:
  #   other: (Array)
  # 
  def *(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i * other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i * other })
    else
      super
    end
  end
  
  # 
  # wector.+
  # 
  # Arguments:
  #   other: (Array)
  # 
  def +(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i + other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i + other })
    else
      super
    end
  end
  
  # 
  # wector./
  # 
  # Arguments:
  #   other: (Array)
  # 
  def /(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i / other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i / other })
    else
      super
    end
  end
  
  # 
  # wector.-
  # 
  # Arguments:
  #   other: (Array)
  # 
  def -(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i - other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i - other })
    else
      super
    end
  end
  
  # 
  # wector.**
  # 
  # Arguments:
  #   other: (Array)
  # 
  def **(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i ** other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i ** other })
    else
      super
    end
  end
  
  # 
  # wector.%
  # 
  # Arguments:
  #   other: (Array)
  # 
  def %(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i % other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i % other })
    else
      super
    end
  end
  
  # 
  # wector.==
  # 
  # Arguments:
  #   other: (Array)
  # 
  def ==(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i == other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i == other })
    else
      super
    end
  end
  
  # 
  # wector.===
  # 
  # Arguments:
  #   other: (Array)
  # 
  def ===(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i === other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i === other })
    else
      super
    end
  end
  
  # 
  # wector.<=>
  # 
  # Arguments:
  #   other: (Array)
  # 
  def <=>(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i <=> other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i <=> other })
    else
      super
    end
  end
  
  # 
  # wector.>
  # 
  # Arguments:
  #   other: (Array)
  # 
  def >(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i > other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i > other })
    else
      super
    end
  end
  
  # 
  # wector.>=
  # 
  # Arguments:
  #   other: (Array)
  # 
  def >=(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i >= other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i >= other })
    else
      super
    end
  end
  
  # 
  # wector.<
  # 
  # Arguments:
  #   other: (Array)
  # 
  def <(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i < other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i < other })
    else
      super
    end
  end
  
  # 
  # wector.<=
  # 
  # Arguments:
  #   other: (Array)
  # 
  def <=(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i <= other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i <= other })
    else
      super
    end
  end
  
  
  # 
  # wector.modulo
  # 
  # Arguments:
  #   other: (Array)
  # 
  def modulo(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.modulo other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.modulo other })
    else
      super
    end
  end
  
  # 
  # wector.coerce
  # 
  # Arguments:
  #   other: (Array)
  # 
  def coerce(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.coerce other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.coerce other })
    else
      super
    end
  end
  
  # 
  # wector.div
  # 
  # Arguments:
  #   other: (Array)
  # 
  def div(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.div other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.div other })
    else
      super
    end
  end
  
  # 
  # wector.divmod
  # 
  # Arguments:
  #   other: (Array)
  # 
  def divmod(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.divmod other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.divmod other })
    else
      super
    end
  end
  
  # 
  # wector.eql?
  # 
  # Arguments:
  #   other: (Array)
  # 
  def eql?(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.eql? other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.eql? other })
    else
      super
    end
  end
  
  # 
  # wector.fdiv
  # 
  # Arguments:
  #   other: (Array)
  # 
  def fdiv(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.fdiv other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.fdiv other })
    else
      super
    end
  end
  
  # 
  # wector.gcd
  # 
  # Arguments:
  #   other: (Array)
  # 
  def gcd(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.gcd other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.gcd other })
    else
      super
    end
  end
  
  # 
  # wector.gcdlcm
  # 
  # Arguments:
  #   other: (Array)
  # 
  def gcdlcm(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.gcdlcm other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.gcdlcm other })
    else
      super
    end
  end
  
  # 
  # wector.lcm
  # 
  # Arguments:
  #   other: (Array)
  # 
  def lcm(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.lcm other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.lcm other })
    else
      super
    end
  end
  
  # 
  # wector.quo
  # 
  # Arguments:
  #   other: (Array)
  # 
  def quo(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.quo other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.quo other })
    else
      super
    end
  end
  
  # 
  # wector.rationalize
  # 
  # Arguments:
  #   other: (Array)
  # 
  def rationalize(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.rationalize other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.rationalize other })
    else
      super
    end
  end
  
  # 
  # wector.remainder
  # 
  # Arguments:
  #   other: (Array)
  # 
  def remainder(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.remainder other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.remainder other })
    else
      super
    end
  end
  
  # 
  # wector.round
  # 
  # Arguments:
  #   other: (Array)
  # 
  def round(other)
    if other.is_a? Array
      raise "Incorrect Dimensions" unless self.size == other.size
      other = other.dup
      self.class.new(map { |i| i.round other.shift })
    elsif other.is_a?(Integer) or other.is_a?(Float)
      self.class.new(map { |i| i.round other })
    else
      super
    end
  end
  
  
  # 
  # wector.ceil
  # 
  def ceil
    self.class.new(map { |i| i.ceil })
  end
  
  # 
  # wector.abs
  # 
  def abs
    self.class.new(map { |i| i.abs })
  end
  
  # 
  # wector.abs2
  # 
  def abs2
    self.class.new(map { |i| i.abs2 })
  end
  
  # 
  # wector.magnitude
  # 
  def magnitude
    self.class.new(map { |i| i.magnitude })
  end
  
  # 
  # wector.arg
  # 
  def arg
    self.class.new(map { |i| i.arg })
  end
  
  # 
  # wector.angle
  # 
  def angle
    self.class.new(map { |i| i.angle })
  end
  
  # 
  # wector.phase
  # 
  def phase
    self.class.new(map { |i| i.phase })
  end
  
  # 
  # wector.conj
  # 
  def conj
    self.class.new(map { |i| i.conj })
  end
  
  # 
  # wector.conjugate
  # 
  def conjugate
    self.class.new(map { |i| i.conjugate })
  end
  
  # 
  # wector.denominator
  # 
  def denominator
    self.class.new(map { |i| i.denominator })
  end
  
  # 
  # wector.even?
  # 
  def even?
    self.class.new(map { |i| i.even? })
  end
  
  # 
  # wector.floor
  # 
  def floor
    self.class.new(map { |i| i.floor })
  end
  
  # 
  # wector.imag
  # 
  def imag
    self.class.new(map { |i| i.imag })
  end
  
  # 
  # wector.imaginary
  # 
  def imaginary
    self.class.new(map { |i| i.imaginary })
  end
  
  # 
  # wector.integer?
  # 
  def integer?
    self.class.new(map { |i| i.integer? })
  end
  
  # 
  # wector.nonzero?
  # 
  def nonzero?
    self.class.new(map { |i| i.nonzero? })
  end
  
  # 
  # wector.odd?
  # 
  def odd?
    self.class.new(map { |i| i.odd? })
  end
  
  # 
  # wector.numerator
  # 
  def numerator
    self.class.new(map { |i| i.numerator })
  end
  
  # 
  # wector.polar
  # 
  def polar
    self.class.new(map { |i| i.polar })
  end
  
  # 
  # wector.pred
  # 
  def pred
    self.class.new(map { |i| i.pred })
  end
  
  # 
  # wector.real
  # 
  def real
    self.class.new(map { |i| i.real })
  end
  
  # 
  # wector.real?
  # 
  def real?
    self.class.new(map { |i| i.real? })
  end
  
  # 
  # wector.rect
  # 
  def rect
    self.class.new(map { |i| i.rect })
  end
  
  # 
  # wector.truncate
  # 
  def truncate
    self.class.new(map { |i| i.truncate })
  end
  
  # 
  # wector.zero?
  # 
  def zero?
    self.class.new(map { |i| i.zero? })
  end
  
end

# Add interface to convert arrays to vectors
class Array
  def to_wector
    Wector.new(self)
  end
end