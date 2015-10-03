Pod::Spec.new do |s|
  s.name             = "Tablelist"
  s.version          = "2.0.0-beta.1"
  s.summary          = "Official Tablelist SDK for Swift 2.0"
  s.description      = <<-DESC
                        Official Tablelist SDK for Swift 2.0
                       DESC

  s.homepage         = "https://github.com/tablelist/ios-kit"
  s.license          = 'MIT'
  s.author           = { "Andrew Barba" => "andrew@tablelist.com" }
  s.source           = { :git => "https://github.com/tablelist/ios-kit.git", :tag => s.version.to_s }

  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.subspec "Core" do |core|
    core.source_files = 'Source/Core/**/*.swift'
    core.dependency 'Alamofire', '~> 3.0.0-beta.3'
    core.dependency 'KeychainAccess', '~> 2.0.0'
    core.dependency 'ObjectMapper', '~> 0.17'
    core.dependency 'RealmSwift', '~> 0.95.2'
    core.dependency 'Starscream', '~> 1.0.0'
    core.dependency 'SwiftyJSON', '~> 2.3.0'
  end
end
