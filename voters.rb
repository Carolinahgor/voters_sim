class Voter
  #Voters deberia pasarle a election las opciones de lo que el votante ya eligio. En las elecciones simplemente se suman los votos.

  attr_accessor :name, :politics
  def initialize(name, politics)
    @name = name
    @politics = politics
  end

  def voting
    if @politics == "T"
      get_random_teaparty
    elsif @politics == "C"
      get_random_conservative
    elsif @politics == "L"
      get_random_liberal
    elsif @politics == "S"
      get_random_socialist
    else @politics == "N"
      get_random_neutral
    end
  end

  def get_random_teaparty()
    case rand(100)
    when 1..90 then 'R'
    when 90..100 then 'D'
    end
  end

  def get_random_conservative()
    case rand(100)
    when 1..75 then 'R'
    when 75..100 then 'D'
    end
  end

  def get_random_neutral()
    case rand(100)
    when 1..50 then 'R'
    when 50..100 then 'D'
    end
  end

  def get_random_liberal()
    case rand(100)
    when 1..25 then 'R'
    when 25..100 then 'D'
    end
  end

  def get_random_socialist()
    case rand(100)
    when 1..10 then 'R'
    when 10..100 then 'D'
    end
  end

  def to_s
    "#{@name}, #{@politics}"
  end
end

# def test
#   vote = Voters.new("Carolina", "N")
#   p vote
#   vote.voting
# end
# puts test