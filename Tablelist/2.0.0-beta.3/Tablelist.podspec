Pod::Spec.new do |s|
  s.name             = "Tablelist"
  s.version          = "2.0.0-beta.3"
  s.summary          = "Official Tablelist SDK for Swift 2.0"
  s.description      = <<-DESC
                        Official Tablelist SDK for Swift 2.0
                       DESC

  s.homepage         = "https://github.com/tablelist/ios-kit"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-kit.git", :tag => s.version.to_s }

  s.requires_arc     = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.subspec "Core" do |core|
    core.source_files = 'Source/Core/**/*.swift'
    core.dependency 'Alamofire', '~> 3.0.0'
    core.dependency 'KeychainAccess', '~> 2.0.1'
    core.dependency 'ObjectMapper', '~> 0.19'
    core.dependency 'RealmSwift', '~> 0.96.0'
    core.dependency 'Starscream', '~> 1.0.0'
    core.dependency 'SwiftyJSON', '~> 2.3.0'
  end

  s.subspec "Desktop" do |desk|
    desk.source_files = 'Source/Desktop/**/*.swift'
    desk.dependency 'Tablelist/Core'
  end

  s.subspec "Mobile" do |mobile|
    mobile.source_files = 'Source/Mobile/**/*.swift'
    mobile.dependency 'Tablelist/Core'
  end

  s.subspec "Watch" do |watch|
    watch.source_files = 'Source/Watch/**/*.swift'
    watch.dependency 'Tablelist/Core'
  end

  s.subspec "TV" do |tv|
    tv.source_files = 'Source/TV/**/*.swift'
    tv.dependency 'Tablelist/Core'
  end
end
