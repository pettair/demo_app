class CreateFutyis < ActiveRecord::Migration
  def self.up
    create_table :futyis do |t|
      t.string :cim
      t.integer :szam

      t.timestamps
    end
  end

  def self.down
    drop_table :futyis
  end
end
