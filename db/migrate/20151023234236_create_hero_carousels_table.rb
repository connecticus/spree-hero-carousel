class CreateHeroCarouselsTable < ActiveRecord::Migration
  def change
    create_table :hero_carousels do |t|
      t.string :name
      t.string :page_url
      t.boolean :active, :default => true
      t.timestamps null: false
    end
  end
end
