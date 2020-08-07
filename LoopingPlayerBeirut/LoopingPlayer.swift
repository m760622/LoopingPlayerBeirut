// https://github.com/m760622/LoopingPlayerBeirut
//  LoopingPlayer.swift
//  LoopingPlayerBeirut
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-08-04.
// https://github.com/m760622

import SwiftUI
import AVFoundation

struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return PlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Do nothing here
    }
}//LoopingPlayer

class PlayerUIView: UIView {
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Load Video
        if let videoUrl = Bundle.main.url(forResource: "explosionBeirut", withExtension: "mov"){
            let videoPlayer = AVPlayerItem(url: videoUrl)
            // Setup Player
            let player = AVQueuePlayer(playerItem: videoPlayer)
            playerLayer.player = player
            playerLayer.videoGravity = .resizeAspectFill
            layer.addSublayer(playerLayer)
            
            // Loop function
            playerLooper = AVPlayerLooper(player: player, templateItem: videoPlayer)
            
            // Play function
            player.play()
        }//if let videoUrl
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}//PlayerUIView

struct LoopingPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
