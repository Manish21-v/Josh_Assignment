email="manish.v21@gmail.com"
mobileno="8108736336"
ipaddr="19c2.168.01.17"
if(!email.match(/^[A-Za-z]*/))
  puts "enter the proper name"
end

if (!email.match(/[0-9]/))
  puts "enter a number in email"
end

if (!email.match(/.com/))
  puts"enter the .com domain"
end

if(!email.match(/@+/))
  puts"Enter ythe @ symbol"
end

if(!mobileno.match(/[0-9]{10}/))
  puts "enter only numbers"
end


ip=ipaddr.split(".")
p ip
ip.each do |i|
  p i
  if(i.to_i > 255) || (!i.match(/^[0-9]+$/))
    puts "invalid ip address"
  end

end
  

