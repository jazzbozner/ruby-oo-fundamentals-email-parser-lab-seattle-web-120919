require "pry"
# create a class EmailAddressParser and allow the user to write and read instances
# create a instance method that parser.parse is equal to an array of our instances
# seerate the instances in the array so that each are their own individual strings
class EmailAddressParser
  attr_accessor :email

  def initialize(email)
    @email = email
    # binding.pry
  end

  def parse
    @email.split.map do |emails|
      emails.delete(",")
      #binding.pry
    end.uniq
  end
end

#regex comparison string =~ /\w+@\w+\.\w+/
#then you can write a condition

#   def csv_email
#     @email.split(", ")
#   end

#   def space_deliminated_email
#     @email.split(" ")
#   end

#   def cvs_and_space
#     deleted = @email.delete(",")
#     deleted.split(", ")
#   end

#   def parse
#     # @email.delete(",")

#     if @email.include?(",")
#       csv_email
#     elsif !@email.include?(",")
#       space_deliminated_email
#     elsif @email.include?("," && " ")
#       binding.pry
#       cvs_and_space
#     end
#   end
