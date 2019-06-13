def compression(string)
    new_arr = []
    arr = string.split("")
    can_compress = true
  while can_compress  
    count = 1
    arr.each.with_index do |char, i|
      can_compress = false
      if arr[i] == arr[i + 1]
        count += 1
        arr[i] = ""
      
      else
        new_arr << arr[i]
        new_arr << count
        count = 1
      end
    end
  end
    string = new_arr.join("")
  
  return string
end

compression("aabccccccaaaa")
#'a2b1c6a4'