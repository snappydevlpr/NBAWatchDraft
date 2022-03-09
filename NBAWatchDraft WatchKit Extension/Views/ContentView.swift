//
//  ContentView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/5/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach(0..<2){ _ in
                //
                NavigationLink(destination:EmptyView()){
                    ZStack{
                        Image("draft-menubackground")
                        
                        VStack(){
                            Text("Round")
                                .custom(font: .bold, size: 16)
                            Text("1")
                                .custom(font: .ultralight, size: 70)
                        }.offset(x: -10, y: 10)
                    }
                }.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }.listStyle(CarouselListStyle())
            .navigationBarTitle("NBA Draft")
    }
    
    var background:some View{
        Rectangle().fill(Color("CardBackground"))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
