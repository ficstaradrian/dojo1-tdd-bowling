require 'spec_helper'

describe Game do
  let(:score) { Game.score(frame_history) }
  let(:frame_history) { [[0,0]] }

  describe '#score' do
    it 'should return a score 0 when no pins are knocked down' do
      expect(score).to eq(0)
    end

    context 'should return 1 when knocking over only 1 pin' do
      let(:frame_history) { [[1,0]] }

      it 'should return 1 when knocking over only 1 pin' do
        expect(score).to eq(1)
      end
    end

    context 'when the frame has two non zero scores' do
      let(:frame_history) { [ [1,7] ]}

      it 'should add the two rolls' do
        expect(score).to eq(8)
      end
    end

    context 'when a spare is thrown' do
      let(:frame_history) { [ [4,6], [3, 0] ]}

      it 'should add the next throw' do
        expect(score).to eq(16)
      end
    end

    context 'when a strike is thrown' do
      let(:frame_history) { [ [10,nil], [3, 4] ]}

      it 'should add the next two throws' do
        expect(score).to eq(24)
      end
    end
  end
end