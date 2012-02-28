class Palindrome

  def palindrome?(string)
    eq(filter(string))
  end

  def eq(string)
    string == string.reverse
  end

  def filter(string)
    string.gsub(/\W/, "").downcase
  end

  def count_words(string)
    m = Hash.new(0)
    string.downcase.split(/\W+/).each do |k|
      m[k] = m[k] + 1
    end
    m
  end


end