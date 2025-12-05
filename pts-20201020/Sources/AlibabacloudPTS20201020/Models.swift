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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["Speed"] as? Int32 {
            self.speed = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AdjustJMeterSceneSpeedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AdjustPtsSceneSpeedRequest : Tea.TeaModel {
    public class ApiSpeedList : Tea.TeaModel {
        public var apiId: String?

        public var speed: Int64?

        public override init() {
            super.init()
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
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiId"] as? String {
                self.apiId = value
            }
            if let value = dict["Speed"] as? Int64 {
                self.speed = value
            }
        }
    }
    public var apiSpeedList: [AdjustPtsSceneSpeedRequest.ApiSpeedList]?

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
        if self.apiSpeedList != nil {
            var tmp : [Any] = []
            for k in self.apiSpeedList! {
                tmp.append(k.toMap())
            }
            map["ApiSpeedList"] = tmp
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiSpeedList"] as? [Any?] {
            var tmp : [AdjustPtsSceneSpeedRequest.ApiSpeedList] = []
            for v in value {
                if v != nil {
                    var model = AdjustPtsSceneSpeedRequest.ApiSpeedList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiSpeedList = tmp
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class AdjustPtsSceneSpeedShrinkRequest : Tea.TeaModel {
    public var apiSpeedListShrink: String?

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
        if self.apiSpeedListShrink != nil {
            map["ApiSpeedList"] = self.apiSpeedListShrink!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiSpeedList"] as? String {
            self.apiSpeedListShrink = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class AdjustPtsSceneSpeedResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AdjustPtsSceneSpeedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AdjustPtsSceneSpeedResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AdjustPtsSceneSpeedResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scene"] as? String {
            self.scene = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePtsSceneBaseLineFromReportResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePtsSceneBaseLineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneIds"] as? [String] {
            self.sceneIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneIds"] as? String {
            self.sceneIdsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePtsScenesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllRegions"] as? [String: String] {
            self.allRegions = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAllRegionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentIndex"] as? Int32 {
            self.agentIndex = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["Thread"] as? String {
            self.thread = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentCount"] as? Int32 {
            self.agentCount = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Logs"] as? [[String: Any]] {
            self.logs = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetJMeterLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJMeterReportDetailsRequest : Tea.TeaModel {
    public var reportId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
    }
}

public class GetJMeterReportDetailsResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCount"] as? Int32 {
                self.agentCount = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Vum"] as? Int64 {
                self.vum = value
            }
        }
    }
    public class SamplerMetricsList : Tea.TeaModel {
        public var allCount: Int64?

        public var apiName: String?

        public var avgRt: Double?

        public var avgTps: Double?

        public var failCountReq: Int64?

        public var maxRt: Double?

        public var minRt: Double?

        public var seg75Rt: Double?

        public var seg90Rt: Double?

        public var seg99Rt: Double?

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
            if self.failCountReq != nil {
                map["FailCountReq"] = self.failCountReq!
            }
            if self.maxRt != nil {
                map["MaxRt"] = self.maxRt!
            }
            if self.minRt != nil {
                map["MinRt"] = self.minRt!
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
            if self.successRateReq != nil {
                map["SuccessRateReq"] = self.successRateReq!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCount"] as? Int64 {
                self.allCount = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["AvgRt"] as? Double {
                self.avgRt = value
            }
            if let value = dict["AvgTps"] as? Double {
                self.avgTps = value
            }
            if let value = dict["FailCountReq"] as? Int64 {
                self.failCountReq = value
            }
            if let value = dict["MaxRt"] as? Double {
                self.maxRt = value
            }
            if let value = dict["MinRt"] as? Double {
                self.minRt = value
            }
            if let value = dict["Seg75Rt"] as? Double {
                self.seg75Rt = value
            }
            if let value = dict["Seg90Rt"] as? Double {
                self.seg90Rt = value
            }
            if let value = dict["Seg99Rt"] as? Double {
                self.seg99Rt = value
            }
            if let value = dict["SuccessRateReq"] as? Double {
                self.successRateReq = value
            }
        }
    }
    public class SceneMetrics : Tea.TeaModel {
        public var allCount: Int64?

        public var avgRt: Double?

        public var avgTps: Double?

        public var failCountReq: Int64?

        public var seg90Rt: Double?

        public var seg99Rt: Double?

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
            if self.failCountReq != nil {
                map["FailCountReq"] = self.failCountReq!
            }
            if self.seg90Rt != nil {
                map["Seg90Rt"] = self.seg90Rt!
            }
            if self.seg99Rt != nil {
                map["Seg99Rt"] = self.seg99Rt!
            }
            if self.successRateReq != nil {
                map["SuccessRateReq"] = self.successRateReq!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCount"] as? Int64 {
                self.allCount = value
            }
            if let value = dict["AvgRt"] as? Double {
                self.avgRt = value
            }
            if let value = dict["AvgTps"] as? Double {
                self.avgTps = value
            }
            if let value = dict["FailCountReq"] as? Int64 {
                self.failCountReq = value
            }
            if let value = dict["Seg90Rt"] as? Double {
                self.seg90Rt = value
            }
            if let value = dict["Seg99Rt"] as? Double {
                self.seg99Rt = value
            }
            if let value = dict["SuccessRateReq"] as? Double {
                self.successRateReq = value
            }
        }
    }
    public var code: String?

    public var codeKey: String?

    public var documentUrl: String?

    public var dynamicCtx: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportOverView: GetJMeterReportDetailsResponseBody.ReportOverView?

    public var requestId: String?

    public var samplerMetricsList: [GetJMeterReportDetailsResponseBody.SamplerMetricsList]?

    public var sceneMetrics: GetJMeterReportDetailsResponseBody.SceneMetrics?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.codeKey != nil {
            map["CodeKey"] = self.codeKey!
        }
        if self.documentUrl != nil {
            map["DocumentUrl"] = self.documentUrl!
        }
        if self.dynamicCtx != nil {
            map["DynamicCtx"] = self.dynamicCtx!
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
        if self.samplerMetricsList != nil {
            var tmp : [Any] = []
            for k in self.samplerMetricsList! {
                tmp.append(k.toMap())
            }
            map["SamplerMetricsList"] = tmp
        }
        if self.sceneMetrics != nil {
            map["SceneMetrics"] = self.sceneMetrics?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CodeKey"] as? String {
            self.codeKey = value
        }
        if let value = dict["DocumentUrl"] as? String {
            self.documentUrl = value
        }
        if let value = dict["DynamicCtx"] as? String {
            self.dynamicCtx = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportOverView"] as? [String: Any?] {
            var model = GetJMeterReportDetailsResponseBody.ReportOverView()
            model.fromMap(value)
            self.reportOverView = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SamplerMetricsList"] as? [Any?] {
            var tmp : [GetJMeterReportDetailsResponseBody.SamplerMetricsList] = []
            for v in value {
                if v != nil {
                    var model = GetJMeterReportDetailsResponseBody.SamplerMetricsList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.samplerMetricsList = tmp
        }
        if let value = dict["SceneMetrics"] as? [String: Any?] {
            var model = GetJMeterReportDetailsResponseBody.SceneMetrics()
            model.fromMap(value)
            self.sceneMetrics = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetJMeterReportDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJMeterReportDetailsResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetJMeterReportDetailsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["SamplerId"] as? Int32 {
            self.samplerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SampleMetricList"] as? [String] {
            self.sampleMetricList = value
        }
        if let value = dict["SamplerMap"] as? [String: Any] {
            self.samplerMap = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetJMeterSampleMetricsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxRT"] as? Int32 {
            self.maxRT = value
        }
        if let value = dict["MinRT"] as? Int32 {
            self.minRT = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["SamplerId"] as? Int32 {
            self.samplerId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Thread"] as? String {
            self.thread = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SampleResults"] as? [String] {
            self.sampleResults = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetJMeterSamplingLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class GetJMeterSceneRunningDataResponseBody : Tea.TeaModel {
    public class RunningData : Tea.TeaModel {
        public var agentCount: Int32?

        public var agentIdList: [String]?

        public var allSampleStat: [String: Any]?

        public var concurrency: Int32?

        public var errorMessage: String?

        public var hasError: Bool?

        public var hasReport: Bool?

        public var holdFor: Int32?

        public var isDebugging: Bool?

        public var reportId: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.hasError != nil {
                map["HasError"] = self.hasError!
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
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCount"] as? Int32 {
                self.agentCount = value
            }
            if let value = dict["AgentIdList"] as? [String] {
                self.agentIdList = value
            }
            if let value = dict["AllSampleStat"] as? [String: Any] {
                self.allSampleStat = value
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["HasError"] as? Bool {
                self.hasError = value
            }
            if let value = dict["HasReport"] as? Bool {
                self.hasReport = value
            }
            if let value = dict["HoldFor"] as? Int32 {
                self.holdFor = value
            }
            if let value = dict["IsDebugging"] as? Bool {
                self.isDebugging = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["SampleStatList"] as? [[String: Any]] {
                self.sampleStatList = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["StageName"] as? String {
                self.stageName = value
            }
            if let value = dict["StartTimeTS"] as? Int64 {
                self.startTimeTS = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Vum"] as? Int64 {
                self.vum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DocumentUrl"] as? String {
            self.documentUrl = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunningData"] as? [String: Any?] {
            var model = GetJMeterSceneRunningDataResponseBody.RunningData()
            model.fromMap(value)
            self.runningData = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetJMeterSceneRunningDataResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateName"] as? String {
                    self.createName = value
                }
                if let value = dict["ModifyName"] as? String {
                    self.modifyName = value
                }
                if let value = dict["OperateType"] as? String {
                    self.operateType = value
                }
                if let value = dict["Principal"] as? String {
                    self.principal = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["Resource"] as? String {
                    self.resource = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClearCacheEachIteration"] as? Bool {
                    self.clearCacheEachIteration = value
                }
                if let value = dict["DnsServers"] as? [String] {
                    self.dnsServers = value
                }
                if let value = dict["HostTable"] as? [String: Any] {
                    self.hostTable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
                }
                if let value = dict["FileSize"] as? Int64 {
                    self.fileSize = value
                }
                if let value = dict["FileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["SplitCsv"] as? Bool {
                    self.splitCsv = value
                }
            }
        }
        public class RegionalCondition : Tea.TeaModel {
            public var amount: Int32?

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
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int32 {
                    self.amount = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
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

        public var regionalCondition: [GetOpenJMeterSceneResponseBody.Scene.RegionalCondition]?

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
            if self.regionalCondition != nil {
                var tmp : [Any] = []
                for k in self.regionalCondition! {
                    tmp.append(k.toMap())
                }
                map["RegionalCondition"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCount"] as? Int32 {
                self.agentCount = value
            }
            if let value = dict["BaseInfo"] as? [String: Any?] {
                var model = GetOpenJMeterSceneResponseBody.Scene.BaseInfo()
                model.fromMap(value)
                self.baseInfo = model
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["ConstantThroughputTimerType"] as? String {
                self.constantThroughputTimerType = value
            }
            if let value = dict["DnsCacheConfig"] as? [String: Any?] {
                var model = GetOpenJMeterSceneResponseBody.Scene.DnsCacheConfig()
                model.fromMap(value)
                self.dnsCacheConfig = model
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["EnvironmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["FileList"] as? [Any?] {
                var tmp : [GetOpenJMeterSceneResponseBody.Scene.FileList] = []
                for v in value {
                    if v != nil {
                        var model = GetOpenJMeterSceneResponseBody.Scene.FileList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileList = tmp
            }
            if let value = dict["IsVpcTest"] as? Bool {
                self.isVpcTest = value
            }
            if let value = dict["MaxRps"] as? Int32 {
                self.maxRps = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Pool"] as? String {
                self.pool = value
            }
            if let value = dict["RampUp"] as? Int32 {
                self.rampUp = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionalCondition"] as? [Any?] {
                var tmp : [GetOpenJMeterSceneResponseBody.Scene.RegionalCondition] = []
                for v in value {
                    if v != nil {
                        var model = GetOpenJMeterSceneResponseBody.Scene.RegionalCondition()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionalCondition = tmp
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["StartConcurrency"] as? Int32 {
                self.startConcurrency = value
            }
            if let value = dict["StartRps"] as? Int32 {
                self.startRps = value
            }
            if let value = dict["Steps"] as? Int32 {
                self.steps = value
            }
            if let value = dict["SyncTimerType"] as? String {
                self.syncTimerType = value
            }
            if let value = dict["TestFile"] as? String {
                self.testFile = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scene"] as? [String: Any?] {
            var model = GetOpenJMeterSceneResponseBody.Scene()
            model.fromMap(value)
            self.scene = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOpenJMeterSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPtsDebugSampleLogsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planId: String?

    public override init() {
        super.init()
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
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
    }
}

public class GetPtsDebugSampleLogsResponseBody : Tea.TeaModel {
    public class SamplingLogs : Tea.TeaModel {
        public var chainId: String?

        public var chainName: String?

        public var checkResult: String?

        public var exportConfig: String?

        public var exportContent: String?

        public var httpRequestBody: String?

        public var httpRequestHeaders: String?

        public var httpRequestMethod: String?

        public var httpRequestUrl: String?

        public var httpResponseBody: String?

        public var httpResponseFailMsg: String?

        public var httpResponseHeaders: String?

        public var httpResponseStatus: String?

        public var httpStartTime: Int64?

        public var httpTiming: String?

        public var importContent: String?

        public var nodeId: String?

        public var rt: String?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chainId != nil {
                map["ChainId"] = self.chainId!
            }
            if self.chainName != nil {
                map["ChainName"] = self.chainName!
            }
            if self.checkResult != nil {
                map["CheckResult"] = self.checkResult!
            }
            if self.exportConfig != nil {
                map["ExportConfig"] = self.exportConfig!
            }
            if self.exportContent != nil {
                map["ExportContent"] = self.exportContent!
            }
            if self.httpRequestBody != nil {
                map["HttpRequestBody"] = self.httpRequestBody!
            }
            if self.httpRequestHeaders != nil {
                map["HttpRequestHeaders"] = self.httpRequestHeaders!
            }
            if self.httpRequestMethod != nil {
                map["HttpRequestMethod"] = self.httpRequestMethod!
            }
            if self.httpRequestUrl != nil {
                map["HttpRequestUrl"] = self.httpRequestUrl!
            }
            if self.httpResponseBody != nil {
                map["HttpResponseBody"] = self.httpResponseBody!
            }
            if self.httpResponseFailMsg != nil {
                map["HttpResponseFailMsg"] = self.httpResponseFailMsg!
            }
            if self.httpResponseHeaders != nil {
                map["HttpResponseHeaders"] = self.httpResponseHeaders!
            }
            if self.httpResponseStatus != nil {
                map["HttpResponseStatus"] = self.httpResponseStatus!
            }
            if self.httpStartTime != nil {
                map["HttpStartTime"] = self.httpStartTime!
            }
            if self.httpTiming != nil {
                map["HttpTiming"] = self.httpTiming!
            }
            if self.importContent != nil {
                map["ImportContent"] = self.importContent!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.rt != nil {
                map["Rt"] = self.rt!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChainId"] as? String {
                self.chainId = value
            }
            if let value = dict["ChainName"] as? String {
                self.chainName = value
            }
            if let value = dict["CheckResult"] as? String {
                self.checkResult = value
            }
            if let value = dict["ExportConfig"] as? String {
                self.exportConfig = value
            }
            if let value = dict["ExportContent"] as? String {
                self.exportContent = value
            }
            if let value = dict["HttpRequestBody"] as? String {
                self.httpRequestBody = value
            }
            if let value = dict["HttpRequestHeaders"] as? String {
                self.httpRequestHeaders = value
            }
            if let value = dict["HttpRequestMethod"] as? String {
                self.httpRequestMethod = value
            }
            if let value = dict["HttpRequestUrl"] as? String {
                self.httpRequestUrl = value
            }
            if let value = dict["HttpResponseBody"] as? String {
                self.httpResponseBody = value
            }
            if let value = dict["HttpResponseFailMsg"] as? String {
                self.httpResponseFailMsg = value
            }
            if let value = dict["HttpResponseHeaders"] as? String {
                self.httpResponseHeaders = value
            }
            if let value = dict["HttpResponseStatus"] as? String {
                self.httpResponseStatus = value
            }
            if let value = dict["HttpStartTime"] as? Int64 {
                self.httpStartTime = value
            }
            if let value = dict["HttpTiming"] as? String {
                self.httpTiming = value
            }
            if let value = dict["ImportContent"] as? String {
                self.importContent = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["Rt"] as? String {
                self.rt = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var samplingLogs: [GetPtsDebugSampleLogsResponseBody.SamplingLogs]?

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
        if self.samplingLogs != nil {
            var tmp : [Any] = []
            for k in self.samplingLogs! {
                tmp.append(k.toMap())
            }
            map["SamplingLogs"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SamplingLogs"] as? [Any?] {
            var tmp : [GetPtsDebugSampleLogsResponseBody.SamplingLogs] = []
            for v in value {
                if v != nil {
                    var model = GetPtsDebugSampleLogsResponseBody.SamplingLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.samplingLogs = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetPtsDebugSampleLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPtsDebugSampleLogsResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsDebugSampleLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCount"] as? Int64 {
                self.allCount = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["AvgRt"] as? Double {
                self.avgRt = value
            }
            if let value = dict["AvgTps"] as? Double {
                self.avgTps = value
            }
            if let value = dict["FailCountBiz"] as? Int64 {
                self.failCountBiz = value
            }
            if let value = dict["FailCountReq"] as? Int64 {
                self.failCountReq = value
            }
            if let value = dict["MaxRt"] as? Double {
                self.maxRt = value
            }
            if let value = dict["MinRt"] as? Double {
                self.minRt = value
            }
            if let value = dict["Seg50Rt"] as? Double {
                self.seg50Rt = value
            }
            if let value = dict["Seg75Rt"] as? Double {
                self.seg75Rt = value
            }
            if let value = dict["Seg90Rt"] as? Double {
                self.seg90Rt = value
            }
            if let value = dict["Seg99Rt"] as? Double {
                self.seg99Rt = value
            }
            if let value = dict["SuccessRateBiz"] as? Double {
                self.successRateBiz = value
            }
            if let value = dict["SuccessRateReq"] as? Double {
                self.successRateReq = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCount"] as? Int32 {
                self.agentCount = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Vum"] as? Int64 {
                self.vum = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCount"] as? Int64 {
                self.allCount = value
            }
            if let value = dict["AvgRt"] as? Double {
                self.avgRt = value
            }
            if let value = dict["AvgTps"] as? Double {
                self.avgTps = value
            }
            if let value = dict["FailCountBiz"] as? Int64 {
                self.failCountBiz = value
            }
            if let value = dict["FailCountReq"] as? Int64 {
                self.failCountReq = value
            }
            if let value = dict["Seg90Rt"] as? Double {
                self.seg90Rt = value
            }
            if let value = dict["Seg99Rt"] as? Double {
                self.seg99Rt = value
            }
            if let value = dict["SuccessRateBiz"] as? Double {
                self.successRateBiz = value
            }
            if let value = dict["SuccessRateReq"] as? Double {
                self.successRateReq = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Domain"] as? String {
                        self.domain = value
                    }
                    if let value = dict["Ips"] as? [String] {
                        self.ips = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionTimeoutInSecond"] as? Int32 {
                    self.connectionTimeoutInSecond = value
                }
                if let value = dict["DomainBindingList"] as? [Any?] {
                    var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting.DomainBindingList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting.DomainBindingList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.domainBindingList = tmp
                }
                if let value = dict["LogRate"] as? Int32 {
                    self.logRate = value
                }
                if let value = dict["SuccessCode"] as? String {
                    self.successCode = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParamName"] as? String {
                    self.paramName = value
                }
                if let value = dict["ParamValue"] as? String {
                    self.paramValue = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RpsBegin"] as? Int32 {
                        self.rpsBegin = value
                    }
                    if let value = dict["RpsLimit"] as? Int32 {
                        self.rpsLimit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllConcurrencyBegin"] as? Int32 {
                        self.allConcurrencyBegin = value
                    }
                    if let value = dict["AllConcurrencyLimit"] as? Int32 {
                        self.allConcurrencyLimit = value
                    }
                    if let value = dict["AllRpsBegin"] as? Int32 {
                        self.allRpsBegin = value
                    }
                    if let value = dict["AllRpsLimit"] as? Int32 {
                        self.allRpsLimit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConcurrencyBegin"] as? Int32 {
                        self.concurrencyBegin = value
                    }
                    if let value = dict["ConcurrencyLimit"] as? Int32 {
                        self.concurrencyLimit = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentCount"] as? Int32 {
                    self.agentCount = value
                }
                if let value = dict["ApiLoadConfigList"] as? [Any?] {
                    var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.ApiLoadConfigList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.ApiLoadConfigList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiLoadConfigList = tmp
                }
                if let value = dict["Configuration"] as? [String: Any?] {
                    var model = GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.Configuration()
                    model.fromMap(value)
                    self.configuration = model
                }
                if let value = dict["MaxRunningTime"] as? Int32 {
                    self.maxRunningTime = value
                }
                if let value = dict["RelationLoadConfigList"] as? [Any?] {
                    var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.RelationLoadConfigList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig.RelationLoadConfigList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.relationLoadConfigList = tmp
                }
                if let value = dict["TestMode"] as? String {
                    self.testMode = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BodyValue"] as? String {
                            self.bodyValue = value
                        }
                        if let value = dict["ContentType"] as? String {
                            self.contentType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CheckPoint"] as? String {
                            self.checkPoint = value
                        }
                        if let value = dict["CheckType"] as? String {
                            self.checkType = value
                        }
                        if let value = dict["ExpectValue"] as? String {
                            self.expectValue = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Count"] as? String {
                            self.count = value
                        }
                        if let value = dict["ExportName"] as? String {
                            self.exportName = value
                        }
                        if let value = dict["ExportType"] as? String {
                            self.exportType = value
                        }
                        if let value = dict["ExportValue"] as? String {
                            self.exportValue = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HeaderName"] as? String {
                            self.headerName = value
                        }
                        if let value = dict["HeaderValue"] as? String {
                            self.headerValue = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiId"] as? String {
                        self.apiId = value
                    }
                    if let value = dict["ApiName"] as? String {
                        self.apiName = value
                    }
                    if let value = dict["Body"] as? [String: Any?] {
                        var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.Body()
                        model.fromMap(value)
                        self.body = model
                    }
                    if let value = dict["CheckPointList"] as? [Any?] {
                        var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.CheckPointList] = []
                        for v in value {
                            if v != nil {
                                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.CheckPointList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.checkPointList = tmp
                    }
                    if let value = dict["ExportList"] as? [Any?] {
                        var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.ExportList] = []
                        for v in value {
                            if v != nil {
                                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.ExportList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.exportList = tmp
                    }
                    if let value = dict["HeaderList"] as? [Any?] {
                        var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.HeaderList] = []
                        for v in value {
                            if v != nil {
                                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList.HeaderList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.headerList = tmp
                    }
                    if let value = dict["Method"] as? String {
                        self.method = value
                    }
                    if let value = dict["RedirectCountLimit"] as? Int32 {
                        self.redirectCountLimit = value
                    }
                    if let value = dict["TimeoutInSecond"] as? Int32 {
                        self.timeoutInSecond = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BaseFile"] as? Bool {
                        self.baseFile = value
                    }
                    if let value = dict["CycleOnce"] as? Bool {
                        self.cycleOnce = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileParamName"] as? String {
                        self.fileParamName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiList"] as? [Any?] {
                    var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.ApiList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiList = tmp
                }
                if let value = dict["FileParameterExplainList"] as? [Any?] {
                    var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.FileParameterExplainList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList.FileParameterExplainList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fileParameterExplainList = tmp
                }
                if let value = dict["RelationId"] as? String {
                    self.relationId = value
                }
                if let value = dict["RelationName"] as? String {
                    self.relationName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvanceSetting"] as? [String: Any?] {
                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.AdvanceSetting()
                model.fromMap(value)
                self.advanceSetting = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FileParameterList"] as? [Any?] {
                var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.FileParameterList] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsReportDetailsResponseBody.SceneSnapShot.FileParameterList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileParameterList = tmp
            }
            if let value = dict["GlobalParameterList"] as? [Any?] {
                var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.GlobalParameterList] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsReportDetailsResponseBody.SceneSnapShot.GlobalParameterList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.globalParameterList = tmp
            }
            if let value = dict["LoadConfig"] as? [String: Any?] {
                var model = GetPtsReportDetailsResponseBody.SceneSnapShot.LoadConfig()
                model.fromMap(value)
                self.loadConfig = model
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["RelationList"] as? [Any?] {
                var tmp : [GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsReportDetailsResponseBody.SceneSnapShot.RelationList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relationList = tmp
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiMetricsList"] as? [Any?] {
            var tmp : [GetPtsReportDetailsResponseBody.ApiMetricsList] = []
            for v in value {
                if v != nil {
                    var model = GetPtsReportDetailsResponseBody.ApiMetricsList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiMetricsList = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportOverView"] as? [String: Any?] {
            var model = GetPtsReportDetailsResponseBody.ReportOverView()
            model.fromMap(value)
            self.reportOverView = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneMetrics"] as? [String: Any?] {
            var model = GetPtsReportDetailsResponseBody.SceneMetrics()
            model.fromMap(value)
            self.sceneMetrics = model
        }
        if let value = dict["SceneSnapShot"] as? [String: Any?] {
            var model = GetPtsReportDetailsResponseBody.SceneSnapShot()
            model.fromMap(value)
            self.sceneSnapShot = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsReportDetailsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCount"] as? Int32 {
                self.agentCount = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Vum"] as? Int64 {
                self.vum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportOverViewList"] as? [Any?] {
            var tmp : [GetPtsReportsBySceneIdResponseBody.ReportOverViewList] = []
            for v in value {
                if v != nil {
                    var model = GetPtsReportsBySceneIdResponseBody.ReportOverViewList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reportOverViewList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsReportsBySceneIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Domain"] as? String {
                        self.domain = value
                    }
                    if let value = dict["Ips"] as? [String] {
                        self.ips = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionTimeoutInSecond"] as? Int32 {
                    self.connectionTimeoutInSecond = value
                }
                if let value = dict["DomainBindingList"] as? [Any?] {
                    var tmp : [GetPtsSceneResponseBody.Scene.AdvanceSetting.DomainBindingList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsSceneResponseBody.Scene.AdvanceSetting.DomainBindingList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.domainBindingList = tmp
                }
                if let value = dict["LogRate"] as? Int32 {
                    self.logRate = value
                }
                if let value = dict["SuccessCode"] as? String {
                    self.successCode = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParamName"] as? String {
                    self.paramName = value
                }
                if let value = dict["ParamValue"] as? String {
                    self.paramValue = value
                }
            }
        }
        public class Headers : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiId"] as? String {
                        self.apiId = value
                    }
                    if let value = dict["RpsBegin"] as? Int32 {
                        self.rpsBegin = value
                    }
                    if let value = dict["RpsLimit"] as? Int32 {
                        self.rpsLimit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllConcurrencyBegin"] as? Int32 {
                        self.allConcurrencyBegin = value
                    }
                    if let value = dict["AllConcurrencyLimit"] as? Int32 {
                        self.allConcurrencyLimit = value
                    }
                    if let value = dict["AllRpsBegin"] as? Int32 {
                        self.allRpsBegin = value
                    }
                    if let value = dict["AllRpsLimit"] as? Int32 {
                        self.allRpsLimit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConcurrencyBegin"] as? Int32 {
                        self.concurrencyBegin = value
                    }
                    if let value = dict["ConcurrencyLimit"] as? Int32 {
                        self.concurrencyLimit = value
                    }
                    if let value = dict["RelationId"] as? String {
                        self.relationId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["SecurityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                    if let value = dict["VSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentCount"] as? Int32 {
                    self.agentCount = value
                }
                if let value = dict["ApiLoadConfigList"] as? [Any?] {
                    var tmp : [GetPtsSceneResponseBody.Scene.LoadConfig.ApiLoadConfigList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsSceneResponseBody.Scene.LoadConfig.ApiLoadConfigList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiLoadConfigList = tmp
                }
                if let value = dict["AutoStep"] as? Bool {
                    self.autoStep = value
                }
                if let value = dict["Configuration"] as? [String: Any?] {
                    var model = GetPtsSceneResponseBody.Scene.LoadConfig.Configuration()
                    model.fromMap(value)
                    self.configuration = model
                }
                if let value = dict["Increment"] as? Int32 {
                    self.increment = value
                }
                if let value = dict["KeepTime"] as? Int32 {
                    self.keepTime = value
                }
                if let value = dict["MaxRunningTime"] as? Int32 {
                    self.maxRunningTime = value
                }
                if let value = dict["RelationLoadConfigList"] as? [Any?] {
                    var tmp : [GetPtsSceneResponseBody.Scene.LoadConfig.RelationLoadConfigList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsSceneResponseBody.Scene.LoadConfig.RelationLoadConfigList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.relationLoadConfigList = tmp
                }
                if let value = dict["TestMode"] as? String {
                    self.testMode = value
                }
                if let value = dict["VpcLoadConfig"] as? [String: Any?] {
                    var model = GetPtsSceneResponseBody.Scene.LoadConfig.VpcLoadConfig()
                    model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BodyValue"] as? String {
                            self.bodyValue = value
                        }
                        if let value = dict["ContentType"] as? String {
                            self.contentType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CheckPoint"] as? String {
                            self.checkPoint = value
                        }
                        if let value = dict["CheckType"] as? String {
                            self.checkType = value
                        }
                        if let value = dict["ExpectValue"] as? String {
                            self.expectValue = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Count"] as? String {
                            self.count = value
                        }
                        if let value = dict["ExportName"] as? String {
                            self.exportName = value
                        }
                        if let value = dict["ExportType"] as? String {
                            self.exportType = value
                        }
                        if let value = dict["ExportValue"] as? String {
                            self.exportValue = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HeaderName"] as? String {
                            self.headerName = value
                        }
                        if let value = dict["HeaderValue"] as? String {
                            self.headerValue = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiId"] as? String {
                        self.apiId = value
                    }
                    if let value = dict["ApiName"] as? String {
                        self.apiName = value
                    }
                    if let value = dict["Body"] as? [String: Any?] {
                        var model = GetPtsSceneResponseBody.Scene.RelationList.ApiList.Body()
                        model.fromMap(value)
                        self.body = model
                    }
                    if let value = dict["CheckPointList"] as? [Any?] {
                        var tmp : [GetPtsSceneResponseBody.Scene.RelationList.ApiList.CheckPointList] = []
                        for v in value {
                            if v != nil {
                                var model = GetPtsSceneResponseBody.Scene.RelationList.ApiList.CheckPointList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.checkPointList = tmp
                    }
                    if let value = dict["ExportList"] as? [Any?] {
                        var tmp : [GetPtsSceneResponseBody.Scene.RelationList.ApiList.ExportList] = []
                        for v in value {
                            if v != nil {
                                var model = GetPtsSceneResponseBody.Scene.RelationList.ApiList.ExportList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.exportList = tmp
                    }
                    if let value = dict["HeaderList"] as? [Any?] {
                        var tmp : [GetPtsSceneResponseBody.Scene.RelationList.ApiList.HeaderList] = []
                        for v in value {
                            if v != nil {
                                var model = GetPtsSceneResponseBody.Scene.RelationList.ApiList.HeaderList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.headerList = tmp
                    }
                    if let value = dict["Method"] as? String {
                        self.method = value
                    }
                    if let value = dict["RedirectCountLimit"] as? Int32 {
                        self.redirectCountLimit = value
                    }
                    if let value = dict["TimeoutInSecond"] as? Int32 {
                        self.timeoutInSecond = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BaseFile"] as? Bool {
                        self.baseFile = value
                    }
                    if let value = dict["CycleOnce"] as? Bool {
                        self.cycleOnce = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileParamName"] as? String {
                        self.fileParamName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiList"] as? [Any?] {
                    var tmp : [GetPtsSceneResponseBody.Scene.RelationList.ApiList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsSceneResponseBody.Scene.RelationList.ApiList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiList = tmp
                }
                if let value = dict["FileParameterExplainList"] as? [Any?] {
                    var tmp : [GetPtsSceneResponseBody.Scene.RelationList.FileParameterExplainList] = []
                    for v in value {
                        if v != nil {
                            var model = GetPtsSceneResponseBody.Scene.RelationList.FileParameterExplainList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fileParameterExplainList = tmp
                }
                if let value = dict["RelationId"] as? String {
                    self.relationId = value
                }
                if let value = dict["RelationName"] as? String {
                    self.relationName = value
                }
            }
        }
        public var advanceSetting: GetPtsSceneResponseBody.Scene.AdvanceSetting?

        public var createTime: String?

        public var fileParameterList: [GetPtsSceneResponseBody.Scene.FileParameterList]?

        public var globalParameterList: [GetPtsSceneResponseBody.Scene.GlobalParameterList]?

        public var headers: [GetPtsSceneResponseBody.Scene.Headers]?

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
            if self.headers != nil {
                var tmp : [Any] = []
                for k in self.headers! {
                    tmp.append(k.toMap())
                }
                map["Headers"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvanceSetting"] as? [String: Any?] {
                var model = GetPtsSceneResponseBody.Scene.AdvanceSetting()
                model.fromMap(value)
                self.advanceSetting = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FileParameterList"] as? [Any?] {
                var tmp : [GetPtsSceneResponseBody.Scene.FileParameterList] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsSceneResponseBody.Scene.FileParameterList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileParameterList = tmp
            }
            if let value = dict["GlobalParameterList"] as? [Any?] {
                var tmp : [GetPtsSceneResponseBody.Scene.GlobalParameterList] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsSceneResponseBody.Scene.GlobalParameterList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.globalParameterList = tmp
            }
            if let value = dict["Headers"] as? [Any?] {
                var tmp : [GetPtsSceneResponseBody.Scene.Headers] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsSceneResponseBody.Scene.Headers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.headers = tmp
            }
            if let value = dict["LoadConfig"] as? [String: Any?] {
                var model = GetPtsSceneResponseBody.Scene.LoadConfig()
                model.fromMap(value)
                self.loadConfig = model
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["RelationList"] as? [Any?] {
                var tmp : [GetPtsSceneResponseBody.Scene.RelationList] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsSceneResponseBody.Scene.RelationList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relationList = tmp
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scene"] as? [String: Any?] {
            var model = GetPtsSceneResponseBody.Scene()
            model.fromMap(value)
            self.scene = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvgRt"] as? Double {
                    self.avgRt = value
                }
                if let value = dict["AvgTps"] as? Double {
                    self.avgTps = value
                }
                if let value = dict["FailCountBiz"] as? Int64 {
                    self.failCountBiz = value
                }
                if let value = dict["FailCountReq"] as? Int64 {
                    self.failCountReq = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["MaxRt"] as? Int32 {
                    self.maxRt = value
                }
                if let value = dict["MinRt"] as? Int32 {
                    self.minRt = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Seg90Rt"] as? Double {
                    self.seg90Rt = value
                }
                if let value = dict["Seg99Rt"] as? Double {
                    self.seg99Rt = value
                }
                if let value = dict["SuccessRateBiz"] as? Double {
                    self.successRateBiz = value
                }
                if let value = dict["SuccessRateReq"] as? Double {
                    self.successRateReq = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvgRt"] as? Double {
                    self.avgRt = value
                }
                if let value = dict["AvgTps"] as? Double {
                    self.avgTps = value
                }
                if let value = dict["FailCountBiz"] as? Int64 {
                    self.failCountBiz = value
                }
                if let value = dict["FailCountReq"] as? Int64 {
                    self.failCountReq = value
                }
                if let value = dict["Seg90Rt"] as? Double {
                    self.seg90Rt = value
                }
                if let value = dict["Seg99Rt"] as? Double {
                    self.seg99Rt = value
                }
                if let value = dict["SuccessRateBiz"] as? Double {
                    self.successRateBiz = value
                }
                if let value = dict["SuccessRateReq"] as? Double {
                    self.successRateReq = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiBaselines"] as? [Any?] {
                var tmp : [GetPtsSceneBaseLineResponseBody.Baseline.ApiBaselines] = []
                for v in value {
                    if v != nil {
                        var model = GetPtsSceneBaseLineResponseBody.Baseline.ApiBaselines()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apiBaselines = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SceneBaseline"] as? [String: Any?] {
                var model = GetPtsSceneBaseLineResponseBody.Baseline.SceneBaseline()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Baseline"] as? [String: Any?] {
            var model = GetPtsSceneBaseLineResponseBody.Baseline()
            model.fromMap(value)
            self.baseline = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsSceneBaseLineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FailedBusinessCount"] as? Int64 {
                    self.failedBusinessCount = value
                }
                if let value = dict["FailedBusinessQps"] as? Double {
                    self.failedBusinessQps = value
                }
                if let value = dict["SucceedBusinessCount"] as? Int64 {
                    self.succeedBusinessCount = value
                }
                if let value = dict["SucceedBusinessQps"] as? Double {
                    self.succeedBusinessQps = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiId"] as? String {
                self.apiId = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["AverageRt"] as? Int32 {
                self.averageRt = value
            }
            if let value = dict["CheckPointResult"] as? [String: Any?] {
                var model = GetPtsSceneRunningDataResponseBody.ChainMonitorDataList.CheckPointResult()
                model.fromMap(value)
                self.checkPointResult = model
            }
            if let value = dict["Concurrency"] as? Double {
                self.concurrency = value
            }
            if let value = dict["ConfigQps"] as? Int32 {
                self.configQps = value
            }
            if let value = dict["Count2XX"] as? Int64 {
                self.count2XX = value
            }
            if let value = dict["FailedCount"] as? Int64 {
                self.failedCount = value
            }
            if let value = dict["FailedQps"] as? Double {
                self.failedQps = value
            }
            if let value = dict["MaxRt"] as? Int32 {
                self.maxRt = value
            }
            if let value = dict["MinRt"] as? Int32 {
                self.minRt = value
            }
            if let value = dict["NodeId"] as? Int64 {
                self.nodeId = value
            }
            if let value = dict["Qps2XX"] as? Double {
                self.qps2XX = value
            }
            if let value = dict["RealQps"] as? Double {
                self.realQps = value
            }
            if let value = dict["TimePoint"] as? Int64 {
                self.timePoint = value
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

    public var totalRealQps: Int32?

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
        if self.totalRealQps != nil {
            map["TotalRealQps"] = self.totalRealQps!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentLocation"] as? [Any?] {
            var tmp : [GetPtsSceneRunningDataResponseBody.AgentLocation] = []
            for v in value {
                if v != nil {
                    var model = GetPtsSceneRunningDataResponseBody.AgentLocation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.agentLocation = tmp
        }
        if let value = dict["AliveAgents"] as? Int32 {
            self.aliveAgents = value
        }
        if let value = dict["AverageRt"] as? Int64 {
            self.averageRt = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["ChainMonitorDataList"] as? [Any?] {
            var tmp : [GetPtsSceneRunningDataResponseBody.ChainMonitorDataList] = []
            for v in value {
                if v != nil {
                    var model = GetPtsSceneRunningDataResponseBody.ChainMonitorDataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chainMonitorDataList = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["ConcurrencyLimit"] as? Int32 {
            self.concurrencyLimit = value
        }
        if let value = dict["FailedBusinessCount"] as? Int64 {
            self.failedBusinessCount = value
        }
        if let value = dict["FailedRequestCount"] as? Int64 {
            self.failedRequestCount = value
        }
        if let value = dict["HasReport"] as? Bool {
            self.hasReport = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestBps"] as? String {
            self.requestBps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseBps"] as? String {
            self.responseBps = value
        }
        if let value = dict["Seg90Rt"] as? Int64 {
            self.seg90Rt = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalAgents"] as? Int32 {
            self.totalAgents = value
        }
        if let value = dict["TotalRealQps"] as? Int32 {
            self.totalRealQps = value
        }
        if let value = dict["TotalRequestCount"] as? Int64 {
            self.totalRequestCount = value
        }
        if let value = dict["TpsLimit"] as? Int32 {
            self.tpsLimit = value
        }
        if let value = dict["Vum"] as? Int64 {
            self.vum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsSceneRunningDataResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ModifiedTime"] as? String {
            self.modifiedTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPtsSceneRunningStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SecurityGroupName"] as? String {
                self.securityGroupName = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityGroupCount"] as? Int32 {
            self.securityGroupCount = value
        }
        if let value = dict["SecurityGroupList"] as? [Any?] {
            var tmp : [GetUserVpcSecurityGroupResponseBody.SecurityGroupList] = []
            for v in value {
                if v != nil {
                    var model = GetUserVpcSecurityGroupResponseBody.SecurityGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityGroupList = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserVpcSecurityGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableIpAddressCount"] as? Int64 {
                self.availableIpAddressCount = value
            }
            if let value = dict["MaxAgentCount"] as? Int32 {
                self.maxAgentCount = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VSwitchName"] as? String {
                self.vSwitchName = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["VSwitchCount"] as? Int32 {
            self.vSwitchCount = value
        }
        if let value = dict["VSwitchList"] as? [Any?] {
            var tmp : [GetUserVpcVSwitchResponseBody.VSwitchList] = []
            for v in value {
                if v != nil {
                    var model = GetUserVpcVSwitchResponseBody.VSwitchList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitchList = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserVpcVSwitchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CidrBlock"] as? String {
                self.cidrBlock = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RouterTableIds"] as? [String] {
                self.routerTableIds = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcName"] as? String {
                self.vpcName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Vpcs"] as? [Any?] {
            var tmp : [GetUserVpcsResponseBody.Vpcs] = []
            for v in value {
                if v != nil {
                    var model = GetUserVpcsResponseBody.Vpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcs = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserVpcsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnvId"] as? String {
            self.envId = value
        }
        if let value = dict["EnvName"] as? String {
            self.envName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileId"] as? Int64 {
                    self.fileId = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
                }
                if let value = dict["FileSize"] as? Int64 {
                    self.fileSize = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EnvId"] as? String {
                self.envId = value
            }
            if let value = dict["EnvName"] as? String {
                self.envName = value
            }
            if let value = dict["EnvVersion"] as? String {
                self.envVersion = value
            }
            if let value = dict["Files"] as? [Any?] {
                var tmp : [ListEnvsResponseBody.Envs.Files] = []
                for v in value {
                    if v != nil {
                        var model = ListEnvsResponseBody.Envs.Files()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.files = tmp
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["Properties"] as? [Any?] {
                var tmp : [ListEnvsResponseBody.Envs.Properties] = []
                for v in value {
                    if v != nil {
                        var model = ListEnvsResponseBody.Envs.Properties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.properties = tmp
            }
            if let value = dict["RelatedScenes"] as? [String] {
                self.relatedScenes = value
            }
            if let value = dict["RunningScenes"] as? [String] {
                self.runningScenes = value
            }
            if let value = dict["UsedCapacity"] as? Int64 {
                self.usedCapacity = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Envs"] as? [Any?] {
            var tmp : [ListEnvsResponseBody.Envs] = []
            for v in value {
                if v != nil {
                    var model = ListEnvsResponseBody.Envs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.envs = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEnvsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualStartTime"] as? Int64 {
                self.actualStartTime = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["Vum"] as? Int64 {
                self.vum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Reports"] as? [Any?] {
            var tmp : [ListJMeterReportsResponseBody.Reports] = []
            for v in value {
                if v != nil {
                    var model = ListJMeterReportsResponseBody.Reports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reports = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListJMeterReportsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
    }
}

public class ListOpenJMeterScenesResponseBody : Tea.TeaModel {
    public class JMeterScene : Tea.TeaModel {
        public var durationStr: String?

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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DurationStr"] as? String {
                self.durationStr = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["JMeterScene"] as? [Any?] {
            var tmp : [ListOpenJMeterScenesResponseBody.JMeterScene] = []
            for v in value {
                if v != nil {
                    var model = ListOpenJMeterScenesResponseBody.JMeterScene()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.JMeterScene = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOpenJMeterScenesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPtsReportsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class ListPtsReportsResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualStartTime"] as? Int64 {
                self.actualStartTime = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["Vum"] as? Int64 {
                self.vum = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reports: [ListPtsReportsResponseBody.Reports]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Reports"] as? [Any?] {
            var tmp : [ListPtsReportsResponseBody.Reports] = []
            for v in value {
                if v != nil {
                    var model = ListPtsReportsResponseBody.Reports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reports = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListPtsReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPtsReportsResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPtsReportsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListPtsSceneResponseBody : Tea.TeaModel {
    public class SceneViewList : Tea.TeaModel {
        public var createTime: String?

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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneViewList"] as? [Any?] {
            var tmp : [ListPtsSceneResponseBody.SceneViewList] = []
            for v in value {
                if v != nil {
                    var model = ListPtsSceneResponseBody.SceneViewList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneViewList = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPtsSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcConfigsRequest : Tea.TeaModel {
    public var configId: String?

    public var configName: String?

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
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ListVpcConfigsResponseBody : Tea.TeaModel {
    public class VpcConfigList : Tea.TeaModel {
        public var configDescription: String?

        public var configId: String?

        public var configName: String?

        public var regionId: String?

        public var securityGroupId: String?

        public var sortPriority: Int64?

        public var vSwitchId: String?

        public var vpcCidr: String?

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
            if self.configDescription != nil {
                map["ConfigDescription"] = self.configDescription!
            }
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.configName != nil {
                map["ConfigName"] = self.configName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.sortPriority != nil {
                map["SortPriority"] = self.sortPriority!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcCidr != nil {
                map["VpcCidr"] = self.vpcCidr!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigDescription"] as? String {
                self.configDescription = value
            }
            if let value = dict["ConfigId"] as? String {
                self.configId = value
            }
            if let value = dict["ConfigName"] as? String {
                self.configName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SortPriority"] as? Int64 {
                self.sortPriority = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcCidr"] as? String {
                self.vpcCidr = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public var vpcConfigList: [ListVpcConfigsResponseBody.VpcConfigList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vpcConfigList != nil {
            var tmp : [Any] = []
            for k in self.vpcConfigList! {
                tmp.append(k.toMap())
            }
            map["VpcConfigList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["VpcConfigList"] as? [Any?] {
            var tmp : [ListVpcConfigsResponseBody.VpcConfigList] = []
            for v in value {
                if v != nil {
                    var model = ListVpcConfigsResponseBody.VpcConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vpcConfigList = tmp
        }
    }
}

public class ListVpcConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcConfigsResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVpcConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scene"] as? String {
            self.scene = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnvId"] as? String {
            self.envId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveEnvResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveOpenJMeterSceneResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnvId"] as? String {
                self.envId = value
            }
            if let value = dict["EnvName"] as? String {
                self.envName = value
            }
            if let value = dict["Files"] as? [Any?] {
                var tmp : [SaveEnvRequest.Env.Files] = []
                for v in value {
                    if v != nil {
                        var model = SaveEnvRequest.Env.Files()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.files = tmp
            }
            if let value = dict["JmeterPluginLabel"] as? String {
                self.jmeterPluginLabel = value
            }
            if let value = dict["Properties"] as? [Any?] {
                var tmp : [SaveEnvRequest.Env.Properties] = []
                for v in value {
                    if v != nil {
                        var model = SaveEnvRequest.Env.Properties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.properties = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Env"] as? [String: Any?] {
            var model = SaveEnvRequest.Env()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Env"] as? String {
            self.envShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EnvId"] as? String {
            self.envId = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SaveEnvResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClearCacheEachIteration"] as? Bool {
                    self.clearCacheEachIteration = value
                }
                if let value = dict["DnsServers"] as? [String] {
                    self.dnsServers = value
                }
                if let value = dict["HostTable"] as? [String: String] {
                    self.hostTable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileId"] as? Int64 {
                    self.fileId = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
                }
                if let value = dict["FileSize"] as? Int64 {
                    self.fileSize = value
                }
                if let value = dict["Md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["SplitCsv"] as? Bool {
                    self.splitCsv = value
                }
                if let value = dict["Tags"] as? String {
                    self.tags = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class RegionalCondition : Tea.TeaModel {
            public var amount: Int32?

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
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int32 {
                    self.amount = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
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

        public var regionalCondition: [SaveOpenJMeterSceneRequest.OpenJMeterScene.RegionalCondition]?

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
            if self.regionalCondition != nil {
                var tmp : [Any] = []
                for k in self.regionalCondition! {
                    tmp.append(k.toMap())
                }
                map["RegionalCondition"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentCount"] as? Int32 {
                self.agentCount = value
            }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["ConstantThroughputTimerType"] as? String {
                self.constantThroughputTimerType = value
            }
            if let value = dict["DnsCacheConfig"] as? [String: Any?] {
                var model = SaveOpenJMeterSceneRequest.OpenJMeterScene.DnsCacheConfig()
                model.fromMap(value)
                self.dnsCacheConfig = model
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["EnvironmentId"] as? String {
                self.environmentId = value
            }
            if let value = dict["FileList"] as? [Any?] {
                var tmp : [SaveOpenJMeterSceneRequest.OpenJMeterScene.FileList] = []
                for v in value {
                    if v != nil {
                        var model = SaveOpenJMeterSceneRequest.OpenJMeterScene.FileList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileList = tmp
            }
            if let value = dict["IsVpcTest"] as? Bool {
                self.isVpcTest = value
            }
            if let value = dict["JMeterProperties"] as? [Any?] {
                var tmp : [SaveOpenJMeterSceneRequest.OpenJMeterScene.JMeterProperties] = []
                for v in value {
                    if v != nil {
                        var model = SaveOpenJMeterSceneRequest.OpenJMeterScene.JMeterProperties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.JMeterProperties = tmp
            }
            if let value = dict["JmeterPluginLabel"] as? String {
                self.jmeterPluginLabel = value
            }
            if let value = dict["MaxRps"] as? Int32 {
                self.maxRps = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["RampUp"] as? Int32 {
                self.rampUp = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionalCondition"] as? [Any?] {
                var tmp : [SaveOpenJMeterSceneRequest.OpenJMeterScene.RegionalCondition] = []
                for v in value {
                    if v != nil {
                        var model = SaveOpenJMeterSceneRequest.OpenJMeterScene.RegionalCondition()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionalCondition = tmp
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["StartConcurrency"] as? Int32 {
                self.startConcurrency = value
            }
            if let value = dict["StartRps"] as? Int32 {
                self.startRps = value
            }
            if let value = dict["Steps"] as? Int32 {
                self.steps = value
            }
            if let value = dict["SyncTimerType"] as? String {
                self.syncTimerType = value
            }
            if let value = dict["TestFile"] as? String {
                self.testFile = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpenJMeterScene"] as? [String: Any?] {
            var model = SaveOpenJMeterSceneRequest.OpenJMeterScene()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpenJMeterScene"] as? String {
            self.openJMeterSceneShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SaveOpenJMeterSceneResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Domain"] as? String {
                        self.domain = value
                    }
                    if let value = dict["Ips"] as? [String] {
                        self.ips = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionTimeoutInSecond"] as? Int32 {
                    self.connectionTimeoutInSecond = value
                }
                if let value = dict["DomainBindingList"] as? [Any?] {
                    var tmp : [SavePtsSceneRequest.Scene.AdvanceSetting.DomainBindingList] = []
                    for v in value {
                        if v != nil {
                            var model = SavePtsSceneRequest.Scene.AdvanceSetting.DomainBindingList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.domainBindingList = tmp
                }
                if let value = dict["LogRate"] as? Int32 {
                    self.logRate = value
                }
                if let value = dict["SuccessCode"] as? String {
                    self.successCode = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileOssAddress"] as? String {
                    self.fileOssAddress = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParamName"] as? String {
                    self.paramName = value
                }
                if let value = dict["ParamValue"] as? String {
                    self.paramValue = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiId"] as? String {
                        self.apiId = value
                    }
                    if let value = dict["RpsBegin"] as? Int32 {
                        self.rpsBegin = value
                    }
                    if let value = dict["RpsLimit"] as? Int32 {
                        self.rpsLimit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllConcurrencyBegin"] as? Int32 {
                        self.allConcurrencyBegin = value
                    }
                    if let value = dict["AllConcurrencyLimit"] as? Int32 {
                        self.allConcurrencyLimit = value
                    }
                    if let value = dict["AllRpsBegin"] as? Int32 {
                        self.allRpsBegin = value
                    }
                    if let value = dict["AllRpsLimit"] as? Int32 {
                        self.allRpsLimit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConcurrencyBegin"] as? Int32 {
                        self.concurrencyBegin = value
                    }
                    if let value = dict["ConcurrencyLimit"] as? Int32 {
                        self.concurrencyLimit = value
                    }
                    if let value = dict["RelationId"] as? String {
                        self.relationId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["SecurityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                    if let value = dict["VSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentCount"] as? Int32 {
                    self.agentCount = value
                }
                if let value = dict["ApiLoadConfigList"] as? [Any?] {
                    var tmp : [SavePtsSceneRequest.Scene.LoadConfig.ApiLoadConfigList] = []
                    for v in value {
                        if v != nil {
                            var model = SavePtsSceneRequest.Scene.LoadConfig.ApiLoadConfigList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiLoadConfigList = tmp
                }
                if let value = dict["AutoStep"] as? Bool {
                    self.autoStep = value
                }
                if let value = dict["Configuration"] as? [String: Any?] {
                    var model = SavePtsSceneRequest.Scene.LoadConfig.Configuration()
                    model.fromMap(value)
                    self.configuration = model
                }
                if let value = dict["Increment"] as? Int32 {
                    self.increment = value
                }
                if let value = dict["KeepTime"] as? Int32 {
                    self.keepTime = value
                }
                if let value = dict["MaxRunningTime"] as? Int32 {
                    self.maxRunningTime = value
                }
                if let value = dict["RelationLoadConfigList"] as? [Any?] {
                    var tmp : [SavePtsSceneRequest.Scene.LoadConfig.RelationLoadConfigList] = []
                    for v in value {
                        if v != nil {
                            var model = SavePtsSceneRequest.Scene.LoadConfig.RelationLoadConfigList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.relationLoadConfigList = tmp
                }
                if let value = dict["TestMode"] as? String {
                    self.testMode = value
                }
                if let value = dict["VpcLoadConfig"] as? [String: Any?] {
                    var model = SavePtsSceneRequest.Scene.LoadConfig.VpcLoadConfig()
                    model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BodyValue"] as? String {
                            self.bodyValue = value
                        }
                        if let value = dict["ContentType"] as? String {
                            self.contentType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CheckPoint"] as? String {
                            self.checkPoint = value
                        }
                        if let value = dict["CheckType"] as? String {
                            self.checkType = value
                        }
                        if let value = dict["ExpectValue"] as? String {
                            self.expectValue = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Count"] as? String {
                            self.count = value
                        }
                        if let value = dict["ExportName"] as? String {
                            self.exportName = value
                        }
                        if let value = dict["ExportType"] as? String {
                            self.exportType = value
                        }
                        if let value = dict["ExportValue"] as? String {
                            self.exportValue = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HeaderName"] as? String {
                            self.headerName = value
                        }
                        if let value = dict["HeaderValue"] as? String {
                            self.headerValue = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiId"] as? String {
                        self.apiId = value
                    }
                    if let value = dict["ApiName"] as? String {
                        self.apiName = value
                    }
                    if let value = dict["Body"] as? [String: Any?] {
                        var model = SavePtsSceneRequest.Scene.RelationList.ApiList.Body()
                        model.fromMap(value)
                        self.body = model
                    }
                    if let value = dict["CheckPointList"] as? [Any?] {
                        var tmp : [SavePtsSceneRequest.Scene.RelationList.ApiList.CheckPointList] = []
                        for v in value {
                            if v != nil {
                                var model = SavePtsSceneRequest.Scene.RelationList.ApiList.CheckPointList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.checkPointList = tmp
                    }
                    if let value = dict["ExportList"] as? [Any?] {
                        var tmp : [SavePtsSceneRequest.Scene.RelationList.ApiList.ExportList] = []
                        for v in value {
                            if v != nil {
                                var model = SavePtsSceneRequest.Scene.RelationList.ApiList.ExportList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.exportList = tmp
                    }
                    if let value = dict["HeaderList"] as? [Any?] {
                        var tmp : [SavePtsSceneRequest.Scene.RelationList.ApiList.HeaderList] = []
                        for v in value {
                            if v != nil {
                                var model = SavePtsSceneRequest.Scene.RelationList.ApiList.HeaderList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.headerList = tmp
                    }
                    if let value = dict["Method"] as? String {
                        self.method = value
                    }
                    if let value = dict["RedirectCountLimit"] as? Int32 {
                        self.redirectCountLimit = value
                    }
                    if let value = dict["TimeoutInSecond"] as? Int32 {
                        self.timeoutInSecond = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BaseFile"] as? Bool {
                        self.baseFile = value
                    }
                    if let value = dict["CycleOnce"] as? Bool {
                        self.cycleOnce = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileParamName"] as? String {
                        self.fileParamName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiList"] as? [Any?] {
                    var tmp : [SavePtsSceneRequest.Scene.RelationList.ApiList] = []
                    for v in value {
                        if v != nil {
                            var model = SavePtsSceneRequest.Scene.RelationList.ApiList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiList = tmp
                }
                if let value = dict["FileParameterExplainList"] as? [Any?] {
                    var tmp : [SavePtsSceneRequest.Scene.RelationList.FileParameterExplainList] = []
                    for v in value {
                        if v != nil {
                            var model = SavePtsSceneRequest.Scene.RelationList.FileParameterExplainList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fileParameterExplainList = tmp
                }
                if let value = dict["RelationId"] as? String {
                    self.relationId = value
                }
                if let value = dict["RelationName"] as? String {
                    self.relationName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvanceSetting"] as? [String: Any?] {
                var model = SavePtsSceneRequest.Scene.AdvanceSetting()
                model.fromMap(value)
                self.advanceSetting = model
            }
            if let value = dict["FileParameterList"] as? [Any?] {
                var tmp : [SavePtsSceneRequest.Scene.FileParameterList] = []
                for v in value {
                    if v != nil {
                        var model = SavePtsSceneRequest.Scene.FileParameterList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileParameterList = tmp
            }
            if let value = dict["GlobalParameterList"] as? [Any?] {
                var tmp : [SavePtsSceneRequest.Scene.GlobalParameterList] = []
                for v in value {
                    if v != nil {
                        var model = SavePtsSceneRequest.Scene.GlobalParameterList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.globalParameterList = tmp
            }
            if let value = dict["LoadConfig"] as? [String: Any?] {
                var model = SavePtsSceneRequest.Scene.LoadConfig()
                model.fromMap(value)
                self.loadConfig = model
            }
            if let value = dict["RelationList"] as? [Any?] {
                var tmp : [SavePtsSceneRequest.Scene.RelationList] = []
                for v in value {
                    if v != nil {
                        var model = SavePtsSceneRequest.Scene.RelationList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relationList = tmp
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scene"] as? [String: Any?] {
            var model = SavePtsSceneRequest.Scene()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scene"] as? String {
            self.sceneShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SavePtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartDebugPtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartDebuggingJMeterSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartPtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartTestingJMeterSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopDebugPtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopDebuggingJMeterSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopPtsSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopTestingJMeterSceneResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiBaselines"] as? [String: Any] {
            self.apiBaselines = value
        }
        if let value = dict["SceneBaseline"] as? [String: Any] {
            self.sceneBaseline = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiBaselines"] as? String {
            self.apiBaselinesShrink = value
        }
        if let value = dict["SceneBaseline"] as? String {
            self.sceneBaselineShrink = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePtsSceneBaseLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
