//
//  ContentView.swift
//  Mexua
//
//  Created by Melan Rashitha Dias on 2021-06-20.
//

import SwiftUI
import BottomSheet

struct ContentView: View {

    @State var showMapSetting = false
    @State private var time:Int = 12
    
   
    
   
    
    var body: some View {
        
        VStack(alignment: .center){
            HStack {
                Text("Focus /\nRelax / \nBreathe /").font(.largeTitle).bold()
                Spacer()
                Text(String(time)).font(.system(size: 70)).bold().font(.largeTitle)
                
            }
            HStack(alignment:.firstTextBaseline , spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Circle().size(CGSize(width: 10.0, height: 10.0))
                Circle().size(CGSize(width: 10.0, height: 10.0))
                Circle().size(CGSize(width: 10.0, height: 10.0))
            }).fixedSize().frame(width: 400,  alignment: .topLeading)
            
            
            Circle().fill(RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.orange,.purple]), center: .top, startRadius: 60, endRadius: 500)).padding(.all).onTapGesture {
                print("Circle Tapped")
                self.time = self.time+1
            }
                
        
            HStack {
                Button(action: {
                    print("Tapped")
                    
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        print(timer.fireDate)
                        
                        self.time = self.time-1
                        
                        if(self.time == 0){
                            timer.invalidate()
                        }
                    }
                    
                    
                    
                    
                }) {
                    Text("Tap\nCircle to\nStart").font(.title).bold()
                }
                .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                Spacer()
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 100.0, height: 100.0)
                        .foregroundColor(Color(red: 1.0, green: 0.714, blue: 0.0))
                    
                    Text("00").font(.system(size:50)).bold().accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
                    
                }
            }.padding(.all)
            
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
                
                
            
        }
    }
}
