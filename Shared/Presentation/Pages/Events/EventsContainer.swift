import SwiftUI

struct EventsContainer: View {
    var body: some View {
        pageContent()
                .navigationBarHidden(true)
    }

    @ViewBuilder
    private func pageContent() -> some View {
        VStack {
            Text("Events container")
            NavigationLink(destination: Text("Details")) {
                Text("Details")
            }
        }
    }
}
