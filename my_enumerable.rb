module MyEnumerable
  def all?
    each { |num| return false unless yield num }
    true
  end

  def any?
    each { |num| return true if yield num }
    false
  end

  def filter
    even_numbers = []

    each { |num| even_numbers.push(num) if yield num }
    even_numbers
  end
end
