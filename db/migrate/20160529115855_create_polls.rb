class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :question
      t.integer :yes, default: 0
      t.integer :no, default: 0

      t.timestamps
    end
  end
end
