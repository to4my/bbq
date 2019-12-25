class EditDeviseToUsers < ActiveRecord::Migration[6.0]
  def self.up

    change_table :users do |t|

      t.change :name, :string, null: false, default: ""

    end
  end


  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
