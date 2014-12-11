path = "C:/Users/Shiva/Desktop/8rays_test/branded_names.txt"
puts path
puts File.exists?("#{path}")
if File.exists?("#{path}")
     data_str = ""
     names_arr = Array.new
     File.open("#{path}", 'r') {|f| 
       names_arr_str = f.readlines
       data_str = names_arr_str[0]
       puts data_str.class
       names_arr = data_str.split(', ')
       puts names_arr.length
       names_arr.sort!
       puts names_arr
     }
     names_hash = Hash.new
     names_arr.each do |name|
        n = name.split('')[0]
	names_hash[n] ||= Array.new
	names_hash[n] << name
     end
     puts names_hash
     names_hash.each do |k, values|
	puts k
	puts " " + values.join(', ')
	puts "\n"
     end
end