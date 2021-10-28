class CreateStrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :strolls do |t|
     t.datetime :date
     t.belongs_to :dog_sitter, index: true
     t.belongs_to :dog_stroll, index: true
     t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
