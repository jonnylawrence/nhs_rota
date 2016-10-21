module DoctorsHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(doctor)
    gravatar_id = Digest::MD5::hexdigest(doctor.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: doctor.name, class: "gravatar")
  end



end
