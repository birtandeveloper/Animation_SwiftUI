import SwiftUI

struct AnimationView: View {
    
    @State var isAnimating: Bool = false
    @State var backgroundColor: Color = .black
   
    
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                
                Button("Press for Animation"){
                    withAnimation(Animation.default) {
                    isAnimating.toggle()
                    }
                }.foregroundColor(.white).padding().background(.red).cornerRadius(20)
                
                RoundedRectangle(cornerRadius: isAnimating ? 50 : 25)
                .frame(width: isAnimating ? 200 : 0, height: 200)
                .animation(.spring(), value: isAnimating)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .foregroundColor(isAnimating ? .orange : .blue)
                                        
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
