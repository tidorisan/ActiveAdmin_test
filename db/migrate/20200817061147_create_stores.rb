class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :store_name, null: false, default: "お寿司屋さん"
      t.text :store_explanation, null: false, default: "説明文がここに入ります。"

      t.timestamps
    end
  end
end
