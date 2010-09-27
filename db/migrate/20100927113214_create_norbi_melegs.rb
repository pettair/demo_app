class CreateNorbiMelegs < ActiveRecord::Migration
  def self.up
    create_table :norbi_melegs do |t|
      t.string :meleg
      t.integer :mennyire

      t.timestamps
    end
  end

  def self.down
    drop_table :norbi_melegs
  end
end
