## StockUp

Check your favorite cryptocurrency prices in one place! 

StockUp uses the CoinMarketCap API for crypto market data.

## Project Status

Currently, the search page shows current Bitcoin prices. Any other functionality is not yet implemented.

## Plugins and Tools

StockUp is developed using Flutter. The primary UI uses Cupertino Widgets, targetting iOS devices. The following plugins have been used:

## How to Compile and Use

Creating CoinMarketCap Developer Account
- Grab the API Key from the console - this will be added to ApiKeys.dart.

Local Environment and Build
- Set Up a local flutter environment, along with XCode.
- Clone the repository to your local system
- Remove private import and add your API Keys to `ApiKeys.dart`
- Select your emulator - Preferably iPhone 12 Pro Max
- Run the app in emulator with `flutter run`
- Build the app for deployment with `flutter build ipa`, and deploy with XCode.