# HomeTurf Pod Specs

Contains podspecs for HomeTurf libraries:

- HomeTurf
- HomeTurfWithAuth0

## Requirements

- MacOS
- Xcode 12+ (tested on 12.4)
- Minimum iOS 13 support
- Ruby (min 2.6.6)
- Cocoapods via `gem install cocoapods` (min 1.10)

## Integration

The HomeTurf SDK is shared in an XCFramework via Cocoapods.

Create or update a Podfile in your iOS project with the following:

```.sh
platform :ios, "13.0" # Minimum version 13
target '{YOUR_APP_NAME}' do
  use_frameworks!
  pod 'HomeTurf', '1.0.17', :source => "git@github.com:HomeTurf-LLC/HomeTurfPodspecs.git"
end

```

If using Auth0 for authentication, add the following dependency:

```.sh
  pod 'Auth0', '~> 1.31' # Optional - only if using Auth0 for authentication
```

To install the HomeTurf SDK and/or Auth0, run

```.sh
pod install
```

and (*IMPORTANT*) if not already using cocoapods, close your project and reopen the `.xcworkspace` file in Xcode rather than `.xcproject` in the future.

To complete integration, see instructions for:

- [Objective C](./setup-objective-c.md)
- [Swift with Storyboard](./setup-swift-storyboard.md)
- [Swift with SwiftUI](./setup-swift-swiftui.md)
