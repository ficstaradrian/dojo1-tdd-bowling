class Game
    def self.score(frame_history)
      previous_frame = nil
      frame_history.map do |frame|
        if previous_frame && previous_frame == 10
          frame
        end
        previous_frame = frame.reduce(:+)
        frame.reduce(:+)
      end.first
    end
end