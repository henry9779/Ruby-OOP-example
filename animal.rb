module Animal
  attr_accessor :name, :shout_num # it will craete two method

  # def name # reader
  #   @name
  # end

  # def name=(new_name) # setter
  #   @name = new_name
  # end

  # 建構函式，new 的時候 call，if name nil，it will be 'unkown'
  def initialize(name = 'unkown')
    @name = name
    @shout_num = 1
  end

  def self.inherited(subclass)
    @subclasses ||= []
    @subclasses << subclass
  end

  def self.subclasses
    @subclasses || []
  end

  def self.shout_all
    subclasses.each do |subclass|
      instance = subclass.new('unnamed')
      puts instance.shout
    end
  end
end
