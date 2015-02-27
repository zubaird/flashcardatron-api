class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :answer
      t.string :question
      t.references :cardset, index: true
      t.timestamps
    end
  end
end
