class MatrixProgram

  def find_duplicate(matrix_value)
    array_value     = matrix_value.flatten
    duplicate_value = (array_value.find_all { |e| array_value.count(e) > 1 }).uniq
    puts "\n"
    if duplicate_value.any?
      puts "These are duplicated value from the given matrix \n #{duplicate_value}"
      duplicate_value
    else
      puts 'There is no duplicated value'
    end
  end

end
puts 'Please enter a row size'
row_size      = gets.chomp
puts 'Please enter a column size'
column_size   = gets.chomp
increment_one = 1
loop_value    = 0
matrix_value  = []
while loop_value < row_size.to_i
  loop_value  = loop_value + increment_one
  puts "Please enter #{column_size} column value separated by comma for #{loop_value.to_s} row"
  row_value   = gets.chomp
  row_value   = row_value.split(',').map { |s| s.to_i }
  matrix_value << row_value
end
puts "\n"
puts 'You entered matrix as follows'
matrix_value.each do |each_row|
  p each_row
end
instance_object = MatrixProgram.new
instance_object.find_duplicate(matrix_value)
