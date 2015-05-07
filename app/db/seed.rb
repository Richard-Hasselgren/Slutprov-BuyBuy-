class Seeder

  def self.seed!
    users
    lists
    list_items
  end

  def self.users
    User.create(uname: 'hej', pass: 'hejhej')
    User.create(uname: 'banan', pass: 'hejhej')
  end

  def self.lists
    List.create(name: 'Grillkorv', user_id: 1)
    List.create(name: 'Senap', user_id: 2)
  end

  def self.list_items
    ListItem.create(name: 'Korv', list_id: 1)
    ListItem.create(name: 'Sten', list_id: 1)
    ListItem.create(name: 'Slip', list_id: 2)
  end

end