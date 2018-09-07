require_relative "heap"

class Array
  def heap_sort!
    prc = Proc.new {|a,b| -1 * (a<=>b)}
    1.upto(count) do |num|
      next if num == self.length
      BinaryMinHeap.heapify_up(self, num, count, &prc)
    end

    right = count - 1
    right.downto(1) do |num|
    self[0], self[num] = self[num], self[0]
    BinaryMinHeap.heapify_down(self, 0, num, &prc) 
    end

    self
  end
end
