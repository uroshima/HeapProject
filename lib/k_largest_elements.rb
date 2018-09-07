require_relative 'heap'
require_relative 'heap_sort'

def k_largest_elements(array, k)
  result = array.heap_sort!
  result.drop(array.length - k)
end
