Pod::Spec.new do |s|
    s.name         = "DataDrivenTesting"
    s.version      = "1.0.0"
    s.summary      = "A Swift package that provides data-driven testing functionality for your project."
  
    s.description  = <<-DESC
                      DataDrivenTesting is a Swift package that simplifies the process of testing code using multiple sets of data. With this package, developers can easily run data-driven tests, change the default activity name, and add attachments to test cases. Compatible with Swift 5.4+ and Xcode 9.0+.
                     DESC
  
    s.homepage     = "https://github.com/WezSieTato/DataDrivenTesting"
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
    s.author             = { "Marcin Stepnowski" => "marcin.stepnowski@gmail.com" }
    s.social_media_url   = "https://mastodon.social/@WezSieTato"
  
    s.ios.deployment_target = "11.0"
    s.osx.deployment_target = "11.0"
    s.watchos.deployment_target = "9.0"
    s.tvos.deployment_target = "11.0"

    s.swift_version = "5"
    s.source       = { :git => "https://github.com/WezSieTato/DataDrivenTesting.git", :tag => s.version.to_s }
  
    s.source_files = "Sources/**/*.swift"
  
    s.frameworks = 'XCTest'

  end
