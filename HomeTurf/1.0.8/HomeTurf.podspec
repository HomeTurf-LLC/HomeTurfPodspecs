Pod::Spec.new do |s|
  s.name         = "HomeTurf"
  s.version      = "1.0.8"
  s.summary      = "HomeTurf integration for teams, using webview"
  s.description  = <<-DESC
HomeTurf integration for teams, using webview, with SMS auth login and no required external dependencies (although it's possible to integrate Auth0). Minimum iOS version 13.
  DESC
  s.homepage     = "https://github.com/hometurf-llc/HomeTurfFrameworkDistribution.git"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2021
                LICENSE
              }
  s.author             = { "Adam Kenger" => "akenger@cantina.co" }
  s.source       = { :git => "https://github.com/hometurf-llc/HomeTurfFrameworkDistribution.git", :tag => "#{s.version}" }
  s.vendored_frameworks = "HomeTurf.xcframework"
  s.platform = :ios
  s.swift_version = "5"
  s.ios.deployment_target  = '13.0'
end
