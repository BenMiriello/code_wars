def rgb(r, g, b)
  hex_index = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F']

  hex_array = [r,g,b].map do |dec|
    dec = (dec > 255) ? 255 : (dec < 0) ? 0 : dec
    hex1 = hex_index[dec / 16]
    hex2 = hex_index[dec % 16]
    hex1 + hex2
  end
  
  hex_array.join
end
