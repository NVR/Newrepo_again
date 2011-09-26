class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :content
      t.integer :user_id
	  t.string :evname
      t.timestamps
    end
	add_index  :events, :user_id
  end
end
