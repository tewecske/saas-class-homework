require 'test/unit'
require './palindrome'
class TestPalindrom < Test::Unit::TestCase

  def test_filter
    p = Palindrome.new

    assert_equal "saasclass", p.filter("saasclass")
    assert_equal "saasclass", p.filter("s! @aas--c'lass.")
  end

  def test_eq
    p = Palindrome.new

    assert_equal true, p.eq("saas")
    assert_equal false, p.eq("class")
  end

  def test_palindrome
    p = Palindrome.new

    assert_equal true, p.palindrome?("A man, a plan, a canal -- Panama") #=> true
    assert_equal true, p.palindrome?("Madam, I'm Adam!") # => true
    assert_equal false, p.palindrome?("Abracadabra") # => false (nil is also ok)
  end

  def test_count_words
    p = Palindrome.new

    assert_equal({ 'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1 }, p.count_words("A man, a plan, a canal -- Panama"))

    assert_equal({'doo' => 3, 'bee' =>  2}, p.count_words("Doo bee doo bee doo"))

  end

end