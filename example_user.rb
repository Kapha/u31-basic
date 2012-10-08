class User
  attr_accessor :firstname, :email, :sirname, :phone

  def initialize(attributes = {})
    @firstname = attributes[:firstname]
    @sirname = attributes [:sirname]
    @email = attributes[:email]
    @phone = attributes[:phone]

  end
  
  def user_line
    "#{@firstname}, #{@sirname} <#{@email}> #{@phone}"
  end
end
