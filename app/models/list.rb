class List
  include DataMapper::Resource

  property :id, Serial # primary serial key
  property :name, String, required: true # Cannot be nil

  belongs_to :user
  has n, :list_items

end