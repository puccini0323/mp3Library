# include the factories
Dir[Rails.root.join("spec/factories/*.rb")].each {|f| require f}

namespace :db do

  desc "Create demo data"
  task :demo_data => [:environment, :seed] do

    # some random song titles
    urls = %w(/MyMusic/mps3/song1.mp3 /MyMusic/mps3/song2.mp3 /MyMusic/mps3/song3.mp3 /MyMusic/mps3/song4.mp3 /MyMusic/mps3/song5.mp3 /MyMusic/mps3/song6.mp3 /MyMusic/mps3/song7.mp3 /MyMusic/mps3/song8.mp3 /MyMusic/mps3/song9.mp3 /MyMusic/mps3/song10.mp3)
    titles = %w( songtitle1 songtitle2 songtitle3 songtitle4 songtitle5 songtitle6 songtitle7 songtitle8 songtitle9 songtitle10 )
    artists = %w(doors beatles eagles bto joplin who mozart haydn)
    users = %w(john mary fred james alfred george paul lesley angela richard karen)

    # create mp3s
    10.times do |i|
      url = urls[rand(urls.size)].humanize
      title = titles[rand(titles.size)].humanize
      artist = artists[rand(artists.size)].humanize
      length = rand(1000)+1
      puts "#{i}. Creating MP3: title=[#{title}], artist=[#{artist}]"
      mp3 = Factory(:mp3, :url => url, :title => title, :artist_name => artist, :length => length)

      # create ratings for each mp3
      5.times do |ii|
        user = users[rand(users.size)].humanize
        value = rand(5)+1
        puts "\tRating: user=[#{user}], value=[#{value}]"
        Factory(:rating, :mp3 => mp3, :user => user, :value => value)
      end
    end

  end
end