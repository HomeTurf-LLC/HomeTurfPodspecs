# Objective C Setup

See the root [README](./README.md) for project requirements and cocoapod setup instructions. The following instructions assume you have already added/updated a Podfile, run `pod install`, and opened your project with its `PROJECT_NAME.xcworkspace` file.

Also feel free to review [this demo project](https://github.com/HomeTurf-LLC/TestObjCTeam).

Note: SMS login is the only current option for Objective C projects since [Auth0 only supports Swift projects](https://community.auth0.com/t/objective-c-integration/41820/2).

### Project Configuration Summary

For convenience, the list of integration steps once the SDK has been installed is:

1. Add `HomeTurf.plist` (structure below - specific values will be provided by HomeTurf)
2. Update `Info.plist` with required values below
3. Update `AppDelegate` for orientation locking support
4. Update the ViewController that the app will launch from with a launch action
5. (RECOMMENDED) Add Push Notification and Background Mode capabilities

### Project Configuration Steps

1. Add `HomeTurf.plist`

Add a new properties file to your project called `HomeTurf.plist`, with that name and casing (and with target membership in that project). Right click the file in Xcode and select Open As -> Source Code. Enter the following (substituting the team id we provide for HOMETURF_TEAM_ID):

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>HomeTurfDomain</key>
    <string>https://www.hometurfapp.com</string>
    <key>HomeTurfTeamId</key>
    <string>HOMETURF_TEAM_ID</string>
</dict>
</plist>
```

2. Update `Info.plist`

Select your existing `Info.plist` in Xcode, Open as -> Source Code, and insert the following permissions/configuration before the last `</dict>`. Make sure to consolidate any values or skip if your project already has them.

```
    <key>NSAppleMusicUsageDescription</key>
    <string>HomeTurf would like to access your media library</string>
    <key>NSCameraUsageDescription</key>
    <string>HomeTurf would like to access your camera</string>
    <key>NSLocationWhenInUseUsageDescription</key>
    <string>HomeTurf would like to access your location in order to ensure compliance with local regulations</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>HomeTurf needs to access your microphone for live channel calibration and team scream.</string>
    <key>NSPhotoLibraryUsageDescription</key>
    <string>HomeTurf would like to access your photo library</string>
    <key>UIBackgroundModes</key>
    <array>
      <string>audio</string>
      <string>fetch</string>
    </array>
```

3. Add the following to `AppDelegate.m` (note that the HomeTurf SDK may raise an error if the orientationLock variable is not available on the AppDelegate object):

```
UIInterfaceOrientationMask orientationLock = UIInterfaceOrientationMaskAll;

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsFor:(UIWindow *)window {
    return orientationLock;
}
```

1. Add the following import and method to the View Controller .m file where HomeTurf will be started from. This method will launch the HomeTurf app (assuming a navigation controller will be used) once connected to the button or other component that will launch the app:

```
#import <HomeTurf/HomeTurf.h>

...

- (IBAction)enterHomeTurf {
    HomeTurfWebViewController *webVC = [[HomeTurfWebViewController alloc] init];
    [[self navigationController] pushViewController:webVC animated:NO];
}
```

(Other methods such as modal presentation as possible, but using a navigation controller will provide the most immersive experience. If there is not already a navigation controller available, find the storyboard file for the view controller, select the View Controller in the scene and then Editor -> Embed In -> Navigation Controller.)

5. If not already, make sure the following are checked in Signing & Capabilities:

- Audio, Airplay and Picture in Picture
- Background fetch

### Updates

Generally updates will only require an update to the Podfile HomeTurf version and a subsequent `pod install`.

### Support

Feel free to reach out to HomeTurf if you have any issues with the above steps or need any configuration information.
