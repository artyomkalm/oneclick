class GoodsType < ActiveRecord::Base
  has_and_belongs_to_many :appartments,
                          :class_name => 'Appartment',
                          :join_table => 'appartment_goods_types',
                          :foreign_key => 'goods_type_id',
                          :association_foreign_key => 'appartment_id'

  validates :name, presence: true
end
