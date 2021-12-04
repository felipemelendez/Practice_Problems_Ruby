def my_roman_numerals_converter(decimal_number) 
    roman_number = {
      'M'=> 1000,
      'CM'=> 900,
      'D' =>  500,
      'CD' =>  400,
      'C' =>  100,
      'XC' =>  90,
      'L' =>  50,
      'XL' =>  40,
      'X' =>  10,
      'IX' =>  9,
      'V' =>  5,
      'IV' =>  4,
      'I' =>  1
      } 
    roman_number.each do |key, value|
        if (decimal_number == 0) 
            return ''
        end
        if (decimal_number >= value) 
            return key + my_roman_numerals_converter(decimal_number - value)
        end
    end
end
  
puts my_roman_numerals_converter(2021)
