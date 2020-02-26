  str1="a5b12a3b9c10d15"
  arrnum=str1.split(/[a-z]/)
  arrchar=str1.split(/[0-9]*/)
  p arrnum
  puts "********************"
  p arrchar
  i=0
  h={}
while i <= arrchar.length-1 do
  if(h.include?(arrchar[i]))
    h[arrchar[i]]=h[arrchar[i]].to_i + arrnum[i+1].to_i
    
  else
 #puts "#{i}"
    h[arrchar[i] ]= arrnum[i+1]
    
  end
  i+=1
end
  
h.each do |key,value|
  puts "#{key} => #{value}"
end




