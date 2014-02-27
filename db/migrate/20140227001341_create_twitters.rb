class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.text :body
      t.timestamp :dateposted

      t.timestamps
    end
  end
end
