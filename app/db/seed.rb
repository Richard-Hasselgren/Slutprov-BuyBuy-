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
    List.create(name: 'Grillkorv', user: User.first)
    List.create(name: 'Senap', user: User.second)
  end

end