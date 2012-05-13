
Given /^I start a bowling game$/ do
  @game = BowlingGame.new
end


Then /^I should have a score of (\d+)$/ do |total_score|
   @game.score.should == total_score.to_i
end

When /^I bowl all gutters$/ do
  bowl_the_same_value(0, 20)
end

When /^I bowl all ones$/ do
  bowl_the_same_value(1, 20)
end

When /^I bowl all fives$/ do
  bowl_the_same_value(5, 21)
end

When /^I bowl all strikes$/ do
  bowl_the_same_value(10, 12)
end

def bowl_the_same_value(val, times)
  (1..times).each do
     @game.roll(val)
  end
end