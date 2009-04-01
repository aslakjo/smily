class Smily < ActiveRecord::Base

  def self.humor
    {"glad" => 5, "littglad" => 4, "middels" =>3, "littsur" =>2, "sur"=>1}
  end

  def value
    Smily.humor[mood]
  end

  def self.snitt
    teller = 0
    Smily.find(:all).each{|smiley|
      teller = teller + smiley.value
    }
    teller = teller/Smily.count(:all)
  end

  def self.translate_mood(mood_id)
    humor.each do |key,value|
      if value == mood_id
        return key
      end
    end
  end
end
