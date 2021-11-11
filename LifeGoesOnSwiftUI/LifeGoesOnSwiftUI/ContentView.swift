//
//  ContentView.swift
//  LifeGoesOnSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 10/11/21.
//
//

import SwiftUI


struct ContentView: View {
    @State var twoColor = false
    
    var body: some View {
       
        ZStack{
            Color(UIColor(twoColor ? Color.blue : Color.yellow))
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                .onAppear()
            {
                self.twoColor.toggle()
            }
            .edgesIgnoringSafeArea(.all)
            
            animationSequence()
                .offset(x: 12, y: 180)
        }
    
    
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





var images : [UIImage]! = [
    UIImage(named: "image0")!,
    UIImage(named: "image1")!,
    UIImage(named: "image2")!,
    UIImage(named: "image3")!,
    UIImage(named: "image4")!,
    UIImage(named: "image5")!,
    UIImage(named: "image6")!,
    UIImage(named: "image7")!,
    UIImage(named: "image8")!,
    UIImage(named: "image9")!,
    UIImage(named: "image10")!,
    UIImage(named: "image11")!,
    UIImage(named: "image12")!,
    UIImage(named: "image13")!,
    UIImage(named: "image14")!

]

let animatedImages = UIImage.animatedImage(with: images, duration: 0.5)


struct animationSequence : UIViewRepresentable{
    
    
    func makeUIView(context: Context) -> UIView {
        
        let seqAnimview = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        let seqImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        seqImage.clipsToBounds = true
        seqImage.layer.cornerRadius = 20
        seqImage.autoresizesSubviews = true
        seqImage.contentMode = UIView.ContentMode.scaleAspectFit
        seqImage.image = animatedImages
        seqAnimview.addSubview(seqImage)
        return seqAnimview
        
        
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<animationSequence>) {
        
    }
}
