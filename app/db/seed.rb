class Seeder

  def self.seed!
    users
    lists
  end

  def self.users
    User.create(uname: 'banan', pass: 'hejhej')
    User.create(uname: 'banan2', pass: 'hejhej2')
  end

  def self.lists
    List.create(name: 'Grillkorv', user_id: 1)
    List.create(name: 'Senap', user_id: 2)
  end

end