module Property
    def add_property(array,obj)
      array.push(obj)
    end

    def show_property(array)
      array.each do|item|
        puts "***************************************************"
        puts "LocationID :#{item.locationid} \nlocation :#{item.location} \narea :#{item.area} \nrent :#{item.rent} \ndeposit :#{item.deposit} \nstatus :#{item.status}"
        puts "***************************************************"
      end
    end
end


class Rent
    extend Property
    @@lid = 100
    @@count_rent_pro = 0
    attr_accessor :locationid,:location,:area,:rent,:deposit,:status
    def initialize(location,area,rent,deposit)
        @location = location
        @area = area
        @rent = rent
        @deposit = deposit
        @status = "Available"
        @@count_rent_pro+=1
        @locationid = @@lid+1
        @@lid += 1
    end

end

class Sell
    extend Property
    @@lid = 200
    @@count_sell_pro = 0
    attr_accessor :locationid,:location,:area,:rent,:deposit,:status
    def initialize(location,area,rent,deposit)
        @location = location
        @area = area
        @rent = rent
        @deposit = deposit
        @status = "Available"
        @@count_sell_pro+=1
        @locationid = @@lid+1
        @@lid += 1
    end
end

class Hotel
    extend Property
    @@lid = 300
    @@count_hotel_pro = 0
    attr_accessor :locationid,:location,:area,:rent,:deposit,:status
    def initialize(location,area,rent,deposit)
        @location = location
        @area = area
        @rent = rent
        @deposit = deposit
        @status = "Available"
        @@count_hotel_pro+=1
        @locationid = @@lid+1
        @@lid += 1
    end
end


class ClassName
  @@hotel = []
  @@rent = []
  @@rooms = []
  choice=0

    while choice != -1
        puts "1 : add Rent property "
        puts "2 : add Hotel Property  "
        puts "3 : add Selling property "
        puts "4 : show the rental property "
        puts "5 : show the selling property"
        puts "6 : show the hotel property"
        puts "7 : buy rental property"
        puts "8 : buy hotel property"
        puts "9 : buy selling property"
        puts "-1 : for exit"
        choice = gets.chomp.to_i
        case choice
            when 1
            puts "Enter the location of property"
            loc = gets.chomp
            puts "Enter the area of property"
            area = gets.chomp.to_f
            puts "Enter the rent of property"
            rentprice = gets.chomp.to_i
            puts "Enter the deposit"
            dep = gets.chomp.to_i 

            robj=Rent.new(loc,area,rentprice,dep)
            Rent.add_property(@@rent,robj)

            when 2
            puts "Enter the location of property"
            loc = gets.chomp
            puts "Enter the area of property"
            area = gets.chomp.to_f
            puts "Enter the rent of property"
            rentprice = gets.chomp.to_i
            puts "Enter the deposit"
            dep = gets.chomp.to_i 
            hobj=Hotel.new(loc,area,rentprice,dep)
            Hotel.add_property(@@hotel,hobj)

            when 3
            puts "Enter the location of property"
            loc = gets.chomp
            puts "Enter the area of property"
            area = gets.chomp.to_f
            puts "Enter the rent of property"
            rentprice = gets.chomp.to_i
            puts "Enter the deposit"
            dep = gets.chomp.to_i 
            sobj=Sell.new(loc,area,rentprice,dep)
            Sell.add_property(@@rooms,sobj)

            when 4
              Rent.show_property(@@rent)
            when 5
              Sell.show_property(@@rooms)
            when 6
              Hotel.show_property(@@hotel)
            when 7
              Rent.show_property(@@rent)
              puts "enter the id of the property"
              pid = gets.chomp.to_i
              @@rent.each do|item|
              if (pid == item.locationid)
              item.status="SOLD"
              puts "*************"  
              puts "You have bought a new property" 
              puts "*************"  
             
              end
              end
            when 8
              Hotel.show_property(@@hotel)
              puts "enter the id of the property"
              pid = gets.chomp.to_i
              @@hotel.each do|item|
              if (pid == item.locationid)
              item.status="SOLD"
              puts "*************"  
              puts "You have bought a new property" 
              puts "*************"  
             
              end
              end
            when 9
              Sell.show_property(@@rooms)
              puts "enter the id of the property"
              pid = gets.chomp.to_i
              @@rooms.each do|item|
              if (pid == item.locationid)
              item.status="SOLD"
              puts "*************"  
              puts "You have bought a new property" 
              puts "*************"  
             
              end
              end
        end
      end
    end
  






