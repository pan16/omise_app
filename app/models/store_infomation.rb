class StoreInfomation < ApplicationRecord
	self.table_name = 'store_infomations'
    self.primary_key = :id
    belongs_to :store, foreign_key: 'id'
    before_create { self.id = self.store.id }
end
