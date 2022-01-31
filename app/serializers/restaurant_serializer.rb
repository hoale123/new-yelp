class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :location, :created_at, :updated_at, :date, :updated_date

  belongs_to :user

  def date
    object.created_at.localtime.strftime("%b %e,  %l:%M %p")
  end

  def updated_date
    object.updated_at.localtime.strftime("%b %e,  %l:%M %p")
  end
end
