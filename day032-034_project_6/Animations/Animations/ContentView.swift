//
//  ContentView.swift
//  Animations
//
//  Created by Matt on 11/30/20.
//

import SwiftUI


// creating custom transtions with ViewModifier!!!
struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    @State private var animationA = 0.0
    @State private var dragAmount = CGSize.zero
    @State private var enabled = false
    @State private var isShowingRed = false
    
    let letters = Array("Hello World")
    
    
    var body: some View {
//        print(animationAmount)
//        Button("Tap Me") {
//            //self.animationAmount += 1
//        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .overlay(Circle().stroke(Color.red).scaleEffect(animationAmount).opacity(Double(2 - animationAmount)).animation(Animation.easeInOut(duration: 1).repeatCount(3, autoreverses: true))).onAppear {
//            self.animationAmount += 2
//        }
        
//        return VStack {
//            Stepper("Scale Amount", value: $animationAmount.animation(), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//
//                self.animationAmount += 1
//            }
//            .padding(40)
//            .background(Color.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//        }
        
//        Button("Tap me") {
//            // do nothing
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                self.animationA += 360
//            }
//        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(
//            .degrees(animationA),
//            axis: (x: 0.0, y: 1.0, z: 0.0)
//        )

//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged{self.dragAmount = $0.translation}
//                    .onEnded{_ in
//                        self.dragAmount = .zero
//                    }
//            )
//            .animation(.spring())
        
//        HStack(spacing: 0) {
//            ForEach(0..<letters.count) { num in
//                Text(String(self.letters[num]))
//                    .padding(5)
//                    .font(.title)
//                    .background(self.enabled ? Color.blue : Color.red)
//                    .offset(self.dragAmount)
//                    .animation(Animation.default.delay(Double(num) / 20))
//            }
//        }
//        .gesture(
//        DragGesture()
//            .onChanged{self.dragAmount = $0.translation}
//            .onEnded{ _ in
//                self.dragAmount = .zero
//                self.enabled.toggle()
//            }
//        )
        // transitions to show and hide
        VStack {
            Button("Tap Me") {
                withAnimation{
                    self.isShowingRed.toggle()
                }
                
            }
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .transition(.pivot)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
