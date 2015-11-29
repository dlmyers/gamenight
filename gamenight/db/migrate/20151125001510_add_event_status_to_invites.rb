class AddEventStatusToInvites < ActiveRecord::Migration
  def change
    add_reference :invites, :event, index: true
	add_reference :invites, :friend, index: true
    add_column :invites, :status, :integer
  end
end
