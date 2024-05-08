require 'pry-byebug'
module Enumerable
  # Your code goes here
  def my_each_with_index
    count = 0
    for i in self do
      yield i, count
      count += 1
    end
    self
  end

  def my_select
    answer = []
    for i in self do
      answer.push(i) if yield i
    end
    answer
  end

  def my_all?
    answer = true
    for i in self do
      answer = false unless yield i
    end
    answer
  end

  def my_any?
    answer = false
    for i in self do
      answer = true if yield i
    end
    answer
  end

  def my_none?
    answer = true
    for i in self do
      answer = false if yield i
    end
    answer
  end

  def my_count
    if block_given?
      answer = []
      for i in self do
        answer.push(i) if yield i
      end
      answer.length
    else
    self.length
    end
  end
end



# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in self do
      yield i
    end
    self
  end
end
