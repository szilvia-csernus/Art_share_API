# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ username: 'rita'}, 
                     { username: 'anett'}, 
                     { username: 'eniko'}, 
                     { username: 'erzsi'},
                     { username: 'barbara'},
                     { username: 'gabi'},
                     { username: 'aniko'},
                     { username: 'anita'},
                     { username: 'csilla'}
                     { username: 'endre'}
                     { username: 'adam'}
                     { username: 'lillu'}
                     { username: 'csenge'},
                     { username: 'katalin'}])
artworks = Artwork.create([{title: 'cat', image_url: "https://www.humanesociety.org/resources/how-help-frightened-cat", artist_id: 1},
                        {title: 'dog', image_url: "https://www.washingtonpost.com/science/2019/09/25/what-makes-dogs-so-special-successful-love/", artist_id: 2},
                        {title: 'mouse', image_url: "https://theconversation.com/heres-what-that-house-proud-mouse-was-doing-plus-five-other-animals-who-take-cleaning-seriously-114040", artist_id: 10},
                        {title: 'hamster', image_url: "https://www.britannica.com/animal/hamster", artist_id: 11},
                        {title: 'horse', image_url: "https://www.etsy.com/uk/market/horse_art", artist_id: 12},
                        {title: 'bee', image_url: "https://www.etsy.com/uk/market/bee_art", artist_id: 13},
                        {title: 'owl', image_url: "https://www.etsy.com/uk/search?q=owl%20art", artist_id: 13},
                        {title: 'seal', image_url: "https://www.etsy.com/uk/search?q=seal%20art", artist_id: 14}])
artwork_shares = ArtworkShare.create([{artwork_id: 1, viewer_id: 12},
                            {artwork_id: 1, viewer_id: 2},
                            {artwork_id: 1, viewer_id: 3},
                            {artwork_id: 1, viewer_id: 11},
                            {artwork_id: 1, viewer_id: 13},
                            {artwork_id: 2, viewer_id: 1},
                            {artwork_id: 2, viewer_id: 12},
                            {artwork_id: 3, viewer_id: 11},
                            {artwork_id: 3, viewer_id: 12},
                            {artwork_id: 8, viewer_id: 11},
                            {artwork_id: 8, viewer_id: 12},
                            {artwork_id: 8, viewer_id: 13}])


