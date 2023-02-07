//
//  IkinciViewController.swift
//  CApp
//
//  Created by Emre Konukpay on 5.02.2023.
//

import UIKit

class IkinciViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        getNotifications()
    }
    
    func getNotifications() -> NotificationModel? {
        if let url = Bundle.main.url(forResource: "response", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let jsonData = try JSONDecoder().decode(NotificationModel.self, from: data)
                print(jsonData)
                return jsonData
            } catch {
                print("error:(error)")
            }
        }
        return nil
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsCell

        
        return cell
    }
    
    
}
