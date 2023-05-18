//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Ege Eren on 30.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var superKahramanIsımleri = [String]()
    var superKahramanGorselIsimleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        superKahramanIsımleri.append("Batman")
        superKahramanIsımleri.append("Superman")
        superKahramanIsımleri.append("Deadpool")
        superKahramanIsımleri.append("Ironman")
        superKahramanIsımleri.append("Spiderman")
        
        //var superKahramanGorselleri = [UIImage]()
        //superKahramanGorselleri.append(UIImage(named: "Batman")!)
        
         superKahramanGorselIsimleri.append("batman")
         superKahramanGorselIsimleri.append("superman")
         superKahramanGorselIsimleri.append("deadpool")
         superKahramanGorselIsimleri.append("ıronman")
         superKahramanGorselIsimleri.append("spiderman")
    }
    
    //numberOfRowsInSection -> kaç tane row olacak
    //cellForRows atIndexPath -> hücrenin içerisinde neler gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsımleri.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsımleri[indexPath.row]
        return cell
    }
   
    func tableView( _ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superKahramanGorselIsimleri.remove(at: indexPath.row)
            superKahramanIsımleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahramanIsımleri[indexPath.row]
        secilenGorsel = superKahramanGorselIsimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselleri = secilenGorsel
            
        }
    }
    
}
    


