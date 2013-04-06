require 'test/unit'
require 'wector'

class BasicTest < Test::Unit::TestCase

  def test_construction_and_conversion
    assert_equal Wector.new([1,2,3]), [1,2,3].to_wector
  end

  def test_insertion
    foo = [1,2,3].to_wector
    foo[3] = 4
    foo << 5
    assert_equal foo, [1,2,3,4,5]
  end
  
  def test_multiplication
    nums = (1..100).to_a.to_wector
    assert_equal (nums * nums), nums.map { |v| v * v }
  end
  
  def test_subtraction
    nums = (1..100).to_a.to_wector
    assert_equal (nums - nums), nums.map { |v| v - v }
  end
  
  def test_addition
    nums = (1..100).to_a.to_wector
    assert_equal (nums + nums), nums.map { |v| v + v }
  end
  
  def test_division
    nums = (1..100).to_a.to_wector
    assert_equal (nums / nums), nums.map { |v| v / v }
  end
  
  def test_exponent
    nums = (1..100).to_a.to_wector
    assert_equal (nums ** nums), nums.map { |v| v ** v }
  end
  
  def test_modulus
    nums = (1..100).to_a.to_wector
    assert_equal (nums % nums), nums.map { |v| v % v }
  end
  
  def test_greater
    nums = (1..100).to_a.to_wector
    assert_equal (nums > nums), nums.map { |v| v > v }
  end
  
  def test_lesser
    nums = (1..100).to_a.to_wector
    assert_equal (nums < nums), nums.map { |v| v < v }
  end
  
  def test_equal
    nums = (1..100).to_a.to_wector
    assert_equal (nums == nums), nums.map { |v| v == v }
  end
  
  def test_strict_equal
    nums = (1..100).to_a.to_wector
    assert_equal (nums === nums), nums.map { |v| v === v }
  end
  
  def test_greater_or_equal
    nums = (1..100).to_a.to_wector
    assert_equal (nums >= nums), nums.map { |v| v >= v }
  end
  
  def test_lesser_or_equal
    nums = (1..100).to_a.to_wector
    assert_equal (nums <= nums), nums.map { |v| v <= v }
  end
  
  def test_greater_equal_or_lesser
    nums = (1..100).to_a.to_wector
    assert_equal (nums <=> nums), nums.map { |v| v <=> v }
  end
  
  def test_inversion
    nums = (1..100).to_a.to_wector
    assert_equal (~nums), nums.map { |v| ~v }
  end
  
  def test_minus
    nums = (1..100).to_a.to_wector
    assert_equal (-nums), nums.map { |v| -v }
  end
  
  def test_plus
    nums = (1..100).to_a.to_wector
    assert_equal (+nums), nums.map { |v| +v }
  end
  
  def test_modulo
    nums = (1..100).to_a.to_wector
    assert_equal (nums.modulo nums), nums.map { |v| v.modulo v }
  end
  
  def test_coerce
    nums = (1..100).to_a.to_wector
    assert_equal (nums.coerce nums), nums.map { |v| v.coerce v }
  end
  
  def test_div
    nums = (1..100).to_a.to_wector
    assert_equal (nums.div nums), nums.map { |v| v.div v }
  end
  
  def test_divmod
    nums = (1..100).to_a.to_wector
    assert_equal (nums.divmod nums), nums.map { |v| v.divmod v }
  end
  
  def test_eql?
    nums = (1..100).to_a.to_wector
    assert_equal (nums.eql? nums), nums.map { |v| v.eql? v }
  end
  
  def test_fdiv
    nums = (1..100).to_a.to_wector
    assert_equal (nums.fdiv nums), nums.map { |v| v.fdiv v }
  end
  
  def test_quo
    nums = (1..100).to_a.to_wector
    assert_equal (nums.quo nums), nums.map { |v| v.quo v }
  end
  
  def test_remainder
    nums = (1..100).to_a.to_wector
    assert_equal (nums.remainder nums), nums.map { |v| v.remainder v }
  end
  
  def test_ceil
    nums = (1..100).to_a.to_wector
    assert_equal (nums.ceil), nums.map { |v| v.ceil }
  end
  
  def test_abs
    nums = (1..100).to_a.to_wector
    assert_equal (nums.abs), nums.map { |v| v.abs }
  end
  
  def test_even?
    nums = (1..100).to_a.to_wector
    assert_equal (nums.even?), nums.map { |v| v.even? }
  end
  
  def test_floor
    nums = (1..100).to_a.to_wector
    assert_equal (nums.floor), nums.map { |v| v.floor }
  end
  
  def test_integer?
    nums = (1..100).to_a.to_wector
    assert_equal (nums.integer?), nums.map { |v| v.integer? }
  end
  
  def test_nonzero?
    nums = (1..100).to_a.to_wector
    assert_equal (nums.nonzero?), nums.map { |v| v.nonzero? }
  end
  
  def test_odd?
    nums = (1..100).to_a.to_wector
    assert_equal (nums.odd?), nums.map { |v| v.odd? }
  end
  
  def test_pred
    nums = (1..100).to_a.to_wector
    assert_equal (nums.pred), nums.map { |v| v.pred }
  end
  
  def test_truncate
    nums = (1..100).to_a.to_wector
    assert_equal (nums.truncate), nums.map { |v| v.truncate }
  end
  
  def test_zero?
    nums = (1..100).to_a.to_wector
    assert_equal (nums.zero?), nums.map { |v| v.zero? }
  end
  

  # Only support 1.9+ features when available
  v = RUBY_VERSION.split('.')
  if v[0].to_i > 1 or v[1] > 8
    
    def test_gcd
      nums = (1..100).to_a.to_wector
      assert_equal (nums.gcd nums), nums.map { |v| v.gcd v }
    end
    
    def test_gcdlcm
      nums = (1..100).to_a.to_wector
      assert_equal (nums.gcdlcm nums), nums.map { |v| v.gcdlcm v }
    end
    
    def test_lcm
      nums = (1..100).to_a.to_wector
      assert_equal (nums.lcm nums), nums.map { |v| v.lcm v }
    end
    
    def test_rationalize
      nums = (1..100).to_a.to_wector
      assert_equal (nums.rationalize nums), nums.map { |v| v.rationalize v }
    end
    
    def test_round
      nums = (1..100).to_a.to_wector
      assert_equal (nums.round nums), nums.map { |v| v.round v }
    end
    
    def test_abs2
      nums = (1..100).to_a.to_wector
      assert_equal (nums.abs2), nums.map { |v| v.abs2 }
    end
    
    def test_arg
      nums = (1..100).to_a.to_wector
      assert_equal (nums.arg), nums.map { |v| v.arg }
    end
    
    def test_angle
      nums = (1..100).to_a.to_wector
      assert_equal (nums.angle), nums.map { |v| v.angle }
    end
    
    def test_conj
      nums = (1..100).to_a.to_wector
      assert_equal (nums.conj), nums.map { |v| v.conj }
    end
    
    def test_conjugate
      nums = (1..100).to_a.to_wector
      assert_equal (nums.conjugate), nums.map { |v| v.conjugate }
    end
    
    def test_denominator
      nums = (1..100).to_a.to_wector
      assert_equal (nums.denominator), nums.map { |v| v.denominator }
    end
    
    def test_imag
      nums = (1..100).to_a.to_wector
      assert_equal (nums.imag), nums.map { |v| v.imag }
    end
    
    def test_imaginary
      nums = (1..100).to_a.to_wector
      assert_equal (nums.imaginary), nums.map { |v| v.imaginary }
    end
    
    def test_magnitude
      nums = (1..100).to_a.to_wector
      assert_equal (nums.magnitude), nums.map { |v| v.magnitude }
    end
    
    def test_numerator
      nums = (1..100).to_a.to_wector
      assert_equal (nums.numerator), nums.map { |v| v.numerator }
    end
    
    def test_phase
      nums = (1..100).to_a.to_wector
      assert_equal (nums.phase), nums.map { |v| v.phase }
    end
    
    def test_polar
      nums = (1..100).to_a.to_wector
      assert_equal (nums.polar), nums.map { |v| v.polar }
    end
    
    def test_real
      nums = (1..100).to_a.to_wector
      assert_equal (nums.real), nums.map { |v| v.real }
    end
    
    def test_real?
      nums = (1..100).to_a.to_wector
      assert_equal (nums.real?), nums.map { |v| v.real? }
    end
    
    def test_rect
      nums = (1..100).to_a.to_wector
      assert_equal (nums.rect), nums.map { |v| v.rect }
    end
    
  end
end