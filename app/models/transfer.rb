class Transfer < ApplicationRecord
  belongs_to :origin_account, class_name: 'Accoubnt', foreign_key: 'id'
  belongs_to :destination_account, class_name: 'Accoubnt', foreign_key: 'id'
end
