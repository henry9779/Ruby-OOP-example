module Animal
  # 類別
  class Dog
    def shout
      num = @shout_num
      num = 5 if @shout_num > 5
      "my name is #{@name}," + (['bow-wow'] * num).join(' ')
    end
  end
end

little_black = Animal::Dog.new
little_black.shout
