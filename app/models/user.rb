class User
  include DataMapper::Resource

  property :id, Serial  # primary serial key
  property :uname, String, required: true   # Cannot be nil
  property :pass, BCryptHash, required: true  # Cannot be nil

end