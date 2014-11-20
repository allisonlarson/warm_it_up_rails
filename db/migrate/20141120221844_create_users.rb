class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.references :posse, index: true

      t.timestamps
    end
  end
end
