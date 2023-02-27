# WebViewLibrary

A package for a customized webview.

## BASIC EXAMPLE

``` Swift
    import UIKit
    import WebViewLibrary

    class ViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
            let vc = WebViewLibrary(link: "https://your-url")
            self.navigationController?.present(vc, animated: true)
        }
    }
    
```
## Setup Instruction
- ### COCOAPODS
     <br> To integrate Toast-Swift into your Xcode project using CocoaPods, specify it in your Podfile:   
    ```
        pod 'WebViewLibrary'
    ```
 
- ### SPM
    <br>When using Xcode 11 or later, you can install Toast by going to your `Project settings` > `Swift Packages` and add the repository by providing the      GitHub URL. Alternatively, you can go to `File` > `Swift Packages` > `Add Package Dependencies`...

## Extra Notes
- Ensure the link provided is a valid url and is in this format- `"https://your-url"`
- It is very useful in textfields.

## How it looks: 

<div>
  <img src="https://user-images.githubusercontent.com/58847828/221267986-5f9a6cf4-2bdf-4f83-b23e-0fb90a644136.png" width="350" height="700" />
</div>
