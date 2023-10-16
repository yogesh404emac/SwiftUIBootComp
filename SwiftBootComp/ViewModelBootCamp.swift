//
//  ViewModelBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 17/07/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id:String = UUID().uuidString
    let name:String
    let count:Int
}
class FruitViewModel:ObservableObject{
    
   @Published var fruitArray:[FruitModel] = []
   @Published var isLoading: Bool = false
    
    init() {
       getFruits()
    }
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 3)
        let fruit2 = FruitModel(name: "Banana", count: 1)
        let fruit3 = FruitModel(name: "Watermelon", count: 7)
        let fruit4 = FruitModel(name: "Coconut", count: 87)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
        
        
    }
    func deleteFruit(index:IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}


struct ViewModelBootCamp: View {
    

    // @StateObject -> use this on creation / init
    //@ObservedObject -> use this for the subview
    
   @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                ForEach(fruitViewModel.fruitArray){fruit in
                    HStack{
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform:fruitViewModel.deleteFruit)
            }
        }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right").font(.title)
            })
        )
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
    }
  
}
struct RandomScreen:View{
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject  var fruitViewModel: FruitViewModel
    var body: some View{
        ZStack{
            Color.green
            
            VStack{
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
            }
        }
    }
}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
    }
}
