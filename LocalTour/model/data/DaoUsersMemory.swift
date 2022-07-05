//
//  DaoModel.swift
//  LocalTour
//
//  Created by user221960 on 7/4/22.
//

import Foundation

class DaoUsersMemory:UsersDAO {
    var data:DataDemo?
    private static var instance:DaoUsersMemory?
    private var currentUser:User?
    
    private init() {
        self.data = DataDemo.getInstance()
    }
    
    static func getInstance() -> DaoUsersMemory {
        if (DaoUsersMemory.instance == nil) {
            DaoUsersMemory.instance = DaoUsersMemory()
        }
        return DaoUsersMemory.instance!
    }
    
    func getAllUsers() -> [User]? {
        var users: [User] = []
        users.append(self.data!.owner!)
        users.append(self.data!.traveler!)
        return users
    }
    
    func getAllOwners() -> [Owner]? {
        return self.data!.owners
    }
    
    func getOwner(id: String) -> Owner? {
        if let offSet = self.data!.owners.firstIndex(where: {$0.email == id}) {
            return self.data!.owners[offSet]
        }
        return nil
    }
    
    func addNewOwner(password: String, email: String, name: String, cpf: String) {
        let newOwner = Owner(password:password, email:email, name:name, cpf:cpf)
        self.data?.owners.append(newOwner)
    }
    
    func getAllTravelers() -> [Traveler]? {
        return self.data!.travelers
    }
    
    func getTraveler(id: String) -> Traveler? {
        if let offSet = self.data!.travelers.firstIndex(where: {$0.email == id}) {
            return self.data!.travelers[offSet]
        }
        return nil
    }
    
    func addNewTraveler(password: String, email: String, name: String, cpf: String) {
        let newTraveler = Traveler(password:password, email:email, name:name, cpf:cpf)
        self.data!.travelers.append(newTraveler)
    }
    
    // TODO: Verify this idea
    func getCurrentUser() -> User {
        return self.currentUser!
    }
    func updateCurrentUser(_ user: User) {
        self.currentUser = user
    }
    
    // Get / Read Instances
    // TODO: DELETE
    func printUsers() {
        print(self.data!.travelers)
        print(self.data!.owners)
    }
    
    // TODO: Remove
    func getTempTraveler() -> Traveler {
        return self.data!.traveler!
    }
    func getTempOwner() -> Owner {
        return self.data!.owner!
    }
}
