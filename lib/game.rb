class Game
    def self.score(frame_history)
      previous_frame = nil
      frame_history.map do |frame|
        frame.map!(&:to_i)
        if previous_frame && previous_frame.first == 10
          frame.map! { |pin| pin * 2 }
        elsif previous_frame && previous_frame.reduce(:+) == 10
          frame = Array.new << frame[0] * 2 << frame[1]
        end
        previous_frame = frame
        frame.reduce(:+)
      end.flatten.reduce(:+)
    end
end