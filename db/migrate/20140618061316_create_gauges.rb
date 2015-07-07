class CreateGauges < ActiveRecord::Migration
  def change
    create_table :gauges do |t|
      t.string :size
      t.string :div
      t.string :serial
      t.string :clas
      t.string :place
      t.string :calidate
      t.string :nextdate
      t.string :judge

      t.timestamps
    end
  end
end
