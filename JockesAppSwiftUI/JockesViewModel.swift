//
//  JockesViewModel.swift
//  JockesAppSwiftUI
//
//  Created by Jinu on 16/11/2023.
//

import Foundation
import Alamofire
class JockesViewModel : ObservableObject{
    
   @Published var jokes = [Value]()
    init() {
        getJokes()
    }
    
    func getJokes(count: Int = 6){
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json",method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result{
            case .success(let data):
                self.jokes += data.value
                print(data.value)
            case .failure(let error):
                print(error)
            }
        
            
        }

    }
}
//http://api.icndb.com/jokes/random/
//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
