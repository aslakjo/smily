Gitt /^at jeg er på startsiden$/ do
  visit "/smily/show"
end

Så /^skal jeg se (\d+) former for humør$/ do |humor_valg|
  response.should have_tag("input[type=radio]", humor_valg.to_i)
end

Så /^skal jeg se ett smilefjes av typen (.*)$/ do |humør_type|
  response.should have_tag("img.mood", 1)
  response.should have_tag("img.mood[alt=#{humør_type}]", 1)

end

Gitt /^at jeg er den første idag$/ do
  
end


Gitt /^andre har svart:$/ do |humør_tabell|
  humør_tabell.hashes.each do |rad|
    s =Smily.create!
    s.mood = rad['mood']
    s.save!
    p s
  end
end

Når /^jeg trykker på "(.*)"$/ do |humør|
  choose "smily_mood_#{humør}"
  click_button "Save changes"
end



