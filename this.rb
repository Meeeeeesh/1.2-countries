count = 0
countries = []
File.foreach("countries.txt") do |line|  
  countries.push(line)
  count += 1
end
puts "The number of countries is #{countries.count}"

countries.each do |country|
  country = country.split('|')[1]
  country = country.split(" ")
  country.each do | string|
    if string != "of" && string != "and" && string != "the"
      string = string.slice(0,1).capitalize + string.slice(1..-1)
    end
    puts string
# .gsub('|', ' - ')
  end
end