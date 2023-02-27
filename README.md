WebViewLibrary
=============
A package for a customized webview.

BASIC EXAMPLE
---------
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
Futher Customization
---------
If you do not need the link textfield to show, you can do this:
```swift
    let vc = TestViewController(link: "https://fb.com", isLinkTextfieldHidden: true)
```

Setup Instruction
---------
- ### COCOAPODS
    With CocoaPods, add to your Podfile

    ```sh
    pod 'WebViewLibrary'
    ```
    Open your project directory in terminal and run
    ```sh
    $ pod install
    ```

    In order to update with the lastest WebViewLibrary SDK, run
    ```sh
    $ pod update
    ```
 
- ### SPM
    <br>When using Xcode 11 or later, you can install Toast by going to your `Project settings` > `Swift Packages` and add the repository by providing the      GitHub URL. Alternatively, you can go to `File` > `Swift Packages` > `Add Package Dependencies`...
    
- ### Manually
    1. Add `WebViewLibrary.swift` to your project.
    2. Enjoy!

Extra Notes
---------
- Ensure the link provided is a valid url and is in this format- `"https://your-url"`
- It is very useful in textfields.

How it looks: 
---------
<div>
  <img src="https://user-images.githubusercontent.com/58847828/221267986-5f9a6cf4-2bdf-4f83-b23e-0fb90a644136.png" width="350" height="700" />
</div>

MIT License
---------
    Copyright (c) 2015-2019 Charles Scalesse.

    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
