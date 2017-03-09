# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# rake db:drop; rake db:create; rake db:migrate; rake db:seed ; THIS IF YOU CHANGE THE MIGRATION FILE
# rake db:reset; rake db:seed  //This if you just wanna run the seed file again


User.create firstName:"host_event1", lastName:"", email:"host_event1@mail.com", location:"Chicago", state:"Illinois", password:"host_event1", password_confirmation:"host_event1"

User.create firstName:"host_event2", lastName:"", email:"host_event2@mail.com", location:"Los Angeles", state:"California", password:"host_event2", password_confirmation:"host_event2"

User.create firstName:"host_event3", lastName:"", email:"host_event3@mail.com", location:"San Francisco", state:"California", password:"host_event3", password_confirmation:"host_event3"

User.create firstName:"host_event4", lastName:"", email:"host_event4@mail.com", location:"Boston", state:"Massachusetts", password:"host_event4", password_confirmation:"host_event4"

User.create firstName:"host_event5", lastName:"", email:"host_event5@mail.com", location:"Atlanta", state:"Georgia", password:"host_event5", password_confirmation:"host_event5"



User.create firstName:"attendee1_event1", lastName:"", email:"attendee1_event1@mail.com", location:"Chicago", state:"Illinois", password:"attendee1_event1", password_confirmation:"attendee1_event1"

User.create firstName:"attendee2_event1", lastName:"", email:"attendee2_event1@mail.com", location:"Chicago", state:"Illinois", password:"attendee2_event1", password_confirmation:"attendee2_event1"

User.create firstName:"attendee3_event1", lastName:"", email:"attendee3_event1@mail.com", location:"Chicago", state:"Illinois", password:"attendee3_event1", password_confirmation:"attendee3_event1"

User.create firstName:"attendee1_event2", lastName:"", email:"attendee1_event2@mail.com", location:"Los Angeles", state:"California", password:"attendee1_event2", password_confirmation:"attendee1_event2"

User.create firstName:"attendee2_event2", lastName:"", email:"attendee2_event2@mail.com", location:"Los Angeles", state:"California", password:"attendee2_event2", password_confirmation:"attendee2_event2"

User.create firstName:"attendee3_event2", lastName:"", email:"attendee3_event2@mail.com", location:"Los Angeles", state:"California", password:"attendee3_event2", password_confirmation:"attendee3_event2"



User.create firstName:"attendee1_event3", lastName:"", email:"attendee1_event3@mail.com", location:"San Francisco", state:"California", password:"attendee1_event3", password_confirmation:"attendee1_event3"

User.create firstName:"attendee2_event3", lastName:"", email:"attendee2_event3@mail.com", location:"San Francisco", state:"California", password:"attendee2_event3", password_confirmation:"attendee2_event3"

User.create firstName:"attendee3_event3", lastName:"", email:"attendee3_event3@mail.com", location:"San Francisco", state:"California", password:"attendee3_event3", password_confirmation:"attendee3_event3"



User.create firstName:"attendee1_event4", lastName:"", email:"attendee1_event4@mail.com", location:"Boston", state:"Massachusetts", password:"attendee1_event4", password_confirmation:"attendee1_event4"

User.create firstName:"attendee2_event4", lastName:"", email:"attendee2_event4@mail.com", location:"Boston", state:"Massachusetts", password:"attendee2_event4", password_confirmation:"attendee2_event4"

User.create firstName:"attendee3_event4", lastName:"", email:"attendee3_event4@mail.com", location:"Boston", state:"Massachusetts", password:"attendee3_event4", password_confirmation:"attendee3_event4"



User.create firstName:"attendee1_event5", lastName:"", email:"attendee1_event5@mail.com", location:"Atlanta", state:"Georgia", password:"attendee1_event5", password_confirmation:"attendee1_event5"

User.create firstName:"attendee2_event5", lastName:"", email:"attendee2_event5@mail.com", location:"Atlanta", state:"Georgia", password:"attendee2_event5", password_confirmation:"attendee2_event5"

User.create firstName:"attendee3_event5", lastName:"", email:"attendee3_event5@mail.com", location:"Atlanta", state:"Georgia", password:"attendee3_event5", password_confirmation:"attendee3_event5"




Event.create name:"event1", date:"2017-03-17", location:"Chicago", state:"Illinois", user:User.find_by(:firstName => "host_event1")

Event.create name:"event2", date:"2017-04-10", location:"Los Angeles", state:"California", user:User.find_by(:firstName => "host_event2")

Event.create name:"event3", date:"2017-05-11", location:"San Francisco", state:"California", user:User.find_by(:firstName => "host_event3")

Event.create name:"event4", date:"2017-03-01", location:"Boston", state:"Massachusetts", user:User.find_by(:firstName => "host_event4")

Event.create name:"event5", date:"2017-05-18", location:"Atlanta", state:"Georgia", user:User.find_by(:firstName => "host_event5")



UserEventMatch.create user:User.find_by(:firstName => "attendee1_event1"), event:Event.find_by(:name => "event1")

UserEventMatch.create user:User.find_by(:firstName => "attendee2_event1"), event:Event.find_by(:name => "event1")

UserEventMatch.create user:User.find_by(:firstName => "attendee3_event1"), event:Event.find_by(:name => "event1")


UserEventMatch.create user:User.find_by(:firstName => "attendee1_event2"), event:Event.find_by(:name => "event2")

UserEventMatch.create user:User.find_by(:firstName => "attendee2_event2"), event:Event.find_by(:name => "event2")

UserEventMatch.create user:User.find_by(:firstName => "attendee3_event2"), event:Event.find_by(:name => "event2")


UserEventMatch.create user:User.find_by(:firstName => "attendee1_event3"), event:Event.find_by(:name => "event3")

UserEventMatch.create user:User.find_by(:firstName => "attendee2_event3"), event:Event.find_by(:name => "event3")

UserEventMatch.create user:User.find_by(:firstName => "attendee3_event3"), event:Event.find_by(:name => "event3")


UserEventMatch.create user:User.find_by(:firstName => "attendee1_event4"), event:Event.find_by(:name => "event4")

UserEventMatch.create user:User.find_by(:firstName => "attendee2_event4"), event:Event.find_by(:name => "event4")

UserEventMatch.create user:User.find_by(:firstName => "attendee3_event4"), event:Event.find_by(:name => "event4")


UserEventMatch.create user:User.find_by(:firstName => "attendee1_event5"), event:Event.find_by(:name => "event5")

UserEventMatch.create user:User.find_by(:firstName => "attendee2_event5"), event:Event.find_by(:name => "event5")

UserEventMatch.create user:User.find_by(:firstName => "attendee3_event5"), event:Event.find_by(:name => "event5")



Discussion.create comment:"comment1_event1", user:User.find_by(:firstName => "attendee1_event1"), event:Event.find_by(:name => "event1")

Discussion.create comment:"comment2_event1", user:User.find_by(:firstName => "attendee2_event1"), event:Event.find_by(:name => "event1")
Discussion.create comment:"comment3_event1", user:User.find_by(:firstName => "attendee3_event1"), event:Event.find_by(:name => "event1")
Discussion.create comment:"comment4_event1", user:User.find_by(:firstName => "host_event1"), event:Event.find_by(:name => "event1")

Discussion.create comment:"comment1_event2", user:User.find_by(:firstName => "attendee1_event2"), event:Event.find_by(:name => "event2")

Discussion.create comment:"comment2_event2", user:User.find_by(:firstName => "attendee2_event2"), event:Event.find_by(:name => "event2")
Discussion.create comment:"comment3_event2", user:User.find_by(:firstName => "attendee3_event2"), event:Event.find_by(:name => "event2")
Discussion.create comment:"comment4_event2", user:User.find_by(:firstName => "host_event2"), event:Event.find_by(:name => "event2")

Discussion.create comment:"comment1_event3", user:User.find_by(:firstName => "attendee1_event3"), event:Event.find_by(:name => "event3")

Discussion.create comment:"comment2_event3", user:User.find_by(:firstName => "attendee2_event3"), event:Event.find_by(:name => "event3")
Discussion.create comment:"comment3_event3", user:User.find_by(:firstName => "attendee3_event3"), event:Event.find_by(:name => "event3")
Discussion.create comment:"comment4_event3", user:User.find_by(:firstName => "host_event3"), event:Event.find_by(:name => "event3")

Discussion.create comment:"comment1_event4", user:User.find_by(:firstName => "attendee1_event4"), event:Event.find_by(:name => "event4")

Discussion.create comment:"comment2_event4", user:User.find_by(:firstName => "attendee2_event4"), event:Event.find_by(:name => "event4")
Discussion.create comment:"comment3_event4", user:User.find_by(:firstName => "attendee3_event4"), event:Event.find_by(:name => "event4")
Discussion.create comment:"comment4_event4", user:User.find_by(:firstName => "host_event4"), event:Event.find_by(:name => "event4")


Discussion.create comment:"comment1_event5", user:User.find_by(:firstName => "attendee1_event5"), event:Event.find_by(:name => "event5")

Discussion.create comment:"comment2_event5", user:User.find_by(:firstName => "attendee2_event5"), event:Event.find_by(:name => "event5")
Discussion.create comment:"comment3_event5", user:User.find_by(:firstName => "attendee3_event5"), event:Event.find_by(:name => "event5")
Discussion.create comment:"comment4_event5", user:User.find_by(:firstName => "host_event5"), event:Event.find_by(:name => "event5")
