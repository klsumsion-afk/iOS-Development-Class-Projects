

import SwiftUI

//Request your dog to be walked
//Specify the number of dogs to be walked
//Specify the name of the dogs


struct ContentView: View {
    
    @State var dogApp = DogApp()
    
    @State var newDogName = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Dog Walker")
                .font(.largeTitle)
            VStack {
                Text("My Dogs")
                    .font(.title)
                ForEach(dogApp.dogs) { dog in
                    Text(dog.name)
                }
            }
            Spacer()
            TextField("New Dog Name", text: $newDogName)
                .font(.largeTitle)
            
            Button(
                action: addDog,
                label: {
                    HStack {
                        Spacer()
                        Text("Add a dog")
                        Image(systemName: "dog.fill")
                        Spacer()
                    }
                }
            )
            .font(.largeTitle)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    
    func addDog() {
        guard !newDogName.isEmpty else { return }
        dogApp.dogs.append(Dog(name: newDogName))
        newDogName = ""
    }
}

#Preview {
    ContentView()
}
