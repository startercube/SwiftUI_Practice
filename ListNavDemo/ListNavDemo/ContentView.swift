//
//  ContentView.swift
//  ListNavDemo
//
//  Created by PC on 5/28/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var carStore: CarStore = CarStore(cars: carData)
    @State private var stackPath = NavigationPath()
    var body: some View{
        NavigationStack(path: $stackPath) {
            List {
                ForEach (0..<carStore.cars.count, id: \.self) {
                    i in
                    NavigationLink(value: i){
                        ListCell(car: carStore.cars[i])
                    }
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationDestination(for: Int.self){
                i in CarDetail(selectedCar: carStore.cars[i])
            }
            .navigationDestination(for: Int.self){
                i in CarDetail(selectedCar: carStore.cars[i])
            }
            .navigationDestination(for: String.self) {
                _ in AddNewCar(carStore: self.carStore, path: $stackPath)
            }
            .navigationTitle(Text("EV Cars - 20215243"))
                .navigationBarItems(leading: NavigationLink(value: "Add Car"){
                    Text("Add").foregroundColor(.blue)
                }, trailing: EditButton())
                .padding()
        }
    }
    func deleteItems(at offsets: IndexSet){
        carStore.cars.remove(atOffsets: offsets)
    }
    func moveItems(from source: IndexSet, to destination:Int){
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
   
}

#Preview {
    ContentView()
}

struct ListCell: View{
    var car: Car
    var body: some View{
        HStack {
            Image(car.imageName)
                .resizable()
                .frame(width: 100, height: 60)
                .aspectRatio(contentMode: .fit)
            Text(car.name)
        }
    }
}
