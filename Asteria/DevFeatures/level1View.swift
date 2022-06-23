//
//  level1View.swift
//  Asteria
//
//  Created by apprenant50 on 22/06/2022.
//

import SwiftUI

struct level1View: View {
    
    var body: some View {
        ZStack {
            Image("level1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 250)
            VStack{
                HStack{
                    
                    //                    Button {
                    //                        ira à la série de carte question corespondante
                    //                        }
                    //                    } label: {
                    Circle()
                        .fill(Color("OrchidCrayola").opacity(0.4))
                        .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                        .frame(width: 50, height: 50, alignment: .trailing)
                        .shadow(color: Color("OrchidCrayola"), radius: 5)
                        .padding(.leading, -180)
                        .padding(.vertical, -60)
                    
                }
                HStack{
                    //                    Button {
                    //                        ira à la série de carte question corespondante
                    //                        }
                    //                    } label: {
                    Circle()
                        .fill(Color("OrchidCrayola").opacity(0.4))
                        .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                        .frame(width: 30, height: 30, alignment: .trailing)
                        .shadow(color: Color("OrchidCrayola"), radius: 5)
                        .padding(.leading, -100)
                        .padding(.vertical, -10)
                }
                HStack{
                    //                    Button {
                    //                        ira à la série de carte question corespondante
                    //                        }
                    //                    } label: {
                    Circle()
                        .fill(Color("OrchidCrayola").opacity(0.4))
                        .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                        .frame(width: 30, height: 30, alignment: .trailing)
                        .shadow(color: Color("OrchidCrayola"), radius: 5)
                        .padding(.vertical, 30)
                }
                HStack{
                    //                    Button {
                    //                        ira à la série de carte question corespondante
                    //                        }
                    //                    } label: {
                    Circle()
                        .fill(Color("OrchidCrayola").opacity(0.4))
                        .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                        .frame(width: 30, height: 30, alignment: .trailing)
                        .shadow(color: Color("OrchidCrayola"), radius: 5)
                        .padding(.trailing, 150)
                        .padding(.vertical, -10)
                }
                HStack{
                    //                    Button {
                    //                        ira à la série de carte question corespondante
                    //                        }
                    //                    } label: {
                    Circle()
                        .fill(Color("OrchidCrayola").opacity(0.4))
                        .overlay(Circle().stroke(Color("OrchidCrayola"), lineWidth: 2))
                        .frame(width: 30, height: 30, alignment: .trailing)
                        .shadow(color: Color("OrchidCrayola"), radius: 5)
                        .padding(.trailing, 200)
                        .padding(.vertical)
                }
            }.frame(width: .infinity, height: 250)
            VStack(){
                
                Text("NIVEAU 1")
                    .font(.custom("Montserrat", size: 12))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 9)
                Text("AUTOUR DE LA TRERE")
                    .font(.custom("Montserrat", size: 15))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 9)
                Spacer()
            }
        }
    }
}

struct level1View_Previews: PreviewProvider {
    static var previews: some View {
        level1View()
    }
}
