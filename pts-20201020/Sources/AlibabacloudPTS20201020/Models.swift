import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AdjustJMeterSceneSpeedRequest : Tea.TeaModel {
    public var reportId: String?

    public var speed: Int32?

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
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.speed != nil {
            map["Speed"] = self.speed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("Speed") {
            self.speed = dict["Speed"] as! Int32
        }
    }
}

public class AdjustJMeterSceneSpeedResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportId: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AdjustJMeterSceneSpeedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AdjustJMeterSceneSpeedResponseBody?

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
            var model = AdjustJMeterSceneSpeedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePtsSceneRequest : Tea.TeaModel {
    public var scene: String?

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
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class CreatePtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var sceneId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreatePtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePtsSceneResponseBody?

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
            var model = CreatePtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePtsSceneBaseLineFromReportRequest : Tea.TeaModel {
    public var reportId: String?

    public var sceneId: String?

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
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class CreatePtsSceneBaseLineFromReportResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreatePtsSceneBaseLineFromReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePtsSceneBaseLineFromReportResponseBody?

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
            var model = CreatePtsSceneBaseLineFromReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePtsSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class DeletePtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeletePtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePtsSceneResponseBody?

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
            var model = DeletePtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePtsSceneBaseLineRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class DeletePtsSceneBaseLineResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeletePtsSceneBaseLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePtsSceneBaseLineResponseBody?

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
            var model = DeletePtsSceneBaseLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePtsScenesRequest : Tea.TeaModel {
    public var sceneIds: [String]?

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
        if self.sceneIds != nil {
            map["SceneIds"] = self.sceneIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneIds") {
            self.sceneIds = dict["SceneIds"] as! [String]
        }
    }
}

public class DeletePtsScenesShrinkRequest : Tea.TeaModel {
    public var sceneIdsShrink: String?

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
        if self.sceneIdsShrink != nil {
            map["SceneIds"] = self.sceneIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneIds") {
            self.sceneIdsShrink = dict["SceneIds"] as! String
        }
    }
}

public class DeletePtsScenesResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeletePtsScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePtsScenesResponseBody?

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
            var model = DeletePtsScenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllRegionsResponseBody : Tea.TeaModel {
    public var allRegions: [String: String]?

    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.allRegions != nil {
            map["AllRegions"] = self.allRegions!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllRegions") {
            self.allRegions = dict["AllRegions"] as! [String: String]
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetAllRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllRegionsResponseBody?

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
            var model = GetAllRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJMeterLogsRequest : Tea.TeaModel {
    public var agentIndex: Int32?

    public var beginTime: Int64?

    public var endTime: Int64?

    public var keyword: String?

    public var level: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reportId: String?

    public var thread: String?

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
        if self.agentIndex != nil {
            map["AgentIndex"] = self.agentIndex!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.thread != nil {
            map["Thread"] = self.thread!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentIndex") {
            self.agentIndex = dict["AgentIndex"] as! Int32
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("Thread") {
            self.thread = dict["Thread"] as! String
        }
    }
}

public class GetJMeterLogsResponseBody : Tea.TeaModel {
    public var agentCount: Int32?

    public var code: String?

    public var logs: [[String: Any]]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.agentCount != nil {
            map["AgentCount"] = self.agentCount!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentCount") {
            self.agentCount = dict["AgentCount"] as! Int32
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Logs") {
            self.logs = dict["Logs"] as! [[String: Any]]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetJMeterLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJMeterLogsResponseBody?

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
            var model = GetJMeterLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJMeterSampleMetricsRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var reportId: String?

    public var samplerId: Int32?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.samplerId != nil {
            map["SamplerId"] = self.samplerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("SamplerId") {
            self.samplerId = dict["SamplerId"] as! Int32
        }
    }
}

public class GetJMeterSampleMetricsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var sampleMetricList: [String]?

    public var samplerMap: [String: Any]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sampleMetricList != nil {
            map["SampleMetricList"] = self.sampleMetricList!
        }
        if self.samplerMap != nil {
            map["SamplerMap"] = self.samplerMap!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SampleMetricList") {
            self.sampleMetricList = dict["SampleMetricList"] as! [String]
        }
        if dict.keys.contains("SamplerMap") {
            self.samplerMap = dict["SamplerMap"] as! [String: Any]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetJMeterSampleMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJMeterSampleMetricsResponseBody?

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
            var model = GetJMeterSampleMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJMeterSamplingLogsRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var beginTime: Int64?

    public var endTime: Int64?

    public var keyword: String?

    public var maxRT: Int32?

    public var minRT: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reportId: String?

    public var responseCode: String?

    public var samplerId: Int32?

    public var success: Bool?

    public var thread: String?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.maxRT != nil {
            map["MaxRT"] = self.maxRT!
        }
        if self.minRT != nil {
            map["MinRT"] = self.minRT!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.samplerId != nil {
            map["SamplerId"] = self.samplerId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.thread != nil {
            map["Thread"] = self.thread!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("MaxRT") {
            self.maxRT = dict["MaxRT"] as! Int32
        }
        if dict.keys.contains("MinRT") {
            self.minRT = dict["MinRT"] as! Int32
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("SamplerId") {
            self.samplerId = dict["SamplerId"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Thread") {
            self.thread = dict["Thread"] as! String
        }
    }
}

public class GetJMeterSamplingLogsResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var sampleResults: [String]?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sampleResults != nil {
            map["SampleResults"] = self.sampleResults!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SampleResults") {
            self.sampleResults = dict["SampleResults"] as! [String]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetJMeterSamplingLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJMeterSamplingLogsResponseBody?

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
            var model = GetJMeterSamplingLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJMeterSceneRunningDataRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetJMeterSceneRunningDataResponseBody : Tea.TeaModel {
    public class RunningData : Tea.TeaModel {
        public var agentCount: Int32?

        public var agentIdList: [String]?

        public var allSampleStat: [String: Any]?

        public var concurrency: Int32?

        public var hasReport: Bool?

        public var holdFor: Int32?

        public var isDebugging: Bool?

        public var sampleStatList: [[String: Any]]?

        public var sceneId: String?

        public var sceneName: String?

        public var stageName: String?

        public var startTimeTS: Int64?

        public var status: String?

        public var vum: Int64?

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
            if self.agentCount != nil {
                map["AgentCount"] = self.agentCount!
            }
            if self.agentIdList != nil {
                map["AgentIdList"] = self.agentIdList!
            }
            if self.allSampleStat != nil {
                map["AllSampleStat"] = self.allSampleStat!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.hasReport != nil {
                map["HasReport"] = self.hasReport!
            }
            if self.holdFor != nil {
                map["HoldFor"] = self.holdFor!
            }
            if self.isDebugging != nil {
                map["IsDebugging"] = self.isDebugging!
            }
            if self.sampleStatList != nil {
                map["SampleStatList"] = self.sampleStatList!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.stageName != nil {
                map["StageName"] = self.stageName!
            }
            if self.startTimeTS != nil {
                map["StartTimeTS"] = self.startTimeTS!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vum != nil {
                map["Vum"] = self.vum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentCount") {
                self.agentCount = dict["AgentCount"] as! Int32
            }
            if dict.keys.contains("AgentIdList") {
                self.agentIdList = dict["AgentIdList"] as! [String]
            }
            if dict.keys.contains("AllSampleStat") {
                self.allSampleStat = dict["AllSampleStat"] as! [String: Any]
            }
            if dict.keys.contains("Concurrency") {
                self.concurrency = dict["Concurrency"] as! Int32
            }
            if dict.keys.contains("HasReport") {
                self.hasReport = dict["HasReport"] as! Bool
            }
            if dict.keys.contains("HoldFor") {
                self.holdFor = dict["HoldFor"] as! Int32
            }
            if dict.keys.contains("IsDebugging") {
                self.isDebugging = dict["IsDebugging"] as! Bool
            }
            if dict.keys.contains("SampleStatList") {
                self.sampleStatList = dict["SampleStatList"] as! [[String: Any]]
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("StageName") {
                self.stageName = dict["StageName"] as! String
            }
            if dict.keys.contains("StartTimeTS") {
                self.startTimeTS = dict["StartTimeTS"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Vum") {
                self.vum = dict["Vum"] as! Int64
            }
        }
    }
    public var code: String?

    public var documentUrl: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var runningData: GetJMeterSceneRunningDataResponseBody.RunningData?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runningData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.documentUrl != nil {
            map["DocumentUrl"] = self.documentUrl!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runningData != nil {
            map["RunningData"] = self.runningData?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DocumentUrl") {
            self.documentUrl = dict["DocumentUrl"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunningData") {
            var model = GetJMeterSceneRunningDataResponseBody.RunningData()
            model.fromMap(dict["RunningData"] as! [String: Any])
            self.runningData = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetJMeterSceneRunningDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJMeterSceneRunningDataResponseBody?

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
            var model = GetJMeterSceneRunningDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOpenJMeterSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetOpenJMeterSceneResponseBody : Tea.TeaModel {
    public class Scene : Tea.TeaModel {
        public class BaseInfo : Tea.TeaModel {
            public var createName: String?

            public var modifyName: String?

            public var operateType: String?

            public var principal: String?

            public var remark: String?

            public var resource: String?

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
                if self.createName != nil {
                    map["CreateName"] = self.createName!
                }
                if self.modifyName != nil {
                    map["ModifyName"] = self.modifyName!
                }
                if self.operateType != nil {
                    map["OperateType"] = self.operateType!
                }
                if self.principal != nil {
                    map["Principal"] = self.principal!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resource != nil {
                    map["Resource"] = self.resource!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateName") {
                    self.createName = dict["CreateName"] as! String
                }
                if dict.keys.contains("ModifyName") {
                    self.modifyName = dict["ModifyName"] as! String
                }
                if dict.keys.contains("OperateType") {
                    self.operateType = dict["OperateType"] as! String
                }
                if dict.keys.contains("Principal") {
                    self.principal = dict["Principal"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Resource") {
                    self.resource = dict["Resource"] as! String
                }
            }
        }
        public class DnsCacheConfig : Tea.TeaModel {
            public var clearCacheEachIteration: Bool?

            public var dnsServers: [String]?

            public var hostTable: [String: Any]?

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
                if self.clearCacheEachIteration != nil {
                    map["ClearCacheEachIteration"] = self.clearCacheEachIteration!
                }
                if self.dnsServers != nil {
                    map["DnsServers"] = self.dnsServers!
                }
                if self.hostTable != nil {
                    map["HostTable"] = self.hostTable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClearCacheEachIteration") {
                    self.clearCacheEachIteration = dict["ClearCacheEachIteration"] as! Bool
                }
                if dict.keys.contains("DnsServers") {
                    self.dnsServers = dict["DnsServers"] as! [String]
                }
                if dict.keys.contains("HostTable") {
                    self.hostTable = dict["HostTable"] as! [String: Any]
                }
            }
        }
        public class FileList : Tea.TeaModel {
            public var fileName: String?

            public var fileOssAddress: String?

            public var fileSize: Int64?

            public var fileType: String?

            public var id: Int64?

            public var md5: String?

            public var splitCsv: Bool?

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
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.splitCsv != nil {
                    map["SplitCsv"] = self.splitCsv!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
                if dict.keys.contains("FileSize") {
                    self.fileSize = dict["FileSize"] as! Int64
                }
                if dict.keys.contains("FileType") {
                    self.fileType = dict["FileType"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("SplitCsv") {
                    self.splitCsv = dict["SplitCsv"] as! Bool
                }
            }
        }
        public var agentCount: Int32?

        public var baseInfo: GetOpenJMeterSceneResponseBody.Scene.BaseInfo?

        public var concurrency: Int32?

        public var constantThroughputTimerType: String?

        public var dnsCacheConfig: GetOpenJMeterSceneResponseBody.Scene.DnsCacheConfig?

        public var duration: Int32?

        public var environmentId: String?

        public var fileList: [GetOpenJMeterSceneResponseBody.Scene.FileList]?

        public var isVpcTest: Bool?

        public var maxRps: Int32?

        public var mode: String?

        public var pool: String?

        public var rampUp: Int32?

        public var regionId: String?

        public var sceneId: String?

        public var sceneName: String?

        public var securityGroupId: String?

        public var startConcurrency: Int32?

        public var startRps: Int32?

        public var steps: Int32?

        public var syncTimerType: String?

        public var testFile: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.baseInfo?.validate()
            try self.dnsCacheConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentCount != nil {
                map["AgentCount"] = self.agentCount!
            }
            if self.baseInfo != nil {
                map["BaseInfo"] = self.baseInfo?.toMap()
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.constantThroughputTimerType != nil {
                map["ConstantThroughputTimerType"] = self.constantThroughputTimerType!
            }
            if self.dnsCacheConfig != nil {
                map["DnsCacheConfig"] = self.dnsCacheConfig?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.environmentId != nil {
                map["EnvironmentId"] = self.environmentId!
            }
            if self.fileList != nil {
                var tmp : [Any] = []
                for k in self.fileList! {
                    tmp.append(k.toMap())
                }
                map["FileList"] = tmp
            }
            if self.isVpcTest != nil {
                map["IsVpcTest"] = self.isVpcTest!
            }
            if self.maxRps != nil {
                map["MaxRps"] = self.maxRps!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.pool != nil {
                map["Pool"] = self.pool!
            }
            if self.rampUp != nil {
                map["RampUp"] = self.rampUp!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.startConcurrency != nil {
                map["StartConcurrency"] = self.startConcurrency!
            }
            if self.startRps != nil {
                map["StartRps"] = self.startRps!
            }
            if self.steps != nil {
                map["Steps"] = self.steps!
            }
            if self.syncTimerType != nil {
                map["SyncTimerType"] = self.syncTimerType!
            }
            if self.testFile != nil {
                map["TestFile"] = self.testFile!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentCount") {
                self.agentCount = dict["AgentCount"] as! Int32
            }
            if dict.keys.contains("BaseInfo") {
                var model = GetOpenJMeterSceneResponseBody.Scene.BaseInfo()
                model.fromMap(dict["BaseInfo"] as! [String: Any])
                self.baseInfo = model
            }
            if dict.keys.contains("Concurrency") {
                self.concurrency = dict["Concurrency"] as! Int32
            }
            if dict.keys.contains("ConstantThroughputTimerType") {
                self.constantThroughputTimerType = dict["ConstantThroughputTimerType"] as! String
            }
            if dict.keys.contains("DnsCacheConfig") {
                var model = GetOpenJMeterSceneResponseBody.Scene.DnsCacheConfig()
                model.fromMap(dict["DnsCacheConfig"] as! [String: Any])
                self.dnsCacheConfig = model
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("EnvironmentId") {
                self.environmentId = dict["EnvironmentId"] as! String
            }
            if dict.keys.contains("FileList") {
                self.fileList = dict["FileList"] as! [GetOpenJMeterSceneResponseBody.Scene.FileList]
            }
            if dict.keys.contains("IsVpcTest") {
                self.isVpcTest = dict["IsVpcTest"] as! Bool
            }
            if dict.keys.contains("MaxRps") {
                self.maxRps = dict["MaxRps"] as! Int32
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Pool") {
                self.pool = dict["Pool"] as! String
            }
            if dict.keys.contains("RampUp") {
                self.rampUp = dict["RampUp"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("StartConcurrency") {
                self.startConcurrency = dict["StartConcurrency"] as! Int32
            }
            if dict.keys.contains("StartRps") {
                self.startRps = dict["StartRps"] as! Int32
            }
            if dict.keys.contains("Steps") {
                self.steps = dict["Steps"] as! Int32
            }
            if dict.keys.contains("SyncTimerType") {
                self.syncTimerType = dict["SyncTimerType"] as! String
            }
            if dict.keys.contains("TestFile") {
                self.testFile = dict["TestFile"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var scene: GetOpenJMeterSceneResponseBody.Scene?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scene?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scene != nil {
            map["Scene"] = self.scene?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scene") {
            var model = GetOpenJMeterSceneResponseBody.Scene()
            model.fromMap(dict["Scene"] as! [String: Any])
            self.scene = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOpenJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOpenJMeterSceneResponseBody?

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
            var model = GetOpenJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPtsReportDetailsRequest : Tea.TeaModel {
    public var planId: String?

    public var sceneId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetPtsReportDetailsResponseBody : Tea.TeaModel {
    public class ApiMetricsList : Tea.TeaModel {
        public var allCount: Int64?

        public var apiName: String?

        public var avgRt: Double?

        public var avgTps: Double?

        public var failCountBiz: Int64?

        public var failCountReq: Int64?

        public var maxRt: Double?

        public var minRt: Double?

        public var seg50Rt: Double?

        public var seg75Rt: Double?

        public var seg90Rt: Double?

        public var seg99Rt: Double?

        public var successRateBiz: Double?

        public var successRateReq: Double?

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
            if self.allCount != nil {
                map["AllCount"] = self.allCount!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.avgRt != nil {
                map["AvgRt"] = self.avgRt!
            }
            if self.avgTps != nil {
                map["AvgTps"] = self.avgTps!
            }
            if self.failCountBiz != nil {
                map["FailCountBiz"] = self.failCountBiz!
            }
            if self.failCountReq != nil {
                map["FailCountReq"] = self.failCountReq!
            }
            if self.maxRt != nil {
                map["MaxRt"] = self.maxRt!
            }
            if self.minRt != nil {
                map["MinRt"] = self.minRt!
            }
            if self.seg50Rt != nil {
                map["Seg50Rt"] = self.seg50Rt!
            }
            if self.seg75Rt != nil {
                map["Seg75Rt"] = self.seg75Rt!
            }
            if self.seg90Rt != nil {
                map["Seg90Rt"] = self.seg90Rt!
            }
            if self.seg99Rt != nil {
                map["Seg99Rt"] = self.seg99Rt!
            }
            if self.successRateBiz != nil {
                map["SuccessRateBiz"] = self.successRateBiz!
            }
            if self.successRateReq != nil {
                map["SuccessRateReq"] = self.successRateReq!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllCount") {
                self.allCount = dict["AllCount"] as! Int64
            }
            if dict.keys.contains("ApiName") {
                self.apiName = dict["ApiName"] as! String
            }
            if dict.keys.contains("AvgRt") {
                self.avgRt = dict["AvgRt"] as! Double
            }
            if dict.keys.contains("AvgTps") {
                self.avgTps = dict["AvgTps"] as! Double
            }
            if dict.keys.contains("FailCountBiz") {
                self.failCountBiz = dict["FailCountBiz"] as! Int64
            }
            if dict.keys.contains("FailCountReq") {
                self.failCountReq = dict["FailCountReq"] as! Int64
            }
            if dict.keys.contains("MaxRt") {
                self.maxRt = dict["MaxRt"] as! Double
            }
            if dict.keys.contains("MinRt") {
                self.minRt = dict["MinRt"] as! Double
            }
            if dict.keys.contains("Seg50Rt") {
                self.seg50Rt = dict["Seg50Rt"] as! Double
            }
            if dict.keys.contains("Seg75Rt") {
                self.seg75Rt = dict["Seg75Rt"] as! Double
            }
            if dict.keys.contains("Seg90Rt") {
                self.seg90Rt = dict["Seg90Rt"] as! Double
            }
            if dict.keys.contains("Seg99Rt") {
                self.seg99Rt = dict["Seg99Rt"] as! Double
            }
            if dict.keys.contains("SuccessRateBiz") {
                self.successRateBiz = dict["SuccessRateBiz"] as! Double
            }
            if dict.keys.contains("SuccessRateReq") {
                self.successRateReq = dict["SuccessRateReq"] as! Double
            }
        }
    }
    public class ReportOverView : Tea.TeaModel {
        public var agentCount: Int32?

        public var endTime: String?

        public var reportId: String?

        public var reportName: String?

        public var startTime: String?

        public var vum: Int64?

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
            if self.agentCount != nil {
                map["AgentCount"] = self.agentCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportName != nil {
                map["ReportName"] = self.reportName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.vum != nil {
                map["Vum"] = self.vum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentCount") {
                self.agentCount = dict["AgentCount"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Vum") {
                self.vum = dict["Vum"] as! Int64
            }
        }
    }
    public class SceneMetrics : Tea.TeaModel {
        public var allCount: Int64?

        public var avgRt: Double?

        public var avgTps: Double?

        public var failCountBiz: Int64?

        public var failCountReq: Int64?

        public var seg90Rt: Double?

        public var seg99Rt: Double?

        public var successRateBiz: Double?

        public var successRateReq: Double?

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
            if self.allCount != nil {
                map["AllCount"] = self.allCount!
            }
            if self.avgRt != nil {
                map["AvgRt"] = self.avgRt!
            }
            if self.avgTps != nil {
                map["AvgTps"] = self.avgTps!
            }
            if self.failCountBiz != nil {
                map["FailCountBiz"] = self.failCountBiz!
            }
            if self.failCountReq != nil {
                map["FailCountReq"] = self.failCountReq!
            }
            if self.seg90Rt != nil {
                map["Seg90Rt"] = self.seg90Rt!
            }
            if self.seg99Rt != nil {
                map["Seg99Rt"] = self.seg99Rt!
            }
            if self.successRateBiz != nil {
                map["SuccessRateBiz"] = self.successRateBiz!
            }
            if self.successRateReq != nil {
                map["SuccessRateReq"] = self.successRateReq!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllCount") {
                self.allCount = dict["AllCount"] as! Int64
            }
            if dict.keys.contains("AvgRt") {
                self.avgRt = dict["AvgRt"] as! Double
            }
            if dict.keys.contains("AvgTps") {
                self.avgTps = dict["AvgTps"] as! Double
            }
            if dict.keys.contains("FailCountBiz") {
                self.failCountBiz = dict["FailCountBiz"] as! Int64
            }
            if dict.keys.contains("FailCountReq") {
                self.failCountReq = dict["FailCountReq"] as! Int64
            }
            if dict.keys.contains("Seg90Rt") {
                self.seg90Rt = dict["Seg90Rt"] as! Double
            }
            if dict.keys.contains("Seg99Rt") {
                self.seg99Rt = dict["Seg99Rt"] as! Double
            }
            if dict.keys.contains("SuccessRateBiz") {
                self.successRateBiz = dict["SuccessRateBiz"] as! Double
            }
            if dict.keys.contains("SuccessRateReq") {
                self.successRateReq = dict["SuccessRateReq"] as! Double
            }
        }
    }
    public class SceneSnapShot : Tea.TeaModel {
        public class AdvanceSetting : Tea.TeaModel {
            public class DomainBindingList : Tea.TeaModel {
                public var domain: String?

                public var ips: [String]?

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
                    if self.domain != nil {
                        map["Domain"] = self.domain!
                    }
                    if self.ips != nil {
                        map["Ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Domain") {
                        self.domain = dict["Domain"] as! String
                    }
                    if dict.keys.contains("Ips") {
                        self.ips = dict["Ips"] as! [String]
                    }
                }
            }
            public var connectionTimeoutInSecond: Int32?

            public var domainBindingList: [GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting.DomainBindingList]?

            public var logRate: Int32?

            public var successCode: String?

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
                if self.connectionTimeoutInSecond != nil {
                    map["ConnectionTimeoutInSecond"] = self.connectionTimeoutInSecond!
                }
                if self.domainBindingList != nil {
                    var tmp : [Any] = []
                    for k in self.domainBindingList! {
                        tmp.append(k.toMap())
                    }
                    map["DomainBindingList"] = tmp
                }
                if self.logRate != nil {
                    map["LogRate"] = self.logRate!
                }
                if self.successCode != nil {
                    map["SuccessCode"] = self.successCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionTimeoutInSecond") {
                    self.connectionTimeoutInSecond = dict["ConnectionTimeoutInSecond"] as! Int32
                }
                if dict.keys.contains("DomainBindingList") {
                    self.domainBindingList = dict["DomainBindingList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting.DomainBindingList]
                }
                if dict.keys.contains("LogRate") {
                    self.logRate = dict["LogRate"] as! Int32
                }
                if dict.keys.contains("SuccessCode") {
                    self.successCode = dict["SuccessCode"] as! String
                }
            }
        }
        public class FileParameterList : Tea.TeaModel {
            public var fileName: String?

            public var fileOssAddress: String?

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
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
            }
        }
        public class GlobalParameterList : Tea.TeaModel {
            public var paramName: String?

            public var paramValue: String?

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
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramValue != nil {
                    map["ParamValue"] = self.paramValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParamName") {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamValue") {
                    self.paramValue = dict["ParamValue"] as! String
                }
            }
        }
        public class LoadConfig : Tea.TeaModel {
            public class ApiLoadConfigList : Tea.TeaModel {
                public var rpsBegin: Int32?

                public var rpsLimit: Int32?

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
                    if self.rpsBegin != nil {
                        map["RpsBegin"] = self.rpsBegin!
                    }
                    if self.rpsLimit != nil {
                        map["RpsLimit"] = self.rpsLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RpsBegin") {
                        self.rpsBegin = dict["RpsBegin"] as! Int32
                    }
                    if dict.keys.contains("RpsLimit") {
                        self.rpsLimit = dict["RpsLimit"] as! Int32
                    }
                }
            }
            public class Configuration : Tea.TeaModel {
                public var allConcurrencyBegin: Int32?

                public var allConcurrencyLimit: Int32?

                public var allRpsBegin: Int32?

                public var allRpsLimit: Int32?

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
                    if self.allConcurrencyBegin != nil {
                        map["AllConcurrencyBegin"] = self.allConcurrencyBegin!
                    }
                    if self.allConcurrencyLimit != nil {
                        map["AllConcurrencyLimit"] = self.allConcurrencyLimit!
                    }
                    if self.allRpsBegin != nil {
                        map["AllRpsBegin"] = self.allRpsBegin!
                    }
                    if self.allRpsLimit != nil {
                        map["AllRpsLimit"] = self.allRpsLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllConcurrencyBegin") {
                        self.allConcurrencyBegin = dict["AllConcurrencyBegin"] as! Int32
                    }
                    if dict.keys.contains("AllConcurrencyLimit") {
                        self.allConcurrencyLimit = dict["AllConcurrencyLimit"] as! Int32
                    }
                    if dict.keys.contains("AllRpsBegin") {
                        self.allRpsBegin = dict["AllRpsBegin"] as! Int32
                    }
                    if dict.keys.contains("AllRpsLimit") {
                        self.allRpsLimit = dict["AllRpsLimit"] as! Int32
                    }
                }
            }
            public class RelationLoadConfigList : Tea.TeaModel {
                public var concurrencyBegin: Int32?

                public var concurrencyLimit: Int32?

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
                    if self.concurrencyBegin != nil {
                        map["ConcurrencyBegin"] = self.concurrencyBegin!
                    }
                    if self.concurrencyLimit != nil {
                        map["ConcurrencyLimit"] = self.concurrencyLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConcurrencyBegin") {
                        self.concurrencyBegin = dict["ConcurrencyBegin"] as! Int32
                    }
                    if dict.keys.contains("ConcurrencyLimit") {
                        self.concurrencyLimit = dict["ConcurrencyLimit"] as! Int32
                    }
                }
            }
            public var agentCount: Int32?

            public var apiLoadConfigList: [GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.ApiLoadConfigList]?

            public var configuration: GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.Configuration?

            public var maxRunningTime: Int32?

            public var relationLoadConfigList: [GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.RelationLoadConfigList]?

            public var testMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.configuration?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentCount != nil {
                    map["AgentCount"] = self.agentCount!
                }
                if self.apiLoadConfigList != nil {
                    var tmp : [Any] = []
                    for k in self.apiLoadConfigList! {
                        tmp.append(k.toMap())
                    }
                    map["ApiLoadConfigList"] = tmp
                }
                if self.configuration != nil {
                    map["Configuration"] = self.configuration?.toMap()
                }
                if self.maxRunningTime != nil {
                    map["MaxRunningTime"] = self.maxRunningTime!
                }
                if self.relationLoadConfigList != nil {
                    var tmp : [Any] = []
                    for k in self.relationLoadConfigList! {
                        tmp.append(k.toMap())
                    }
                    map["RelationLoadConfigList"] = tmp
                }
                if self.testMode != nil {
                    map["TestMode"] = self.testMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentCount") {
                    self.agentCount = dict["AgentCount"] as! Int32
                }
                if dict.keys.contains("ApiLoadConfigList") {
                    self.apiLoadConfigList = dict["ApiLoadConfigList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.ApiLoadConfigList]
                }
                if dict.keys.contains("Configuration") {
                    var model = GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.Configuration()
                    model.fromMap(dict["Configuration"] as! [String: Any])
                    self.configuration = model
                }
                if dict.keys.contains("MaxRunningTime") {
                    self.maxRunningTime = dict["MaxRunningTime"] as! Int32
                }
                if dict.keys.contains("RelationLoadConfigList") {
                    self.relationLoadConfigList = dict["RelationLoadConfigList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.RelationLoadConfigList]
                }
                if dict.keys.contains("TestMode") {
                    self.testMode = dict["TestMode"] as! String
                }
            }
        }
        public class RelationList : Tea.TeaModel {
            public class ApiList : Tea.TeaModel {
                public class Body : Tea.TeaModel {
                    public var bodyValue: String?

                    public var contentType: String?

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
                        if self.bodyValue != nil {
                            map["BodyValue"] = self.bodyValue!
                        }
                        if self.contentType != nil {
                            map["ContentType"] = self.contentType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BodyValue") {
                            self.bodyValue = dict["BodyValue"] as! String
                        }
                        if dict.keys.contains("ContentType") {
                            self.contentType = dict["ContentType"] as! String
                        }
                    }
                }
                public class CheckPointList : Tea.TeaModel {
                    public var checkPoint: String?

                    public var checkType: String?

                    public var expectValue: String?

                    public var operator_: String?

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
                        if self.checkPoint != nil {
                            map["CheckPoint"] = self.checkPoint!
                        }
                        if self.checkType != nil {
                            map["CheckType"] = self.checkType!
                        }
                        if self.expectValue != nil {
                            map["ExpectValue"] = self.expectValue!
                        }
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CheckPoint") {
                            self.checkPoint = dict["CheckPoint"] as! String
                        }
                        if dict.keys.contains("CheckType") {
                            self.checkType = dict["CheckType"] as! String
                        }
                        if dict.keys.contains("ExpectValue") {
                            self.expectValue = dict["ExpectValue"] as! String
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                    }
                }
                public class ExportList : Tea.TeaModel {
                    public var count: String?

                    public var exportName: String?

                    public var exportType: String?

                    public var exportValue: String?

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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.exportName != nil {
                            map["ExportName"] = self.exportName!
                        }
                        if self.exportType != nil {
                            map["ExportType"] = self.exportType!
                        }
                        if self.exportValue != nil {
                            map["ExportValue"] = self.exportValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Count") {
                            self.count = dict["Count"] as! String
                        }
                        if dict.keys.contains("ExportName") {
                            self.exportName = dict["ExportName"] as! String
                        }
                        if dict.keys.contains("ExportType") {
                            self.exportType = dict["ExportType"] as! String
                        }
                        if dict.keys.contains("ExportValue") {
                            self.exportValue = dict["ExportValue"] as! String
                        }
                    }
                }
                public class HeaderList : Tea.TeaModel {
                    public var headerName: String?

                    public var headerValue: String?

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
                        if self.headerName != nil {
                            map["HeaderName"] = self.headerName!
                        }
                        if self.headerValue != nil {
                            map["HeaderValue"] = self.headerValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HeaderName") {
                            self.headerName = dict["HeaderName"] as! String
                        }
                        if dict.keys.contains("HeaderValue") {
                            self.headerValue = dict["HeaderValue"] as! String
                        }
                    }
                }
                public var apiId: String?

                public var apiName: String?

                public var body: GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.Body?

                public var checkPointList: [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.CheckPointList]?

                public var exportList: [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.ExportList]?

                public var headerList: [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.HeaderList]?

                public var method: String?

                public var redirectCountLimit: Int32?

                public var timeoutInSecond: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.body?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiId != nil {
                        map["ApiId"] = self.apiId!
                    }
                    if self.apiName != nil {
                        map["ApiName"] = self.apiName!
                    }
                    if self.body != nil {
                        map["Body"] = self.body?.toMap()
                    }
                    if self.checkPointList != nil {
                        var tmp : [Any] = []
                        for k in self.checkPointList! {
                            tmp.append(k.toMap())
                        }
                        map["CheckPointList"] = tmp
                    }
                    if self.exportList != nil {
                        var tmp : [Any] = []
                        for k in self.exportList! {
                            tmp.append(k.toMap())
                        }
                        map["ExportList"] = tmp
                    }
                    if self.headerList != nil {
                        var tmp : [Any] = []
                        for k in self.headerList! {
                            tmp.append(k.toMap())
                        }
                        map["HeaderList"] = tmp
                    }
                    if self.method != nil {
                        map["Method"] = self.method!
                    }
                    if self.redirectCountLimit != nil {
                        map["RedirectCountLimit"] = self.redirectCountLimit!
                    }
                    if self.timeoutInSecond != nil {
                        map["TimeoutInSecond"] = self.timeoutInSecond!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiId") {
                        self.apiId = dict["ApiId"] as! String
                    }
                    if dict.keys.contains("ApiName") {
                        self.apiName = dict["ApiName"] as! String
                    }
                    if dict.keys.contains("Body") {
                        var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.Body()
                        model.fromMap(dict["Body"] as! [String: Any])
                        self.body = model
                    }
                    if dict.keys.contains("CheckPointList") {
                        self.checkPointList = dict["CheckPointList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.CheckPointList]
                    }
                    if dict.keys.contains("ExportList") {
                        self.exportList = dict["ExportList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.ExportList]
                    }
                    if dict.keys.contains("HeaderList") {
                        self.headerList = dict["HeaderList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.HeaderList]
                    }
                    if dict.keys.contains("Method") {
                        self.method = dict["Method"] as! String
                    }
                    if dict.keys.contains("RedirectCountLimit") {
                        self.redirectCountLimit = dict["RedirectCountLimit"] as! Int32
                    }
                    if dict.keys.contains("TimeoutInSecond") {
                        self.timeoutInSecond = dict["TimeoutInSecond"] as! Int32
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class FileParameterExplainList : Tea.TeaModel {
                public var baseFile: Bool?

                public var cycleOnce: Bool?

                public var fileName: String?

                public var fileParamName: String?

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
                    if self.baseFile != nil {
                        map["BaseFile"] = self.baseFile!
                    }
                    if self.cycleOnce != nil {
                        map["CycleOnce"] = self.cycleOnce!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileParamName != nil {
                        map["FileParamName"] = self.fileParamName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BaseFile") {
                        self.baseFile = dict["BaseFile"] as! Bool
                    }
                    if dict.keys.contains("CycleOnce") {
                        self.cycleOnce = dict["CycleOnce"] as! Bool
                    }
                    if dict.keys.contains("FileName") {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("FileParamName") {
                        self.fileParamName = dict["FileParamName"] as! String
                    }
                }
            }
            public var apiList: [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList]?

            public var fileParameterExplainList: [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.FileParameterExplainList]?

            public var relationId: String?

            public var relationName: String?

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
                if self.apiList != nil {
                    var tmp : [Any] = []
                    for k in self.apiList! {
                        tmp.append(k.toMap())
                    }
                    map["ApiList"] = tmp
                }
                if self.fileParameterExplainList != nil {
                    var tmp : [Any] = []
                    for k in self.fileParameterExplainList! {
                        tmp.append(k.toMap())
                    }
                    map["FileParameterExplainList"] = tmp
                }
                if self.relationId != nil {
                    map["RelationId"] = self.relationId!
                }
                if self.relationName != nil {
                    map["RelationName"] = self.relationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiList") {
                    self.apiList = dict["ApiList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList]
                }
                if dict.keys.contains("FileParameterExplainList") {
                    self.fileParameterExplainList = dict["FileParameterExplainList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.FileParameterExplainList]
                }
                if dict.keys.contains("RelationId") {
                    self.relationId = dict["RelationId"] as! String
                }
                if dict.keys.contains("RelationName") {
                    self.relationName = dict["RelationName"] as! String
                }
            }
        }
        public var advanceSetting: GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting?

        public var createTime: String?

        public var fileParameterList: [GetPtsReportDetailsResponseBody.SceneSnapShot.FileParameterList]?

        public var globalParameterList: [GetPtsReportDetailsResponseBody.SceneSnapShot.GlobalParameterList]?

        public var loadConfig: GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig?

        public var modifiedTime: String?

        public var relationList: [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList]?

        public var sceneId: String?

        public var sceneName: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advanceSetting?.validate()
            try self.loadConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceSetting != nil {
                map["AdvanceSetting"] = self.advanceSetting?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileParameterList != nil {
                var tmp : [Any] = []
                for k in self.fileParameterList! {
                    tmp.append(k.toMap())
                }
                map["FileParameterList"] = tmp
            }
            if self.globalParameterList != nil {
                var tmp : [Any] = []
                for k in self.globalParameterList! {
                    tmp.append(k.toMap())
                }
                map["GlobalParameterList"] = tmp
            }
            if self.loadConfig != nil {
                map["LoadConfig"] = self.loadConfig?.toMap()
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.relationList != nil {
                var tmp : [Any] = []
                for k in self.relationList! {
                    tmp.append(k.toMap())
                }
                map["RelationList"] = tmp
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvanceSetting") {
                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting()
                model.fromMap(dict["AdvanceSetting"] as! [String: Any])
                self.advanceSetting = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FileParameterList") {
                self.fileParameterList = dict["FileParameterList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.FileParameterList]
            }
            if dict.keys.contains("GlobalParameterList") {
                self.globalParameterList = dict["GlobalParameterList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.GlobalParameterList]
            }
            if dict.keys.contains("LoadConfig") {
                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig()
                model.fromMap(dict["LoadConfig"] as! [String: Any])
                self.loadConfig = model
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("RelationList") {
                self.relationList = dict["RelationList"] as! [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList]
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var apiMetricsList: [GetPtsReportDetailsResponseBody.ApiMetricsList]?

    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportOverView: GetPtsReportDetailsResponseBody.ReportOverView?

    public var requestId: String?

    public var sceneMetrics: GetPtsReportDetailsResponseBody.SceneMetrics?

    public var sceneSnapShot: GetPtsReportDetailsResponseBody.SceneSnapShot?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.reportOverView?.validate()
        try self.sceneMetrics?.validate()
        try self.sceneSnapShot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiMetricsList != nil {
            var tmp : [Any] = []
            for k in self.apiMetricsList! {
                tmp.append(k.toMap())
            }
            map["ApiMetricsList"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportOverView != nil {
            map["ReportOverView"] = self.reportOverView?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneMetrics != nil {
            map["SceneMetrics"] = self.sceneMetrics?.toMap()
        }
        if self.sceneSnapShot != nil {
            map["SceneSnapShot"] = self.sceneSnapShot?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiMetricsList") {
            self.apiMetricsList = dict["ApiMetricsList"] as! [GetPtsReportDetailsResponseBody.ApiMetricsList]
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportOverView") {
            var model = GetPtsReportDetailsResponseBody.ReportOverView()
            model.fromMap(dict["ReportOverView"] as! [String: Any])
            self.reportOverView = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneMetrics") {
            var model = GetPtsReportDetailsResponseBody.SceneMetrics()
            model.fromMap(dict["SceneMetrics"] as! [String: Any])
            self.sceneMetrics = model
        }
        if dict.keys.contains("SceneSnapShot") {
            var model = GetPtsReportDetailsResponseBody.SceneSnapShot()
            model.fromMap(dict["SceneSnapShot"] as! [String: Any])
            self.sceneSnapShot = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPtsReportDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsReportDetailsResponseBody?

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
            var model = GetPtsReportDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPtsReportsBySceneIdRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetPtsReportsBySceneIdResponseBody : Tea.TeaModel {
    public class ReportOverViewList : Tea.TeaModel {
        public var agentCount: Int32?

        public var endTime: String?

        public var reportId: String?

        public var reportName: String?

        public var startTime: String?

        public var vum: Int64?

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
            if self.agentCount != nil {
                map["AgentCount"] = self.agentCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportName != nil {
                map["ReportName"] = self.reportName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.vum != nil {
                map["Vum"] = self.vum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentCount") {
                self.agentCount = dict["AgentCount"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Vum") {
                self.vum = dict["Vum"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportOverViewList: [GetPtsReportsBySceneIdResponseBody.ReportOverViewList]?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportOverViewList != nil {
            var tmp : [Any] = []
            for k in self.reportOverViewList! {
                tmp.append(k.toMap())
            }
            map["ReportOverViewList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportOverViewList") {
            self.reportOverViewList = dict["ReportOverViewList"] as! [GetPtsReportsBySceneIdResponseBody.ReportOverViewList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPtsReportsBySceneIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsReportsBySceneIdResponseBody?

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
            var model = GetPtsReportsBySceneIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPtsSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetPtsSceneResponseBody : Tea.TeaModel {
    public class Scene : Tea.TeaModel {
        public class AdvanceSetting : Tea.TeaModel {
            public class DomainBindingList : Tea.TeaModel {
                public var domain: String?

                public var ips: [String]?

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
                    if self.domain != nil {
                        map["Domain"] = self.domain!
                    }
                    if self.ips != nil {
                        map["Ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Domain") {
                        self.domain = dict["Domain"] as! String
                    }
                    if dict.keys.contains("Ips") {
                        self.ips = dict["Ips"] as! [String]
                    }
                }
            }
            public var connectionTimeoutInSecond: Int32?

            public var domainBindingList: [GetPtsSceneResponseBody.Scene.AdvanceSetting.DomainBindingList]?

            public var logRate: Int32?

            public var successCode: String?

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
                if self.connectionTimeoutInSecond != nil {
                    map["ConnectionTimeoutInSecond"] = self.connectionTimeoutInSecond!
                }
                if self.domainBindingList != nil {
                    var tmp : [Any] = []
                    for k in self.domainBindingList! {
                        tmp.append(k.toMap())
                    }
                    map["DomainBindingList"] = tmp
                }
                if self.logRate != nil {
                    map["LogRate"] = self.logRate!
                }
                if self.successCode != nil {
                    map["SuccessCode"] = self.successCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionTimeoutInSecond") {
                    self.connectionTimeoutInSecond = dict["ConnectionTimeoutInSecond"] as! Int32
                }
                if dict.keys.contains("DomainBindingList") {
                    self.domainBindingList = dict["DomainBindingList"] as! [GetPtsSceneResponseBody.Scene.AdvanceSetting.DomainBindingList]
                }
                if dict.keys.contains("LogRate") {
                    self.logRate = dict["LogRate"] as! Int32
                }
                if dict.keys.contains("SuccessCode") {
                    self.successCode = dict["SuccessCode"] as! String
                }
            }
        }
        public class FileParameterList : Tea.TeaModel {
            public var fileName: String?

            public var fileOssAddress: String?

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
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
            }
        }
        public class GlobalParameterList : Tea.TeaModel {
            public var paramName: String?

            public var paramValue: String?

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
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramValue != nil {
                    map["ParamValue"] = self.paramValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParamName") {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamValue") {
                    self.paramValue = dict["ParamValue"] as! String
                }
            }
        }
        public class LoadConfig : Tea.TeaModel {
            public class ApiLoadConfigList : Tea.TeaModel {
                public var apiId: String?

                public var rpsBegin: Int32?

                public var rpsLimit: Int32?

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
                    if self.apiId != nil {
                        map["ApiId"] = self.apiId!
                    }
                    if self.rpsBegin != nil {
                        map["RpsBegin"] = self.rpsBegin!
                    }
                    if self.rpsLimit != nil {
                        map["RpsLimit"] = self.rpsLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiId") {
                        self.apiId = dict["ApiId"] as! String
                    }
                    if dict.keys.contains("RpsBegin") {
                        self.rpsBegin = dict["RpsBegin"] as! Int32
                    }
                    if dict.keys.contains("RpsLimit") {
                        self.rpsLimit = dict["RpsLimit"] as! Int32
                    }
                }
            }
            public class Configuration : Tea.TeaModel {
                public var allConcurrencyBegin: Int32?

                public var allConcurrencyLimit: Int32?

                public var allRpsBegin: Int32?

                public var allRpsLimit: Int32?

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
                    if self.allConcurrencyBegin != nil {
                        map["AllConcurrencyBegin"] = self.allConcurrencyBegin!
                    }
                    if self.allConcurrencyLimit != nil {
                        map["AllConcurrencyLimit"] = self.allConcurrencyLimit!
                    }
                    if self.allRpsBegin != nil {
                        map["AllRpsBegin"] = self.allRpsBegin!
                    }
                    if self.allRpsLimit != nil {
                        map["AllRpsLimit"] = self.allRpsLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllConcurrencyBegin") {
                        self.allConcurrencyBegin = dict["AllConcurrencyBegin"] as! Int32
                    }
                    if dict.keys.contains("AllConcurrencyLimit") {
                        self.allConcurrencyLimit = dict["AllConcurrencyLimit"] as! Int32
                    }
                    if dict.keys.contains("AllRpsBegin") {
                        self.allRpsBegin = dict["AllRpsBegin"] as! Int32
                    }
                    if dict.keys.contains("AllRpsLimit") {
                        self.allRpsLimit = dict["AllRpsLimit"] as! Int32
                    }
                }
            }
            public class RelationLoadConfigList : Tea.TeaModel {
                public var concurrencyBegin: Int32?

                public var concurrencyLimit: Int32?

                public var relationId: String?

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
                    if self.concurrencyBegin != nil {
                        map["ConcurrencyBegin"] = self.concurrencyBegin!
                    }
                    if self.concurrencyLimit != nil {
                        map["ConcurrencyLimit"] = self.concurrencyLimit!
                    }
                    if self.relationId != nil {
                        map["RelationId"] = self.relationId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConcurrencyBegin") {
                        self.concurrencyBegin = dict["ConcurrencyBegin"] as! Int32
                    }
                    if dict.keys.contains("ConcurrencyLimit") {
                        self.concurrencyLimit = dict["ConcurrencyLimit"] as! Int32
                    }
                    if dict.keys.contains("RelationId") {
                        self.relationId = dict["RelationId"] as! String
                    }
                }
            }
            public class VpcLoadConfig : Tea.TeaModel {
                public var regionId: String?

                public var securityGroupId: String?

                public var vSwitchId: String?

                public var vpcId: String?

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
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.securityGroupId != nil {
                        map["SecurityGroupId"] = self.securityGroupId!
                    }
                    if self.vSwitchId != nil {
                        map["VSwitchId"] = self.vSwitchId!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RegionId") {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("SecurityGroupId") {
                        self.securityGroupId = dict["SecurityGroupId"] as! String
                    }
                    if dict.keys.contains("VSwitchId") {
                        self.vSwitchId = dict["VSwitchId"] as! String
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
                    }
                }
            }
            public var agentCount: Int32?

            public var apiLoadConfigList: [GetPtsSceneResponseBody.Scene.LoadConfig.ApiLoadConfigList]?

            public var autoStep: Bool?

            public var configuration: GetPtsSceneResponseBody.Scene.LoadConfig.Configuration?

            public var increment: Int32?

            public var keepTime: Int32?

            public var maxRunningTime: Int32?

            public var relationLoadConfigList: [GetPtsSceneResponseBody.Scene.LoadConfig.RelationLoadConfigList]?

            public var testMode: String?

            public var vpcLoadConfig: GetPtsSceneResponseBody.Scene.LoadConfig.VpcLoadConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.configuration?.validate()
                try self.vpcLoadConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentCount != nil {
                    map["AgentCount"] = self.agentCount!
                }
                if self.apiLoadConfigList != nil {
                    var tmp : [Any] = []
                    for k in self.apiLoadConfigList! {
                        tmp.append(k.toMap())
                    }
                    map["ApiLoadConfigList"] = tmp
                }
                if self.autoStep != nil {
                    map["AutoStep"] = self.autoStep!
                }
                if self.configuration != nil {
                    map["Configuration"] = self.configuration?.toMap()
                }
                if self.increment != nil {
                    map["Increment"] = self.increment!
                }
                if self.keepTime != nil {
                    map["KeepTime"] = self.keepTime!
                }
                if self.maxRunningTime != nil {
                    map["MaxRunningTime"] = self.maxRunningTime!
                }
                if self.relationLoadConfigList != nil {
                    var tmp : [Any] = []
                    for k in self.relationLoadConfigList! {
                        tmp.append(k.toMap())
                    }
                    map["RelationLoadConfigList"] = tmp
                }
                if self.testMode != nil {
                    map["TestMode"] = self.testMode!
                }
                if self.vpcLoadConfig != nil {
                    map["VpcLoadConfig"] = self.vpcLoadConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentCount") {
                    self.agentCount = dict["AgentCount"] as! Int32
                }
                if dict.keys.contains("ApiLoadConfigList") {
                    self.apiLoadConfigList = dict["ApiLoadConfigList"] as! [GetPtsSceneResponseBody.Scene.LoadConfig.ApiLoadConfigList]
                }
                if dict.keys.contains("AutoStep") {
                    self.autoStep = dict["AutoStep"] as! Bool
                }
                if dict.keys.contains("Configuration") {
                    var model = GetPtsSceneResponseBody.Scene.LoadConfig.Configuration()
                    model.fromMap(dict["Configuration"] as! [String: Any])
                    self.configuration = model
                }
                if dict.keys.contains("Increment") {
                    self.increment = dict["Increment"] as! Int32
                }
                if dict.keys.contains("KeepTime") {
                    self.keepTime = dict["KeepTime"] as! Int32
                }
                if dict.keys.contains("MaxRunningTime") {
                    self.maxRunningTime = dict["MaxRunningTime"] as! Int32
                }
                if dict.keys.contains("RelationLoadConfigList") {
                    self.relationLoadConfigList = dict["RelationLoadConfigList"] as! [GetPtsSceneResponseBody.Scene.LoadConfig.RelationLoadConfigList]
                }
                if dict.keys.contains("TestMode") {
                    self.testMode = dict["TestMode"] as! String
                }
                if dict.keys.contains("VpcLoadConfig") {
                    var model = GetPtsSceneResponseBody.Scene.LoadConfig.VpcLoadConfig()
                    model.fromMap(dict["VpcLoadConfig"] as! [String: Any])
                    self.vpcLoadConfig = model
                }
            }
        }
        public class RelationList : Tea.TeaModel {
            public class ApiList : Tea.TeaModel {
                public class Body : Tea.TeaModel {
                    public var bodyValue: String?

                    public var contentType: String?

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
                        if self.bodyValue != nil {
                            map["BodyValue"] = self.bodyValue!
                        }
                        if self.contentType != nil {
                            map["ContentType"] = self.contentType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BodyValue") {
                            self.bodyValue = dict["BodyValue"] as! String
                        }
                        if dict.keys.contains("ContentType") {
                            self.contentType = dict["ContentType"] as! String
                        }
                    }
                }
                public class CheckPointList : Tea.TeaModel {
                    public var checkPoint: String?

                    public var checkType: String?

                    public var expectValue: String?

                    public var operator_: String?

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
                        if self.checkPoint != nil {
                            map["CheckPoint"] = self.checkPoint!
                        }
                        if self.checkType != nil {
                            map["CheckType"] = self.checkType!
                        }
                        if self.expectValue != nil {
                            map["ExpectValue"] = self.expectValue!
                        }
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CheckPoint") {
                            self.checkPoint = dict["CheckPoint"] as! String
                        }
                        if dict.keys.contains("CheckType") {
                            self.checkType = dict["CheckType"] as! String
                        }
                        if dict.keys.contains("ExpectValue") {
                            self.expectValue = dict["ExpectValue"] as! String
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                    }
                }
                public class ExportList : Tea.TeaModel {
                    public var count: String?

                    public var exportName: String?

                    public var exportType: String?

                    public var exportValue: String?

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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.exportName != nil {
                            map["ExportName"] = self.exportName!
                        }
                        if self.exportType != nil {
                            map["ExportType"] = self.exportType!
                        }
                        if self.exportValue != nil {
                            map["ExportValue"] = self.exportValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Count") {
                            self.count = dict["Count"] as! String
                        }
                        if dict.keys.contains("ExportName") {
                            self.exportName = dict["ExportName"] as! String
                        }
                        if dict.keys.contains("ExportType") {
                            self.exportType = dict["ExportType"] as! String
                        }
                        if dict.keys.contains("ExportValue") {
                            self.exportValue = dict["ExportValue"] as! String
                        }
                    }
                }
                public class HeaderList : Tea.TeaModel {
                    public var headerName: String?

                    public var headerValue: String?

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
                        if self.headerName != nil {
                            map["HeaderName"] = self.headerName!
                        }
                        if self.headerValue != nil {
                            map["HeaderValue"] = self.headerValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HeaderName") {
                            self.headerName = dict["HeaderName"] as! String
                        }
                        if dict.keys.contains("HeaderValue") {
                            self.headerValue = dict["HeaderValue"] as! String
                        }
                    }
                }
                public var apiId: String?

                public var apiName: String?

                public var body: GetPtsSceneResponseBody.Scene.RelationList.ApiList.Body?

                public var checkPointList: [GetPtsSceneResponseBody.Scene.RelationList.ApiList.CheckPointList]?

                public var exportList: [GetPtsSceneResponseBody.Scene.RelationList.ApiList.ExportList]?

                public var headerList: [GetPtsSceneResponseBody.Scene.RelationList.ApiList.HeaderList]?

                public var method: String?

                public var redirectCountLimit: Int32?

                public var timeoutInSecond: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.body?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiId != nil {
                        map["ApiId"] = self.apiId!
                    }
                    if self.apiName != nil {
                        map["ApiName"] = self.apiName!
                    }
                    if self.body != nil {
                        map["Body"] = self.body?.toMap()
                    }
                    if self.checkPointList != nil {
                        var tmp : [Any] = []
                        for k in self.checkPointList! {
                            tmp.append(k.toMap())
                        }
                        map["CheckPointList"] = tmp
                    }
                    if self.exportList != nil {
                        var tmp : [Any] = []
                        for k in self.exportList! {
                            tmp.append(k.toMap())
                        }
                        map["ExportList"] = tmp
                    }
                    if self.headerList != nil {
                        var tmp : [Any] = []
                        for k in self.headerList! {
                            tmp.append(k.toMap())
                        }
                        map["HeaderList"] = tmp
                    }
                    if self.method != nil {
                        map["Method"] = self.method!
                    }
                    if self.redirectCountLimit != nil {
                        map["RedirectCountLimit"] = self.redirectCountLimit!
                    }
                    if self.timeoutInSecond != nil {
                        map["TimeoutInSecond"] = self.timeoutInSecond!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiId") {
                        self.apiId = dict["ApiId"] as! String
                    }
                    if dict.keys.contains("ApiName") {
                        self.apiName = dict["ApiName"] as! String
                    }
                    if dict.keys.contains("Body") {
                        var model = GetPtsSceneResponseBody.Scene.RelationList.ApiList.Body()
                        model.fromMap(dict["Body"] as! [String: Any])
                        self.body = model
                    }
                    if dict.keys.contains("CheckPointList") {
                        self.checkPointList = dict["CheckPointList"] as! [GetPtsSceneResponseBody.Scene.RelationList.ApiList.CheckPointList]
                    }
                    if dict.keys.contains("ExportList") {
                        self.exportList = dict["ExportList"] as! [GetPtsSceneResponseBody.Scene.RelationList.ApiList.ExportList]
                    }
                    if dict.keys.contains("HeaderList") {
                        self.headerList = dict["HeaderList"] as! [GetPtsSceneResponseBody.Scene.RelationList.ApiList.HeaderList]
                    }
                    if dict.keys.contains("Method") {
                        self.method = dict["Method"] as! String
                    }
                    if dict.keys.contains("RedirectCountLimit") {
                        self.redirectCountLimit = dict["RedirectCountLimit"] as! Int32
                    }
                    if dict.keys.contains("TimeoutInSecond") {
                        self.timeoutInSecond = dict["TimeoutInSecond"] as! Int32
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class FileParameterExplainList : Tea.TeaModel {
                public var baseFile: Bool?

                public var cycleOnce: Bool?

                public var fileName: String?

                public var fileParamName: String?

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
                    if self.baseFile != nil {
                        map["BaseFile"] = self.baseFile!
                    }
                    if self.cycleOnce != nil {
                        map["CycleOnce"] = self.cycleOnce!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileParamName != nil {
                        map["FileParamName"] = self.fileParamName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BaseFile") {
                        self.baseFile = dict["BaseFile"] as! Bool
                    }
                    if dict.keys.contains("CycleOnce") {
                        self.cycleOnce = dict["CycleOnce"] as! Bool
                    }
                    if dict.keys.contains("FileName") {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("FileParamName") {
                        self.fileParamName = dict["FileParamName"] as! String
                    }
                }
            }
            public var apiList: [GetPtsSceneResponseBody.Scene.RelationList.ApiList]?

            public var fileParameterExplainList: [GetPtsSceneResponseBody.Scene.RelationList.FileParameterExplainList]?

            public var relationId: String?

            public var relationName: String?

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
                if self.apiList != nil {
                    var tmp : [Any] = []
                    for k in self.apiList! {
                        tmp.append(k.toMap())
                    }
                    map["ApiList"] = tmp
                }
                if self.fileParameterExplainList != nil {
                    var tmp : [Any] = []
                    for k in self.fileParameterExplainList! {
                        tmp.append(k.toMap())
                    }
                    map["FileParameterExplainList"] = tmp
                }
                if self.relationId != nil {
                    map["RelationId"] = self.relationId!
                }
                if self.relationName != nil {
                    map["RelationName"] = self.relationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiList") {
                    self.apiList = dict["ApiList"] as! [GetPtsSceneResponseBody.Scene.RelationList.ApiList]
                }
                if dict.keys.contains("FileParameterExplainList") {
                    self.fileParameterExplainList = dict["FileParameterExplainList"] as! [GetPtsSceneResponseBody.Scene.RelationList.FileParameterExplainList]
                }
                if dict.keys.contains("RelationId") {
                    self.relationId = dict["RelationId"] as! String
                }
                if dict.keys.contains("RelationName") {
                    self.relationName = dict["RelationName"] as! String
                }
            }
        }
        public var advanceSetting: GetPtsSceneResponseBody.Scene.AdvanceSetting?

        public var createTime: String?

        public var fileParameterList: [GetPtsSceneResponseBody.Scene.FileParameterList]?

        public var globalParameterList: [GetPtsSceneResponseBody.Scene.GlobalParameterList]?

        public var loadConfig: GetPtsSceneResponseBody.Scene.LoadConfig?

        public var modifiedTime: String?

        public var relationList: [GetPtsSceneResponseBody.Scene.RelationList]?

        public var sceneId: String?

        public var sceneName: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advanceSetting?.validate()
            try self.loadConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceSetting != nil {
                map["AdvanceSetting"] = self.advanceSetting?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileParameterList != nil {
                var tmp : [Any] = []
                for k in self.fileParameterList! {
                    tmp.append(k.toMap())
                }
                map["FileParameterList"] = tmp
            }
            if self.globalParameterList != nil {
                var tmp : [Any] = []
                for k in self.globalParameterList! {
                    tmp.append(k.toMap())
                }
                map["GlobalParameterList"] = tmp
            }
            if self.loadConfig != nil {
                map["LoadConfig"] = self.loadConfig?.toMap()
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.relationList != nil {
                var tmp : [Any] = []
                for k in self.relationList! {
                    tmp.append(k.toMap())
                }
                map["RelationList"] = tmp
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvanceSetting") {
                var model = GetPtsSceneResponseBody.Scene.AdvanceSetting()
                model.fromMap(dict["AdvanceSetting"] as! [String: Any])
                self.advanceSetting = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FileParameterList") {
                self.fileParameterList = dict["FileParameterList"] as! [GetPtsSceneResponseBody.Scene.FileParameterList]
            }
            if dict.keys.contains("GlobalParameterList") {
                self.globalParameterList = dict["GlobalParameterList"] as! [GetPtsSceneResponseBody.Scene.GlobalParameterList]
            }
            if dict.keys.contains("LoadConfig") {
                var model = GetPtsSceneResponseBody.Scene.LoadConfig()
                model.fromMap(dict["LoadConfig"] as! [String: Any])
                self.loadConfig = model
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("RelationList") {
                self.relationList = dict["RelationList"] as! [GetPtsSceneResponseBody.Scene.RelationList]
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var scene: GetPtsSceneResponseBody.Scene?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scene?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scene != nil {
            map["Scene"] = self.scene?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scene") {
            var model = GetPtsSceneResponseBody.Scene()
            model.fromMap(dict["Scene"] as! [String: Any])
            self.scene = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsSceneResponseBody?

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
            var model = GetPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPtsSceneBaseLineRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetPtsSceneBaseLineResponseBody : Tea.TeaModel {
    public class Baseline : Tea.TeaModel {
        public class ApiBaselines : Tea.TeaModel {
            public var avgRt: Double?

            public var avgTps: Double?

            public var failCountBiz: Int64?

            public var failCountReq: Int64?

            public var id: Int64?

            public var maxRt: Int32?

            public var minRt: Int32?

            public var name: String?

            public var seg90Rt: Double?

            public var seg99Rt: Double?

            public var successRateBiz: Double?

            public var successRateReq: Double?

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
                if self.avgRt != nil {
                    map["AvgRt"] = self.avgRt!
                }
                if self.avgTps != nil {
                    map["AvgTps"] = self.avgTps!
                }
                if self.failCountBiz != nil {
                    map["FailCountBiz"] = self.failCountBiz!
                }
                if self.failCountReq != nil {
                    map["FailCountReq"] = self.failCountReq!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.maxRt != nil {
                    map["MaxRt"] = self.maxRt!
                }
                if self.minRt != nil {
                    map["MinRt"] = self.minRt!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.seg90Rt != nil {
                    map["Seg90Rt"] = self.seg90Rt!
                }
                if self.seg99Rt != nil {
                    map["Seg99Rt"] = self.seg99Rt!
                }
                if self.successRateBiz != nil {
                    map["SuccessRateBiz"] = self.successRateBiz!
                }
                if self.successRateReq != nil {
                    map["SuccessRateReq"] = self.successRateReq!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgRt") {
                    self.avgRt = dict["AvgRt"] as! Double
                }
                if dict.keys.contains("AvgTps") {
                    self.avgTps = dict["AvgTps"] as! Double
                }
                if dict.keys.contains("FailCountBiz") {
                    self.failCountBiz = dict["FailCountBiz"] as! Int64
                }
                if dict.keys.contains("FailCountReq") {
                    self.failCountReq = dict["FailCountReq"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MaxRt") {
                    self.maxRt = dict["MaxRt"] as! Int32
                }
                if dict.keys.contains("MinRt") {
                    self.minRt = dict["MinRt"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Seg90Rt") {
                    self.seg90Rt = dict["Seg90Rt"] as! Double
                }
                if dict.keys.contains("Seg99Rt") {
                    self.seg99Rt = dict["Seg99Rt"] as! Double
                }
                if dict.keys.contains("SuccessRateBiz") {
                    self.successRateBiz = dict["SuccessRateBiz"] as! Double
                }
                if dict.keys.contains("SuccessRateReq") {
                    self.successRateReq = dict["SuccessRateReq"] as! Double
                }
            }
        }
        public class SceneBaseline : Tea.TeaModel {
            public var avgRt: Double?

            public var avgTps: Double?

            public var failCountBiz: Int64?

            public var failCountReq: Int64?

            public var seg90Rt: Double?

            public var seg99Rt: Double?

            public var successRateBiz: Double?

            public var successRateReq: Double?

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
                if self.avgRt != nil {
                    map["AvgRt"] = self.avgRt!
                }
                if self.avgTps != nil {
                    map["AvgTps"] = self.avgTps!
                }
                if self.failCountBiz != nil {
                    map["FailCountBiz"] = self.failCountBiz!
                }
                if self.failCountReq != nil {
                    map["FailCountReq"] = self.failCountReq!
                }
                if self.seg90Rt != nil {
                    map["Seg90Rt"] = self.seg90Rt!
                }
                if self.seg99Rt != nil {
                    map["Seg99Rt"] = self.seg99Rt!
                }
                if self.successRateBiz != nil {
                    map["SuccessRateBiz"] = self.successRateBiz!
                }
                if self.successRateReq != nil {
                    map["SuccessRateReq"] = self.successRateReq!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgRt") {
                    self.avgRt = dict["AvgRt"] as! Double
                }
                if dict.keys.contains("AvgTps") {
                    self.avgTps = dict["AvgTps"] as! Double
                }
                if dict.keys.contains("FailCountBiz") {
                    self.failCountBiz = dict["FailCountBiz"] as! Int64
                }
                if dict.keys.contains("FailCountReq") {
                    self.failCountReq = dict["FailCountReq"] as! Int64
                }
                if dict.keys.contains("Seg90Rt") {
                    self.seg90Rt = dict["Seg90Rt"] as! Double
                }
                if dict.keys.contains("Seg99Rt") {
                    self.seg99Rt = dict["Seg99Rt"] as! Double
                }
                if dict.keys.contains("SuccessRateBiz") {
                    self.successRateBiz = dict["SuccessRateBiz"] as! Double
                }
                if dict.keys.contains("SuccessRateReq") {
                    self.successRateReq = dict["SuccessRateReq"] as! Double
                }
            }
        }
        public var apiBaselines: [GetPtsSceneBaseLineResponseBody.Baseline.ApiBaselines]?

        public var name: String?

        public var sceneBaseline: GetPtsSceneBaseLineResponseBody.Baseline.SceneBaseline?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sceneBaseline?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiBaselines != nil {
                var tmp : [Any] = []
                for k in self.apiBaselines! {
                    tmp.append(k.toMap())
                }
                map["ApiBaselines"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sceneBaseline != nil {
                map["SceneBaseline"] = self.sceneBaseline?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiBaselines") {
                self.apiBaselines = dict["ApiBaselines"] as! [GetPtsSceneBaseLineResponseBody.Baseline.ApiBaselines]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneBaseline") {
                var model = GetPtsSceneBaseLineResponseBody.Baseline.SceneBaseline()
                model.fromMap(dict["SceneBaseline"] as! [String: Any])
                self.sceneBaseline = model
            }
        }
    }
    public var baseline: GetPtsSceneBaseLineResponseBody.Baseline?

    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var sceneId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.baseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseline != nil {
            map["Baseline"] = self.baseline?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Baseline") {
            var model = GetPtsSceneBaseLineResponseBody.Baseline()
            model.fromMap(dict["Baseline"] as! [String: Any])
            self.baseline = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPtsSceneBaseLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsSceneBaseLineResponseBody?

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
            var model = GetPtsSceneBaseLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPtsSceneRunningDataRequest : Tea.TeaModel {
    public var planId: String?

    public var sceneId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetPtsSceneRunningDataResponseBody : Tea.TeaModel {
    public class AgentLocation : Tea.TeaModel {
        public var count: Int32?

        public var isp: String?

        public var province: String?

        public var region: String?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("Isp") {
                self.isp = dict["Isp"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
        }
    }
    public class ChainMonitorDataList : Tea.TeaModel {
        public class CheckPointResult : Tea.TeaModel {
            public var failedBusinessCount: Int64?

            public var failedBusinessQps: Double?

            public var succeedBusinessCount: Int64?

            public var succeedBusinessQps: Double?

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
                if self.failedBusinessCount != nil {
                    map["FailedBusinessCount"] = self.failedBusinessCount!
                }
                if self.failedBusinessQps != nil {
                    map["FailedBusinessQps"] = self.failedBusinessQps!
                }
                if self.succeedBusinessCount != nil {
                    map["SucceedBusinessCount"] = self.succeedBusinessCount!
                }
                if self.succeedBusinessQps != nil {
                    map["SucceedBusinessQps"] = self.succeedBusinessQps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailedBusinessCount") {
                    self.failedBusinessCount = dict["FailedBusinessCount"] as! Int64
                }
                if dict.keys.contains("FailedBusinessQps") {
                    self.failedBusinessQps = dict["FailedBusinessQps"] as! Double
                }
                if dict.keys.contains("SucceedBusinessCount") {
                    self.succeedBusinessCount = dict["SucceedBusinessCount"] as! Int64
                }
                if dict.keys.contains("SucceedBusinessQps") {
                    self.succeedBusinessQps = dict["SucceedBusinessQps"] as! Double
                }
            }
        }
        public var apiId: String?

        public var apiName: String?

        public var averageRt: Int32?

        public var checkPointResult: GetPtsSceneRunningDataResponseBody.ChainMonitorDataList.CheckPointResult?

        public var concurrency: Double?

        public var configQps: Int32?

        public var count2XX: Int64?

        public var failedCount: Int64?

        public var failedQps: Double?

        public var maxRt: Int32?

        public var minRt: Int32?

        public var nodeId: Int64?

        public var qps2XX: Double?

        public var realQps: Double?

        public var timePoint: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.checkPointResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiId != nil {
                map["ApiId"] = self.apiId!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.averageRt != nil {
                map["AverageRt"] = self.averageRt!
            }
            if self.checkPointResult != nil {
                map["CheckPointResult"] = self.checkPointResult?.toMap()
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.configQps != nil {
                map["ConfigQps"] = self.configQps!
            }
            if self.count2XX != nil {
                map["Count2XX"] = self.count2XX!
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.failedQps != nil {
                map["FailedQps"] = self.failedQps!
            }
            if self.maxRt != nil {
                map["MaxRt"] = self.maxRt!
            }
            if self.minRt != nil {
                map["MinRt"] = self.minRt!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.qps2XX != nil {
                map["Qps2XX"] = self.qps2XX!
            }
            if self.realQps != nil {
                map["RealQps"] = self.realQps!
            }
            if self.timePoint != nil {
                map["TimePoint"] = self.timePoint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiId") {
                self.apiId = dict["ApiId"] as! String
            }
            if dict.keys.contains("ApiName") {
                self.apiName = dict["ApiName"] as! String
            }
            if dict.keys.contains("AverageRt") {
                self.averageRt = dict["AverageRt"] as! Int32
            }
            if dict.keys.contains("CheckPointResult") {
                var model = GetPtsSceneRunningDataResponseBody.ChainMonitorDataList.CheckPointResult()
                model.fromMap(dict["CheckPointResult"] as! [String: Any])
                self.checkPointResult = model
            }
            if dict.keys.contains("Concurrency") {
                self.concurrency = dict["Concurrency"] as! Double
            }
            if dict.keys.contains("ConfigQps") {
                self.configQps = dict["ConfigQps"] as! Int32
            }
            if dict.keys.contains("Count2XX") {
                self.count2XX = dict["Count2XX"] as! Int64
            }
            if dict.keys.contains("FailedCount") {
                self.failedCount = dict["FailedCount"] as! Int64
            }
            if dict.keys.contains("FailedQps") {
                self.failedQps = dict["FailedQps"] as! Double
            }
            if dict.keys.contains("MaxRt") {
                self.maxRt = dict["MaxRt"] as! Int32
            }
            if dict.keys.contains("MinRt") {
                self.minRt = dict["MinRt"] as! Int32
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! Int64
            }
            if dict.keys.contains("Qps2XX") {
                self.qps2XX = dict["Qps2XX"] as! Double
            }
            if dict.keys.contains("RealQps") {
                self.realQps = dict["RealQps"] as! Double
            }
            if dict.keys.contains("TimePoint") {
                self.timePoint = dict["TimePoint"] as! Int64
            }
        }
    }
    public var agentLocation: [GetPtsSceneRunningDataResponseBody.AgentLocation]?

    public var aliveAgents: Int32?

    public var averageRt: Int64?

    public var beginTime: Int64?

    public var chainMonitorDataList: [GetPtsSceneRunningDataResponseBody.ChainMonitorDataList]?

    public var code: String?

    public var concurrency: Int32?

    public var concurrencyLimit: Int32?

    public var failedBusinessCount: Int64?

    public var failedRequestCount: Int64?

    public var hasReport: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestBps: String?

    public var requestId: String?

    public var responseBps: String?

    public var seg90Rt: Int64?

    public var status: Int32?

    public var success: Bool?

    public var totalAgents: Int32?

    public var totalRequestCount: Int64?

    public var tpsLimit: Int32?

    public var vum: Int64?

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
        if self.agentLocation != nil {
            var tmp : [Any] = []
            for k in self.agentLocation! {
                tmp.append(k.toMap())
            }
            map["AgentLocation"] = tmp
        }
        if self.aliveAgents != nil {
            map["AliveAgents"] = self.aliveAgents!
        }
        if self.averageRt != nil {
            map["AverageRt"] = self.averageRt!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.chainMonitorDataList != nil {
            var tmp : [Any] = []
            for k in self.chainMonitorDataList! {
                tmp.append(k.toMap())
            }
            map["ChainMonitorDataList"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.concurrencyLimit != nil {
            map["ConcurrencyLimit"] = self.concurrencyLimit!
        }
        if self.failedBusinessCount != nil {
            map["FailedBusinessCount"] = self.failedBusinessCount!
        }
        if self.failedRequestCount != nil {
            map["FailedRequestCount"] = self.failedRequestCount!
        }
        if self.hasReport != nil {
            map["HasReport"] = self.hasReport!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestBps != nil {
            map["RequestBps"] = self.requestBps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseBps != nil {
            map["ResponseBps"] = self.responseBps!
        }
        if self.seg90Rt != nil {
            map["Seg90Rt"] = self.seg90Rt!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalAgents != nil {
            map["TotalAgents"] = self.totalAgents!
        }
        if self.totalRequestCount != nil {
            map["TotalRequestCount"] = self.totalRequestCount!
        }
        if self.tpsLimit != nil {
            map["TpsLimit"] = self.tpsLimit!
        }
        if self.vum != nil {
            map["Vum"] = self.vum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentLocation") {
            self.agentLocation = dict["AgentLocation"] as! [GetPtsSceneRunningDataResponseBody.AgentLocation]
        }
        if dict.keys.contains("AliveAgents") {
            self.aliveAgents = dict["AliveAgents"] as! Int32
        }
        if dict.keys.contains("AverageRt") {
            self.averageRt = dict["AverageRt"] as! Int64
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ChainMonitorDataList") {
            self.chainMonitorDataList = dict["ChainMonitorDataList"] as! [GetPtsSceneRunningDataResponseBody.ChainMonitorDataList]
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Concurrency") {
            self.concurrency = dict["Concurrency"] as! Int32
        }
        if dict.keys.contains("ConcurrencyLimit") {
            self.concurrencyLimit = dict["ConcurrencyLimit"] as! Int32
        }
        if dict.keys.contains("FailedBusinessCount") {
            self.failedBusinessCount = dict["FailedBusinessCount"] as! Int64
        }
        if dict.keys.contains("FailedRequestCount") {
            self.failedRequestCount = dict["FailedRequestCount"] as! Int64
        }
        if dict.keys.contains("HasReport") {
            self.hasReport = dict["HasReport"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestBps") {
            self.requestBps = dict["RequestBps"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseBps") {
            self.responseBps = dict["ResponseBps"] as! String
        }
        if dict.keys.contains("Seg90Rt") {
            self.seg90Rt = dict["Seg90Rt"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalAgents") {
            self.totalAgents = dict["TotalAgents"] as! Int32
        }
        if dict.keys.contains("TotalRequestCount") {
            self.totalRequestCount = dict["TotalRequestCount"] as! Int64
        }
        if dict.keys.contains("TpsLimit") {
            self.tpsLimit = dict["TpsLimit"] as! Int32
        }
        if dict.keys.contains("Vum") {
            self.vum = dict["Vum"] as! Int64
        }
    }
}

public class GetPtsSceneRunningDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsSceneRunningDataResponseBody?

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
            var model = GetPtsSceneRunningDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPtsSceneRunningStatusRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class GetPtsSceneRunningStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var createTime: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var modifiedTime: String?

    public var requestId: String?

    public var sceneName: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ModifiedTime") {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPtsSceneRunningStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsSceneRunningStatusResponseBody?

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
            var model = GetPtsSceneRunningStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserVpcSecurityGroupRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var vpcId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class GetUserVpcSecurityGroupResponseBody : Tea.TeaModel {
    public class SecurityGroupList : Tea.TeaModel {
        public var description_: String?

        public var securityGroupId: String?

        public var securityGroupName: String?

        public var vpcId: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.securityGroupName != nil {
                map["SecurityGroupName"] = self.securityGroupName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("SecurityGroupName") {
                self.securityGroupName = dict["SecurityGroupName"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var securityGroupCount: Int32?

    public var securityGroupList: [GetUserVpcSecurityGroupResponseBody.SecurityGroupList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroupCount != nil {
            map["SecurityGroupCount"] = self.securityGroupCount!
        }
        if self.securityGroupList != nil {
            var tmp : [Any] = []
            for k in self.securityGroupList! {
                tmp.append(k.toMap())
            }
            map["SecurityGroupList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroupCount") {
            self.securityGroupCount = dict["SecurityGroupCount"] as! Int32
        }
        if dict.keys.contains("SecurityGroupList") {
            self.securityGroupList = dict["SecurityGroupList"] as! [GetUserVpcSecurityGroupResponseBody.SecurityGroupList]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserVpcSecurityGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserVpcSecurityGroupResponseBody?

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
            var model = GetUserVpcSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserVpcVSwitchRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var vpcId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class GetUserVpcVSwitchResponseBody : Tea.TeaModel {
    public class VSwitchList : Tea.TeaModel {
        public var availableIpAddressCount: Int64?

        public var maxAgentCount: Int32?

        public var vSwitchId: String?

        public var vSwitchName: String?

        public var vpcId: String?

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
            if self.availableIpAddressCount != nil {
                map["AvailableIpAddressCount"] = self.availableIpAddressCount!
            }
            if self.maxAgentCount != nil {
                map["MaxAgentCount"] = self.maxAgentCount!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vSwitchName != nil {
                map["VSwitchName"] = self.vSwitchName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableIpAddressCount") {
                self.availableIpAddressCount = dict["AvailableIpAddressCount"] as! Int64
            }
            if dict.keys.contains("MaxAgentCount") {
                self.maxAgentCount = dict["MaxAgentCount"] as! Int32
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VSwitchName") {
                self.vSwitchName = dict["VSwitchName"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var vSwitchCount: Int32?

    public var vSwitchList: [GetUserVpcVSwitchResponseBody.VSwitchList]?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.vSwitchCount != nil {
            map["VSwitchCount"] = self.vSwitchCount!
        }
        if self.vSwitchList != nil {
            var tmp : [Any] = []
            for k in self.vSwitchList! {
                tmp.append(k.toMap())
            }
            map["VSwitchList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("VSwitchCount") {
            self.vSwitchCount = dict["VSwitchCount"] as! Int32
        }
        if dict.keys.contains("VSwitchList") {
            self.vSwitchList = dict["VSwitchList"] as! [GetUserVpcVSwitchResponseBody.VSwitchList]
        }
    }
}

public class GetUserVpcVSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserVpcVSwitchResponseBody?

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
            var model = GetUserVpcVSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserVpcsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var vpcId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class GetUserVpcsResponseBody : Tea.TeaModel {
    public class Vpcs : Tea.TeaModel {
        public var cidrBlock: String?

        public var description_: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var routerTableIds: [String]?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public var vpcName: String?

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
            if self.cidrBlock != nil {
                map["CidrBlock"] = self.cidrBlock!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.routerTableIds != nil {
                map["RouterTableIds"] = self.routerTableIds!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CidrBlock") {
                self.cidrBlock = dict["CidrBlock"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RouterTableIds") {
                self.routerTableIds = dict["RouterTableIds"] as! [String]
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcName") {
                self.vpcName = dict["VpcName"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var vpcs: [GetUserVpcsResponseBody.Vpcs]?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vpcs != nil {
            var tmp : [Any] = []
            for k in self.vpcs! {
                tmp.append(k.toMap())
            }
            map["Vpcs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Vpcs") {
            self.vpcs = dict["Vpcs"] as! [GetUserVpcsResponseBody.Vpcs]
        }
    }
}

public class GetUserVpcsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserVpcsResponseBody?

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
            var model = GetUserVpcsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvsRequest : Tea.TeaModel {
    public var envId: String?

    public var envName: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.envName != nil {
            map["EnvName"] = self.envName!
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
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("EnvName") {
            self.envName = dict["EnvName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListEnvsResponseBody : Tea.TeaModel {
    public class Envs : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var fileId: Int64?

            public var fileName: String?

            public var fileOssAddress: String?

            public var fileSize: Int64?

            public var md5: String?

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
                if self.fileId != nil {
                    map["FileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileId") {
                    self.fileId = dict["FileId"] as! Int64
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
                if dict.keys.contains("FileSize") {
                    self.fileSize = dict["FileSize"] as! Int64
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
            }
        }
        public class Properties : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var value: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var envId: String?

        public var envName: String?

        public var envVersion: String?

        public var files: [ListEnvsResponseBody.Envs.Files]?

        public var modifiedTime: Int64?

        public var properties: [ListEnvsResponseBody.Envs.Properties]?

        public var relatedScenes: [String]?

        public var runningScenes: [String]?

        public var usedCapacity: Int64?

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
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.envName != nil {
                map["EnvName"] = self.envName!
            }
            if self.envVersion != nil {
                map["EnvVersion"] = self.envVersion!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["Files"] = tmp
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.properties != nil {
                var tmp : [Any] = []
                for k in self.properties! {
                    tmp.append(k.toMap())
                }
                map["Properties"] = tmp
            }
            if self.relatedScenes != nil {
                map["RelatedScenes"] = self.relatedScenes!
            }
            if self.runningScenes != nil {
                map["RunningScenes"] = self.runningScenes!
            }
            if self.usedCapacity != nil {
                map["UsedCapacity"] = self.usedCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("EnvName") {
                self.envName = dict["EnvName"] as! String
            }
            if dict.keys.contains("EnvVersion") {
                self.envVersion = dict["EnvVersion"] as! String
            }
            if dict.keys.contains("Files") {
                self.files = dict["Files"] as! [ListEnvsResponseBody.Envs.Files]
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! [ListEnvsResponseBody.Envs.Properties]
            }
            if dict.keys.contains("RelatedScenes") {
                self.relatedScenes = dict["RelatedScenes"] as! [String]
            }
            if dict.keys.contains("RunningScenes") {
                self.runningScenes = dict["RunningScenes"] as! [String]
            }
            if dict.keys.contains("UsedCapacity") {
                self.usedCapacity = dict["UsedCapacity"] as! Int64
            }
        }
    }
    public var code: String?

    public var envs: [ListEnvsResponseBody.Envs]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.envs != nil {
            var tmp : [Any] = []
            for k in self.envs! {
                tmp.append(k.toMap())
            }
            map["Envs"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! [ListEnvsResponseBody.Envs]
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListEnvsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvsResponseBody?

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
            var model = ListEnvsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJMeterReportsRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reportId: String?

    public var sceneId: String?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class ListJMeterReportsResponseBody : Tea.TeaModel {
    public class Reports : Tea.TeaModel {
        public var actualStartTime: Int64?

        public var duration: String?

        public var reportId: String?

        public var reportName: String?

        public var vum: Int64?

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
            if self.actualStartTime != nil {
                map["ActualStartTime"] = self.actualStartTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportName != nil {
                map["ReportName"] = self.reportName!
            }
            if self.vum != nil {
                map["Vum"] = self.vum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualStartTime") {
                self.actualStartTime = dict["ActualStartTime"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("Vum") {
                self.vum = dict["Vum"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reports: [ListJMeterReportsResponseBody.Reports]?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reports != nil {
            var tmp : [Any] = []
            for k in self.reports! {
                tmp.append(k.toMap())
            }
            map["Reports"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reports") {
            self.reports = dict["Reports"] as! [ListJMeterReportsResponseBody.Reports]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListJMeterReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJMeterReportsResponseBody?

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
            var model = ListJMeterReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOpenJMeterScenesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneId: String?

    public var sceneName: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
    }
}

public class ListOpenJMeterScenesResponseBody : Tea.TeaModel {
    public class JMeterScene : Tea.TeaModel {
        public var durationStr: String?

        public var sceneId: String?

        public var sceneName: String?

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
            if self.durationStr != nil {
                map["DurationStr"] = self.durationStr!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DurationStr") {
                self.durationStr = dict["DurationStr"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var JMeterScene: [ListOpenJMeterScenesResponseBody.JMeterScene]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.JMeterScene != nil {
            var tmp : [Any] = []
            for k in self.JMeterScene! {
                tmp.append(k.toMap())
            }
            map["JMeterScene"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("JMeterScene") {
            self.JMeterScene = dict["JMeterScene"] as! [ListOpenJMeterScenesResponseBody.JMeterScene]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOpenJMeterScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpenJMeterScenesResponseBody?

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
            var model = ListOpenJMeterScenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPtsSceneRequest : Tea.TeaModel {
    public var keyWord: String?

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
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
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
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListPtsSceneResponseBody : Tea.TeaModel {
    public class SceneViewList : Tea.TeaModel {
        public var createTime: String?

        public var sceneId: String?

        public var sceneName: String?

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
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var sceneViewList: [ListPtsSceneResponseBody.SceneViewList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneViewList != nil {
            var tmp : [Any] = []
            for k in self.sceneViewList! {
                tmp.append(k.toMap())
            }
            map["SceneViewList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneViewList") {
            self.sceneViewList = dict["SceneViewList"] as! [ListPtsSceneResponseBody.SceneViewList]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPtsSceneResponseBody?

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
            var model = ListPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPtsSceneRequest : Tea.TeaModel {
    public var scene: String?

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
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class ModifyPtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPtsSceneResponseBody?

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
            var model = ModifyPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveEnvRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
    }
}

public class RemoveEnvResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RemoveEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveEnvResponseBody?

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
            var model = RemoveEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveOpenJMeterSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class RemoveOpenJMeterSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RemoveOpenJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveOpenJMeterSceneResponseBody?

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
            var model = RemoveOpenJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveEnvRequest : Tea.TeaModel {
    public class Env : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var fileName: String?

            public var fileOssAddress: String?

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
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
            }
        }
        public class Properties : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var value: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var envId: String?

        public var envName: String?

        public var files: [SaveEnvRequest.Env.Files]?

        public var jmeterPluginLabel: String?

        public var properties: [SaveEnvRequest.Env.Properties]?

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
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.envName != nil {
                map["EnvName"] = self.envName!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["Files"] = tmp
            }
            if self.jmeterPluginLabel != nil {
                map["JmeterPluginLabel"] = self.jmeterPluginLabel!
            }
            if self.properties != nil {
                var tmp : [Any] = []
                for k in self.properties! {
                    tmp.append(k.toMap())
                }
                map["Properties"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("EnvName") {
                self.envName = dict["EnvName"] as! String
            }
            if dict.keys.contains("Files") {
                self.files = dict["Files"] as! [SaveEnvRequest.Env.Files]
            }
            if dict.keys.contains("JmeterPluginLabel") {
                self.jmeterPluginLabel = dict["JmeterPluginLabel"] as! String
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! [SaveEnvRequest.Env.Properties]
            }
        }
    }
    public var env: SaveEnvRequest.Env?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.env?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            var model = SaveEnvRequest.Env()
            model.fromMap(dict["Env"] as! [String: Any])
            self.env = model
        }
    }
}

public class SaveEnvShrinkRequest : Tea.TeaModel {
    public var envShrink: String?

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
        if self.envShrink != nil {
            map["Env"] = self.envShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.envShrink = dict["Env"] as! String
        }
    }
}

public class SaveEnvResponseBody : Tea.TeaModel {
    public var code: String?

    public var envId: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveEnvResponseBody?

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
            var model = SaveEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveOpenJMeterSceneRequest : Tea.TeaModel {
    public class OpenJMeterScene : Tea.TeaModel {
        public class DnsCacheConfig : Tea.TeaModel {
            public var clearCacheEachIteration: Bool?

            public var dnsServers: [String]?

            public var hostTable: [String: String]?

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
                if self.clearCacheEachIteration != nil {
                    map["ClearCacheEachIteration"] = self.clearCacheEachIteration!
                }
                if self.dnsServers != nil {
                    map["DnsServers"] = self.dnsServers!
                }
                if self.hostTable != nil {
                    map["HostTable"] = self.hostTable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClearCacheEachIteration") {
                    self.clearCacheEachIteration = dict["ClearCacheEachIteration"] as! Bool
                }
                if dict.keys.contains("DnsServers") {
                    self.dnsServers = dict["DnsServers"] as! [String]
                }
                if dict.keys.contains("HostTable") {
                    self.hostTable = dict["HostTable"] as! [String: String]
                }
            }
        }
        public class FileList : Tea.TeaModel {
            public var fileId: Int64?

            public var fileName: String?

            public var fileOssAddress: String?

            public var fileSize: Int64?

            public var md5: String?

            public var splitCsv: Bool?

            public var tags: String?

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
                if self.fileId != nil {
                    map["FileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                if self.fileSize != nil {
                    map["FileSize"] = self.fileSize!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.splitCsv != nil {
                    map["SplitCsv"] = self.splitCsv!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileId") {
                    self.fileId = dict["FileId"] as! Int64
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
                if dict.keys.contains("FileSize") {
                    self.fileSize = dict["FileSize"] as! Int64
                }
                if dict.keys.contains("Md5") {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("SplitCsv") {
                    self.splitCsv = dict["SplitCsv"] as! Bool
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! String
                }
            }
        }
        public class JMeterProperties : Tea.TeaModel {
            public var name: String?

            public var value: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var agentCount: Int32?

        public var concurrency: Int32?

        public var constantThroughputTimerType: String?

        public var dnsCacheConfig: SaveOpenJMeterSceneRequest.OpenJMeterScene.DnsCacheConfig?

        public var duration: Int32?

        public var environmentId: String?

        public var fileList: [SaveOpenJMeterSceneRequest.OpenJMeterScene.FileList]?

        public var isVpcTest: Bool?

        public var JMeterProperties: [SaveOpenJMeterSceneRequest.OpenJMeterScene.JMeterProperties]?

        public var jmeterPluginLabel: String?

        public var maxRps: Int32?

        public var mode: String?

        public var rampUp: Int32?

        public var regionId: String?

        public var sceneId: String?

        public var sceneName: String?

        public var securityGroupId: String?

        public var startConcurrency: Int32?

        public var startRps: Int32?

        public var steps: Int32?

        public var syncTimerType: String?

        public var testFile: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dnsCacheConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentCount != nil {
                map["AgentCount"] = self.agentCount!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.constantThroughputTimerType != nil {
                map["ConstantThroughputTimerType"] = self.constantThroughputTimerType!
            }
            if self.dnsCacheConfig != nil {
                map["DnsCacheConfig"] = self.dnsCacheConfig?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.environmentId != nil {
                map["EnvironmentId"] = self.environmentId!
            }
            if self.fileList != nil {
                var tmp : [Any] = []
                for k in self.fileList! {
                    tmp.append(k.toMap())
                }
                map["FileList"] = tmp
            }
            if self.isVpcTest != nil {
                map["IsVpcTest"] = self.isVpcTest!
            }
            if self.JMeterProperties != nil {
                var tmp : [Any] = []
                for k in self.JMeterProperties! {
                    tmp.append(k.toMap())
                }
                map["JMeterProperties"] = tmp
            }
            if self.jmeterPluginLabel != nil {
                map["JmeterPluginLabel"] = self.jmeterPluginLabel!
            }
            if self.maxRps != nil {
                map["MaxRps"] = self.maxRps!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.rampUp != nil {
                map["RampUp"] = self.rampUp!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.startConcurrency != nil {
                map["StartConcurrency"] = self.startConcurrency!
            }
            if self.startRps != nil {
                map["StartRps"] = self.startRps!
            }
            if self.steps != nil {
                map["Steps"] = self.steps!
            }
            if self.syncTimerType != nil {
                map["SyncTimerType"] = self.syncTimerType!
            }
            if self.testFile != nil {
                map["TestFile"] = self.testFile!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentCount") {
                self.agentCount = dict["AgentCount"] as! Int32
            }
            if dict.keys.contains("Concurrency") {
                self.concurrency = dict["Concurrency"] as! Int32
            }
            if dict.keys.contains("ConstantThroughputTimerType") {
                self.constantThroughputTimerType = dict["ConstantThroughputTimerType"] as! String
            }
            if dict.keys.contains("DnsCacheConfig") {
                var model = SaveOpenJMeterSceneRequest.OpenJMeterScene.DnsCacheConfig()
                model.fromMap(dict["DnsCacheConfig"] as! [String: Any])
                self.dnsCacheConfig = model
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("EnvironmentId") {
                self.environmentId = dict["EnvironmentId"] as! String
            }
            if dict.keys.contains("FileList") {
                self.fileList = dict["FileList"] as! [SaveOpenJMeterSceneRequest.OpenJMeterScene.FileList]
            }
            if dict.keys.contains("IsVpcTest") {
                self.isVpcTest = dict["IsVpcTest"] as! Bool
            }
            if dict.keys.contains("JMeterProperties") {
                self.JMeterProperties = dict["JMeterProperties"] as! [SaveOpenJMeterSceneRequest.OpenJMeterScene.JMeterProperties]
            }
            if dict.keys.contains("JmeterPluginLabel") {
                self.jmeterPluginLabel = dict["JmeterPluginLabel"] as! String
            }
            if dict.keys.contains("MaxRps") {
                self.maxRps = dict["MaxRps"] as! Int32
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("RampUp") {
                self.rampUp = dict["RampUp"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("StartConcurrency") {
                self.startConcurrency = dict["StartConcurrency"] as! Int32
            }
            if dict.keys.contains("StartRps") {
                self.startRps = dict["StartRps"] as! Int32
            }
            if dict.keys.contains("Steps") {
                self.steps = dict["Steps"] as! Int32
            }
            if dict.keys.contains("SyncTimerType") {
                self.syncTimerType = dict["SyncTimerType"] as! String
            }
            if dict.keys.contains("TestFile") {
                self.testFile = dict["TestFile"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var openJMeterScene: SaveOpenJMeterSceneRequest.OpenJMeterScene?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.openJMeterScene?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.openJMeterScene != nil {
            map["OpenJMeterScene"] = self.openJMeterScene?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpenJMeterScene") {
            var model = SaveOpenJMeterSceneRequest.OpenJMeterScene()
            model.fromMap(dict["OpenJMeterScene"] as! [String: Any])
            self.openJMeterScene = model
        }
    }
}

public class SaveOpenJMeterSceneShrinkRequest : Tea.TeaModel {
    public var openJMeterSceneShrink: String?

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
        if self.openJMeterSceneShrink != nil {
            map["OpenJMeterScene"] = self.openJMeterSceneShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpenJMeterScene") {
            self.openJMeterSceneShrink = dict["OpenJMeterScene"] as! String
        }
    }
}

public class SaveOpenJMeterSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var sceneId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveOpenJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveOpenJMeterSceneResponseBody?

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
            var model = SaveOpenJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SavePtsSceneRequest : Tea.TeaModel {
    public class Scene : Tea.TeaModel {
        public class AdvanceSetting : Tea.TeaModel {
            public class DomainBindingList : Tea.TeaModel {
                public var domain: String?

                public var ips: [String]?

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
                    if self.domain != nil {
                        map["Domain"] = self.domain!
                    }
                    if self.ips != nil {
                        map["Ips"] = self.ips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Domain") {
                        self.domain = dict["Domain"] as! String
                    }
                    if dict.keys.contains("Ips") {
                        self.ips = dict["Ips"] as! [String]
                    }
                }
            }
            public var connectionTimeoutInSecond: Int32?

            public var domainBindingList: [SavePtsSceneRequest.Scene.AdvanceSetting.DomainBindingList]?

            public var logRate: Int32?

            public var successCode: String?

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
                if self.connectionTimeoutInSecond != nil {
                    map["ConnectionTimeoutInSecond"] = self.connectionTimeoutInSecond!
                }
                if self.domainBindingList != nil {
                    var tmp : [Any] = []
                    for k in self.domainBindingList! {
                        tmp.append(k.toMap())
                    }
                    map["DomainBindingList"] = tmp
                }
                if self.logRate != nil {
                    map["LogRate"] = self.logRate!
                }
                if self.successCode != nil {
                    map["SuccessCode"] = self.successCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionTimeoutInSecond") {
                    self.connectionTimeoutInSecond = dict["ConnectionTimeoutInSecond"] as! Int32
                }
                if dict.keys.contains("DomainBindingList") {
                    self.domainBindingList = dict["DomainBindingList"] as! [SavePtsSceneRequest.Scene.AdvanceSetting.DomainBindingList]
                }
                if dict.keys.contains("LogRate") {
                    self.logRate = dict["LogRate"] as! Int32
                }
                if dict.keys.contains("SuccessCode") {
                    self.successCode = dict["SuccessCode"] as! String
                }
            }
        }
        public class FileParameterList : Tea.TeaModel {
            public var fileName: String?

            public var fileOssAddress: String?

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
                if self.fileOssAddress != nil {
                    map["FileOssAddress"] = self.fileOssAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileOssAddress") {
                    self.fileOssAddress = dict["FileOssAddress"] as! String
                }
            }
        }
        public class GlobalParameterList : Tea.TeaModel {
            public var paramName: String?

            public var paramValue: String?

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
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramValue != nil {
                    map["ParamValue"] = self.paramValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParamName") {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamValue") {
                    self.paramValue = dict["ParamValue"] as! String
                }
            }
        }
        public class LoadConfig : Tea.TeaModel {
            public class ApiLoadConfigList : Tea.TeaModel {
                public var apiId: String?

                public var rpsBegin: Int32?

                public var rpsLimit: Int32?

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
                    if self.apiId != nil {
                        map["ApiId"] = self.apiId!
                    }
                    if self.rpsBegin != nil {
                        map["RpsBegin"] = self.rpsBegin!
                    }
                    if self.rpsLimit != nil {
                        map["RpsLimit"] = self.rpsLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiId") {
                        self.apiId = dict["ApiId"] as! String
                    }
                    if dict.keys.contains("RpsBegin") {
                        self.rpsBegin = dict["RpsBegin"] as! Int32
                    }
                    if dict.keys.contains("RpsLimit") {
                        self.rpsLimit = dict["RpsLimit"] as! Int32
                    }
                }
            }
            public class Configuration : Tea.TeaModel {
                public var allConcurrencyBegin: Int32?

                public var allConcurrencyLimit: Int32?

                public var allRpsBegin: Int32?

                public var allRpsLimit: Int32?

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
                    if self.allConcurrencyBegin != nil {
                        map["AllConcurrencyBegin"] = self.allConcurrencyBegin!
                    }
                    if self.allConcurrencyLimit != nil {
                        map["AllConcurrencyLimit"] = self.allConcurrencyLimit!
                    }
                    if self.allRpsBegin != nil {
                        map["AllRpsBegin"] = self.allRpsBegin!
                    }
                    if self.allRpsLimit != nil {
                        map["AllRpsLimit"] = self.allRpsLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllConcurrencyBegin") {
                        self.allConcurrencyBegin = dict["AllConcurrencyBegin"] as! Int32
                    }
                    if dict.keys.contains("AllConcurrencyLimit") {
                        self.allConcurrencyLimit = dict["AllConcurrencyLimit"] as! Int32
                    }
                    if dict.keys.contains("AllRpsBegin") {
                        self.allRpsBegin = dict["AllRpsBegin"] as! Int32
                    }
                    if dict.keys.contains("AllRpsLimit") {
                        self.allRpsLimit = dict["AllRpsLimit"] as! Int32
                    }
                }
            }
            public class RelationLoadConfigList : Tea.TeaModel {
                public var concurrencyBegin: Int32?

                public var concurrencyLimit: Int32?

                public var relationId: String?

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
                    if self.concurrencyBegin != nil {
                        map["ConcurrencyBegin"] = self.concurrencyBegin!
                    }
                    if self.concurrencyLimit != nil {
                        map["ConcurrencyLimit"] = self.concurrencyLimit!
                    }
                    if self.relationId != nil {
                        map["RelationId"] = self.relationId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConcurrencyBegin") {
                        self.concurrencyBegin = dict["ConcurrencyBegin"] as! Int32
                    }
                    if dict.keys.contains("ConcurrencyLimit") {
                        self.concurrencyLimit = dict["ConcurrencyLimit"] as! Int32
                    }
                    if dict.keys.contains("RelationId") {
                        self.relationId = dict["RelationId"] as! String
                    }
                }
            }
            public class VpcLoadConfig : Tea.TeaModel {
                public var regionId: String?

                public var securityGroupId: String?

                public var vSwitchId: String?

                public var vpcId: String?

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
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.securityGroupId != nil {
                        map["SecurityGroupId"] = self.securityGroupId!
                    }
                    if self.vSwitchId != nil {
                        map["VSwitchId"] = self.vSwitchId!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RegionId") {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("SecurityGroupId") {
                        self.securityGroupId = dict["SecurityGroupId"] as! String
                    }
                    if dict.keys.contains("VSwitchId") {
                        self.vSwitchId = dict["VSwitchId"] as! String
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
                    }
                }
            }
            public var agentCount: Int32?

            public var apiLoadConfigList: [SavePtsSceneRequest.Scene.LoadConfig.ApiLoadConfigList]?

            public var autoStep: Bool?

            public var configuration: SavePtsSceneRequest.Scene.LoadConfig.Configuration?

            public var increment: Int32?

            public var keepTime: Int32?

            public var maxRunningTime: Int32?

            public var relationLoadConfigList: [SavePtsSceneRequest.Scene.LoadConfig.RelationLoadConfigList]?

            public var testMode: String?

            public var vpcLoadConfig: SavePtsSceneRequest.Scene.LoadConfig.VpcLoadConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.configuration?.validate()
                try self.vpcLoadConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentCount != nil {
                    map["AgentCount"] = self.agentCount!
                }
                if self.apiLoadConfigList != nil {
                    var tmp : [Any] = []
                    for k in self.apiLoadConfigList! {
                        tmp.append(k.toMap())
                    }
                    map["ApiLoadConfigList"] = tmp
                }
                if self.autoStep != nil {
                    map["AutoStep"] = self.autoStep!
                }
                if self.configuration != nil {
                    map["Configuration"] = self.configuration?.toMap()
                }
                if self.increment != nil {
                    map["Increment"] = self.increment!
                }
                if self.keepTime != nil {
                    map["KeepTime"] = self.keepTime!
                }
                if self.maxRunningTime != nil {
                    map["MaxRunningTime"] = self.maxRunningTime!
                }
                if self.relationLoadConfigList != nil {
                    var tmp : [Any] = []
                    for k in self.relationLoadConfigList! {
                        tmp.append(k.toMap())
                    }
                    map["RelationLoadConfigList"] = tmp
                }
                if self.testMode != nil {
                    map["TestMode"] = self.testMode!
                }
                if self.vpcLoadConfig != nil {
                    map["VpcLoadConfig"] = self.vpcLoadConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentCount") {
                    self.agentCount = dict["AgentCount"] as! Int32
                }
                if dict.keys.contains("ApiLoadConfigList") {
                    self.apiLoadConfigList = dict["ApiLoadConfigList"] as! [SavePtsSceneRequest.Scene.LoadConfig.ApiLoadConfigList]
                }
                if dict.keys.contains("AutoStep") {
                    self.autoStep = dict["AutoStep"] as! Bool
                }
                if dict.keys.contains("Configuration") {
                    var model = SavePtsSceneRequest.Scene.LoadConfig.Configuration()
                    model.fromMap(dict["Configuration"] as! [String: Any])
                    self.configuration = model
                }
                if dict.keys.contains("Increment") {
                    self.increment = dict["Increment"] as! Int32
                }
                if dict.keys.contains("KeepTime") {
                    self.keepTime = dict["KeepTime"] as! Int32
                }
                if dict.keys.contains("MaxRunningTime") {
                    self.maxRunningTime = dict["MaxRunningTime"] as! Int32
                }
                if dict.keys.contains("RelationLoadConfigList") {
                    self.relationLoadConfigList = dict["RelationLoadConfigList"] as! [SavePtsSceneRequest.Scene.LoadConfig.RelationLoadConfigList]
                }
                if dict.keys.contains("TestMode") {
                    self.testMode = dict["TestMode"] as! String
                }
                if dict.keys.contains("VpcLoadConfig") {
                    var model = SavePtsSceneRequest.Scene.LoadConfig.VpcLoadConfig()
                    model.fromMap(dict["VpcLoadConfig"] as! [String: Any])
                    self.vpcLoadConfig = model
                }
            }
        }
        public class RelationList : Tea.TeaModel {
            public class ApiList : Tea.TeaModel {
                public class Body : Tea.TeaModel {
                    public var bodyValue: String?

                    public var contentType: String?

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
                        if self.bodyValue != nil {
                            map["BodyValue"] = self.bodyValue!
                        }
                        if self.contentType != nil {
                            map["ContentType"] = self.contentType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BodyValue") {
                            self.bodyValue = dict["BodyValue"] as! String
                        }
                        if dict.keys.contains("ContentType") {
                            self.contentType = dict["ContentType"] as! String
                        }
                    }
                }
                public class CheckPointList : Tea.TeaModel {
                    public var checkPoint: String?

                    public var checkType: String?

                    public var expectValue: String?

                    public var operator_: String?

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
                        if self.checkPoint != nil {
                            map["CheckPoint"] = self.checkPoint!
                        }
                        if self.checkType != nil {
                            map["CheckType"] = self.checkType!
                        }
                        if self.expectValue != nil {
                            map["ExpectValue"] = self.expectValue!
                        }
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CheckPoint") {
                            self.checkPoint = dict["CheckPoint"] as! String
                        }
                        if dict.keys.contains("CheckType") {
                            self.checkType = dict["CheckType"] as! String
                        }
                        if dict.keys.contains("ExpectValue") {
                            self.expectValue = dict["ExpectValue"] as! String
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                    }
                }
                public class ExportList : Tea.TeaModel {
                    public var count: String?

                    public var exportName: String?

                    public var exportType: String?

                    public var exportValue: String?

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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.exportName != nil {
                            map["ExportName"] = self.exportName!
                        }
                        if self.exportType != nil {
                            map["ExportType"] = self.exportType!
                        }
                        if self.exportValue != nil {
                            map["ExportValue"] = self.exportValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Count") {
                            self.count = dict["Count"] as! String
                        }
                        if dict.keys.contains("ExportName") {
                            self.exportName = dict["ExportName"] as! String
                        }
                        if dict.keys.contains("ExportType") {
                            self.exportType = dict["ExportType"] as! String
                        }
                        if dict.keys.contains("ExportValue") {
                            self.exportValue = dict["ExportValue"] as! String
                        }
                    }
                }
                public class HeaderList : Tea.TeaModel {
                    public var headerName: String?

                    public var headerValue: String?

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
                        if self.headerName != nil {
                            map["HeaderName"] = self.headerName!
                        }
                        if self.headerValue != nil {
                            map["HeaderValue"] = self.headerValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HeaderName") {
                            self.headerName = dict["HeaderName"] as! String
                        }
                        if dict.keys.contains("HeaderValue") {
                            self.headerValue = dict["HeaderValue"] as! String
                        }
                    }
                }
                public var apiId: String?

                public var apiName: String?

                public var body: SavePtsSceneRequest.Scene.RelationList.ApiList.Body?

                public var checkPointList: [SavePtsSceneRequest.Scene.RelationList.ApiList.CheckPointList]?

                public var exportList: [SavePtsSceneRequest.Scene.RelationList.ApiList.ExportList]?

                public var headerList: [SavePtsSceneRequest.Scene.RelationList.ApiList.HeaderList]?

                public var method: String?

                public var redirectCountLimit: Int32?

                public var timeoutInSecond: Int32?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.body?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiId != nil {
                        map["ApiId"] = self.apiId!
                    }
                    if self.apiName != nil {
                        map["ApiName"] = self.apiName!
                    }
                    if self.body != nil {
                        map["Body"] = self.body?.toMap()
                    }
                    if self.checkPointList != nil {
                        var tmp : [Any] = []
                        for k in self.checkPointList! {
                            tmp.append(k.toMap())
                        }
                        map["CheckPointList"] = tmp
                    }
                    if self.exportList != nil {
                        var tmp : [Any] = []
                        for k in self.exportList! {
                            tmp.append(k.toMap())
                        }
                        map["ExportList"] = tmp
                    }
                    if self.headerList != nil {
                        var tmp : [Any] = []
                        for k in self.headerList! {
                            tmp.append(k.toMap())
                        }
                        map["HeaderList"] = tmp
                    }
                    if self.method != nil {
                        map["Method"] = self.method!
                    }
                    if self.redirectCountLimit != nil {
                        map["RedirectCountLimit"] = self.redirectCountLimit!
                    }
                    if self.timeoutInSecond != nil {
                        map["TimeoutInSecond"] = self.timeoutInSecond!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiId") {
                        self.apiId = dict["ApiId"] as! String
                    }
                    if dict.keys.contains("ApiName") {
                        self.apiName = dict["ApiName"] as! String
                    }
                    if dict.keys.contains("Body") {
                        var model = SavePtsSceneRequest.Scene.RelationList.ApiList.Body()
                        model.fromMap(dict["Body"] as! [String: Any])
                        self.body = model
                    }
                    if dict.keys.contains("CheckPointList") {
                        self.checkPointList = dict["CheckPointList"] as! [SavePtsSceneRequest.Scene.RelationList.ApiList.CheckPointList]
                    }
                    if dict.keys.contains("ExportList") {
                        self.exportList = dict["ExportList"] as! [SavePtsSceneRequest.Scene.RelationList.ApiList.ExportList]
                    }
                    if dict.keys.contains("HeaderList") {
                        self.headerList = dict["HeaderList"] as! [SavePtsSceneRequest.Scene.RelationList.ApiList.HeaderList]
                    }
                    if dict.keys.contains("Method") {
                        self.method = dict["Method"] as! String
                    }
                    if dict.keys.contains("RedirectCountLimit") {
                        self.redirectCountLimit = dict["RedirectCountLimit"] as! Int32
                    }
                    if dict.keys.contains("TimeoutInSecond") {
                        self.timeoutInSecond = dict["TimeoutInSecond"] as! Int32
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class FileParameterExplainList : Tea.TeaModel {
                public var baseFile: Bool?

                public var cycleOnce: Bool?

                public var fileName: String?

                public var fileParamName: String?

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
                    if self.baseFile != nil {
                        map["BaseFile"] = self.baseFile!
                    }
                    if self.cycleOnce != nil {
                        map["CycleOnce"] = self.cycleOnce!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileParamName != nil {
                        map["FileParamName"] = self.fileParamName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BaseFile") {
                        self.baseFile = dict["BaseFile"] as! Bool
                    }
                    if dict.keys.contains("CycleOnce") {
                        self.cycleOnce = dict["CycleOnce"] as! Bool
                    }
                    if dict.keys.contains("FileName") {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("FileParamName") {
                        self.fileParamName = dict["FileParamName"] as! String
                    }
                }
            }
            public var apiList: [SavePtsSceneRequest.Scene.RelationList.ApiList]?

            public var fileParameterExplainList: [SavePtsSceneRequest.Scene.RelationList.FileParameterExplainList]?

            public var relationId: String?

            public var relationName: String?

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
                if self.apiList != nil {
                    var tmp : [Any] = []
                    for k in self.apiList! {
                        tmp.append(k.toMap())
                    }
                    map["ApiList"] = tmp
                }
                if self.fileParameterExplainList != nil {
                    var tmp : [Any] = []
                    for k in self.fileParameterExplainList! {
                        tmp.append(k.toMap())
                    }
                    map["FileParameterExplainList"] = tmp
                }
                if self.relationId != nil {
                    map["RelationId"] = self.relationId!
                }
                if self.relationName != nil {
                    map["RelationName"] = self.relationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiList") {
                    self.apiList = dict["ApiList"] as! [SavePtsSceneRequest.Scene.RelationList.ApiList]
                }
                if dict.keys.contains("FileParameterExplainList") {
                    self.fileParameterExplainList = dict["FileParameterExplainList"] as! [SavePtsSceneRequest.Scene.RelationList.FileParameterExplainList]
                }
                if dict.keys.contains("RelationId") {
                    self.relationId = dict["RelationId"] as! String
                }
                if dict.keys.contains("RelationName") {
                    self.relationName = dict["RelationName"] as! String
                }
            }
        }
        public var advanceSetting: SavePtsSceneRequest.Scene.AdvanceSetting?

        public var fileParameterList: [SavePtsSceneRequest.Scene.FileParameterList]?

        public var globalParameterList: [SavePtsSceneRequest.Scene.GlobalParameterList]?

        public var loadConfig: SavePtsSceneRequest.Scene.LoadConfig?

        public var relationList: [SavePtsSceneRequest.Scene.RelationList]?

        public var sceneId: String?

        public var sceneName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advanceSetting?.validate()
            try self.loadConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceSetting != nil {
                map["AdvanceSetting"] = self.advanceSetting?.toMap()
            }
            if self.fileParameterList != nil {
                var tmp : [Any] = []
                for k in self.fileParameterList! {
                    tmp.append(k.toMap())
                }
                map["FileParameterList"] = tmp
            }
            if self.globalParameterList != nil {
                var tmp : [Any] = []
                for k in self.globalParameterList! {
                    tmp.append(k.toMap())
                }
                map["GlobalParameterList"] = tmp
            }
            if self.loadConfig != nil {
                map["LoadConfig"] = self.loadConfig?.toMap()
            }
            if self.relationList != nil {
                var tmp : [Any] = []
                for k in self.relationList! {
                    tmp.append(k.toMap())
                }
                map["RelationList"] = tmp
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvanceSetting") {
                var model = SavePtsSceneRequest.Scene.AdvanceSetting()
                model.fromMap(dict["AdvanceSetting"] as! [String: Any])
                self.advanceSetting = model
            }
            if dict.keys.contains("FileParameterList") {
                self.fileParameterList = dict["FileParameterList"] as! [SavePtsSceneRequest.Scene.FileParameterList]
            }
            if dict.keys.contains("GlobalParameterList") {
                self.globalParameterList = dict["GlobalParameterList"] as! [SavePtsSceneRequest.Scene.GlobalParameterList]
            }
            if dict.keys.contains("LoadConfig") {
                var model = SavePtsSceneRequest.Scene.LoadConfig()
                model.fromMap(dict["LoadConfig"] as! [String: Any])
                self.loadConfig = model
            }
            if dict.keys.contains("RelationList") {
                self.relationList = dict["RelationList"] as! [SavePtsSceneRequest.Scene.RelationList]
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
        }
    }
    public var scene: SavePtsSceneRequest.Scene?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scene?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scene != nil {
            map["Scene"] = self.scene?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Scene") {
            var model = SavePtsSceneRequest.Scene()
            model.fromMap(dict["Scene"] as! [String: Any])
            self.scene = model
        }
    }
}

public class SavePtsSceneShrinkRequest : Tea.TeaModel {
    public var sceneShrink: String?

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
        if self.sceneShrink != nil {
            map["Scene"] = self.sceneShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Scene") {
            self.sceneShrink = dict["Scene"] as! String
        }
    }
}

public class SavePtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var sceneId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SavePtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SavePtsSceneResponseBody?

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
            var model = SavePtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDebugPtsSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StartDebugPtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var planId: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartDebugPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDebugPtsSceneResponseBody?

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
            var model = StartDebugPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDebuggingJMeterSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StartDebuggingJMeterSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportId: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartDebuggingJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDebuggingJMeterSceneResponseBody?

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
            var model = StartDebuggingJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartPtsSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StartPtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var planId: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartPtsSceneResponseBody?

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
            var model = StartPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartTestingJMeterSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StartTestingJMeterSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportId: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartTestingJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTestingJMeterSceneResponseBody?

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
            var model = StartTestingJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDebugPtsSceneRequest : Tea.TeaModel {
    public var planId: String?

    public var sceneId: String?

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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StopDebugPtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopDebugPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDebugPtsSceneResponseBody?

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
            var model = StopDebugPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDebuggingJMeterSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StopDebuggingJMeterSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopDebuggingJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDebuggingJMeterSceneResponseBody?

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
            var model = StopDebuggingJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopPtsSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StopPtsSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopPtsSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopPtsSceneResponseBody?

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
            var model = StopPtsSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopTestingJMeterSceneRequest : Tea.TeaModel {
    public var sceneId: String?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class StopTestingJMeterSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopTestingJMeterSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTestingJMeterSceneResponseBody?

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
            var model = StopTestingJMeterSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePtsSceneBaseLineRequest : Tea.TeaModel {
    public var apiBaselines: [String: Any]?

    public var sceneBaseline: [String: Any]?

    public var sceneId: String?

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
        if self.apiBaselines != nil {
            map["ApiBaselines"] = self.apiBaselines!
        }
        if self.sceneBaseline != nil {
            map["SceneBaseline"] = self.sceneBaseline!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiBaselines") {
            self.apiBaselines = dict["ApiBaselines"] as! [String: Any]
        }
        if dict.keys.contains("SceneBaseline") {
            self.sceneBaseline = dict["SceneBaseline"] as! [String: Any]
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class UpdatePtsSceneBaseLineShrinkRequest : Tea.TeaModel {
    public var apiBaselinesShrink: String?

    public var sceneBaselineShrink: String?

    public var sceneId: String?

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
        if self.apiBaselinesShrink != nil {
            map["ApiBaselines"] = self.apiBaselinesShrink!
        }
        if self.sceneBaselineShrink != nil {
            map["SceneBaseline"] = self.sceneBaselineShrink!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiBaselines") {
            self.apiBaselinesShrink = dict["ApiBaselines"] as! String
        }
        if dict.keys.contains("SceneBaseline") {
            self.sceneBaselineShrink = dict["SceneBaseline"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
    }
}

public class UpdatePtsSceneBaseLineResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdatePtsSceneBaseLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePtsSceneBaseLineResponseBody?

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
            var model = UpdatePtsSceneBaseLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
