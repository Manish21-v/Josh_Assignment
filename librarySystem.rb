class Library
  #Array of books availble in the library
  @@bookarray = []

  begin
    
  puts "***********Welcome to vidya Library***********"
    
  end
  
  #adds the new book in the library
  def addbook(obj)
    @@bookarray.push(obj)
  end

 
  def showbooks
    @@bookarray.each do |item|
      puts " bookid : #{item.bookid} \n book_name: #{item.bookname}"
    end   
  end

end


class Book
  #getter setter for all the properties of Book 
    attr_accessor :bookname ,:bookid, :issuedate , :returningdate
  
    #Array of class book to keep the record of the books available
     @@bookarray = []
    
    def initialize
      @bookname
      @bookid
      @issuedate
      @returningdate
      
    end

end

#Creating a new book for library
bobj=Book.new()
bobj.bookid = 1
bobj.bookname = "Mahabharat"

#Creating another new book for library
bobj2=Book.new()
bobj2.bookid = 2
bobj2.bookname = "Ramayan"

#Adding the new books to the library
lobj=Library.new()
lobj.addbook(bobj)
lobj.addbook(bobj2)
#Display all the book in yhe library
lobj.showbooks()





class Member
  #getter setter for the properties of the Member class 
    attr_accessor :id ,:name ,:gender, :no_of_books
        
    def initialize(id, name, gender)
        @id = id
        @name = name
        @gender = gender
        @no_of_books = [] 
    end

    #function to borrow books
    def borrower(bookid,bookname,issuedate,returningdate)
      books=Book.new
      books.bookid = bookid
      books.bookname = bookname
      books.issuedate = issuedate
      books.returningdate = returningdate
     # puts no_of_books.class
      self.no_of_books.push(books)
    end
    
    #shows  the books borrowed by the member
    def getdetail
      $i=0
      no_of_books.each do|item|
      puts "Book id: #{item.bookid} \n Book name : #{item.bookname} \n issue date : #{item.issuedate} \n return date : #{item.returningdate}"
      end
    end

end

mobj=Member.new(100, 'ramesh', 'male')
mobj.borrower(1,"Mahabharat","21/02/2020","21/03/2020")
mobj.getdetail()
mobj.borrower(2,"Ramayan","22/02/2020","22/03/2020")
mobj.getdetail()

