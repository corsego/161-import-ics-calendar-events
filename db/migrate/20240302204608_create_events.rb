class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :summary
      t.string :description
      t.string :url
      t.string :location

      t.timestamps
    end
  end
end
