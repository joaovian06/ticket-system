class CreateAtendants < ActiveRecord::Migration[7.0]
  def change
    create_table :atendants do |t|
      t.string :name

      t.timestamps
    end
  end
end
