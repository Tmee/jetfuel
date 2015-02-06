class AddTitleToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :title, :string, :default => 'No Title rFound'
  end
end
