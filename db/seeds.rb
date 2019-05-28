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

Permission.create(permission_name: "android.permission.WRITE_EXTERNAL_STORAGE", app_info_id: 1)
Permission.create(permission_name: "android.permission.READ_CONTACTS", app_info_id: 1)
Permission.create(permission_name: "android.permission.WRITE_CONTACTS", app_info_id: 1)
Permission.create(permission_name: "android.permission.ACCESS_NETWORK_STATE", app_info_id: 1)
Permission.create(permission_name: "android.permission.INTERNET", app_info_id: 1)
Permission.create(permission_name: "android.permission.MODIFY_AUDIO_SETTINGS", app_info_id: 2)
Permission.create(permission_name: "android.permission.READ_EXTERNAL_STORAGE", app_info_id: 2)
Permission.create(permission_name: "android.permission.WRITE_EXTERNAL_STORAGE", app_info_id: 2)
Permission.create(permission_name: "android.permission.FOREGROUND_SERVICE", app_info_id: 2)
Permission.create(permission_name: "android.permission.SEND_SMS", app_info_id: 2)
Permission.create(permission_name: "android.permission.WRITE_SMS", app_info_id: 2)
Permission.create(permission_name: "android.permission.READ_SMS", app_info_id: 2)
Permission.create(permission_name: "android.permission.RECEIVE_SMS", app_info_id: 2)

Service.create(service_name: "com.sdatam.musicplayer.NotificationService", app_info_id: 2)
Service.create(service_name: "com.sdatam.mesp.MespService", app_info_id: 2)

Receiver.create(receiver_name: "com.sdatam.musicplayer.HeadsetReceiver", app_info_id: 2)

User.create(name: 'omer' , password: '123123123' , password_confirmation: '123123123')

