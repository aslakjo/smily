Gitt /^at jeg er på startsiden$/ do
  visit new_smily_path
end

Så /^skal jeg se (\d+) former for humør$/ do |humor_valg|
  response.should have_tag("input[type=radio]", humor_valg.to_i)
end
