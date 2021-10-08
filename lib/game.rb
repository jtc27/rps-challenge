class Game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end
  
  # ^^ Class methods, not a Class instance methods like below.
  # Game.new is a method on the class Game
  # Game.new.instance goes out of scope when response is sent
  # Game.instance stays in scope
  
  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
    :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
    :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
  }
  
    attr_reader :players
  
    def initialize(player_1, player_2)
      @player_1 = player_1
      @player_2 = player_2
    end

    def result
      RULES[@player_1.weapon][@player_2.weapon]
    end
  
  
  end