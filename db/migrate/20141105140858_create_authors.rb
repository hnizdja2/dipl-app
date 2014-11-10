class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :firstname
      t.string :surname

      t.timestamps
    end
  end
end
