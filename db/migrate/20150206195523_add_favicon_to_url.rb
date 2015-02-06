class AddFaviconToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :favicon, :string
  end
end
