//
//  DraftList.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/19/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//
import SwiftUI

struct DraftList: View {
    // add properties here
    // current pick we are on
    @State private var currentIndex = 0.0
    //determines whether or not we are showing details view
    @State private var isShowingDetail = false
    // use this variable to set how many cards you can see at once
    private let numberOfVisibleCards = 3
    //temp number to determine how many picks we have
    private let testPicks = 10
    
    var body: some View {
        VStack(spacing:10){
            VStack(spacing:10){
                Text("Round 1")
                    .custom(font:.bold, size: 20)
                Divider()
            }
        }
        .navigationBarTitle(Text("By Round"))
        
    }
    
    // add topCard here
    var topCard: some View{
        HStack{
            Image("pelicans").frame(height:56)
            Spacer()
            Text(String(format:"%02d",1))
                .custom(font: .bold, size: 50)
        }
        .background(Color("pelicans"))
        .frame(height:48)
    
    }
    // add bottomCard
    var bottomCard: some View {
        VStack(spacing:-5){
            Text("Zion")
                .custom(font: .ultralight, size: 13)
            Text("Williams")
                .custom(font: .bold, size: 20)
            Text("POWER FORWARD")
                .custom(font: .ultralight, size: 10)
        }.frame(minWidth:0, maxWidth: .infinity)
            
    }
    
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList()
    }
}


extension DraftList_Previews {
    
}
