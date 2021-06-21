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
    var body: some View {
        
        VStack{
            HStack {
                Text("Focus /\nRelax / \nBreathe /").font(.largeTitle).bold()
                Spacer()
                Text("05").font(.system(size: 70)).bold().font(.largeTitle)
                
            }
            HStack(alignment:.firstTextBaseline , spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Circle().size(CGSize(width: 10.0, height: 10.0))
                Circle().size(CGSize(width: 10.0, height: 10.0))
                Circle().size(CGSize(width: 10.0, height: 10.0))
            }).fixedSize().frame(width: 400,  alignment: .topLeading)
            
            ZStack {
                Circle().fill(RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.orange,.purple]), center: .top, startRadius: 60, endRadius: 500))
                
               
                
                Rectangle().frame(width: .infinity, height: 400, alignment: .bottomLeading).foregroundColor(.white).opacity(0.5).blur(radius: 30).position(x: 200, y: 500.0)
                
                
                
                
            }
            HStack {
                Text("Tap\nCircle to\nStart").font(.title).bold()
                Spacer()
                Text("00").font(.system(size:60)).bold()
            }.padding()
            
            
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
