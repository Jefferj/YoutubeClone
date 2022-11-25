//
//  PlayListModel.swift
//  YoutubeClone
//
//  Created by Jefferson Naranjo rodríguez on 25/11/22.
//

import Foundation

struct PlayListModel: Codable {
    let kind : String
    let etag : String
    let pageInfo : PageInfo
    let items: [Items]
    
    struct Items: Codable {
        let kind : String
        let etag : String
        let id : String
        let snippet : Snippet
        let contentDetails : ContentDetails
        
        struct Snippet: Codable {
            let publishedAt: String
            let channelId: String
            let title : String
            let description : String
            let thumbnails : Thumbnails
            let channelTitle : String
            let localized : Localized
            
            struct Thumbnails: Codable {
                let medium : Medium
                
                struct Medium : Codable {
                    let url : String
                    let width : Int
                    let height : Int
                }
            }
            
            struct Localized : Codable {
                let title : String
                let description : String
            }
            
        } // Snippets
        
        struct ContentDetails: Codable {
            let itemCount : Int
        }
        
    }  //Here Items
    
    struct PageInfo: Codable {
        let totalResults : Int
        let resultsPerPage : Int
    } // Here pageInfo
}
