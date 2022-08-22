//
//  ContentView.swift
//  My Card App
//
//  Created by Дмитрий on 03.06.2022.
//

import SwiftUI
//Привет, лунатикам!
struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.18, green: 0.80, blue: 0.44).ignoresSafeArea()
            VStack {
                Image("myPhoto")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 250, height: 250)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                        .stroke(lineWidth: 5))
                Text("Гусейнов Дмитрий")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text("IOS-разработчик")
                    .font(.headline)
                Divider()
                Card(image: "phone.fill", text: "8-926-661-35-15")
                Card(image: "envelope.fill", text: "d.guseinov@biplane.ru")
            }
            .foregroundColor(.white)
        }

    }
}
//MARK: -Content
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 55)
            .padding(.horizontal)
            .frame(height: 60)
            .overlay(HStack                          {Image(systemName: image)
                Text(text)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            }.foregroundColor(Color(red: 0.18, green: 0.80, blue: 0.44)
                             ))
    }
}
//print Card
