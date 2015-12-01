class AddCreatedByToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :created_by, index: true, foreign_key: true
  end
end
