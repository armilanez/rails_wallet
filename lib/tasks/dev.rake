namespace :dev do
  desc "Sets up the development environment"
  task setup: :environment do
    if Rails.env.development?

    show_spinner("Dropping database") {%x(rails db:drop)}

    show_spinner("Creating database") {%x(rails db:create)}

    show_spinner("Migrating database") {%x(rails db:migrate)}
  
    show_spinner("Seeding database") {%x(rails db:seed)}
  
  end
end

private

def show_spinner(start_message, end_message = "successful")
  spinner = TTY::Spinner.new("#{start_message} [:spinner]")
  spinner.auto_spin
  yield
  spinner.success("(#{end_message})")
end

end
