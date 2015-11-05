#coding: utf-8

class Eratos
  
  def initialize
    @max = ARGV[0].to_i
    @search_list = []
    @prime_list = []
  end

  def search_prime
    step1
    step2to3
    step4
  end

  def step1
    (2..@max).each do |i|
      @search_list << i
    end
  end

  def step2to3
    while @search_list.first < Math.sqrt(@max)
      prime = @search_list.first
      @prime_list << prime
      @search_list.delete_if {|i| i % prime == 0}
    end
  end

  def step4
    p @prime_list.concat @search_list
  end
end

eratos = Eratos.new
eratos.search_prime