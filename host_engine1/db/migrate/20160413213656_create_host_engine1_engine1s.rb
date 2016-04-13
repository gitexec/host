class CreateHostEngine1Engine1s < ActiveRecord::Migration
  def change
    create_table :host_engine1_engine1s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
