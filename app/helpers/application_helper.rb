module ApplicationHelper

    def locale
        I18n.locale == :en ? "English" : "Portugês do Brasil"
    end

    def br_date us_date
        us_date.strftime("%d/%m/%Y")
    end

    def env_en
        if Rails.env.production?
            "production"
        elsif Rails.env.development?
            "development"
        elsif Rails.env.test?
            "test"
        end
    end
    
    def env_pt
        if Rails.env.production?
            "produção"
        elsif Rails.env.development?
            "desenvolvimento"
        elsif Rails.env.test?
            "teste"
        end
    end
        
end
