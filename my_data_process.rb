def add_key_value_pairs (result, key, values)
  if (result[key][values] == nil)
      result[key][values] = 1
  else result[key][values] += 1
  end
  return result
end

def my_data_process(array)
  result = {"Gender"=> {}, "Email"=>  {}, "Age"=>  {}, "City"=>  {}, "Device"=>  {}, "Order At"=> {}}
  for line in array.drop(1)
      values = line.split(",")
      add_key_value_pairs(result, "Gender", values[0])
      add_key_value_pairs(result, "Email", values[4])
      add_key_value_pairs(result, "Age", values[5])
      add_key_value_pairs(result, "City", values[6])
      add_key_value_pairs(result, "Device", values[7])
      add_key_value_pairs(result, "Order At", values[9])
  end
  return result.to_json
end
input = ["Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At", "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon", "Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon", "Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon", "Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning", "Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"]
my_data_process(input)
