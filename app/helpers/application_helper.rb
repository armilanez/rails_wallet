module ApplicationHelper

    def br_date us_date
        us_date.strftime("%d/%m/%Y")
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
