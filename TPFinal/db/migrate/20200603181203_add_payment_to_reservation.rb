class AddPaymentToReservation < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :payment, :string
  end
end
