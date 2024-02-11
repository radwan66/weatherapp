//
//  NetworkServices.swift
//  weatherapp
//
//  Created by radwan on 07/02/2024.
//

import Foundation
import Alamofire

protocol NetworkServicesDelegate {
    var delegate : URLHandlerProtocol{ set get }
    func
    
    fetchDataFromAPI<T:Codable>(complitionHandler:@escaping(T? , Error?)->Void)
}

class NetworkServices: NetworkServicesDelegate {
    var delegate : URLHandlerProtocol
    
    init(delegate : URLHandlerProtocol){
        self.delegate = delegate
    }
  
    //MARK: - Fetching Data From Api
    func fetchDataFromAPI<T:Codable>(complitionHandler: @escaping (T?,Error?) -> Void) {
       print ("in fetch ///////////////")
        AF.request(delegate.getUrl()).response { data in
            if let myData = data.data {
                do{
                    print("fetching")
                    print(myData.count)
                    let retreivedData = try JSONDecoder().decode(T.self, from: myData)
                    complitionHandler(retreivedData,nil)
                }catch let error{
                    complitionHandler(nil,error)
                    print("can not casting data")
                }
            }
            else{
                print("error ")
            }
        }
    }
}
