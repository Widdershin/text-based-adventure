require_relative 'room'

class RoomLoader

  def load_rooms
    @throne_room = Room.new(description: "You are in the throne room. There is gold and ruby everywhere. You can see a corridor lined with spiderwebs to the west and there is a small water closet to the east. Make your move!", gems: 50, directions: nil)
    @water_closet = Room.new(description:"Welcome and close the door. Hiding behind the cistern (what are you doing down there) is a box with silver chains in it. There is a small window to the north that leads out onto a firest rife with. The only other option is down the cistern but it appears to be blocked. Where would you like to go?", gems: 3, directions: nil)
    @billiard_room = Room.new(description:"You are in the billard room. Professor Plum lies dead with a spanner through his eye socket. Run south!", gems: 0, directions: nil)
    @forest = Room.new(description: "You are in a forest. You hear a flapping of scaly wings. There are gold goblets and precious jewels in potholes in the smouldered ground. Take some and run if you dare, or face your doom.", gems: 100, directions: nil)

    @forest.directions = {west: @throne_room}
    @billiard_room.directions = {south: @throne_room}
    @water_closet.directions = {north: @forest, down: @billiard_room}
    @throne_room.directions = {east: @billiard_room, west: @water_closet}

    @throne_room
  end

end

