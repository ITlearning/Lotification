//
//  ContentView.swift
//  Lotification
//
//  Created by 인병윤 on 2022/03/11.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = MapViewModel()

    var body: some View {
        ZStack {
            MapView()
                .environmentObject(viewModel)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack(alignment: .leading) {
                    Spacer()

                    HStack {
                        Text("Loti")    
                            .font(.largeTitle.bold())
                        Spacer()
                    }
                    .padding(.leading, 15)

                }
                .frame(width: UIScreen.main.bounds.width, height: 80)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                .edgesIgnoringSafeArea(.top)

                Spacer()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
