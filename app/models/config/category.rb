module Config
  class Category
    include Mongoid::Document

    field :name, type: String
  end
end
