    path = "C:/Users/Shiva/Desktop/8rays_test/names.txt"
    puts path
    puts File.exists?("#{path}")
    if File.exists?("#{path}")
     data_str = ""
     File.open("#{path}", 'r') {|f| 
       names_arr_str = f.readlines
       data_str = names_arr_str[0]
       puts data_str.class
       names_arr = data_str.split(',')
       puts names_arr.length
       names_arr.sort!
       puts names_arr
     }
    end