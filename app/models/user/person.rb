module User
  class Person
    include Mongoid::Document

    field :name, type: String
  end
end
