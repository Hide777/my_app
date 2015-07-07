class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :size
      t.string :div

      t.timestamps
    end
  end
end
