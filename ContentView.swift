import SwiftUI
import AVKit

struct ContentView: View {
    @State var showMap: Bool = false
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        ZStack {
            Image("PaperBackground")
                .imageScale(.large)
            if showMap{
                MapView()
                HStack(alignment: .top){
                    Image("LeftCurtain")
                        .resizable()
                        .frame(width: 620, height: 848)
                        .offset(x: -465)
                        
                    Image("RightCurtain")
                        .resizable()
                        .frame(width: 620, height: 848)
                        .offset(x: 465)
                }
            }else{
                HStack(alignment: .top){
                    Image("LeftCurtain")
                        .resizable()
                        .frame(width: 620, height: 848)
                        .offset(x: 27)
                        
                    Image("RightCurtain")
                        .resizable()
                        .frame(width: 620, height: 848)
                        .offset(x: -27)
                }
            }

            VStack{
                Image("TitleScroll")
                    .resizable()
                    .frame(width: 278, height: 166)
                if showMap{
                    WelcomeScroll()
                        .hidden()
                    
                }else{
                    WelcomeScroll()
                }
                
            }
        }
        .onAppear{
            let sound = Bundle.main.path(forResource: "Spring Thaw - Asher Fulero", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            self.audioPlayer.numberOfLoops = -1
            self.audioPlayer.play()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showMap: true)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

