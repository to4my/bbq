module ApplicationHelper
  def user_avatar(user)
    user.avatar? ? user.avatar.url : asset_path('user.png')
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end

  def event_photo(event)
    photos = event.photos.persisted

    photos.any? ? photos.sample.photo.url : asset_path('event.jpg')

  end

# Возвращает миниатюрную версию фотки
  def event_thumb(event)
    photos = event.photos.persisted

    photos.any? ? photos.sample.photo.thumb.url : asset_path('event_thumb.jpg')

  end

  def user_avatar_thumb(user)
    user.avatar.file.present? ? user.avatar.thumb.url : asset_path('user.png')
  end
end
