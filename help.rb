require 'csv'
require 'date'

max_temp=0
date=' '
date1=' '
date2=' '
low_temp=100
humidity=0
input=" "

year = ARGV[1].to_s
city = ARGV[0].to_s
directory = Dir[city+'/'+city+'_'+year+'*.txt']
directory.each do |i|
CSV.open(i, col_sep: ',').each do |row|
if max_temp < row[1].to_i
    max_temp=row[1].to_i 
    date=row[0].to_s
   
    
end
if row[3].to_i != 0 && row[3].to_i != ' '
if low_temp > row[3].to_i  
    low_temp=row[3].to_i 
    date1=row[0].to_s 
end
end
if row[7].to_i != 0 && row[7].to_i != ' '
if humidity < row[7].to_i
    humidity=row[7].to_i
    date2=row[0].to_s
end
end
end
end
d=Date.parse(date) 
d1=Date.parse(date1)
d2=Date.parse(date2)
puts "Highest  : #{max_temp}C on #{d.strftime('%b %d')}"
puts "Lowest   : #{low_temp}C on #{d1.strftime('%b %d')}"
puts "Humid    : #{humidity}% on #{d2.strftime('%b %d')}"
                   



