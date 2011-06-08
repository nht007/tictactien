class Delta
  attr_accessor :loc, :token
  
  def initialize(loc, token)
    @loc = loc
    @token = token
  end
end