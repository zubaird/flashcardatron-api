class CardSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :cardset_id
end
