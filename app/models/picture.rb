class Picture < ActiveRecord::Base
  validates :name, :description, presence: true

  mount_uploaders :images, ImageUploader

  def paypal_url(return_path)
    values = {
      business: "satoshy@ya.ru",
      cmd: "_xclick",
      upload: 1,
      return: "#{Rails.application.secrets.app_host}#{return_path}",
      invoice: id,
      amount: course.price,
      item_name: course.name,
      item_number: course.id,
      quantity: '1',
      notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
