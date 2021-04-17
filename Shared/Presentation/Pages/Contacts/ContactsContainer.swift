import SwiftUI

struct ContactsContainer: View {
    var body: some View {
        pageContent()
                .navigationBarHidden(true)
    }

    @ViewBuilder
    private func pageContent() -> some View {
        VStack {
            Text("Contacts container")
            NavigationLink(destination: Text("Details")) {
                Text("Details")
            }
        }
    }
}
