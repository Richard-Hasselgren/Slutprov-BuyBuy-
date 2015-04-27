class ListItem
  include DataMapper::Resource

  property :id, Serial # primary serial key
  property :name, String, required: true # Cannot be nil

  belongs_to :list

end