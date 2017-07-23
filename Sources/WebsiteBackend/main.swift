import Meow
import Leopard

class BlogPost : Model, PathComponentExtracting {
    var _id = ObjectId()
    
    var title: String
    
    static func extract(from string: String) throws -> BlogPost? {
        let id = try ObjectId(string)
        
        return try BlogPost.findOne("_id" == id)
    }
    
    init(titled title: String) {
        self.title = title
    }
}

let server = try SyncWebServer()

server.get("posts", ":post") { request in
    let post = try request.extract(BlogPost.self, from: "post")
    
    return post?.title ?? "None"
}

try server.start()

