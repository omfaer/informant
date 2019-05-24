# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AppInfo.create!(app_name: "Wall-P", package_name: "com.sdatam.wallpaper", p_hash: "bf94ff2dfb68de1b6a5e4cc75228510143242044a365e379452796a2", psr_hash: "bf94ff2dfb68de1b6a5e4cc75228510143242044a365e379452796a2")
AppInfo.create!(app_name: "MusicPlayer", package_name: "com.sdatam.musicplayer", p_hash: "823ffd5867ea0151d6bb32b5c4d87735f1c741a94eeca3345d393ebd", psr_hash: "a262ab19a23614bfecc226d7ecc59580af189cb67de543ae76be9a9f")
Classification.create(classification_name: "malware", app_info_id: 1)
Classification.create(classification_name: "malware", app_info_id: 2)