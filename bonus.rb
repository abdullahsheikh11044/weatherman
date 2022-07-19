require 'csv'
require 'date'
require 'colorize'
=begin
    
rescue => exception
    
end
class first
    def initializer(highest_temp,hday,lowest_temprature,lday,most_humid,humidity)
        @highest_temp=highest_temp
        @hday=hday
        @lowest_temprature=lowest_temprature
        @lday=lday
        @most_humid=most_humid
        @humidity=humidity
    end
=end


b=0
d=0
month=ARGV[2].to_s
year = ARGV[1].to_s
city = ARGV[0].to_s
directory = Dir[city+'/'+city+'_'+year+'_'+month+'*.txt']
directory.each do |i|
CSV.open(i, col_sep: ',').each do |row|
    a=0
    a1=0
    if (row[1].to_i != ' ' && row[1].to_i != 0) && (row[3].to_i != ' ' && row[3].to_i != 0)
        b+=1  
    n=row[1].to_i 
    print "#{b} "
    while a<=n do
        
    print "+".colorize(:red)
    a+=1
    
    
end
n=row[3].to_i
while a1<=n do
        
    print "+".colorize(:blue)
    a1+=1
    
end
print " #{row[1].to_i}C"
puts " "


end
end              
end



