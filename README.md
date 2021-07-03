## StockUp

Check your favorite cryptocurrency prices in one place! 

StockUp uses the CoinMarketCap API for crypto market data.

## Project Status

`On Hold (Too many personal projects 😜)`

Currently, the search page shows current Bitcoin prices. Any other functionality is not yet implemented.

## Plugins and Tools

StockUp is developed using Flutter. The primary UI uses Cupertino Widgets, targetting iOS devices. The following plugins have been used:

- [Cupertino Widgets](https://flutter.dev/docs/development/ui/widgets/cupertino) - UI Design Elements
- [http](https://pub.dev/packages/http) - Fetching data from CoinMarketCap API
- [url_launcher](https://pub.dev/packages/url_launcher) - For Future Use, News/URL/Tweets etc.
- [align_positioned](https://pub.dev/packages/align_positioned) - Creating beautiful Relative Layouts

## How to Compile and Use

Creating CoinMarketCap Developer Account
- Go to [CoinMarketCap Developer Dashboard](https://coinmarketcap.com/api/) and sign up.
- Grab the API Key from the console - this will be added to ApiKeys.dart.

Local Environment and Build
- Set Up a local flutter environment, along with XCode.
- Clone the repository to your local system
- Remove private import and add your API Keys to `ApiKeys.dart`
- Select your emulator - Preferably iPhone 12 Pro Max
- Run the app in emulator with `flutter run`
- Build the app for deployment with `flutter build ipa`, and deploy with XCode.