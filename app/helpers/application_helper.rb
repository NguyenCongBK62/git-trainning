module ApplicationHelper
    def gravatar_for(user, options = { size:  80 })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: user.username, class: "img-circle")
    end
    def javascript_exists?(controller_name)
        File.exist?(Rails.root.join("app", "frontend", "packs", "#{controller_name}.js"))
    end
    
    def stylesheet_exists?(controller_name)
        File.exist?(Rails.root.join("app", "assets", "stylesheets", "#{controller_name}.scss"))
    end
end
