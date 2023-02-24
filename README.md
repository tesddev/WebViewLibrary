# WebViewLibrary

A package for a customized webview.

## How to use
- Import WebViewLibrary to your project with either SPM or Cocoapods
- Import WebViewLibrary in the class or view controller that would use the web view as such:

```
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
    
- Initialize WebViewLibrary with the link it is to load; ensure the link is a valid url and has in this format- "https://your-url"
- Run your project and see it in action.

