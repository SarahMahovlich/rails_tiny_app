class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.text :short_urls
      t.text :long_url
    end
  end
end
