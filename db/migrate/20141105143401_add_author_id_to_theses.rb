class AddAuthorIdToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :author_id, :integer
  end
end
