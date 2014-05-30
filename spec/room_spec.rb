
describe Room do
  before do
    @room = Room.new(description: "This is a test room!", gems: 15)
  end

  it 'should have a description' do
    expect(@room.description).to eq "This is a test room!"
  end

  it 'can set an enemy' do
    enemy = Enemy.new
    @room.set_enemy(enemy)
    expect(@room.enemy).to be(enemy)
  end

  it 'has some gems yo' do
    expect(@room.gems).to be 15
  end
end
