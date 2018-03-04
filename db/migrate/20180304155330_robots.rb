class Robots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :department
      t.timestamps
     end
   end
end
