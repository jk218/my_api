class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
    	t.string :firstName
    	t.string :lastName
    	t.integer :age
    	t.string :mobileNumber


      t.timestamps
    end
  end
end
