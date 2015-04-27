class Seeder

  def self.seed!
    users
  end

  def self.users
    User.create(uname: 'banan', pass: 'hejhej')
    User.create(uname: 'banan2', pass: 'hejhej2')
  end

end