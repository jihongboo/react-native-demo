import UIKit
import React
import React_RCTAppDelegate
//import ReactAppDependencyProvider

@main
class AppDelegate: RCTAppDelegate {
  override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    automaticallyLoadReactNativeWindow = false
    super.application(application, didFinishLaunchingWithOptions: launchOptions)
    
    window = UIWindow()
    window.rootViewController = ViewController()
    window.makeKeyAndVisible()

    return true
  }

  override func sourceURL(for bridge: RCTBridge) -> URL? {
    self.bundleURL()
  }

  override func bundleURL() -> URL? {
#if DEBUG
    RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
#else
    Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
  }
}
