//
//  Preview.swift
//  iOS_RMacedo_DCarvalhido
//
//  Created by Renato Macedo on 03/05/2018.
//  Copyright © 2018 renatomacedo. All rights reserved.
//

import UIKit
import AVFoundation
class CameraView: UIView {
var videoPreviewLayer: AVCaptureVideoPreviewLayer {
    guard let layer = layer as? AVCaptureVideoPreviewLayer else {
        fatalError("Expected `AVCaptureVideoPreviewLayer` type for layer. Check PreviewView.layerClass implementation.")
    }
    return layer
}
var session: AVCaptureSession? {
    get {
        return videoPreviewLayer.session
    }
    set {
        videoPreviewLayer.session = newValue
    }
}
// MARK: UIView
override class var layerClass: AnyClass {
    return AVCaptureVideoPreviewLayer.self
}
}
