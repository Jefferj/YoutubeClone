//
//  VideoCell.swift
//  YoutubeClone
//
//  Created by Jefferson Naranjo rodríguez on 29/11/22.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var dotsImage: UIImageView!
    @IBOutlet weak var viewsCountLabel: UILabel!
    @IBOutlet weak var channelName: UILabel!
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }
    
    private func configView(){
        
    }
    
    func configCell(model: Any){
        if let video = model as? VideoModel.Item{
            if let imageUrl = video.snippet?.thumbnails.medium?.url, let url = URL(string: imageUrl){
                videoImage.kf.setImage(with: url)
            }
            videoName.text = video.snippet?.title ?? ""
            channelName.text = video.snippet?.channelTitle ?? ""
            viewsCountLabel.text = "\(video.statistics?.viewCount ?? "0") views . 3 months ago"
            dotsImage.image = UIImage(named: "dots")?.withRenderingMode(.alwaysTemplate)
            dotsImage.tintColor = UIColor(named: "whiteColor")
        }else if let playlistItems = model as? PlaylistItemsModel.Item {
            if let imageUrl = playlistItems.snippet.thumbnails.medium?.url, let url = URL(string: imageUrl){
                videoImage.kf.setImage(with: url)
            }
            videoName.text = playlistItems.snippet.title ?? ""
            channelName.text = playlistItems.snippet.channelTitle ?? ""
            viewsCountLabel.text = "332 views . 3 months ago"
            dotsImage.image = UIImage(named: "dots")?.withRenderingMode(.alwaysTemplate)
            dotsImage.tintColor = UIColor(named: "whiteColor")
        }
    }
}
