class AddPhoneToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :phone, :integer
  end
end
