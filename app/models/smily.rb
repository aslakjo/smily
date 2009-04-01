class Smily < ActiveRecord::Base

  def self.humor
    {"glad" => 5, "littglad" => 4, "middels" =>3, "littsur" =>2, "sur"=>1}
  end

  def value
    Smily.humor[mood]
  end
end
