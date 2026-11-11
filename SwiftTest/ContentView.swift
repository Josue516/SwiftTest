import SwiftUI

struct ContentView: View {
    @State private var counter = Counter()

    var body: some View {
        VStack(spacing: 25) {
            Text("Mi primer contador")
                .font(.largeTitle)
                .bold()

            Text("\(counter.value)")
                .font(.system(size: 70))
                .bold()
                .accessibilityIdentifier("counterValue")

            Button("Incrementar") {
                counter.increment()
            }
            .buttonStyle(.borderedProminent)
            .accessibilityIdentifier("incrementButton")

            Button("Reiniciar") {
                counter.reset()
            }
            .buttonStyle(.bordered)
            .accessibilityIdentifier("resetButton")
        }
        .padding()
    }
}