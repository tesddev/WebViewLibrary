# WebViewLibrary

A package for a customized webview.

## How to use:
- Import WebViewLibrary to your project with either SPM or Cocoapods
- Import WebViewLibrary in the class, view controller, method or delegate methods in case of textfields that would use the web e.g:

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
    
- Initialize WebViewLibrary with the link it is to load; ensure the link is a valid url and has in this format- `"https://your-url"`
- Run your project and see it in action.

#### How it looks: 

<div>
  <img src="https://user-images.githubusercontent.com/58847828/221267986-5f9a6cf4-2bdf-4f83-b23e-0fb90a644136.png" width="350" height="700" />
</div>
