//
//  ContentView.swift
//  MusicApp
//
//  Created by Matheus Prado on 06/11/20.
//

import SwiftUI
struct Album : Hashable {
    var id = UUID()
    var name : String
    var image : String
    var songs : [Song]
}

struct Song : Hashable {
    var id = UUID()
    var name : String
    var time : String
    
}

    

struct ContentView: View {
    
    var albums = [Album( name: "Album 1", image: "1",
                         songs: [Song(name: "Minha musica muito Dahora", time: "2:36"),
                                 Song(name: "Song 22", time: "2:36"),
                                 Song(name: "Song 3", time: "2:36"),
                                 Song(name: "Song 11", time: "2:36")]),
                 Album( name: "Album 2", image: "2",
                         songs: [Song(name: "Song 312", time: "2:36"),
                                 Song(name: "Song 2", time: "2:36"),
                                 Song(name: "Song 43", time: "2:36"),
                                 Song(name: "Song 123", time: "2:36")]),
                 Album( name: "Album 3", image: "3",
                         songs: [Song(name: "Song 333", time: "2:36"),
                                 Song(name: "Song 555", time: "2:36"),
                                 Song(name: "Song 3", time: "2:36"),
                                 Song(name: "Song !!", time: "2:36")]),
                 Album( name: "Album 4", image: "4",
                         songs: [Song(name: "Song 22", time: "2:36"),
                                 Song(name: "Song 2", time: "2:36"),
                                 Song(name: "Song 333", time: "2:36"),
                                 Song(name: "Song 4", time: "2:36")]),
                 Album( name: "Album 5", image: "5",
                         songs: [Song(name: "Song 1", time: "2:36"),
                                 Song(name: "Song 21111", time: "2:36"),
                                 Song(name: "Song 3", time: "2:36"),
                                 Song(name: "Song 4", time: "2:36")])]
    
   @State private var currentAlbum : Album?
    
    var body: some View {
        NavigationView{
            ScrollView{
                ScrollView(.horizontal, showsIndicators: false, content: {
                    LazyHStack{
                        ForEach(self.albums, id: \.self, content: {
                            album in
                            AlbumArt(album: album, IsWithText: true).onTapGesture{
                                self.currentAlbum = album
                            }
                        })
                    }
                })
                LazyVStack{
                    ForEach((self.currentAlbum?.songs ?? self.albums.first?.songs) ??
                                [Song(name: "Song 1", time: "2:36"),
                                 Song(name: "Song 2", time: "2:36"),
                                 Song(name: "Song 3", time: "2:36"),
                                 Song(name: "Song 4", time: "2:36")],
                            id: \.self,
                            content:{
                                song in
                                SongCell(album: currentAlbum ?? albums.first!, song: song)
                            })
                }
            }.navigationTitle("My band Name")
        }
    }
}

struct AlbumArt : View {
    var album : Album
    var IsWithText : Bool
    var body: some View {
        ZStack (alignment: .bottom, content: {
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 170, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/  )
                Spacer()
            
            if IsWithText == true {
                ZStack {
                    Blur(style: .dark)
                    Text(album.name).foregroundColor(.white)
                }.frame(width: 50, alignment: .center)
            }
        }).frame(width: 170, height: 200, alignment:
                    .center).clipped().cornerRadius(20).shadow(radius: 10).padding(20)
    }
}
struct SongCell: View {
    var album : Album
    var song : Song
    var body: some View {
        NavigationLink(
            destination: PlayerView(album: album, song: song),
            label: {
                HStack {
                    ZStack {
                        Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.blue)
                        Circle().frame(width: 20, height: 20, alignment: .center).foregroundColor(.white)
                    }
                    Text(song.name).bold()
                    Spacer()
                    Text(song.time)
                }.padding(20)
            }).buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumArt(album: Album(name: "Album 1", image: "5",
                                      songs: [Song(name: "Song 1", time: "2:36"),
                                              Song(name: "Song 2", time: "2:36"),
                                              Song(name: "Song 3", time: "2:36"),
                                              Song(name: "Song 4", time: "2:36")] ), IsWithText: true)
    }
}
