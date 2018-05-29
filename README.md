# SwiftiOSLoginEmployeeExample

### Command Line tools

 If you want to use a specific version of Appium such as 1.7.2, you need to use this command 
- npm install appium@1.7.2

- $ xcrun simctl list
- $ instruments -s devices (UNKNOWN)
- $ xcodebuild -showsdks
- $ idevice_id -l
- $ appium -v
- $ node -v
- $ sudo npm install --global --unsafe-perm ios-deploy

- $ npm list -g | grep appium

## Installing Required Packages

- brew install ideviceinstaller
- brew install libimiobiledevice
- brew ugrade carthage
- brew install carthage
- brew install ios-webkit-debug-proxy


### Install WebDriver for iOS Appium Tes - Please find the project first
///FOUND at location usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent

- $ xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination id=<Device UDID> test
