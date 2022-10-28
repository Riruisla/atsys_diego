class Transfer < ApplicationRecord
  belongs_to :origin_account, class_name: 'Accoubnt', foreign_key: 'id'
  belongs_to :destination_account, class_name: 'Accoubnt', foreign_key: 'id'

  after_save :generate_history
  after_create :run_opperation

  def run_opperation
    # aqui vamosa lanzar la operacion, loprimero, es saber si la operacion es al mismo banco o no.
    if self.origin_account.bank == self.destination_account.bank
      # Same bank
      self.status = "in progress"
      execute_transfer
      self.status = "completed"
      #ejecutar la transferencia
    else
      # Different Banks
      self.status = "in progress"
      random = get_rand_number
      if [1...30].includes?(random)
        self.status = "failed"
        # the transfer has failed
      else
        # the transfer has succeded
        execute_transfer
      end
    end
  end

  def execute_transfer
    if self.origin_account.balance > self.amount
      self.origin_account.balance - self.amount
      self.destination_account.balance + self.amount
      self.status = "completed"
    else
      self.status = "failed"
    end
  end

  def get_rand_number
    rand(0..100)
  end
end
