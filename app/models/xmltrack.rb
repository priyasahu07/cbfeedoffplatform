class Xmltrack
  include Mongoid::Document
  field :datadone, type: Integer
  field :dataremaining, type: Integer
  field :percentagedata, type: String
end
