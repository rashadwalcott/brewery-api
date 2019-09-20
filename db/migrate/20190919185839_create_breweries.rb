class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.float :longitude
      t.float :latitude
      t.bigint :phone
      t.string :website_url

      t.timestamps
    end
  end
end
