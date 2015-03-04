class AddCallSidToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :CallSid, :string
  end
end
