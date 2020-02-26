email="manish.v21@gmail.com"
mobileno="8108736336"
ipaddr="192.168.01.17"
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


