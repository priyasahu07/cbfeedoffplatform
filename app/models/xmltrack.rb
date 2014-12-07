class Xmltrack
  include Mongoid::Document
  field :totalrecords, type: Integer
  field :datacompleted, type: Integer
  field :dataremaining, type: Integer
  field :percentagedata, type: String
  field :timetaken, type: String
  field :status, type: String
  field :startingxmltime, type: String
end
