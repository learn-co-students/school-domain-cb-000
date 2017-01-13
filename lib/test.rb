array = []
hash1 = {:name => "john", :age => 45}
hash2 = {:name => "tom", :age => 25}
hash3 = {:name => "adam", :age => 3}
array.push(hash1, hash2, hash3)
#puts(array)

res = array.sort_by do |item|
    item[:name]
end 
puts res