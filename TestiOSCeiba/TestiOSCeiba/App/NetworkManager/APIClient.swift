//
//  APIClient.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 19/03/23.
//

import Foundation
import Alamofire

class APIClient {
    static let directory = """
      [
        {
          "id": 1,
          "name": "Leanne Graham",
          "username": "Bret",
          "email": "Sincere@april.biz",
          "address": {
            "street": "Kulas Light",
            "suite": "Apt. 556",
            "city": "Gwenborough",
            "zipcode": "92998-3874",
            "geo": {
              "lat": "-37.3159",
              "lng": "81.1496"
            }
          },
          "phone": "1-770-736-8031 x56442",
          "website": "hildegard.org",
          "company": {
            "name": "Romaguera-Crona",
            "catchPhrase": "Multi-layered client-server neural-net",
            "bs": "harness real-time e-markets"
          }
        },
        {
          "id": 2,
          "name": "Ervin Howell",
          "username": "Antonette",
          "email": "Shanna@melissa.tv",
          "address": {
            "street": "Victor Plains",
            "suite": "Suite 879",
            "city": "Wisokyburgh",
            "zipcode": "90566-7771",
            "geo": {
              "lat": "-43.9509",
              "lng": "-34.4618"
            }
          },
          "phone": "010-692-6593 x09125",
          "website": "anastasia.net",
          "company": {
            "name": "Deckow-Crist",
            "catchPhrase": "Proactive didactic contingency",
            "bs": "synergize scalable supply-chains"
          }
        },
        {
          "id": 3,
          "name": "Clementine Bauch",
          "username": "Samantha",
          "email": "Nathan@yesenia.net",
          "address": {
            "street": "Douglas Extension",
            "suite": "Suite 847",
            "city": "McKenziehaven",
            "zipcode": "59590-4157",
            "geo": {
              "lat": "-68.6102",
              "lng": "-47.0653"
            }
          },
          "phone": "1-463-123-4447",
          "website": "ramiro.info",
          "company": {
            "name": "Romaguera-Jacobson",
            "catchPhrase": "Face to face bifurcated interface",
            "bs": "e-enable strategic applications"
          }
        },
        {
          "id": 4,
          "name": "Patricia Lebsack",
          "username": "Karianne",
          "email": "Julianne.OConner@kory.org",
          "address": {
            "street": "Hoeger Mall",
            "suite": "Apt. 692",
            "city": "South Elvis",
            "zipcode": "53919-4257",
            "geo": {
              "lat": "29.4572",
              "lng": "-164.2990"
            }
          },
          "phone": "493-170-9623 x156",
          "website": "kale.biz",
          "company": {
            "name": "Robel-Corkery",
            "catchPhrase": "Multi-tiered zero tolerance productivity",
            "bs": "transition cutting-edge web services"
          }
        },
        {
          "id": 5,
          "name": "Chelsey Dietrich",
          "username": "Kamren",
          "email": "Lucio_Hettinger@annie.ca",
          "address": {
            "street": "Skiles Walks",
            "suite": "Suite 351",
            "city": "Roscoeview",
            "zipcode": "33263",
            "geo": {
              "lat": "-31.8129",
              "lng": "62.5342"
            }
          },
          "phone": "(254)954-1289",
          "website": "demarco.info",
          "company": {
            "name": "Keebler LLC",
            "catchPhrase": "User-centric fault-tolerant solution",
            "bs": "revolutionize end-to-end systems"
          }
        },
        {
          "id": 6,
          "name": "Mrs. Dennis Schulist",
          "username": "Leopoldo_Corkery",
          "email": "Karley_Dach@jasper.info",
          "address": {
            "street": "Norberto Crossing",
            "suite": "Apt. 950",
            "city": "South Christy",
            "zipcode": "23505-1337",
            "geo": {
              "lat": "-71.4197",
              "lng": "71.7478"
            }
          },
          "phone": "1-477-935-8478 x6430",
          "website": "ola.org",
          "company": {
            "name": "Considine-Lockman",
            "catchPhrase": "Synchronised bottom-line interface",
            "bs": "e-enable innovative applications"
          }
        },
        {
          "id": 7,
          "name": "Kurtis Weissnat",
          "username": "Elwyn.Skiles",
          "email": "Telly.Hoeger@billy.biz",
          "address": {
            "street": "Rex Trail",
            "suite": "Suite 280",
            "city": "Howemouth",
            "zipcode": "58804-1099",
            "geo": {
              "lat": "24.8918",
              "lng": "21.8984"
            }
          },
          "phone": "210.067.6132",
          "website": "elvis.io",
          "company": {
            "name": "Johns Group",
            "catchPhrase": "Configurable multimedia task-force",
            "bs": "generate enterprise e-tailers"
          }
        },
        {
          "id": 8,
          "name": "Nicholas Runolfsdottir V",
          "username": "Maxime_Nienow",
          "email": "Sherwood@rosamond.me",
          "address": {
            "street": "Ellsworth Summit",
            "suite": "Suite 729",
            "city": "Aliyaview",
            "zipcode": "45169",
            "geo": {
              "lat": "-14.3990",
              "lng": "-120.7677"
            }
          },
          "phone": "586.493.6943 x140",
          "website": "jacynthe.com",
          "company": {
            "name": "Abernathy Group",
            "catchPhrase": "Implemented secondary concept",
            "bs": "e-enable extensible e-tailers"
          }
        },
        {
          "id": 9,
          "name": "Glenna Reichert",
          "username": "Delphine",
          "email": "Chaim_McDermott@dana.io",
          "address": {
            "street": "Dayna Park",
            "suite": "Suite 449",
            "city": "Bartholomebury",
            "zipcode": "76495-3109",
            "geo": {
              "lat": "24.6463",
              "lng": "-168.8889"
            }
          },
          "phone": "(775)976-6794 x41206",
          "website": "conrad.com",
          "company": {
            "name": "Yost and Sons",
            "catchPhrase": "Switchable contextually-based project",
            "bs": "aggregate real-time technologies"
          }
        },
        {
          "id": 10,
          "name": "Clementina DuBuque",
          "username": "Moriah.Stanton",
          "email": "Rey.Padberg@karina.biz",
          "address": {
            "street": "Kattie Turnpike",
            "suite": "Suite 198",
            "city": "Lebsackbury",
            "zipcode": "31428-2261",
            "geo": {
              "lat": "-38.2386",
              "lng": "57.2232"
            }
          },
          "phone": "024-648-3804",
          "website": "ambrose.net",
          "company": {
            "name": "Hoeger LLC",
            "catchPhrase": "Centralized empowering task-force",
            "bs": "target end-to-end models"
          }
        }
      ]
      """
    
    static let post = """
        [
          {
            "userId": 1,
            "id": 1,
            "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
            "body": "quia et suscipit suscipit recusandae consequuntur expedita et cum*reprehenderit molestiae ut ut quas totam*nostrum rerum est autem sunt rem eveniet architecto"
          },
          {
            "userId": 1,
            "id": 2,
            "title": "qui est esse",
            "body": "est rerum tempore vitae*sequi sint nihil reprehenderit dolor beatae ea dolores neque*fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis*qui aperiam non debitis possimus qui neque nisi nulla"
          },
          {
            "userId": 1,
            "id": 3,
            "title": "ea molestias quasi exercitationem repellat qui ipsa sit aut",
            "body": "et iusto sed quo iure*voluptatem occaecati omnis eligendi aut ad*voluptatem doloribus vel accusantium quis pariatur*molestiae porro eius odio et labore et velit aut"
          },
          {
            "userId": 1,
            "id": 4,
            "title": "eum et est occaecati",
            "body": "ullam et saepe reiciendis voluptatem adipisci*sit amet autem assumenda provident rerum culpa*quis hic commodi nesciunt rem tenetur doloremque ipsam iure*quis sunt voluptatem rerum illo velit"
          },
          {
            "userId": 1,
            "id": 5,
            "title": "nesciunt quas odio",
            "body": "repudiandae veniam quaerat sunt sed*alias aut fugiat sit autem sed est*voluptatem omnis possimus esse voluptatibus quis*est aut tenetur dolor neque"
          },
          {
            "userId": 1,
            "id": 6,
            "title": "dolorem eum magni eos aperiam quia",
            "body": "ut aspernatur corporis harum nihil quis provident sequi*mollitia nobis aliquid molestiae*perspiciatis et ea nemo ab reprehenderit accusantium quas*voluptate dolores velit et doloremque molestiae"
          },
          {
            "userId": 1,
            "id": 7,
            "title": "magnam facilis autem",
            "body": "dolore placeat quibusdam ea quo vitae*magni quis enim qui quis quo nemo aut saepe*quidem repellat excepturi ut quia*sunt ut sequi eos ea sed quas"
          },
          {
            "userId": 1,
            "id": 8,
            "title": "dolorem dolore est ipsam",
            "body": "dignissimos aperiam dolorem qui eum*facilis quibusdam animi sint suscipit qui sint possimus cum*quaerat magni maiores excepturi*ipsam ut commodi dolor voluptatum modi aut vitae"
          },
          {
            "userId": 1,
            "id": 9,
            "title": "nesciunt iure omnis dolorem tempora et accusantium",
            "body": "consectetur animi nesciunt iure dolore*enim quia ad*veniam autem ut quam aut nobis*et est aut quod aut provident voluptas autem voluptas"
          },
          {
            "userId": 1,
            "id": 10,
            "title": "optio molestias id quia eum",
            "body": "quo et expedita modi cum officia vel magni*doloribus qui repudiandae*vero nisi sit*quos veniam quod sed accusamus veritatis error"
          }
        ]
        """
    static func isAPIAccesible() -> Bool {
        return true
    }
    
//    static func returnDirectory<T>(completion: @escaping (AFDataResponse<T>) -> Void) where T: Decodable {
//        AF.request(APIRouter.returnDirectory)
//            .responseDecodable { (response: AFDataResponse<T>) in
//            debugPrint(response)
//            completion (response) }
//    }

//    static func returnDirectory(completion: @escaping (AFDataResponse<Data>) -> Void) {
//        AF.request(APIRouter.returnDirectory)
//            .responseDecodable { response in
//            debugPrint(response)
//            completion (response) }
//    }
    
    static func returnDirectory(completion: @escaping (AFDataResponse<[UserDecodable]>) -> Void) {
        AF.request(APIRouter.returnDirectory)
            .responseDecodable(of: [UserDecodable].self) { (response: AFDataResponse<[UserDecodable]>) in
            debugPrint(response)
                let jsonData = response.data! //Data(response.data!) //data(using: .utf8) else { return [] }
                do {
                    let decodables = try JSONDecoder().decode([UserDecodable].self, from: jsonData)
                    print(decodables)
        //            return decodables.data!
                } catch {
                    print (error)
                }

            completion (response) }
    }
    
    static func returnAfterDecode() {
        AF.request(APIRouter.returnDirectory)
            .responseData { response in
                debugPrint(response)
                let jsonData = response.data! //Data(response.data!) //data(using: .utf8) else { return [] }
                do {
                    let decodables = try JSONDecoder().decode([UserDecodable].self, from: jsonData)
                    print(decodables)
                    //            return decodables.data!
                } catch {
                    print (error)
                }
            }
    }
    
    static func returnDirectoryMock() -> [UserDecodable] {
        let jsonData = APIClient.directory.data(using: .utf8)!
        do {
            let decoder = JSONDecoder()
            let directory = try decoder.decode([UserDecodable].self, from: jsonData)
            print(directory)
            return directory
        }
        catch {
            print (error)
            return []
        }
    }

    static func returnPostMock() -> [PostDecodable] {
        let jsonData = APIClient.post.data(using: .utf8)!
        do {
            let decoder = JSONDecoder()
            let post = try decoder.decode([PostDecodable].self, from: jsonData)
            print(post)
            return post
        }
        catch {
            print (error)
            return []
        }
    }
    
    static func returnUser(user: User.Request) -> UserDecodable? {
        let directory = self.returnDirectoryMock()
        if !directory.isEmpty {
            return directory.filter { $0.id == user.id }.first
        }
        return nil
    }
    
    static func returnPost(user: User.Request) -> [PostDecodable] {
        let post = self.returnPostMock()
        if !post.isEmpty {
            return post
        }
        return []
    }
}
