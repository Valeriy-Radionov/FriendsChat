//
//  ImageItem.swift
//  FriendsChat
//
//  Created by Valera on 8/3/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import MessageKit
import UIKit
import Foundation

struct ImageItem: MediaItem {
    var url: URL?
    var image: UIImage?
    var placeholderImage: UIImage
    var size: CGSize
}
