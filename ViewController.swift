import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let langCode = Locale.current.languageCode ?? ""
        let regionCode = Locale.current.regionCode ?? ""
        let language = "\(langCode)-\(regionCode)"
        
        //let language = Bundle.main.preferredLocalizations.first! as NSString
        print("selected device Language is : \(language)")
        
        let alert = UIAlertController(title: "\(language)", message: "selected device Language is : \(language)", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }


}
