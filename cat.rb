module Animal
  # 類別
  class Cat
    def shout
      num = @shout_num
      num = 10 if @shout_num > 10
      "my name is #{@name}," + (['meow'] * num).join(' ')
    end

    def get_shout_sound
      ['meow']
    end
  end
end

kitty = Animal::Cat.new
kitty.shout
