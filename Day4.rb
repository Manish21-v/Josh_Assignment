arr=["a","b","c"]

def print_array(arr)
  $i=0
  while $i <=arr.length do
    yield (arr[$i])
    $i+=1
  end 
  
end

print_array(arr) do |i|
  puts i
end

def get_short_name
query ={"India" => "IND","Austraiia" => "Aus"}
-> (name) {query[name]}
end

