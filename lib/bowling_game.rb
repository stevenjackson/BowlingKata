class BowlingGame
   MAX_FRAMES = 10
  
   def initialize()
     @rolls = []
   end
  
   def roll(pins)
     @rolls << pins
   end
   
   def score
    total_score = 0
    calculate_frame_scores.each do |frame|
      total_score += frame
    end
    total_score
   end
   
   def calculate_frame_scores
     roll_index = 0
     frame_scores = []
     while roll_index < @rolls.size
       current_roll = @rolls[roll_index]
       next_roll =  @rolls[roll_index + 1]
       third_roll = @rolls[roll_index + 2]
       
       if(is_strike(current_roll))
         frame_scores << frame_score([current_roll, next_roll, third_roll])
         roll_index += 1
       elsif(is_spare(current_roll, next_roll))
         frame_scores << frame_score([current_roll, next_roll, third_roll])
         roll_index += 2
       else
         frame_scores << frame_score([current_roll, next_roll])
         roll_index += 2
       end
       #skip to the end if we've calculated all frames
       if(frame_scores.size == MAX_FRAMES)
         roll_index = @rolls.size
       end
     end
     frame_scores
   end
   
   def is_strike(roll)
     roll == 10
   end
   
   def is_spare(roll1, roll2)
     frame_score([roll1, roll2]) == 10
   end
   
   def frame_score(rolls)
      frame_score = 0
      rolls.compact.each do |roll|
        frame_score += roll
      end
      frame_score
   end
end