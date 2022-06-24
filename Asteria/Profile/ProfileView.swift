//
//  ProfileView.swift
//  Asteria
//
//  Created by apprenant70 on 23/06/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var notification = false
    @State private var audio = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("OxfordBlue"), Color("SpaceCadet"), Color("PurpleMountain")]), startPoint: .top, endPoint: .bottom)
                    )
                    .ignoresSafeArea()
                
                VStack {
                    
                    Form {
                        Section {
                            HStack (spacing: 15) {
                                Image("jeanneDupont")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:95, height: 95)
                                    .cornerRadius(50)
                                VStack (alignment:.leading) {
                                    Text("Jeanne DUPONT")
                                        .font(.system(size: 20))
                                        .fontWeight(.black)
                                    Text("30 ans")
                                        .font(.system(size: 12))
                                        .fontWeight(.thin)
                                    Spacer()
                                    Text("Niveau or".uppercased())
                                        .font(.system(size: 13))
                                        .fontWeight(.light)
                                }
                                .frame(height:60)
                            }
                            .listRowBackground(Color.clear)
                        }
                        
                        Section {
                            HStack {
                                Text("Notification")
                                Toggle("", isOn: $notification)
                            }
                            HStack {
                                Text("Audio")
                                Toggle("", isOn: $audio)
                            }
                        } header: {
                            Text("Préférences")
                        }
                        Section {
                            HStack {
                                Text("Revoir l'introduction")
                            }
                        } header: {
                            Text("Jeu")
                        }
                        Section {
                            HStack {
                                Text("Réinitialiser les données")
                            }
                            HStack {
                                Text("Déconnecter le compte")
                            }
                            HStack {
                                Text("Supprimer le compte")
                            }
                            .listRowBackground(Color.red)
                        } header: {
                            Text("Données & compte")
                        }
                        
                    }
                    .navigationBarTitle(Text("Profil"), displayMode: .inline)
                }
            }
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}