namespace :maglev do
  desc "Run yarn and generate default Maglev site"
  task setup: :environment do
    puts "Installing JS dependencies..."
    system('yarn install')

    puts "Creating Maglev site..."
    Maglev::GenerateSite.call(theme: Maglev.local_themes.first)

    puts "Maglev setup complete."
  end
end