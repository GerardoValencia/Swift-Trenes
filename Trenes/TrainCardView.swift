//
//  TrainCardView.swift
//  Trenes
//
//  Created by Gerardo Valencia Rodríguez on 06/10/23.
//

import SwiftUI

struct TrainCardView: View {
    var name: String
    var iconColor: Color
    var body: some View {
        VStack {
            HStack(){
                Spacer()
                
                Text("Oferta")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            Image(systemName: "tram.circle.fill")
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 100)
            
            Text(name)
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .background(Color.white)
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12)
            .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2)).padding()
    }
}

struct TrainCardView_Previews: PreviewProvider{
    static var previews: some View {
        TrainCardView(name: "Tren de Prueba", iconColor: Color.red)
    }
}