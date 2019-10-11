class AddVisitsToUrls < ActiveRecord::Migration[6.0]
  def change
    add_column :urls, :visits, :integer, default: 0
  end
end
