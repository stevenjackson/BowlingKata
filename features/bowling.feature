Feature:  Score a bowling game
  In order to practice
  I want to work on scoring a bowling game
  
Scenario:  Rolling gutters
  Given I start a bowling game
  When I bowl all gutters
  Then I should have a score of 0


Scenario:  Rolling ones
  Given I start a bowling game
  When I bowl all ones
  Then I should have a score of 20
  
Scenario:  Rolling spares
  Given I start a bowling game
  When I bowl all fives
  Then I should have a score of 150

Scenario:  Rolling strikes
  Given I start a bowling game
  When I bowl all strikes
  Then I should have a score of 300
