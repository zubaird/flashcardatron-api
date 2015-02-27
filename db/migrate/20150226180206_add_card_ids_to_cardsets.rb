class AddCardIdsToCardsets < ActiveRecord::Migration
  def change
    add_column :cardsets, :card_ids, :integer
    add_index :cardsets, :card_ids
  end
end
