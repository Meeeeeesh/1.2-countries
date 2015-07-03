lines = []
new_countries = []

File.open("countries.txt", "r+").each do |line|  
  lines.push(line)
end

puts "The number of countries is #{countries.count}"

exclude = ["and", "of", "the"]

lines.each do |line|
  line.gsub!("|" , " - ")
  line_cap = line.split(" ")
  line_cap.each do |cap|
    unless exclude.include?(cap)
      cap.capitalize
    end
  end
  line_cap[0].upcase
  new_countries.push(line_cap.join(" "))
end

#creates the new file
File.new("new_countries.txt", "w+")
#open and write to new file
File.open("new_countries.txt", "w+") do |f|
  f.puts new_countries
end

puts new_countries
