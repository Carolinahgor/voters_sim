require "./voters.rb"
require "./politicians.rb"



class Election
  attr_accessor :voters, :politicians
  def initialize
    @voters = []
    @politicians = []
  end

  # def behavior_election
  #   @votetally = @@voters + @@politicians
  # end
end

class Game
  def initialize
  @election = Election.new
  end

def main_menu
  puts "What would you like to do?"
  puts "(C)reate, (L)ist, (U)pdate, or (V)ote"
  firstquestion = gets.chomp.downcase
  if firstquestion == "c"
    create
  elsif firstquestion == "l"
    list
  elsif firstquestion == "u"
    update
  end
end

def create
    puts "What would you like to create?"
    puts "(P)olitician or (V)oter"
    characters_create = gets.chomp.downcase
    if characters_create == "p"
      puts "Name?"
      name_politician = gets.chomp
      puts "Party?"
      puts "(D)emocrat or (R)epublican"
      party_politician = gets.chomp
      @election.politicians.push(Politician.new(name_politician, party_politician))
      p @election.politicians
      main_menu
    elsif characters_create == "v"
      puts "Name?"
      name_voter = gets.chomp
      puts "Politics?"
      puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
      politics_voter = gets.chomp
      @election.voters.push(Voter.new(name_voter, politics_voter))
      p @election.voters
      main_menu
    else
      puts "PLEASE MAKE SURE TO ENTER YOUR OPTIONS AS SPECIFIED ON THE PARENTHESIS"
      main_menu
    end
end

def list
  puts "here's a list of all voters you created"
  @election.voters.each {|x| puts x}
  puts "here's a list of all politicians you created"
  @election.politicians.each {|x| puts x}
  main_menu
end

def update
  puts "here's a list of all the people you created"
  @election.voters.each {|x| print x}
  @election.politicians.each {|x| print x}
  puts "You can delete them all and start over, input yes or no"
  answer = gets.chomp.downcase
  if answer == "yes"
    @election.voters.delete(1)
    @election.voters.each {|x| print x}
  elsif answer == "No"
    @election.voters.each {|x| print x}
    @election.politicians.each {|x| print x}
  end
end
end



  start = Game.new
  start.main_menu
