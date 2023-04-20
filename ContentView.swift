import SwiftUI
import AVKit

struct ContentView: View {
    @State var showMap: Bool = false
    @State var isCreditShowed: Bool = false
    @State var isCardShowed: Bool = false
    @State var audioPlayer: AVAudioPlayer!
    
    @State private var leftCurtainXOffset: CGFloat = 60
    @State private var rightCurtainXOffset: CGFloat = -60
    
//    @State private var welcomeScrollOpacity: Double = 1.0
    @State private var creditsScrollOpacity: Double = 0.0
    
//    @State private var elementZIndex = 2.0
    
    var body: some View {
        GeometryReader{geo in
            ZStack {
                Image("PaperBackground")
                    .imageScale(.large)
                
                if showMap{
                    MapView(doShowCard: doShowCard, doShowCredits: doToggleShowCredits, isCardShowed: $isCardShowed, audioPlayer: $audioPlayer)
                    HStack(alignment: .top){
                        Image("LeftCurtain")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.height)
                        //                        .offset(x: -465)
                            .offset(x: leftCurtainXOffset)
                        
                        Image("RightCurtain")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.height)
                        //                        .offset(x: 465)
                            .offset(x: rightCurtainXOffset)
                    }
                } else {
                    HStack(alignment: .top){
                        Image("LeftCurtain")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.height)
                        //                        .offset(x: 27)
                            .offset(x: leftCurtainXOffset)
                        
                        Image("RightCurtain")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.height)
                            .offset(x: rightCurtainXOffset)
                    }
                }
                
                VStack{
                    Image("TitleScroll")
                        .resizable()
                        .frame(width: 278, height: 166)
                        .opacity(isCardShowed ? 0 : 1.0)
                    
                    if showMap{
                        CreditScroll(doConfirm: doToggleShowCredits)
                            .opacity(creditsScrollOpacity)
                        
                    } else {
                        WelcomeScroll(doConfirm: doToggleShowMap)
                    }
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
        
        .onAppear{
            let sound = Bundle.main.path(forResource: "Spring Thaw - Asher Fulero", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            self.audioPlayer.numberOfLoops = -1
            self.audioPlayer.play()
        }

    }
    
    func doShowCard(){
        isCardShowed.toggle()
    }
    
    func doToggleShowMap() {
        showMap.toggle()
        withAnimation(.easeInOut(duration: 1.25)){
            self.leftCurtainXOffset = -465
            self.rightCurtainXOffset = 465
//            self.welcomeScrollOpacity = 0.0
        }
    }
    func doToggleShowCredits() {
        isCreditShowed.toggle()
        withAnimation{
            if isCreditShowed{
                self.creditsScrollOpacity = 1.0
            } else {
                self.creditsScrollOpacity = 0.0
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showMap: false)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

