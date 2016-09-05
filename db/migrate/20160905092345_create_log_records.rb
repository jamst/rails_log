class CreateLogRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :log_records do |t|
      t.string :controller
      t.string :action
      t.string :params
      t.string :headers, limit: 4096
      t.string :exception, limit: 10240
      t.string :exception_object
      t.timestamps
    end
  end
end