require './lib/ttt.rb'

describe 'Player' do
  describe '#check_win' do
    it 'detects all possible win conditions' do
      jhay = Player.new('x')
      jhay.win_con.each do |arr|
        if jhay.map[arr[0] - 1] == jhay.id && Game.map[arr[1] - 1] == jhay.id && Game.map[arr[2] - 1] == jhay.id
          expect(jhay.check_win).to eql(jhay.game_over)
        end
      end
    end
  end
end
