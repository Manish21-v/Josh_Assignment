
############using the block ##########
#explicit declaration of the block
def print_tables(&block)
block.call(2)
end

print_tables { |num| puts "#{num}"}


###########using lambda function##########

print_numtables = -> (num) {    for i in 1..10
                                    puts "#{num} X #{i} = #{num * i} "                            
                                end
}

print_numtables.call(2)


#################################
def noblock 
    return "no block is given" unless block_given?
    yield
end

noblock 



#################################
# Should work
my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"

# Should raise exception
my_proc = Proc.new { return 1 }
puts "Proc result: #{my_proc.call}"

####################################333
def call_proc
    puts "Before proc"
    my_proc = Proc.new { return 2 }
    my_proc.call
    puts "After proc"
  end
  
  p call_proc