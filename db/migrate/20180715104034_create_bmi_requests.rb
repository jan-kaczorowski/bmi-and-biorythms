class CreateBmiRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :bmi_requests do |t|
      t.string :user_name
      t.float  :weight
      t.float  :height
      t.float  :bmi
      t.timestamps
    end
  end
end
