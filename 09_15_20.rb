=begin
SIMPLE ARRAY PRODUCT #code wars
you will be given a multi-dimensional array containing 2 or more sub-arrays
of integers. Your task is to find the maximum product that can be formed by 
taking any one element from each sub-array.

PROBLEM NOTES:
  Input: nested array could contain 2 or more arrays
          sub arrays can contain multiple integers
  Output: largest POSITIVE integer resulting from the product of one number
          from each sub array


Problem: generate an array of all possible products given two arrays of integers
  Ex: [1, 2] [3, 4] => [3, 4, 6, 8]

ALGORITHM:

IMPLEMENTATION NOTES:
Array#product

=end

def all_products(array1, array2)
  combinations = array1.product(array2)
  combinations.map { |pair| pair.reduce(:*) }
end

def solve(arr)
  products = arr[1..-1].reduce(arr[0]) do |product_array, sub_array|
    all_products(product_array, sub_array)
  end
  products.max
end

p solve([[1, 2], [3, 4]]) == 8
p solve([[10, -15], [-1, -3]]) == 45
p solve([[-1, 2, -3, 4], [1, -2, 3, -4]]) == 12
p solve([[-11, -6], [-20, -20], [18, -4], [-20, 1]]) == 17600
p solve([[14, 2], [0, -16], [-12, -16]]) == 3584
p solve([[-3, -4], [1, 2, -3]]) == 12
