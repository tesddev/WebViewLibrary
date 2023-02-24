import Foundation
import UIKit
import WebKit

//public class WebViewLibrary: WKWebView {
public class WebViewLibrary: UIViewController, UIWebViewDelegate {
    
    public var link: String
    
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
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 3
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "cancelInCircle"), for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        button.addTarget(self, action: #selector(didTapBackButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let linkTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 4
        textField.backgroundColor = .gray
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.placeholder = "https://www.jumia.com.ng/adidas-core-sneak.."
        return textField
    }()
    
    private let webView: UIWebView = {
        let view = UIWebView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8
        return view
    }()
    
    lazy var acceptAndContinueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Accept and Continue", for: .normal)
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
    }
    
    init(link: String) {
        self.link = link
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder: NSCoder) {
        fatalError("error in loading view")
    }
    
    private func activateConstraint() {
        view.addSubview(bigView)
        bigView.addSubview(grabberView)
        bigView.addSubview(backButton)
        bigView.addSubview(webView)
        bigView.addSubview(linkTextField)
        bigView.addSubview(acceptAndContinueButton)
        
        
        NSLayoutConstraint.activate([
            bigView.heightAnchor.constraint(equalToConstant: 597),
            bigView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bigView.widthAnchor.constraint(equalTo: view.widthAnchor),
            bigView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            grabberView.topAnchor.constraint(equalTo: bigView.topAnchor, constant: 8),
            grabberView.centerXAnchor.constraint(equalTo: bigView.centerXAnchor),
            grabberView.widthAnchor.constraint(equalToConstant: 48),
            grabberView.heightAnchor.constraint(equalToConstant: 4),
            
            backButton.topAnchor.constraint(equalTo: bigView.topAnchor, constant: 32),
            backButton.trailingAnchor.constraint(equalTo: bigView.trailingAnchor, constant: -20),
            
            linkTextField.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 30),
            linkTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            linkTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            linkTextField.heightAnchor.constraint(equalToConstant: 40),
            
            webView.topAnchor.constraint(equalTo: linkTextField.bottomAnchor, constant: 28),
            webView.centerXAnchor.constraint(equalTo: bigView.centerXAnchor),
            webView.heightAnchor.constraint(equalToConstant: 298),
            webView.widthAnchor.constraint(equalTo: bigView.widthAnchor, multiplier: 0.9),
            
            acceptAndContinueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            acceptAndContinueButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            acceptAndContinueButton.heightAnchor.constraint(equalToConstant: 40),
            acceptAndContinueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
    }
    
    @objc func didTapSavedOptionButton() {
        print("saved option")
    }
    
    @objc func didTapBackButton() {
        print("new option")
        self.dismiss(animated: true)
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
