class Array
  def my_sum(start = 0)
    inject(start, &:+)
  end
end
