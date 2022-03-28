# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("Registering coins... [:spinner]")
spinner.auto_spin


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

spinner.success("(Success!))")