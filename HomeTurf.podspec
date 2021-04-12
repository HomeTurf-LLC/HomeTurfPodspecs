Pod::Spec.new do |s|
  s.name         = "HomeTurf"
  s.version      = "1.0.0"
  s.summary      = "HomeTurf integration for teams, using webview, with SMS auth login (no Auth0)"
  s.description  = <<-DESC
HomeTurf integration for teams, using webview, with SMS auth login and no external dependencies (i.e. no Auth0 - use HomeTurfWithAuth0 for that instead). Minimum iOS version 13.
  DESC
  s.homepage     = "https://github.com/hometurf-llc/HomeTurfPodSpecs.git"
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
EOF