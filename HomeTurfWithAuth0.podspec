Pod::Spec.new do |s|
  s.name         = "HomeTurfWithAuth0"
  s.version      = "1.0.0"
  s.summary      = "HomeTurf integration for teams, using webview, with SMS auth login (with Auth0)"
  s.description  = <<-DESC
HomeTurf integration for teams, using webview, with SMS auth login and Auth0 as an external dependency. Minimum iOS version 13.
  DESC
  s.homepage     = "https://github.com/hometurf-llc/HomeTurfPodSpecs.git"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2021
                LICENSE
              }
  s.author             = { "Adam Kenger" => "akenger@cantina.co" }
  s.source       = { :git => "https://github.com/hometurf-llc/HomeTurfWithAuth0FrameworkDistribution.git", :tag => "#{s.version}" }
  s.vendored_frameworks = "HomeTurfWithAuth0.xcframework"
  s.platform = :ios
  s.swift_version = "5"
  s.ios.deployment_target  = '13.0'
  s.dependency   = 'Auth0', ~> '1.32'
end