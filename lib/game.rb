class Game
    def self.score(frame_history)
      previous_frame = nil
      frame_history.map do |frame|
        if previous_frame && previous_frame == 10
          frame = Array.new << frame[0] * 2 << frame[1]
          puts frame.inspect
        end
        previous_frame = frame.reduce(:+)
        frame.reduce(:+)
      end.flatten.reduce(:+)
    end
end