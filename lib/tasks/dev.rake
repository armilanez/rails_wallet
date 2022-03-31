namespace :dev do
  desc "Sets up the development environment"
  task setup: :environment do
    if Rails.env.development?

    show_spinner("Dropping database") {%x(rails db:drop)}

    show_spinner("Creating database") {%x(rails db:create)}

    show_spinner("Migrating database") {%x(rails db:migrate)}
  
    %x(rails dev:add_coins)
      
  else
      puts "You are not in the development environment.\n"
  end
end

  desc "Registers Coins"
  task add_coins: :environment do
    show_spinner("Registering Coins") do
      coins = [

              {
              description: "Bitcoin",
              acronym: "BTC",
              image_url: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png"
              },

              {
              description: "Ethereum",
              acronym: "ETH",
              image_url: "https://w7.pngwing.com/pngs/268/1013/png-transparent-ethereum-eth-hd-logo-thumbnail.png"
              },

              {
              description: "Shiba Inu",
              acronym: "SHIB",
              image_url: "https://w7.pngwing.com/pngs/929/384/png-transparent-shib-coin-shib-coin-logo-shiba-token.png"
              },

              {
              description: "Dogecoin",
              acronym: "DOGE",
              image_url: "https://img2.gratispng.com/20180403/rfw/kisspng-dogecoin-cryptocurrency-digital-currency-doge-5ac3a787122c26.7280659415227718470745.jpg"
              },

              {
              description: "Saitama",
              acronym: "SAITAMA",
              image_url: "https://s2.coinmarketcap.com/static/img/coins/64x64/10498.png"
              }

          ]

  coins.each do |coin|
    Coin.find_or_create_by!(coin)
    end
  end
end

  desc "Registration of Mining Types"
  task add_mining_types: :environment do
  show_spinner("Registering mining types") do
    mining_types = [

    {
      description:"Proof of Work",
      acronym:"PoW"
    },

    {
      description:"Proof of Stake",
      acronym:"PoS"
    },

    {
      description:"Proof of Capacity",
      acronym:"PoC"
    }

   ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end



private

def show_spinner(start_message, end_message = "successful")
  spinner = TTY::Spinner.new("#{start_message} [:spinner]")
  spinner.auto_spin
  yield
  spinner.success("#{end_message}")
end

end