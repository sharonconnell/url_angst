class CreateLinks < ActiveRecord::Migration
  def up
    create_table :links do |t|
      t.string :in_url
      t.text :out_url
      t.integer :http_status, :default => 301 # default to :permanent

      t.timestamps null: false
    end
    add_index :links, :in_url
  end
end
