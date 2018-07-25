require_relative '../models/ship'
require_relative '../models/captain'


captain1 = Captain.new({
    'first_name' => 'Han',
    'last_name' => 'Solo'
})
captain2 = Captain.new({
    'first_name' => 'Jensen',
    'last_name' => 'Tythe'
})

captain1.save
captain2.save

ship1 = Ship.new({
    'model' => 'YT-1300',
    'class' => 'LIGHT FREIGHTER',
    'arrival_date' => '2018-07-22',
    'sales_status' => 'REQUIRES REPAIR',
    'captain_id' => captain1.id
})
ship2 = Ship.new ({
    'model' => 'HWK-290',
    'class' => 'COURIER',
    'arrival_date' => '2018-07-22',
    'sales_status' => 'SOLD',
    'captain_id' => captain2.id
})

ship1.save
ship2.save

crew1 = Crew.new ({
    'first_name' => 'Chewbacca'
    'last_name' => ''
    'role' => 'Co-Pilot'
    'captain_id' => captain1.id
    'ship_id' => ship1.id
})

crew2 = Crew.new ({
    'first_name' => "Gar'venna"
    'last_name' => 'Fuchknowes'
    'role' => '"Emotional Support"'
})

crew1.save
crew2.save