//
//  ContentViewModel.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 12/06/24.
//

import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User? = nil
    
    init() {
        setupSubscriber()
    }
    
    func setupSubscriber() {
        service.$userSession
            .receive(on: DispatchQueue.main) // Ensure updates are on the main thread
            .sink { [weak self] userSession in
                self?.userSession = userSession
            }
            .store(in: &cancellables)
    }
}
