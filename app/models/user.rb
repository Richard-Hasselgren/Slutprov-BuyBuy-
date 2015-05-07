class User
  include DataMapper::Resource

  property :id, Serial  # primary serial key
  property :uname, String, required: true, unique: true   # Cannot be nil
  property :pass, BCryptHash, required: true

  has n, :lists

end