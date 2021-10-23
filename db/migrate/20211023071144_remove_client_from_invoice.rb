class RemoveClientFromInvoice < ActiveRecord::Migration[6.0]
  def change
    remove_reference :invoices, :client, null: false, foreign_key: true
  end
end