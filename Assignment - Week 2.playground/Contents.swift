//: Playground - noun: a place where people can play

import UIKit


class Model :NSObject {
    
    var favFoods: Array<String>!
    var favMovies: Array<String>!
    var favPlaces: Array<String>!
    
    override init() {
        favFoods = ["hot dogs","pizza","hamburgers",  "coconut", "grapefruit"]
        favMovies = [ "Desperado","Night at the Museum", "Robocop","Back to the Future", "Deep Impact" ]
        favPlaces = ["Barcelona","Paris", "California", "Tokyo",  "Naple"]
    }
    
    
    
}

class Controller: NSObject{
    let modelInstance = Model()
    
    enum Order  {
        case FavToLeast
        case LeastToFav
        case Alphabetically
    }
    
    func askQuestion(type:Int){
    
    switch type{
    case 0 :
    print("What are your favorite food Items?")
    printFavorites (Order.FavToLeast, modelList: modelInstance.favFoods )
    case 1 :
    print("What are your favorite Movies?")
    printFavorites (Order.Alphabetically,modelList: modelInstance.favMovies )
    case 2 :
    print("What are your favorite Places ?")
    printFavorites (.LeastToFav, modelList: modelInstance.favPlaces)
    default:
    print("Do Nothing ! Should not be here !!")
    }
    
    }
    
    
    
    func printFavorites(displayPref:Order, modelList:Array<String>){
        
        switch displayPref {
        case Order.FavToLeast :
            print ( "My Favorite Food Items are \(printPrefferredWay(modelList))")
        case Order.Alphabetically :
            let sortedMovieList:Array<String> = modelList.sort()
            print ( "My Favorite Movies are \(printPrefferredWay(sortedMovieList))")
        case .LeastToFav:
            let revList:Array<String> =  modelList.reverse()
            print ( "My Favorite Tourist Places are \(printPrefferredWay(revList))")
        
        }
    }
    
    func printPrefferredWay (favList:Array<String>) -> String{
        
        var favItems:String!
        
        for favoriteItem:String in favList{
            if favItems == nil{
                favItems = favoriteItem
            }
            else if favList.indexOf(favoriteItem) == (favList.count-1){
                favItems = favItems + " and "
                favItems = favItems + favoriteItem + "."
            }
            else{
                favItems = favItems + ", "
                favItems = favItems + favoriteItem
                
            }
        }
        
        return favItems
        
    }
    
}


for i in 0...2{
    let controllerIntsance = Controller()
    controllerIntsance.askQuestion(i)
}






