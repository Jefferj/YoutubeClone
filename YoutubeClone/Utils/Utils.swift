//
//  Utils.swift
//  YoutubeClone
//
//  Created by Jefferson Naranjo rodríguez on 29/11/22.
//

import Foundation

class Utils{
    static func parseJson<T: Decodable>(jsonName : String, model: T.Type) -> T?{
        guard let url = Bundle.main.url(forResource: jsonName, withExtension: "json") else {
            return nil
        }
        do{
            let data = try Data(contentsOf: url)
            
            let jsonDecoder = JSONDecoder()
            do{
                let responseModel = try jsonDecoder.decode(T.self, from: data)
                return responseModel
            }catch{
                print("json mock error: \(error)")
                return nil
            }
        }catch{
            return nil
        }
    }
}
