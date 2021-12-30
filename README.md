# Url-Shortener (Under Development)

<p align="center">
    <img src="readme-resources/VHURLShortener.png" style="max-height: 61px;" alt="VHURLShortener">
</p>

<p align="center">
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-VivusHub%20Custom-yellow.svg" alt="License: Vivus Hub">
    </a>
</p>

---

## About
VHURLShortener is a developer-first URL shortener. It's focused on helping startups, indie hackers and more quickly integrate url shorteners in their app without the huge backend. This repo has been documented to the best of our knowledge to help you get the best of our services. If you need further help please visit [sh.vivushub.com](https://sh.vivushub.com) or email us at [support@vivuahub.com](mailto:support@vivushub.com)


The framework is actively being used and maintained in our family apps (e.g [Vivus](http://vivushub.com/?adFor=social&ref=github)).

## Documentation

- [Getting Started](https://github.com/VivusHub/VHMessengerKit/wiki/Getting-Started)
- [iOS](https://github.com/VivusHub/VHMessengerKit/wiki/Getting-Started)
    - [Installation]()
- [Android](https://github.com/VivusHub/VHMessengerKit/wiki/Getting-Started)
- [Web](https://github.com/VivusHub/VHMessengerKit/wiki/Getting-Started)
- [License](https://github.com/VivusHub/VHMessengerKit/wiki/Getting-Started)

## iOS

### Installation

VHUrlShortener requires Swift 4.2 and iOS 11.0 or later.

### Manual

Drag the contents of the `VHUrlShortener` folder into your Xcode Project.

### CocoaPods

Add the following to your project's Podfile.

```ruby
pod 'VHURLShortener', :git => 'https://github.com/VivusHub/VH-URL-Shortener'
```

```Swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    VHUrlS.initialize("YOUR_APP_ID", supportedDomains:["yourdomain.com","yourotherdomain.com"], supportedSchemes:["yourscheme"]) { response, error in
        // response provides a response object which contains the full URL information
        // response includes a status code
        // error provides any errors in retrieving information about the URL
        // Your custom logic goes here...
    }
    return true
}
```

```Swift
VHUrlS.shorten("http://theurlyouwishtoshorten.com") { response, error in
      // response provides a response object which contains the shortened Bitlink
      // response includes a status code
      // error provides any errors in retrieving information about the URL
      // Your custom logic goes here...
  }
```

## Android

### Installation
Using npm:

```bash
npm install react-native-tableview --save
```


### Manual
Drag the contents of the `VHUrlShortener` folder into your Android Project.

### Carthage

## Web

The Graph API is HTTP-based, so it works with any languages that has an HTTP library such as cURL and more. An additional benefit is that you can use the Graph API library directly in your browser. Please note, you may need to validate your domain to enable url request on your website.

### Creating Url
VHUrlShortener gives you high flexiblity when creating and updating your url. To create, modify or delete your url shortener you need the following arguments:
* `urlTo` [String] -
```php
curl -i -X GET \
https://www.sh.vivushub.com/api

// Response 
{
    "result": {
        "urlTo": ""
    }
}

``` 

## License
Extract from [Vivus Hub commercially available contents agreement](https://www.vivushub.com/vivus/interface/terms):

When using our free contents you have the permission to use, reproduce, publicly perform, publicly display, modify, translate, distribute, publish in whole or in part as long as:

- [x] Vivus hub is referenced in such work through e.g a copy of this Vivus Hub 'Commercially Available Contents' terms or url link back to our terms and conditions.
- [x] In the event you collect information about users, you must make it clear you (not Vivus hub) are the ones collecting such information.

The software is provided 'As is', without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and non-infringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.
