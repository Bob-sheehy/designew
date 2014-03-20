class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :Bobby
      t.string :view
      t.string :show

      t.timestamps
    end
  end
end
