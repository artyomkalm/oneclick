class CreateGoodsTypes < ActiveRecord::Migration
  def change
    create_table :goods_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    create_table :appartment_goods_types, id: false do |t|
      t.belongs_to :appartment, index: true
      t.belongs_to :goods_type, index: true
    end
  end
end
