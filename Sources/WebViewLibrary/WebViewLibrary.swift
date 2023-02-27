import Foundation
import UIKit
import WebKit

public class WebViewLibrary: UIViewController, UIWebViewDelegate {
    
    public var link: String
    public var isLinkTextfieldHidden: Bool
    
    private let bigView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return view
    }()
    
    private let grabberView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 3
        return view
    }()
    
    let linkTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.backgroundColor = .white
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.placeholder = "https://www.fb.com"
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    private let webView: UIWebView = {
        let view = UIWebView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        return view
    }()
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Close", for: .normal)
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(didTapBackButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        activateConstraint()
        view.isUserInteractionEnabled = true
        webView.loadRequest(NSURLRequest(url: NSURL(string: link)! as URL) as URLRequest)
        webView.delegate = self
        linkTextField.text = link
        self.linkTextField.isHidden = isLinkTextfieldHidden
    }
    
    public init(link: String, isLinkTextfieldHidden: Bool = false) {
        self.link = link
        self.isLinkTextfieldHidden = isLinkTextfieldHidden
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder: NSCoder) {
        fatalError("error in loading view")
    }
    
    private func activateConstraint() {
        view.addSubview(bigView)
        bigView.addSubview(grabberView)
        bigView.addSubview(webView)
        bigView.addSubview(linkTextField)
        bigView.addSubview(closeButton)
        
        
        NSLayoutConstraint.activate([
            bigView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.9),
            bigView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bigView.widthAnchor.constraint(equalTo: view.widthAnchor),
            bigView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            grabberView.topAnchor.constraint(equalTo: bigView.topAnchor, constant: 8),
            grabberView.centerXAnchor.constraint(equalTo: bigView.centerXAnchor),
            grabberView.widthAnchor.constraint(equalToConstant: 48),
            grabberView.heightAnchor.constraint(equalToConstant: 4),
            
            linkTextField.topAnchor.constraint(equalTo: grabberView.bottomAnchor, constant: 30),
            linkTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            linkTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            linkTextField.heightAnchor.constraint(equalToConstant: 40),
            
            webView.topAnchor.constraint(equalTo: linkTextField.bottomAnchor, constant: 28),
            webView.centerXAnchor.constraint(equalTo: bigView.centerXAnchor),
            webView.bottomAnchor.constraint(equalTo: closeButton.topAnchor, constant: -20),
            webView.widthAnchor.constraint(equalTo: bigView.widthAnchor, multiplier: 0.9),
            
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            closeButton.heightAnchor.constraint(equalToConstant: 40),
            closeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
    }
    
    @objc func didTapSavedOptionButton() {
        print("saved option")
    }
    
    @objc func didTapBackButton() {
        print("new option")
        if self.isModal {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    /// WebView Delegates
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("Webview fail with error \(String(describing: error))")
    }
    
    public func webViewDidStartLoad(_ webView: UIWebView) {
        print("Webview started Loading")
    }
    
    public func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Webview did finish load")
    }
}

extension UIViewController {

    var isModal: Bool {

        let presentingIsModal = presentingViewController != nil
        let presentingIsNavigation = navigationController?.presentingViewController?.presentedViewController == navigationController
        let presentingIsTabBar = tabBarController?.presentingViewController is UITabBarController

        return presentingIsModal || presentingIsNavigation || presentingIsTabBar
    }
}
