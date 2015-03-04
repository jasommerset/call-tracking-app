class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :CallDuration
      t.string :From
      t.string :To

      t.timestamps
    end
  end
end
