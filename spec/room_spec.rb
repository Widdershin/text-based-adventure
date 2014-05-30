
describe Room do
  before do
    @room = Room.new(description: "This is a test room!", gems: 15)
  end

  it 'should have a description' do
    expect(@room.description).to eq "This is a test room!"
  end

  it 'can add enemies' do
    enemy = Enemy.new
    @room.add_enemy(enemy)
    expect(@room.enemies).to include(enemy)
  end

end
