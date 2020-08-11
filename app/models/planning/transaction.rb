module Planning
  class Transaction
    include Mongoid::Document
    include SimpleEnum::Mongoid

    field :amount, type: BigDecimal
    field :occurrences, type: Hash
    field :note, type: String
    as_enum :transaction_type, income: 1, outcome: -1
    field :is_borrow, type: Boolean, default: false
    field :is_pay, type: Boolean, default: false
    belongs_to :person, class_name: 'User::Person', foreign_key: 'lender_id',  dependent: :nullify


    embeds_many :categories, class_name: 'Config::Category'
  end
end
