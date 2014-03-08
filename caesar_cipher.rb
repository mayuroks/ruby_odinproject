## The script relies on String#ord and Integer#chr methods

@a = "a".ord  # => 97
@z = "z".ord  # => 122
@uA = "A".ord   # => 65
@uZ = "Z".ord   # => 90

def caesar_cipher(str='', shift=0)
  z_new = @z - shift
  uZ_new = @uZ - shift
  str.each_char do |char|
    # For lowercase letters within between
    if char.ord >= @a && char.ord <= z_new
      print (char.ord + shift).chr

    # For UPPER letters within normal scope
    elsif char.ord >= @uA && char.ord <= uZ_new
      print (char.ord + shift).chr

    # For lowercase letters requiring a range wrap
    elsif char.ord >= @a && char.ord > z_new
      print (@a + char.ord + shift - @z - 1).chr
    
    # For UPPER letters requiring a range wrap
    elsif char.ord >= @uA && char.ord > uZ_new
      print (@uA + char.ord + shift - @uZ - 1).chr
    
    # For Random chars like !{'
    else print char
    end
  end
  puts "\n"
end

caesar_cipher("What a string!",5)
caesar_cipher("This won't work", 28)
