import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssetsAuditAssetResponse : Tea.TeaModel {
    public var requestId: String?

    public var status: RpcStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            var model = RpcStatus()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class AssetsCreateAssetResponse : Tea.TeaModel {
    public var asset: CommonAsset?

    public var requestId: String?

    public var status: RpcStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.asset?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asset != nil {
            map["Asset"] = self.asset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Asset") {
            var model = CommonAsset()
            model.fromMap(dict["Asset"] as! [String: Any])
            self.asset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            var model = RpcStatus()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class AssetsDeleteAssetResponse : Tea.TeaModel {
    public var asset: CommonAsset?

    public var requestId: String?

    public var status: RpcStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.asset?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asset != nil {
            map["Asset"] = self.asset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Asset") {
            var model = CommonAsset()
            model.fromMap(dict["Asset"] as! [String: Any])
            self.asset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            var model = RpcStatus()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class AssetsGetAssetResponse : Tea.TeaModel {
    public var asset: CommonAsset?

    public var requestId: String?

    public var status: RpcStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.asset?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asset != nil {
            map["Asset"] = self.asset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Asset") {
            var model = CommonAsset()
            model.fromMap(dict["Asset"] as! [String: Any])
            self.asset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            var model = RpcStatus()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class AssetsListAssetsRequest : Tea.TeaModel {
    public var appId: String?

    public var fieldMask: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var params: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.fieldMask != nil {
            map["FieldMask"] = self.fieldMask!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("FieldMask") {
            self.fieldMask = dict["FieldMask"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class AssetsListAssetsResponse : Tea.TeaModel {
    public var assets: [CommonAsset]?

    public var nextToken: String?

    public var requestId: String?

    public var status: RpcStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assets != nil {
            var tmp : [Any] = []
            for k in self.assets! {
                tmp.append(k.toMap())
            }
            map["Assets"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Assets") {
            self.assets = dict["Assets"] as! [CommonAsset]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            var model = RpcStatus()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class AssetsUpdateAssetResponse : Tea.TeaModel {
    public var asset: CommonAsset?

    public var requestId: String?

    public var status: RpcStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.asset?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asset != nil {
            map["Asset"] = self.asset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Asset") {
            var model = CommonAsset()
            model.fromMap(dict["Asset"] as! [String: Any])
            self.asset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            var model = RpcStatus()
            model.fromMap(dict["Status"] as! [String: Any])
            self.status = model
        }
    }
}

public class CommonAddress : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var state: String?

    public var zip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.zip != nil {
            map["Zip"] = self.zip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Zip") {
            self.zip = dict["Zip"] as! String
        }
    }
}

public class CommonAsset : Tea.TeaModel {
    public var address: CommonAddress?

    public var appId: String?

    public var auditStatus: String?

    public var author: String?

    public var createdAt: String?

    public var description_: String?

    public var extends: [String: Any]?

    public var id: String?

    public var images: [CommonMediaResource]?

    public var labels: [String: Any]?

    public var location: TypeLatLng?

    public var source: String?

    public var status: String?

    public var synopsis: String?

    public var tags: [String]?

    public var title: String?

    public var updatedAt: String?

    public var videos: [CommonMediaResource]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
        try self.location?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.extends != nil {
            map["Extends"] = self.extends!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.location != nil {
            map["Location"] = self.location?.toMap()
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.synopsis != nil {
            map["Synopsis"] = self.synopsis!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        if self.videos != nil {
            var tmp : [Any] = []
            for k in self.videos! {
                tmp.append(k.toMap())
            }
            map["Videos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            var model = CommonAddress()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("CreatedAt") {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Extends") {
            self.extends = dict["Extends"] as! [String: Any]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Images") {
            self.images = dict["Images"] as! [CommonMediaResource]
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: Any]
        }
        if dict.keys.contains("Location") {
            var model = TypeLatLng()
            model.fromMap(dict["Location"] as! [String: Any])
            self.location = model
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Synopsis") {
            self.synopsis = dict["Synopsis"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdatedAt") {
            self.updatedAt = dict["UpdatedAt"] as! String
        }
        if dict.keys.contains("Videos") {
            self.videos = dict["Videos"] as! [CommonMediaResource]
        }
    }
}

public class CommonMediaResource : Tea.TeaModel {
    public var format: String?

    public var id: String?

    public var name: String?

    public var sha1: String?

    public var size: Int64?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.format != nil {
            map["Format"] = self.format!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sha1 != nil {
            map["Sha1"] = self.sha1!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Format") {
            self.format = dict["Format"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Sha1") {
            self.sha1 = dict["Sha1"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class CommonSimpleAsset : Tea.TeaModel {
    public var address: CommonAddress?

    public var appId: String?

    public var auditStatus: String?

    public var author: String?

    public var description_: String?

    public var extends: [String: Any]?

    public var id: String?

    public var image: CommonMediaResource?

    public var labels: [String: Any]?

    public var location: TypeLatLng?

    public var source: String?

    public var status: String?

    public var synopsis: String?

    public var tags: [String]?

    public var title: String?

    public var video: CommonMediaResource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
        try self.image?.validate()
        try self.location?.validate()
        try self.video?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.extends != nil {
            map["Extends"] = self.extends!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.image != nil {
            map["Image"] = self.image?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.location != nil {
            map["Location"] = self.location?.toMap()
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.synopsis != nil {
            map["Synopsis"] = self.synopsis!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.video != nil {
            map["Video"] = self.video?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            var model = CommonAddress()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Extends") {
            self.extends = dict["Extends"] as! [String: Any]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Image") {
            var model = CommonMediaResource()
            model.fromMap(dict["Image"] as! [String: Any])
            self.image = model
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: Any]
        }
        if dict.keys.contains("Location") {
            var model = TypeLatLng()
            model.fromMap(dict["Location"] as! [String: Any])
            self.location = model
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Synopsis") {
            self.synopsis = dict["Synopsis"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Video") {
            var model = CommonMediaResource()
            model.fromMap(dict["Video"] as! [String: Any])
            self.video = model
        }
    }
}

public class RpcStatus : Tea.TeaModel {
    public var code: Int32?

    public var detail: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Detail") {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
    }
}

public class TypeLatLng : Tea.TeaModel {
    public var latitude: Double?

    public var longitude: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Latitude") {
            self.latitude = dict["Latitude"] as! Double
        }
        if dict.keys.contains("Longitude") {
            self.longitude = dict["Longitude"] as! Double
        }
    }
}

public class BanAllCommentRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class BanAllCommentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class BanAllCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BanAllCommentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BanAllCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BanCommentRequest : Tea.TeaModel {
    public var appId: String?

    public var banCommentTime: Int64?

    public var banCommentUser: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.banCommentTime != nil {
            map["BanCommentTime"] = self.banCommentTime!
        }
        if self.banCommentUser != nil {
            map["BanCommentUser"] = self.banCommentUser!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BanCommentTime") {
            self.banCommentTime = dict["BanCommentTime"] as! Int64
        }
        if dict.keys.contains("BanCommentUser") {
            self.banCommentUser = dict["BanCommentUser"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class BanCommentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class BanCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BanCommentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BanCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelBanAllCommentRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CancelBanAllCommentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class CancelBanAllCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelBanAllCommentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelBanAllCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelBanCommentRequest : Tea.TeaModel {
    public var appId: String?

    public var banCommentUser: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.banCommentUser != nil {
            map["BanCommentUser"] = self.banCommentUser!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BanCommentUser") {
            self.banCommentUser = dict["BanCommentUser"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CancelBanCommentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class CancelBanCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelBanCommentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelBanCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelUserAdminRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CancelUserAdminResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelUserAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelUserAdminResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelUserAdminResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClassRequest : Tea.TeaModel {
    public var appId: String?

    public var createNickname: String?

    public var createUserId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.createNickname != nil {
            map["CreateNickname"] = self.createNickname!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CreateNickname") {
            self.createNickname = dict["CreateNickname"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateClassResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var classId: String?

        public var confId: String?

        public var createNickname: String?

        public var createUserId: String?

        public var liveId: String?

        public var roomId: String?

        public var status: Int32?

        public var title: String?

        public var whiteboardId: String?

        public var whiteboardRecordId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classId != nil {
                map["ClassId"] = self.classId!
            }
            if self.confId != nil {
                map["ConfId"] = self.confId!
            }
            if self.createNickname != nil {
                map["CreateNickname"] = self.createNickname!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.whiteboardId != nil {
                map["WhiteboardId"] = self.whiteboardId!
            }
            if self.whiteboardRecordId != nil {
                map["WhiteboardRecordId"] = self.whiteboardRecordId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassId") {
                self.classId = dict["ClassId"] as! String
            }
            if dict.keys.contains("ConfId") {
                self.confId = dict["ConfId"] as! String
            }
            if dict.keys.contains("CreateNickname") {
                self.createNickname = dict["CreateNickname"] as! String
            }
            if dict.keys.contains("CreateUserId") {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("WhiteboardId") {
                self.whiteboardId = dict["WhiteboardId"] as! String
            }
            if dict.keys.contains("WhiteboardRecordId") {
                self.whiteboardRecordId = dict["WhiteboardRecordId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateClassResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateClassResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLiveRequest : Tea.TeaModel {
    public var anchorId: String?

    public var appId: String?

    public var codeLevel: Int32?

    public var introduction: String?

    public var liveId: String?

    public var roomId: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.codeLevel != nil {
            map["CodeLevel"] = self.codeLevel!
        }
        if self.introduction != nil {
            map["Introduction"] = self.introduction!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnchorId") {
            self.anchorId = dict["AnchorId"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CodeLevel") {
            self.codeLevel = dict["CodeLevel"] as! Int32
        }
        if dict.keys.contains("Introduction") {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateLiveResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var liveId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateLiveResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateLiveResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateLiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLiveRecordSliceFileRequest : Tea.TeaModel {
    public var appId: String?

    public var endTime: Int64?

    public var fileName: String?

    public var liveId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class CreateLiveRecordSliceFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var sliceRecordUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sliceRecordUrl != nil {
                map["SliceRecordUrl"] = self.sliceRecordUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SliceRecordUrl") {
                self.sliceRecordUrl = dict["SliceRecordUrl"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateLiveRecordSliceFileResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateLiveRecordSliceFileResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateLiveRecordSliceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLiveRecordSliceFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLiveRecordSliceFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLiveRoomRequest : Tea.TeaModel {
    public var anchorId: String?

    public var anchorNick: String?

    public var appId: String?

    public var coverUrl: String?

    public var enableLinkMic: Bool?

    public var extension_: [String: String]?

    public var notice: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.anchorNick != nil {
            map["AnchorNick"] = self.anchorNick!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.enableLinkMic != nil {
            map["EnableLinkMic"] = self.enableLinkMic!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnchorId") {
            self.anchorId = dict["AnchorId"] as! String
        }
        if dict.keys.contains("AnchorNick") {
            self.anchorNick = dict["AnchorNick"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CoverUrl") {
            self.coverUrl = dict["CoverUrl"] as! String
        }
        if dict.keys.contains("EnableLinkMic") {
            self.enableLinkMic = dict["EnableLinkMic"] as! Bool
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! [String: String]
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateLiveRoomShrinkRequest : Tea.TeaModel {
    public var anchorId: String?

    public var anchorNick: String?

    public var appId: String?

    public var coverUrl: String?

    public var enableLinkMic: Bool?

    public var extensionShrink: String?

    public var notice: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.anchorNick != nil {
            map["AnchorNick"] = self.anchorNick!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.enableLinkMic != nil {
            map["EnableLinkMic"] = self.enableLinkMic!
        }
        if self.extensionShrink != nil {
            map["Extension"] = self.extensionShrink!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnchorId") {
            self.anchorId = dict["AnchorId"] as! String
        }
        if dict.keys.contains("AnchorNick") {
            self.anchorNick = dict["AnchorNick"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CoverUrl") {
            self.coverUrl = dict["CoverUrl"] as! String
        }
        if dict.keys.contains("EnableLinkMic") {
            self.enableLinkMic = dict["EnableLinkMic"] as! Bool
        }
        if dict.keys.contains("Extension") {
            self.extensionShrink = dict["Extension"] as! String
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateLiveRoomResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ArtcInfo : Tea.TeaModel {
            public var artcH5Url: String?

            public var artcUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.artcH5Url != nil {
                    map["ArtcH5Url"] = self.artcH5Url!
                }
                if self.artcUrl != nil {
                    map["ArtcUrl"] = self.artcUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArtcH5Url") {
                    self.artcH5Url = dict["ArtcH5Url"] as! String
                }
                if dict.keys.contains("ArtcUrl") {
                    self.artcUrl = dict["ArtcUrl"] as! String
                }
            }
        }
        public class PluginInstanceInfoList : Tea.TeaModel {
            public var createTime: Int64?

            public var extension_: [String: String]?

            public var pluginId: String?

            public var pluginType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.pluginId != nil {
                    map["PluginId"] = self.pluginId!
                }
                if self.pluginType != nil {
                    map["PluginType"] = self.pluginType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("PluginId") {
                    self.pluginId = dict["PluginId"] as! String
                }
                if dict.keys.contains("PluginType") {
                    self.pluginType = dict["PluginType"] as! String
                }
            }
        }
        public var anchorId: String?

        public var anchorNick: String?

        public var appId: String?

        public var artcInfo: CreateLiveRoomResponseBody.Result.ArtcInfo?

        public var chatId: String?

        public var coverUrl: String?

        public var extension_: [String: String]?

        public var hlsUrl: String?

        public var liveId: String?

        public var liveUrl: String?

        public var notice: String?

        public var playbackUrl: String?

        public var pluginInstanceInfoList: [CreateLiveRoomResponseBody.Result.PluginInstanceInfoList]?

        public var pushUrl: String?

        public var roomId: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.artcInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anchorId != nil {
                map["AnchorId"] = self.anchorId!
            }
            if self.anchorNick != nil {
                map["AnchorNick"] = self.anchorNick!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.artcInfo != nil {
                map["ArtcInfo"] = self.artcInfo?.toMap()
            }
            if self.chatId != nil {
                map["ChatId"] = self.chatId!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.hlsUrl != nil {
                map["HlsUrl"] = self.hlsUrl!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.liveUrl != nil {
                map["LiveUrl"] = self.liveUrl!
            }
            if self.notice != nil {
                map["Notice"] = self.notice!
            }
            if self.playbackUrl != nil {
                map["PlaybackUrl"] = self.playbackUrl!
            }
            if self.pluginInstanceInfoList != nil {
                var tmp : [Any] = []
                for k in self.pluginInstanceInfoList! {
                    tmp.append(k.toMap())
                }
                map["PluginInstanceInfoList"] = tmp
            }
            if self.pushUrl != nil {
                map["PushUrl"] = self.pushUrl!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnchorId") {
                self.anchorId = dict["AnchorId"] as! String
            }
            if dict.keys.contains("AnchorNick") {
                self.anchorNick = dict["AnchorNick"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ArtcInfo") {
                var model = CreateLiveRoomResponseBody.Result.ArtcInfo()
                model.fromMap(dict["ArtcInfo"] as! [String: Any])
                self.artcInfo = model
            }
            if dict.keys.contains("ChatId") {
                self.chatId = dict["ChatId"] as! String
            }
            if dict.keys.contains("CoverUrl") {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! [String: String]
            }
            if dict.keys.contains("HlsUrl") {
                self.hlsUrl = dict["HlsUrl"] as! String
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("LiveUrl") {
                self.liveUrl = dict["LiveUrl"] as! String
            }
            if dict.keys.contains("Notice") {
                self.notice = dict["Notice"] as! String
            }
            if dict.keys.contains("PlaybackUrl") {
                self.playbackUrl = dict["PlaybackUrl"] as! String
            }
            if dict.keys.contains("PluginInstanceInfoList") {
                self.pluginInstanceInfoList = dict["PluginInstanceInfoList"] as! [CreateLiveRoomResponseBody.Result.PluginInstanceInfoList]
            }
            if dict.keys.contains("PushUrl") {
                self.pushUrl = dict["PushUrl"] as! String
            }
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateLiveRoomResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateLiveRoomResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateLiveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLiveRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLiveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var extension_: [String: String]?

    public var notice: String?

    public var roomId: String?

    public var roomOwnerId: String?

    public var templateId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.roomOwnerId != nil {
            map["RoomOwnerId"] = self.roomOwnerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! [String: String]
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("RoomOwnerId") {
            self.roomOwnerId = dict["RoomOwnerId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateRoomShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var extensionShrink: String?

    public var notice: String?

    public var roomId: String?

    public var roomOwnerId: String?

    public var templateId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.extensionShrink != nil {
            map["Extension"] = self.extensionShrink!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.roomOwnerId != nil {
            map["RoomOwnerId"] = self.roomOwnerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extensionShrink = dict["Extension"] as! String
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("RoomOwnerId") {
            self.roomOwnerId = dict["RoomOwnerId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateRoomResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var roomId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateRoomResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateRoomResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSensitiveWordRequest : Tea.TeaModel {
    public var appId: String?

    public var wordList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.wordList != nil {
            map["WordList"] = self.wordList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("WordList") {
            self.wordList = dict["WordList"] as! [String]
        }
    }
}

public class CreateSensitiveWordShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var wordListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.wordListShrink != nil {
            map["WordList"] = self.wordListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("WordList") {
            self.wordListShrink = dict["WordList"] as! String
        }
    }
}

public class CreateSensitiveWordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: CreateSensitiveWordResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateSensitiveWordResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateSensitiveWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSensitiveWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSensitiveWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClassRequest : Tea.TeaModel {
    public var appId: String?

    public var classId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClassId") {
            self.classId = dict["ClassId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteClassResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCommentRequest : Tea.TeaModel {
    public var appId: String?

    public var commentIdList: [String]?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.commentIdList != nil {
            map["CommentIdList"] = self.commentIdList!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CommentIdList") {
            self.commentIdList = dict["CommentIdList"] as! [String]
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteCommentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var deleteResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deleteResult != nil {
                map["DeleteResult"] = self.deleteResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeleteResult") {
                self.deleteResult = dict["DeleteResult"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: DeleteCommentResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DeleteCommentResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCommentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCommentByCreatorIdRequest : Tea.TeaModel {
    public var appId: String?

    public var commentIdList: [String]?

    public var creatorId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.commentIdList != nil {
            map["CommentIdList"] = self.commentIdList!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CommentIdList") {
            self.commentIdList = dict["CommentIdList"] as! [String]
        }
        if dict.keys.contains("CreatorId") {
            self.creatorId = dict["CreatorId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteCommentByCreatorIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var deleteResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deleteResult != nil {
                map["DeleteResult"] = self.deleteResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeleteResult") {
                self.deleteResult = dict["DeleteResult"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: DeleteCommentByCreatorIdResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DeleteCommentByCreatorIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteCommentByCreatorIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCommentByCreatorIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCommentByCreatorIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConferenceRequest : Tea.TeaModel {
    public var appId: String?

    public var conferenceId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.conferenceId != nil {
            map["ConferenceId"] = self.conferenceId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ConferenceId") {
            self.conferenceId = dict["ConferenceId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteConferenceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteConferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLiveRequest : Tea.TeaModel {
    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class DeleteLiveResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteLiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLiveFilesByIdRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class DeleteLiveFilesByIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeleteLiveFilesByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLiveFilesByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLiveFilesByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLiveRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteLiveRoomResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteLiveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLiveRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLiveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class DeleteRoomResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSensitiveWordRequest : Tea.TeaModel {
    public var appId: String?

    public var wordList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.wordList != nil {
            map["WordList"] = self.wordList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("WordList") {
            self.wordList = dict["WordList"] as! [String]
        }
    }
}

public class DeleteSensitiveWordShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var wordListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.wordListShrink != nil {
            map["WordList"] = self.wordListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("WordList") {
            self.wordListShrink = dict["WordList"] as! String
        }
    }
}

public class DeleteSensitiveWordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var success: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: DeleteSensitiveWordResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DeleteSensitiveWordResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteSensitiveWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSensitiveWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSensitiveWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterImpPlayBackTimeByLiveIdRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var liveId: String?

    public var startTs: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("StartTs") {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterImpPlayBackTimeByLiveIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var watchTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.watchTime != nil {
                map["WatchTime"] = self.watchTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WatchTime") {
                self.watchTime = dict["WatchTime"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterImpPlayBackTimeByLiveIdResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeMeterImpPlayBackTimeByLiveIdResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterImpPlayBackTimeByLiveIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterImpPlayBackTimeByLiveIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeMeterImpPlayBackTimeByLiveIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterImpWatchLiveTimeByLiveIdRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class DescribeMeterImpWatchLiveTimeByLiveIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var watchTimeInLatency: Int64?

        public var watchTimeInLowLatency: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.watchTimeInLatency != nil {
                map["WatchTimeInLatency"] = self.watchTimeInLatency!
            }
            if self.watchTimeInLowLatency != nil {
                map["WatchTimeInLowLatency"] = self.watchTimeInLowLatency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WatchTimeInLatency") {
                self.watchTimeInLatency = dict["WatchTimeInLatency"] as! Int64
            }
            if dict.keys.contains("WatchTimeInLowLatency") {
                self.watchTimeInLowLatency = dict["WatchTimeInLowLatency"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterImpWatchLiveTimeByLiveIdResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeMeterImpWatchLiveTimeByLiveIdResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterImpWatchLiveTimeByLiveIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterImpWatchLiveTimeByLiveIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeMeterImpWatchLiveTimeByLiveIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuthTokenRequest : Tea.TeaModel {
    public var appId: String?

    public var appKey: String?

    public var deviceId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetAuthTokenResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessToken: String?

        public var accessTokenExpiredTime: Int64?

        public var refreshToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.accessTokenExpiredTime != nil {
                map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
            }
            if self.refreshToken != nil {
                map["RefreshToken"] = self.refreshToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessToken") {
                self.accessToken = dict["AccessToken"] as! String
            }
            if dict.keys.contains("AccessTokenExpiredTime") {
                self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! Int64
            }
            if dict.keys.contains("RefreshToken") {
                self.refreshToken = dict["RefreshToken"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetAuthTokenResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetAuthTokenResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClassDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var classId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClassId") {
            self.classId = dict["ClassId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetClassDetailResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var classId: String?

        public var confId: String?

        public var createNickname: String?

        public var createUserId: String?

        public var endTime: Int64?

        public var liveId: String?

        public var roomId: String?

        public var startTime: Int64?

        public var status: Int32?

        public var title: String?

        public var whiteboardId: String?

        public var whiteboardRecordId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classId != nil {
                map["ClassId"] = self.classId!
            }
            if self.confId != nil {
                map["ConfId"] = self.confId!
            }
            if self.createNickname != nil {
                map["CreateNickname"] = self.createNickname!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.whiteboardId != nil {
                map["WhiteboardId"] = self.whiteboardId!
            }
            if self.whiteboardRecordId != nil {
                map["WhiteboardRecordId"] = self.whiteboardRecordId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassId") {
                self.classId = dict["ClassId"] as! String
            }
            if dict.keys.contains("ConfId") {
                self.confId = dict["ConfId"] as! String
            }
            if dict.keys.contains("CreateNickname") {
                self.createNickname = dict["CreateNickname"] as! String
            }
            if dict.keys.contains("CreateUserId") {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("WhiteboardId") {
                self.whiteboardId = dict["WhiteboardId"] as! String
            }
            if dict.keys.contains("WhiteboardRecordId") {
                self.whiteboardRecordId = dict["WhiteboardRecordId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetClassDetailResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetClassDetailResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetClassDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClassDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClassDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClassRecordRequest : Tea.TeaModel {
    public var appId: String?

    public var classId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClassId") {
            self.classId = dict["ClassId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetClassRecordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var playbackUrlMap: [String: [String]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.playbackUrlMap != nil {
                map["PlaybackUrlMap"] = self.playbackUrlMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PlaybackUrlMap") {
                self.playbackUrlMap = dict["PlaybackUrlMap"] as! [String: [String]]
            }
        }
    }
    public var requestId: String?

    public var result: GetClassRecordResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetClassRecordResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetClassRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClassRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClassRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConferenceRequest : Tea.TeaModel {
    public var conferenceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conferenceId != nil {
            map["ConferenceId"] = self.conferenceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConferenceId") {
            self.conferenceId = dict["ConferenceId"] as! String
        }
    }
}

public class GetConferenceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appId: String?

        public var conferenceId: String?

        public var createTime: Int64?

        public var playbackUrl: String?

        public var roomId: String?

        public var status: String?

        public var title: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.conferenceId != nil {
                map["ConferenceId"] = self.conferenceId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.playbackUrl != nil {
                map["PlaybackUrl"] = self.playbackUrl!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ConferenceId") {
                self.conferenceId = dict["ConferenceId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("PlaybackUrl") {
                self.playbackUrl = dict["PlaybackUrl"] as! String
            }
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetConferenceResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetConferenceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetConferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLiveRequest : Tea.TeaModel {
    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class GetLiveResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ArtcInfo : Tea.TeaModel {
            public var artcH5Url: String?

            public var artcUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.artcH5Url != nil {
                    map["ArtcH5Url"] = self.artcH5Url!
                }
                if self.artcUrl != nil {
                    map["ArtcUrl"] = self.artcUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArtcH5Url") {
                    self.artcH5Url = dict["ArtcH5Url"] as! String
                }
                if dict.keys.contains("ArtcUrl") {
                    self.artcUrl = dict["ArtcUrl"] as! String
                }
            }
        }
        public class PlayUrlInfoList : Tea.TeaModel {
            public var codeLevel: Int32?

            public var flvUrl: String?

            public var hlsUrl: String?

            public var rtmpUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.codeLevel != nil {
                    map["CodeLevel"] = self.codeLevel!
                }
                if self.flvUrl != nil {
                    map["FlvUrl"] = self.flvUrl!
                }
                if self.hlsUrl != nil {
                    map["HlsUrl"] = self.hlsUrl!
                }
                if self.rtmpUrl != nil {
                    map["RtmpUrl"] = self.rtmpUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CodeLevel") {
                    self.codeLevel = dict["CodeLevel"] as! Int32
                }
                if dict.keys.contains("FlvUrl") {
                    self.flvUrl = dict["FlvUrl"] as! String
                }
                if dict.keys.contains("HlsUrl") {
                    self.hlsUrl = dict["HlsUrl"] as! String
                }
                if dict.keys.contains("RtmpUrl") {
                    self.rtmpUrl = dict["RtmpUrl"] as! String
                }
            }
        }
        public var anchorId: String?

        public var appId: String?

        public var artcInfo: GetLiveResponseBody.Result.ArtcInfo?

        public var codeLevel: Int32?

        public var coverUrl: String?

        public var createTime: Int64?

        public var duration: Int64?

        public var endTime: Int64?

        public var hlsUrl: String?

        public var introduction: String?

        public var liveId: String?

        public var liveUrl: String?

        public var playUrlInfoList: [GetLiveResponseBody.Result.PlayUrlInfoList]?

        public var playbackUrl: String?

        public var pushUrl: String?

        public var roomId: String?

        public var status: String?

        public var title: String?

        public var userDefineField: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.artcInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anchorId != nil {
                map["AnchorId"] = self.anchorId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.artcInfo != nil {
                map["ArtcInfo"] = self.artcInfo?.toMap()
            }
            if self.codeLevel != nil {
                map["CodeLevel"] = self.codeLevel!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hlsUrl != nil {
                map["HlsUrl"] = self.hlsUrl!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.liveUrl != nil {
                map["LiveUrl"] = self.liveUrl!
            }
            if self.playUrlInfoList != nil {
                var tmp : [Any] = []
                for k in self.playUrlInfoList! {
                    tmp.append(k.toMap())
                }
                map["PlayUrlInfoList"] = tmp
            }
            if self.playbackUrl != nil {
                map["PlaybackUrl"] = self.playbackUrl!
            }
            if self.pushUrl != nil {
                map["PushUrl"] = self.pushUrl!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.userDefineField != nil {
                map["UserDefineField"] = self.userDefineField!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnchorId") {
                self.anchorId = dict["AnchorId"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ArtcInfo") {
                var model = GetLiveResponseBody.Result.ArtcInfo()
                model.fromMap(dict["ArtcInfo"] as! [String: Any])
                self.artcInfo = model
            }
            if dict.keys.contains("CodeLevel") {
                self.codeLevel = dict["CodeLevel"] as! Int32
            }
            if dict.keys.contains("CoverUrl") {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HlsUrl") {
                self.hlsUrl = dict["HlsUrl"] as! String
            }
            if dict.keys.contains("Introduction") {
                self.introduction = dict["Introduction"] as! String
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("LiveUrl") {
                self.liveUrl = dict["LiveUrl"] as! String
            }
            if dict.keys.contains("PlayUrlInfoList") {
                self.playUrlInfoList = dict["PlayUrlInfoList"] as! [GetLiveResponseBody.Result.PlayUrlInfoList]
            }
            if dict.keys.contains("PlaybackUrl") {
                self.playbackUrl = dict["PlaybackUrl"] as! String
            }
            if dict.keys.contains("PushUrl") {
                self.pushUrl = dict["PushUrl"] as! String
            }
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UserDefineField") {
                self.userDefineField = dict["UserDefineField"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetLiveResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetLiveResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetLiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLiveRecordRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetLiveRecordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var playbackUrlMap: [String: [String]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.playbackUrlMap != nil {
                map["PlaybackUrlMap"] = self.playbackUrlMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PlaybackUrlMap") {
                self.playbackUrlMap = dict["PlaybackUrlMap"] as! [String: [String]]
            }
        }
    }
    public var requestId: String?

    public var result: GetLiveRecordResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetLiveRecordResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetLiveRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLiveRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLiveRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLiveRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class GetLiveRoomResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ArtcInfo : Tea.TeaModel {
            public var artcH5Url: String?

            public var artcUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.artcH5Url != nil {
                    map["ArtcH5Url"] = self.artcH5Url!
                }
                if self.artcUrl != nil {
                    map["ArtcUrl"] = self.artcUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArtcH5Url") {
                    self.artcH5Url = dict["ArtcH5Url"] as! String
                }
                if dict.keys.contains("ArtcUrl") {
                    self.artcUrl = dict["ArtcUrl"] as! String
                }
            }
        }
        public class PluginInstanceInfoList : Tea.TeaModel {
            public var createTime: Int64?

            public var extension_: [String: String]?

            public var pluginId: String?

            public var pluginType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.pluginId != nil {
                    map["PluginId"] = self.pluginId!
                }
                if self.pluginType != nil {
                    map["PluginType"] = self.pluginType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("PluginId") {
                    self.pluginId = dict["PluginId"] as! String
                }
                if dict.keys.contains("PluginType") {
                    self.pluginType = dict["PluginType"] as! String
                }
            }
        }
        public var anchorId: String?

        public var anchorNick: String?

        public var appId: String?

        public var artcInfo: GetLiveRoomResponseBody.Result.ArtcInfo?

        public var chatId: String?

        public var confId: String?

        public var coverUrl: String?

        public var createTime: Int64?

        public var enableLinkMic: Bool?

        public var endTime: Int64?

        public var extension_: [String: String]?

        public var hlsUrl: String?

        public var hlsUrlHttps: String?

        public var liveId: String?

        public var liveUrl: String?

        public var liveUrlHttps: String?

        public var notice: String?

        public var onlineCount: Int64?

        public var playbackUrl: String?

        public var playbackUrlHttps: String?

        public var pluginInstanceInfoList: [GetLiveRoomResponseBody.Result.PluginInstanceInfoList]?

        public var pushUrl: String?

        public var pv: Int64?

        public var roomId: String?

        public var rtmpUrl: String?

        public var startTime: Int64?

        public var status: Int32?

        public var title: String?

        public var uv: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.artcInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anchorId != nil {
                map["AnchorId"] = self.anchorId!
            }
            if self.anchorNick != nil {
                map["AnchorNick"] = self.anchorNick!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.artcInfo != nil {
                map["ArtcInfo"] = self.artcInfo?.toMap()
            }
            if self.chatId != nil {
                map["ChatId"] = self.chatId!
            }
            if self.confId != nil {
                map["ConfId"] = self.confId!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableLinkMic != nil {
                map["EnableLinkMic"] = self.enableLinkMic!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.hlsUrl != nil {
                map["HlsUrl"] = self.hlsUrl!
            }
            if self.hlsUrlHttps != nil {
                map["HlsUrlHttps"] = self.hlsUrlHttps!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.liveUrl != nil {
                map["LiveUrl"] = self.liveUrl!
            }
            if self.liveUrlHttps != nil {
                map["LiveUrlHttps"] = self.liveUrlHttps!
            }
            if self.notice != nil {
                map["Notice"] = self.notice!
            }
            if self.onlineCount != nil {
                map["OnlineCount"] = self.onlineCount!
            }
            if self.playbackUrl != nil {
                map["PlaybackUrl"] = self.playbackUrl!
            }
            if self.playbackUrlHttps != nil {
                map["PlaybackUrlHttps"] = self.playbackUrlHttps!
            }
            if self.pluginInstanceInfoList != nil {
                var tmp : [Any] = []
                for k in self.pluginInstanceInfoList! {
                    tmp.append(k.toMap())
                }
                map["PluginInstanceInfoList"] = tmp
            }
            if self.pushUrl != nil {
                map["PushUrl"] = self.pushUrl!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.rtmpUrl != nil {
                map["RtmpUrl"] = self.rtmpUrl!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.uv != nil {
                map["Uv"] = self.uv!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnchorId") {
                self.anchorId = dict["AnchorId"] as! String
            }
            if dict.keys.contains("AnchorNick") {
                self.anchorNick = dict["AnchorNick"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ArtcInfo") {
                var model = GetLiveRoomResponseBody.Result.ArtcInfo()
                model.fromMap(dict["ArtcInfo"] as! [String: Any])
                self.artcInfo = model
            }
            if dict.keys.contains("ChatId") {
                self.chatId = dict["ChatId"] as! String
            }
            if dict.keys.contains("ConfId") {
                self.confId = dict["ConfId"] as! String
            }
            if dict.keys.contains("CoverUrl") {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EnableLinkMic") {
                self.enableLinkMic = dict["EnableLinkMic"] as! Bool
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! [String: String]
            }
            if dict.keys.contains("HlsUrl") {
                self.hlsUrl = dict["HlsUrl"] as! String
            }
            if dict.keys.contains("HlsUrlHttps") {
                self.hlsUrlHttps = dict["HlsUrlHttps"] as! String
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("LiveUrl") {
                self.liveUrl = dict["LiveUrl"] as! String
            }
            if dict.keys.contains("LiveUrlHttps") {
                self.liveUrlHttps = dict["LiveUrlHttps"] as! String
            }
            if dict.keys.contains("Notice") {
                self.notice = dict["Notice"] as! String
            }
            if dict.keys.contains("OnlineCount") {
                self.onlineCount = dict["OnlineCount"] as! Int64
            }
            if dict.keys.contains("PlaybackUrl") {
                self.playbackUrl = dict["PlaybackUrl"] as! String
            }
            if dict.keys.contains("PlaybackUrlHttps") {
                self.playbackUrlHttps = dict["PlaybackUrlHttps"] as! String
            }
            if dict.keys.contains("PluginInstanceInfoList") {
                self.pluginInstanceInfoList = dict["PluginInstanceInfoList"] as! [GetLiveRoomResponseBody.Result.PluginInstanceInfoList]
            }
            if dict.keys.contains("PushUrl") {
                self.pushUrl = dict["PushUrl"] as! String
            }
            if dict.keys.contains("Pv") {
                self.pv = dict["Pv"] as! Int64
            }
            if dict.keys.contains("RoomId") {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("RtmpUrl") {
                self.rtmpUrl = dict["RtmpUrl"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Uv") {
                self.uv = dict["Uv"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetLiveRoomResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetLiveRoomResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetLiveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLiveRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLiveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLiveRoomStatisticsRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class GetLiveRoomStatisticsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var endTime: Int64?

        public var likeCount: Int64?

        public var liveId: String?

        public var messageCount: Int64?

        public var onlineCount: Int64?

        public var pv: Int64?

        public var startTime: Int64?

        public var status: Int32?

        public var uv: Int64?

        public var watchLiveTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.likeCount != nil {
                map["LikeCount"] = self.likeCount!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.messageCount != nil {
                map["MessageCount"] = self.messageCount!
            }
            if self.onlineCount != nil {
                map["OnlineCount"] = self.onlineCount!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uv != nil {
                map["Uv"] = self.uv!
            }
            if self.watchLiveTime != nil {
                map["WatchLiveTime"] = self.watchLiveTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("LikeCount") {
                self.likeCount = dict["LikeCount"] as! Int64
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("MessageCount") {
                self.messageCount = dict["MessageCount"] as! Int64
            }
            if dict.keys.contains("OnlineCount") {
                self.onlineCount = dict["OnlineCount"] as! Int64
            }
            if dict.keys.contains("Pv") {
                self.pv = dict["Pv"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Uv") {
                self.uv = dict["Uv"] as! Int64
            }
            if dict.keys.contains("WatchLiveTime") {
                self.watchLiveTime = dict["WatchLiveTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetLiveRoomStatisticsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetLiveRoomStatisticsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetLiveRoomStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLiveRoomStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLiveRoomStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLiveRoomUserStatisticsRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class GetLiveRoomUserStatisticsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class UserStatisticsList : Tea.TeaModel {
            public var commentCount: Int32?

            public var likeCount: Int32?

            public var userId: String?

            public var watchLiveTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commentCount != nil {
                    map["CommentCount"] = self.commentCount!
                }
                if self.likeCount != nil {
                    map["LikeCount"] = self.likeCount!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.watchLiveTime != nil {
                    map["WatchLiveTime"] = self.watchLiveTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommentCount") {
                    self.commentCount = dict["CommentCount"] as! Int32
                }
                if dict.keys.contains("LikeCount") {
                    self.likeCount = dict["LikeCount"] as! Int32
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("WatchLiveTime") {
                    self.watchLiveTime = dict["WatchLiveTime"] as! Int64
                }
            }
        }
        public var hasMore: Bool?

        public var liveId: String?

        public var pageTotal: Int32?

        public var totalCount: Int32?

        public var userStatisticsList: [GetLiveRoomUserStatisticsResponseBody.Result.UserStatisticsList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.userStatisticsList != nil {
                var tmp : [Any] = []
                for k in self.userStatisticsList! {
                    tmp.append(k.toMap())
                }
                map["UserStatisticsList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UserStatisticsList") {
                self.userStatisticsList = dict["UserStatisticsList"] as! [GetLiveRoomUserStatisticsResponseBody.Result.UserStatisticsList]
            }
        }
    }
    public var requestId: String?

    public var result: GetLiveRoomUserStatisticsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetLiveRoomUserStatisticsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetLiveRoomUserStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLiveRoomUserStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLiveRoomUserStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class GetRoomResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RoomInfo : Tea.TeaModel {
            public class PluginInstanceInfoList : Tea.TeaModel {
                public var createTime: Int64?

                public var extension_: [String: String]?

                public var pluginId: String?

                public var pluginType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.extension_ != nil {
                        map["Extension"] = self.extension_!
                    }
                    if self.pluginId != nil {
                        map["PluginId"] = self.pluginId!
                    }
                    if self.pluginType != nil {
                        map["PluginType"] = self.pluginType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! Int64
                    }
                    if dict.keys.contains("Extension") {
                        self.extension_ = dict["Extension"] as! [String: String]
                    }
                    if dict.keys.contains("PluginId") {
                        self.pluginId = dict["PluginId"] as! String
                    }
                    if dict.keys.contains("PluginType") {
                        self.pluginType = dict["PluginType"] as! String
                    }
                }
            }
            public var adminIdList: [String]?

            public var appId: String?

            public var createTime: Int64?

            public var extension_: [String: String]?

            public var notice: String?

            public var onlineCount: Int64?

            public var pluginInstanceInfoList: [GetRoomResponseBody.Result.RoomInfo.PluginInstanceInfoList]?

            public var pv: Int64?

            public var roomId: String?

            public var roomOwnerId: String?

            public var templateId: String?

            public var title: String?

            public var uv: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adminIdList != nil {
                    map["AdminIdList"] = self.adminIdList!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.notice != nil {
                    map["Notice"] = self.notice!
                }
                if self.onlineCount != nil {
                    map["OnlineCount"] = self.onlineCount!
                }
                if self.pluginInstanceInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.pluginInstanceInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["PluginInstanceInfoList"] = tmp
                }
                if self.pv != nil {
                    map["Pv"] = self.pv!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.roomOwnerId != nil {
                    map["RoomOwnerId"] = self.roomOwnerId!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.uv != nil {
                    map["Uv"] = self.uv!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdminIdList") {
                    self.adminIdList = dict["AdminIdList"] as! [String]
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("Notice") {
                    self.notice = dict["Notice"] as! String
                }
                if dict.keys.contains("OnlineCount") {
                    self.onlineCount = dict["OnlineCount"] as! Int64
                }
                if dict.keys.contains("PluginInstanceInfoList") {
                    self.pluginInstanceInfoList = dict["PluginInstanceInfoList"] as! [GetRoomResponseBody.Result.RoomInfo.PluginInstanceInfoList]
                }
                if dict.keys.contains("Pv") {
                    self.pv = dict["Pv"] as! Int64
                }
                if dict.keys.contains("RoomId") {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("RoomOwnerId") {
                    self.roomOwnerId = dict["RoomOwnerId"] as! String
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Uv") {
                    self.uv = dict["Uv"] as! Int64
                }
            }
        }
        public var roomInfo: GetRoomResponseBody.Result.RoomInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roomInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roomInfo != nil {
                map["RoomInfo"] = self.roomInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RoomInfo") {
                var model = GetRoomResponseBody.Result.RoomInfo()
                model.fromMap(dict["RoomInfo"] as! [String: Any])
                self.roomInfo = model
            }
        }
    }
    public var requestId: String?

    public var result: GetRoomResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetRoomResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStandardRoomJumpUrlRequest : Tea.TeaModel {
    public var appId: String?

    public var appKey: String?

    public var bizId: String?

    public var bizType: String?

    public var platform: String?

    public var userId: String?

    public var userNick: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userNick != nil {
            map["UserNick"] = self.userNick!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserNick") {
            self.userNick = dict["UserNick"] as! String
        }
    }
}

public class GetStandardRoomJumpUrlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var standardRoomJumpUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.standardRoomJumpUrl != nil {
                map["StandardRoomJumpUrl"] = self.standardRoomJumpUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StandardRoomJumpUrl") {
                self.standardRoomJumpUrl = dict["StandardRoomJumpUrl"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetStandardRoomJumpUrlResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetStandardRoomJumpUrlResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetStandardRoomJumpUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStandardRoomJumpUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetStandardRoomJumpUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KickRoomUserRequest : Tea.TeaModel {
    public var appId: String?

    public var blockTime: Int64?

    public var kickUser: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.blockTime != nil {
            map["BlockTime"] = self.blockTime!
        }
        if self.kickUser != nil {
            map["KickUser"] = self.kickUser!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BlockTime") {
            self.blockTime = dict["BlockTime"] as! Int64
        }
        if dict.keys.contains("KickUser") {
            self.kickUser = dict["KickUser"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class KickRoomUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KickRoomUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KickRoomUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = KickRoomUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClassesRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class ListClassesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ClassList : Tea.TeaModel {
            public var classId: String?

            public var confId: String?

            public var createNickname: String?

            public var createUserId: String?

            public var endTime: Int64?

            public var liveId: String?

            public var roomId: String?

            public var startTime: Int64?

            public var status: Int32?

            public var title: String?

            public var whiteboardId: String?

            public var whiteboardRecordId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classId != nil {
                    map["ClassId"] = self.classId!
                }
                if self.confId != nil {
                    map["ConfId"] = self.confId!
                }
                if self.createNickname != nil {
                    map["CreateNickname"] = self.createNickname!
                }
                if self.createUserId != nil {
                    map["CreateUserId"] = self.createUserId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.liveId != nil {
                    map["LiveId"] = self.liveId!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.whiteboardId != nil {
                    map["WhiteboardId"] = self.whiteboardId!
                }
                if self.whiteboardRecordId != nil {
                    map["WhiteboardRecordId"] = self.whiteboardRecordId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassId") {
                    self.classId = dict["ClassId"] as! String
                }
                if dict.keys.contains("ConfId") {
                    self.confId = dict["ConfId"] as! String
                }
                if dict.keys.contains("CreateNickname") {
                    self.createNickname = dict["CreateNickname"] as! String
                }
                if dict.keys.contains("CreateUserId") {
                    self.createUserId = dict["CreateUserId"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("LiveId") {
                    self.liveId = dict["LiveId"] as! String
                }
                if dict.keys.contains("RoomId") {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("WhiteboardId") {
                    self.whiteboardId = dict["WhiteboardId"] as! String
                }
                if dict.keys.contains("WhiteboardRecordId") {
                    self.whiteboardRecordId = dict["WhiteboardRecordId"] as! String
                }
            }
        }
        public var classList: [ListClassesResponseBody.Result.ClassList]?

        public var hasMore: Bool?

        public var pageTotal: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classList != nil {
                var tmp : [Any] = []
                for k in self.classList! {
                    tmp.append(k.toMap())
                }
                map["ClassList"] = tmp
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassList") {
                self.classList = dict["ClassList"] as! [ListClassesResponseBody.Result.ClassList]
            }
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListClassesResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListClassesResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListClassesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClassesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClassesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCommentsRequest : Tea.TeaModel {
    public var appId: String?

    public var creatorId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var roomId: String?

    public var sortType: Int32?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CreatorId") {
            self.creatorId = dict["CreatorId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListCommentsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommentVOList : Tea.TeaModel {
            public var appId: String?

            public var commentId: String?

            public var content: String?

            public var createAt: Int64?

            public var extension_: [String: String]?

            public var roomId: String?

            public var senderId: String?

            public var senderNick: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.commentId != nil {
                    map["CommentId"] = self.commentId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createAt != nil {
                    map["CreateAt"] = self.createAt!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.senderId != nil {
                    map["SenderId"] = self.senderId!
                }
                if self.senderNick != nil {
                    map["SenderNick"] = self.senderNick!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CommentId") {
                    self.commentId = dict["CommentId"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("CreateAt") {
                    self.createAt = dict["CreateAt"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("RoomId") {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("SenderId") {
                    self.senderId = dict["SenderId"] as! String
                }
                if dict.keys.contains("SenderNick") {
                    self.senderNick = dict["SenderNick"] as! String
                }
            }
        }
        public var commentVOList: [ListCommentsResponseBody.Result.CommentVOList]?

        public var hasMore: Bool?

        public var pageTotal: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commentVOList != nil {
                var tmp : [Any] = []
                for k in self.commentVOList! {
                    tmp.append(k.toMap())
                }
                map["CommentVOList"] = tmp
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommentVOList") {
                self.commentVOList = dict["CommentVOList"] as! [ListCommentsResponseBody.Result.CommentVOList]
            }
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListCommentsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListCommentsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListCommentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCommentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConferenceUsersRequest : Tea.TeaModel {
    public var conferenceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conferenceId != nil {
            map["ConferenceId"] = self.conferenceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConferenceId") {
            self.conferenceId = dict["ConferenceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListConferenceUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ConferenceUserList : Tea.TeaModel {
            public var status: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var conferenceUserList: [ListConferenceUsersResponseBody.Result.ConferenceUserList]?

        public var hasMore: Bool?

        public var pageTotal: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conferenceUserList != nil {
                var tmp : [Any] = []
                for k in self.conferenceUserList! {
                    tmp.append(k.toMap())
                }
                map["ConferenceUserList"] = tmp
            }
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConferenceUserList") {
                self.conferenceUserList = dict["ConferenceUserList"] as! [ListConferenceUsersResponseBody.Result.ConferenceUserList]
            }
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListConferenceUsersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListConferenceUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListConferenceUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConferenceUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConferenceUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLiveFilesRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
    }
}

public class ListLiveFilesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class FileList : Tea.TeaModel {
            public var fileName: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var fileList: [ListLiveFilesResponseBody.Result.FileList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileList != nil {
                var tmp : [Any] = []
                for k in self.fileList! {
                    tmp.append(k.toMap())
                }
                map["FileList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileList") {
                self.fileList = dict["FileList"] as! [ListLiveFilesResponseBody.Result.FileList]
            }
        }
    }
    public var requestId: String?

    public var result: ListLiveFilesResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListLiveFilesResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListLiveFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLiveFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLiveFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLiveRoomsRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class ListLiveRoomsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class LiveList : Tea.TeaModel {
            public var anchorId: String?

            public var anchorNick: String?

            public var appId: String?

            public var chatId: String?

            public var coverUrl: String?

            public var createTime: Int64?

            public var endTime: Int64?

            public var extension_: [String: String]?

            public var liveId: String?

            public var notice: String?

            public var onlineCount: Int64?

            public var pv: Int64?

            public var roomId: String?

            public var startTime: Int64?

            public var status: Int32?

            public var title: String?

            public var uv: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.anchorId != nil {
                    map["AnchorId"] = self.anchorId!
                }
                if self.anchorNick != nil {
                    map["AnchorNick"] = self.anchorNick!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.chatId != nil {
                    map["ChatId"] = self.chatId!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.liveId != nil {
                    map["LiveId"] = self.liveId!
                }
                if self.notice != nil {
                    map["Notice"] = self.notice!
                }
                if self.onlineCount != nil {
                    map["OnlineCount"] = self.onlineCount!
                }
                if self.pv != nil {
                    map["Pv"] = self.pv!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.uv != nil {
                    map["Uv"] = self.uv!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnchorId") {
                    self.anchorId = dict["AnchorId"] as! String
                }
                if dict.keys.contains("AnchorNick") {
                    self.anchorNick = dict["AnchorNick"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChatId") {
                    self.chatId = dict["ChatId"] as! String
                }
                if dict.keys.contains("CoverUrl") {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("LiveId") {
                    self.liveId = dict["LiveId"] as! String
                }
                if dict.keys.contains("Notice") {
                    self.notice = dict["Notice"] as! String
                }
                if dict.keys.contains("OnlineCount") {
                    self.onlineCount = dict["OnlineCount"] as! Int64
                }
                if dict.keys.contains("Pv") {
                    self.pv = dict["Pv"] as! Int64
                }
                if dict.keys.contains("RoomId") {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Uv") {
                    self.uv = dict["Uv"] as! Int64
                }
            }
        }
        public var hasMore: Bool?

        public var liveList: [ListLiveRoomsResponseBody.Result.LiveList]?

        public var pageTotal: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.liveList != nil {
                var tmp : [Any] = []
                for k in self.liveList! {
                    tmp.append(k.toMap())
                }
                map["LiveList"] = tmp
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("LiveList") {
                self.liveList = dict["LiveList"] as! [ListLiveRoomsResponseBody.Result.LiveList]
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListLiveRoomsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListLiveRoomsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListLiveRoomsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLiveRoomsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLiveRoomsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLiveRoomsByIdRequest : Tea.TeaModel {
    public var appId: String?

    public var liveIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveIdList != nil {
            map["LiveIdList"] = self.liveIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveIdList") {
            self.liveIdList = dict["LiveIdList"] as! [String]
        }
    }
}

public class ListLiveRoomsByIdShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var liveIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveIdListShrink != nil {
            map["LiveIdList"] = self.liveIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveIdList") {
            self.liveIdListShrink = dict["LiveIdList"] as! String
        }
    }
}

public class ListLiveRoomsByIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class LiveList : Tea.TeaModel {
            public var anchorId: String?

            public var anchorNick: String?

            public var appId: String?

            public var chatId: String?

            public var coverUrl: String?

            public var createTime: Int64?

            public var endTime: Int64?

            public var extension_: [String: String]?

            public var liveId: String?

            public var notice: String?

            public var onlineCount: Int64?

            public var pv: Int64?

            public var roomId: String?

            public var startTime: Int64?

            public var status: Int32?

            public var title: String?

            public var uv: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.anchorId != nil {
                    map["AnchorId"] = self.anchorId!
                }
                if self.anchorNick != nil {
                    map["AnchorNick"] = self.anchorNick!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.chatId != nil {
                    map["ChatId"] = self.chatId!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.liveId != nil {
                    map["LiveId"] = self.liveId!
                }
                if self.notice != nil {
                    map["Notice"] = self.notice!
                }
                if self.onlineCount != nil {
                    map["OnlineCount"] = self.onlineCount!
                }
                if self.pv != nil {
                    map["Pv"] = self.pv!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.uv != nil {
                    map["Uv"] = self.uv!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnchorId") {
                    self.anchorId = dict["AnchorId"] as! String
                }
                if dict.keys.contains("AnchorNick") {
                    self.anchorNick = dict["AnchorNick"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChatId") {
                    self.chatId = dict["ChatId"] as! String
                }
                if dict.keys.contains("CoverUrl") {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("LiveId") {
                    self.liveId = dict["LiveId"] as! String
                }
                if dict.keys.contains("Notice") {
                    self.notice = dict["Notice"] as! String
                }
                if dict.keys.contains("OnlineCount") {
                    self.onlineCount = dict["OnlineCount"] as! Int64
                }
                if dict.keys.contains("Pv") {
                    self.pv = dict["Pv"] as! Int64
                }
                if dict.keys.contains("RoomId") {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Uv") {
                    self.uv = dict["Uv"] as! Int64
                }
            }
        }
        public var liveList: [ListLiveRoomsByIdResponseBody.Result.LiveList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.liveList != nil {
                var tmp : [Any] = []
                for k in self.liveList! {
                    tmp.append(k.toMap())
                }
                map["LiveList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LiveList") {
                self.liveList = dict["LiveList"] as! [ListLiveRoomsByIdResponseBody.Result.LiveList]
            }
        }
    }
    public var requestId: String?

    public var result: ListLiveRoomsByIdResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListLiveRoomsByIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListLiveRoomsByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLiveRoomsByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLiveRoomsByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRoomUsersRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var roomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class ListRoomUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RoomUserList : Tea.TeaModel {
            public var extension_: [String: String]?

            public var nick: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("Nick") {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var hasMore: Bool?

        public var pageTotal: Int32?

        public var roomUserList: [ListRoomUsersResponseBody.Result.RoomUserList]?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.roomUserList != nil {
                var tmp : [Any] = []
                for k in self.roomUserList! {
                    tmp.append(k.toMap())
                }
                map["RoomUserList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("RoomUserList") {
                self.roomUserList = dict["RoomUserList"] as! [ListRoomUsersResponseBody.Result.RoomUserList]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListRoomUsersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListRoomUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListRoomUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoomUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRoomUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRoomsRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListRoomsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RoomInfoList : Tea.TeaModel {
            public class PluginInstanceInfoList : Tea.TeaModel {
                public var createTime: Int64?

                public var extension_: [String: String]?

                public var pluginId: String?

                public var pluginType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.extension_ != nil {
                        map["Extension"] = self.extension_!
                    }
                    if self.pluginId != nil {
                        map["PluginId"] = self.pluginId!
                    }
                    if self.pluginType != nil {
                        map["PluginType"] = self.pluginType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! Int64
                    }
                    if dict.keys.contains("Extension") {
                        self.extension_ = dict["Extension"] as! [String: String]
                    }
                    if dict.keys.contains("PluginId") {
                        self.pluginId = dict["PluginId"] as! String
                    }
                    if dict.keys.contains("PluginType") {
                        self.pluginType = dict["PluginType"] as! String
                    }
                }
            }
            public var appId: String?

            public var createTime: String?

            public var extension_: [String: String]?

            public var notice: String?

            public var onlineCount: Int64?

            public var pluginInstanceInfoList: [ListRoomsResponseBody.Result.RoomInfoList.PluginInstanceInfoList]?

            public var roomId: String?

            public var roomOwnerId: String?

            public var templateId: String?

            public var title: String?

            public var uv: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.notice != nil {
                    map["Notice"] = self.notice!
                }
                if self.onlineCount != nil {
                    map["OnlineCount"] = self.onlineCount!
                }
                if self.pluginInstanceInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.pluginInstanceInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["PluginInstanceInfoList"] = tmp
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.roomOwnerId != nil {
                    map["RoomOwnerId"] = self.roomOwnerId!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.uv != nil {
                    map["Uv"] = self.uv!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("Notice") {
                    self.notice = dict["Notice"] as! String
                }
                if dict.keys.contains("OnlineCount") {
                    self.onlineCount = dict["OnlineCount"] as! Int64
                }
                if dict.keys.contains("PluginInstanceInfoList") {
                    self.pluginInstanceInfoList = dict["PluginInstanceInfoList"] as! [ListRoomsResponseBody.Result.RoomInfoList.PluginInstanceInfoList]
                }
                if dict.keys.contains("RoomId") {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("RoomOwnerId") {
                    self.roomOwnerId = dict["RoomOwnerId"] as! String
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Uv") {
                    self.uv = dict["Uv"] as! Int64
                }
            }
        }
        public var hasMore: Bool?

        public var pageTotal: Int32?

        public var roomInfoList: [ListRoomsResponseBody.Result.RoomInfoList]?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.roomInfoList != nil {
                var tmp : [Any] = []
                for k in self.roomInfoList! {
                    tmp.append(k.toMap())
                }
                map["RoomInfoList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") {
                self.hasMore = dict["HasMore"] as! Bool
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! Int32
            }
            if dict.keys.contains("RoomInfoList") {
                self.roomInfoList = dict["RoomInfoList"] as! [ListRoomsResponseBody.Result.RoomInfoList]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListRoomsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListRoomsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListRoomsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoomsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRoomsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSensitiveWordRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListSensitiveWordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var totalCount: Int32?

        public var wordList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.wordList != nil {
                map["WordList"] = self.wordList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("WordList") {
                self.wordList = dict["WordList"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var result: ListSensitiveWordResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListSensitiveWordResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListSensitiveWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSensitiveWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSensitiveWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishLiveRequest : Tea.TeaModel {
    public var liveId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class PublishLiveResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var anchorId: String?

        public var liveId: String?

        public var liveUrl: String?

        public var pushUrl: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anchorId != nil {
                map["AnchorId"] = self.anchorId!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.liveUrl != nil {
                map["LiveUrl"] = self.liveUrl!
            }
            if self.pushUrl != nil {
                map["PushUrl"] = self.pushUrl!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnchorId") {
                self.anchorId = dict["AnchorId"] as! String
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("LiveUrl") {
                self.liveUrl = dict["LiveUrl"] as! String
            }
            if dict.keys.contains("PushUrl") {
                self.pushUrl = dict["PushUrl"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: PublishLiveResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = PublishLiveResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class PublishLiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishLiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PublishLiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishLiveRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class PublishLiveRoomResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var liveId: String?

        public var liveUrl: String?

        public var pushUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.liveUrl != nil {
                map["LiveUrl"] = self.liveUrl!
            }
            if self.pushUrl != nil {
                map["PushUrl"] = self.pushUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("LiveUrl") {
                self.liveUrl = dict["LiveUrl"] as! String
            }
            if dict.keys.contains("PushUrl") {
                self.pushUrl = dict["PushUrl"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: PublishLiveRoomResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = PublishLiveRoomResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class PublishLiveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishLiveRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PublishLiveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveMemberRequest : Tea.TeaModel {
    public var conferenceId: String?

    public var fromUserId: String?

    public var toUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conferenceId != nil {
            map["ConferenceId"] = self.conferenceId!
        }
        if self.fromUserId != nil {
            map["FromUserId"] = self.fromUserId!
        }
        if self.toUserId != nil {
            map["ToUserId"] = self.toUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConferenceId") {
            self.conferenceId = dict["ConferenceId"] as! String
        }
        if dict.keys.contains("FromUserId") {
            self.fromUserId = dict["FromUserId"] as! String
        }
        if dict.keys.contains("ToUserId") {
            self.toUserId = dict["ToUserId"] as! String
        }
    }
}

public class RemoveMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCommentRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var extension_: [String: String]?

    public var roomId: String?

    public var senderId: String?

    public var senderNick: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.senderNick != nil {
            map["SenderNick"] = self.senderNick!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! [String: String]
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("SenderId") {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") {
            self.senderNick = dict["SenderNick"] as! String
        }
    }
}

public class SendCommentShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var extensionShrink: String?

    public var roomId: String?

    public var senderId: String?

    public var senderNick: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.extensionShrink != nil {
            map["Extension"] = self.extensionShrink!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.senderNick != nil {
            map["SenderNick"] = self.senderNick!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extensionShrink = dict["Extension"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("SenderId") {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") {
            self.senderNick = dict["SenderNick"] as! String
        }
    }
}

public class SendCommentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommentVO : Tea.TeaModel {
            public var commentId: String?

            public var content: String?

            public var createAt: Int64?

            public var extension_: [String: String]?

            public var senderId: String?

            public var senderNick: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commentId != nil {
                    map["CommentId"] = self.commentId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createAt != nil {
                    map["CreateAt"] = self.createAt!
                }
                if self.extension_ != nil {
                    map["Extension"] = self.extension_!
                }
                if self.senderId != nil {
                    map["SenderId"] = self.senderId!
                }
                if self.senderNick != nil {
                    map["SenderNick"] = self.senderNick!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommentId") {
                    self.commentId = dict["CommentId"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("CreateAt") {
                    self.createAt = dict["CreateAt"] as! Int64
                }
                if dict.keys.contains("Extension") {
                    self.extension_ = dict["Extension"] as! [String: String]
                }
                if dict.keys.contains("SenderId") {
                    self.senderId = dict["SenderId"] as! String
                }
                if dict.keys.contains("SenderNick") {
                    self.senderNick = dict["SenderNick"] as! String
                }
            }
        }
        public var commentVO: SendCommentResponseBody.Result.CommentVO?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commentVO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commentVO != nil {
                map["CommentVO"] = self.commentVO?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommentVO") {
                var model = SendCommentResponseBody.Result.CommentVO()
                model.fromMap(dict["CommentVO"] as! [String: Any])
                self.commentVO = model
            }
        }
    }
    public var requestId: String?

    public var result: SendCommentResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = SendCommentResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class SendCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCommentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCustomMessageToAllRequest : Tea.TeaModel {
    public var appId: String?

    public var body: String?

    public var roomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class SendCustomMessageToAllResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var messageId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: SendCustomMessageToAllResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = SendCustomMessageToAllResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class SendCustomMessageToAllResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCustomMessageToAllResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendCustomMessageToAllResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCustomMessageToUsersRequest : Tea.TeaModel {
    public var appId: String?

    public var body: String?

    public var receiverList: [String]?

    public var roomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.receiverList != nil {
            map["ReceiverList"] = self.receiverList!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("ReceiverList") {
            self.receiverList = dict["ReceiverList"] as! [String]
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class SendCustomMessageToUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var messageId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: SendCustomMessageToUsersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = SendCustomMessageToUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class SendCustomMessageToUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCustomMessageToUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendCustomMessageToUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetUserAdminRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class SetUserAdminResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetUserAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserAdminResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetUserAdminResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopClassRequest : Tea.TeaModel {
    public var appId: String?

    public var classId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClassId") {
            self.classId = dict["ClassId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class StopClassResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopLiveRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public var roomId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class StopLiveResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopLiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopLiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopLiveRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var liveId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class StopLiveRoomResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopLiveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLiveRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopLiveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClassRequest : Tea.TeaModel {
    public var appId: String?

    public var classId: String?

    public var createNickname: String?

    public var createUserId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.createNickname != nil {
            map["CreateNickname"] = self.createNickname!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClassId") {
            self.classId = dict["ClassId"] as! String
        }
        if dict.keys.contains("CreateNickname") {
            self.createNickname = dict["CreateNickname"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateClassResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLiveRequest : Tea.TeaModel {
    public var introduction: String?

    public var liveId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.introduction != nil {
            map["Introduction"] = self.introduction!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Introduction") {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateLiveResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLiveRoomRequest : Tea.TeaModel {
    public var anchorId: String?

    public var anchorNick: String?

    public var appId: String?

    public var coverUrl: String?

    public var extension_: [String: String]?

    public var liveId: String?

    public var notice: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.anchorNick != nil {
            map["AnchorNick"] = self.anchorNick!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnchorId") {
            self.anchorId = dict["AnchorId"] as! String
        }
        if dict.keys.contains("AnchorNick") {
            self.anchorNick = dict["AnchorNick"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CoverUrl") {
            self.coverUrl = dict["CoverUrl"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! [String: String]
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateLiveRoomShrinkRequest : Tea.TeaModel {
    public var anchorId: String?

    public var anchorNick: String?

    public var appId: String?

    public var coverUrl: String?

    public var extensionShrink: String?

    public var liveId: String?

    public var notice: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.anchorNick != nil {
            map["AnchorNick"] = self.anchorNick!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.coverUrl != nil {
            map["CoverUrl"] = self.coverUrl!
        }
        if self.extensionShrink != nil {
            map["Extension"] = self.extensionShrink!
        }
        if self.liveId != nil {
            map["LiveId"] = self.liveId!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnchorId") {
            self.anchorId = dict["AnchorId"] as! String
        }
        if dict.keys.contains("AnchorNick") {
            self.anchorNick = dict["AnchorNick"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CoverUrl") {
            self.coverUrl = dict["CoverUrl"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extensionShrink = dict["Extension"] as! String
        }
        if dict.keys.contains("LiveId") {
            self.liveId = dict["LiveId"] as! String
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateLiveRoomResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLiveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLiveRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLiveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var extension_: [String: String]?

    public var notice: String?

    public var roomId: String?

    public var roomOwnerId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.extension_ != nil {
            map["Extension"] = self.extension_!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.roomOwnerId != nil {
            map["RoomOwnerId"] = self.roomOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extension_ = dict["Extension"] as! [String: String]
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("RoomOwnerId") {
            self.roomOwnerId = dict["RoomOwnerId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateRoomShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var extensionShrink: String?

    public var notice: String?

    public var roomId: String?

    public var roomOwnerId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.extensionShrink != nil {
            map["Extension"] = self.extensionShrink!
        }
        if self.notice != nil {
            map["Notice"] = self.notice!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.roomOwnerId != nil {
            map["RoomOwnerId"] = self.roomOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Extension") {
            self.extensionShrink = dict["Extension"] as! String
        }
        if dict.keys.contains("Notice") {
            self.notice = dict["Notice"] as! String
        }
        if dict.keys.contains("RoomId") {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("RoomOwnerId") {
            self.roomOwnerId = dict["RoomOwnerId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateRoomResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoomResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateShareScreenLayoutRequest : Tea.TeaModel {
    public var appId: String?

    public var classId: String?

    public var enableOverlay: Bool?

    public var overlayHeight: Double?

    public var overlayWidth: Double?

    public var overlayX: Double?

    public var overlayY: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.enableOverlay != nil {
            map["EnableOverlay"] = self.enableOverlay!
        }
        if self.overlayHeight != nil {
            map["OverlayHeight"] = self.overlayHeight!
        }
        if self.overlayWidth != nil {
            map["OverlayWidth"] = self.overlayWidth!
        }
        if self.overlayX != nil {
            map["OverlayX"] = self.overlayX!
        }
        if self.overlayY != nil {
            map["OverlayY"] = self.overlayY!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClassId") {
            self.classId = dict["ClassId"] as! String
        }
        if dict.keys.contains("EnableOverlay") {
            self.enableOverlay = dict["EnableOverlay"] as! Bool
        }
        if dict.keys.contains("OverlayHeight") {
            self.overlayHeight = dict["OverlayHeight"] as! Double
        }
        if dict.keys.contains("OverlayWidth") {
            self.overlayWidth = dict["OverlayWidth"] as! Double
        }
        if dict.keys.contains("OverlayX") {
            self.overlayX = dict["OverlayX"] as! Double
        }
        if dict.keys.contains("OverlayY") {
            self.overlayY = dict["OverlayY"] as! Double
        }
    }
}

public class UpdateShareScreenLayoutResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateShareScreenLayoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateShareScreenLayoutResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateShareScreenLayoutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
