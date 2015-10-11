class Politician
  attr_accessor :name, :politics
  def initialize(name, politics)
      @name = name
      @politics = politics
  end

  def voting_politicians
    if @politics == "R"
       @politics = "R"
    elsif @politics == "D"
       @politics = "D"
    end
  end

  def to_s
    "#{@name}, #{politics}"

  end
end

# def test
#   vote = Politicians.new("Trump", "D")
#   p vote
#   p vote.voting_politicians
# end

# puts test