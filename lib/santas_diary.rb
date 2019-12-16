class SantasDiary
  attr_reader :list

  def initialize
    @list = []
  end

  def view_list
    @list 
  end

  def add_name(name)
    @list.push(name)
  end

  def remove_name(name)
    @list = name
  end

end
