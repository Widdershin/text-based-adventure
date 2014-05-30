require './app/models/room'
require 'pry'
describe RoomLoader do

  it 'successfully loads rooms' do
    @roomlist = RoomLoader.new
    expect(@roomlist.load_rooms).to be_an_instance_of(Room)
  end

  it 'can link from room to room' do
    pending
    @roomlist = RoomLoader.new
    first_room = @roomlist.load_rooms

    expect(first_room.directions[:east]).to_not eq.(first_room)
  end
end
