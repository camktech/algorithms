def binary_search(ar, v, pos)
  if ar[pos] == v
    pos
  elsif ar[pos] < v
    binary_search(ar, v, pos + (ar.length - pos) / 2)
  elsif ar[pos] > v
    binary_search(ar, v, pos / 2)
  end
end

if ARGV.length == 2
  ar = eval ARGV[0]
  value = eval ARGV[1]
  if ar.nil? || value.nil? || ar.length < 1
    puts "What are you trying to pull?"
  else
    puts binary_search(ar, value, ar.length/2)
  end
else
  puts "Wrong # of arguements \n pass array and value"
end
