class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, :null => false
      t.integer :poll_id, :null => false

      t.timestamps
    end
  end
end
