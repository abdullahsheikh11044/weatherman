require 'csv'
require 'date'

a_max_temp=0
a_low_temp=0
a_humidity=0
a=0
b=0
c=0
month=ARGV[2].to_s
year = ARGV[1].to_s
city = ARGV[0].to_s
directory = Dir[city+'/'+city+'_'+year+'_'+month+'*.txt']
directory.each do |i|
CSV.open(i, col_sep: ',').each do |row|
if row[1].to_i != ' '
    a_max_temp +=row[1].to_i 
    b+=1
    
end
if row[3].to_i != ' '
    a_low_temp += row[3].to_i
    a += 1

end

if row[7].to_i != ' '
    a_humidity += row[7].to_i
    c += 1
end
end
end

a_low_temp = a_low_temp / a    
a_max_temp = a_max_temp / b    
a_humidity = a_humidity / c
puts "Highest Average   : #{a_max_temp} C"    
puts "Lowest Average    : #{a_low_temp} C" 
puts "Average Humidity  : #{a_humidity} %"

