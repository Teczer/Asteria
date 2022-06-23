//
//  level2View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level2View: View {
    var body: some View {
        ZStack {
            Image("level2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 250)
            VStack{
                HStack{
           Circle()
                .fill(Color("OrchidCrayola").opacity(0.4))
               .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
               .frame(width: 50, height: 50, alignment: .trailing)
               .shadow(color: Color("OrchidCrayola"), radius: 5)
               .padding(.leading, -180)
               .padding(.vertical, -60)
                }
                HStack{
                Circle()
                     .fill(Color("OrchidCrayola").opacity(0.4))
                    .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                    .frame(width: 30, height: 30, alignment: .trailing)
                    .shadow(color: Color("OrchidCrayola"), radius: 5)
                    .padding(.leading, -100)
                    .padding(.vertical, -10)
                }
                HStack{
                Circle()
                     .fill(Color("OrchidCrayola").opacity(0.4))
                    .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                    .frame(width: 30, height: 30, alignment: .trailing)
                    .shadow(color: Color("OrchidCrayola"), radius: 5)
                    .padding(.vertical, 30)
                }
                HStack{
                Circle()
                     .fill(Color("OrchidCrayola").opacity(0.4))
                    .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                    .frame(width: 30, height: 30, alignment: .trailing)
                    .shadow(color: Color("OrchidCrayola"), radius: 5)
                    .padding(.trailing, -30)
                    .padding(.vertical, -10)
                }
                HStack{
                Circle()
                     .fill(Color("OrchidCrayola").opacity(0.4))
                    .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                    .frame(width: 30, height: 30, alignment: .trailing)
                    .shadow(color: Color("OrchidCrayola"), radius: 5)
                    .padding(.trailing, -300)
                    .padding(.vertical, -50)
                }
            }.frame(width: .infinity, height: 250)
        VStack(){
          
            Text("NIVEAU 2")
                .font(.custom("Montserrat", size: 12))
                .foregroundColor(.white)
                .fontWeight(.bold)
                .shadow(color: .black, radius: 9)
            Text( "PHENOMENES OBSERVABLES")
                .font(.custom("Montserrat", size: 15))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 9)
            Spacer()
        }
    }
    }
}

struct level2View_Previews: PreviewProvider {
    static var previews: some View {
        level2View()
    }
}
