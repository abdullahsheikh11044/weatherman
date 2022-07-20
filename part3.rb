require 'csv'
require 'date'
require 'colorize'
b=0
d=0
month=ARGV[2].to_s
year = ARGV[1].to_s
city = ARGV[0].to_s
directory = Dir[city+'/'+city+'_'+year+'_'+month+'*.txt']
directory.each do |i|
CSV.open(i, col_sep: ',').each do |row|
    a=0
    
    if row[1].to_i != ' ' && row[1].to_i != 0
        b+=1  
    n=row[1].to_i
    print "#{b} "
    while a<=n do
        
    print "+".colorize(:red)
    a+=1
        
end

print " #{row[1].to_i}C"
puts " "
end

a=0
    
    if row[3].to_i != ' ' && row[3].to_i != 0
        d+=1
    n=row[3].to_i
    print "#{d} "
    while a<=n do
        
    print "+".colorize(:blue)
    a+=1
        
end
print " #{row[3].to_i}C"
puts " "
end

end
end              




