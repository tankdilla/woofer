class Beat
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :owner, type: String
  field :media
end
