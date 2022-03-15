# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    image_url: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png"
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    image_url: "https://w7.pngwing.com/pngs/268/1013/png-transparent-ethereum-eth-hd-logo-thumbnail.png"
)

Coin.create!(
    description: "Shiba Inu",
    acronym: "SHIB",
    image_url: "https://w7.pngwing.com/pngs/929/384/png-transparent-shib-coin-shib-coin-logo-shiba-token.png"
)

Coin.create!(
    description: "Dogecoin",
    acronym: "DOGE",
    image_url: "https://img2.gratispng.com/20180403/rfw/kisspng-dogecoin-cryptocurrency-digital-currency-doge-5ac3a787122c26.7280659415227718470745.jpg"
)

Coin.create!(
    description: "Saitama",
    acronym: "SAITAMA",
    image_url: "https://s2.coinmarketcap.com/static/img/coins/64x64/10498.png"
)