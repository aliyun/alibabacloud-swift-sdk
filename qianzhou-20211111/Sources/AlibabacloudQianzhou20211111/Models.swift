import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AICreateSessionMessageRequest : Tea.TeaModel {
    public class Context : Tea.TeaModel {
        public var clusterId: String?

        public var error: String?

        public var kind: String?

        public var name: String?

        public var namespace: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.error != nil {
                map["error"] = self.error!
            }
            if self.kind != nil {
                map["kind"] = self.kind!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.uuid != nil {
                map["uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("error") {
                self.error = dict["error"] as! String
            }
            if dict.keys.contains("kind") {
                self.kind = dict["kind"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("uuid") {
                self.uuid = dict["uuid"] as! String
            }
        }
    }
    public var context: AICreateSessionMessageRequest.Context?

    public var language: String?

    public var message: String?

    public var sessionId: String?

    public var type: String?

    public var employeeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.sessionId != nil {
            map["session_id"] = self.sessionId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.employeeId != nil {
            map["employee_id"] = self.employeeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = AICreateSessionMessageRequest.Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("language") {
            self.language = dict["language"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("session_id") {
            self.sessionId = dict["session_id"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("employee_id") {
            self.employeeId = dict["employee_id"] as! String
        }
    }
}

public class AICreateSessionMessageResponseBody : Tea.TeaModel {
    public class Reference : Tea.TeaModel {
        public var title: String?

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
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var answer: String?

    public var code: Int64?

    public var data: String?

    public var msg: String?

    public var reference: [AICreateSessionMessageResponseBody.Reference]?

    public var requestId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answer != nil {
            map["answer"] = self.answer!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.reference != nil {
            var tmp : [Any] = []
            for k in self.reference! {
                tmp.append(k.toMap())
            }
            map["reference"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["session_id"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("answer") {
            self.answer = dict["answer"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("reference") {
            var tmp : [AICreateSessionMessageResponseBody.Reference] = []
            for v in dict["reference"] as! [Any] {
                var model = AICreateSessionMessageResponseBody.Reference()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.reference = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("session_id") {
            self.sessionId = dict["session_id"] as! String
        }
    }
}

public class AICreateSessionMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AICreateSessionMessageResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AICreateSessionMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiagnosisRequest : Tea.TeaModel {
    public var body: String?

    public var clusterID: String?

    public var diagnosisType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.clusterID != nil {
            map["clusterID"] = self.clusterID!
        }
        if self.diagnosisType != nil {
            map["diagnosisType"] = self.diagnosisType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
        }
        if dict.keys.contains("clusterID") {
            self.clusterID = dict["clusterID"] as! String
        }
        if dict.keys.contains("diagnosisType") {
            self.diagnosisType = dict["diagnosisType"] as! String
        }
    }
}

public class CreateDiagnosisResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Any?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiagnosisResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDiagnosisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterRequest : Tea.TeaModel {
    public var clusterID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterID != nil {
            map["clusterID"] = self.clusterID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterID") {
            self.clusterID = dict["clusterID"] as! String
        }
    }
}

public class GetClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterID: String?

        public var clusterType: String?

        public var currentVersion: String?

        public var name: String?

        public var profile: String?

        public var regionID: String?

        public var securityGroupId: String?

        public var spec: String?

        public var state: String?

        public var userID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterID != nil {
                map["clusterID"] = self.clusterID!
            }
            if self.clusterType != nil {
                map["clusterType"] = self.clusterType!
            }
            if self.currentVersion != nil {
                map["currentVersion"] = self.currentVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.profile != nil {
                map["profile"] = self.profile!
            }
            if self.regionID != nil {
                map["regionID"] = self.regionID!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.userID != nil {
                map["userID"] = self.userID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterID") {
                self.clusterID = dict["clusterID"] as! String
            }
            if dict.keys.contains("clusterType") {
                self.clusterType = dict["clusterType"] as! String
            }
            if dict.keys.contains("currentVersion") {
                self.currentVersion = dict["currentVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("profile") {
                self.profile = dict["profile"] as! String
            }
            if dict.keys.contains("regionID") {
                self.regionID = dict["regionID"] as! String
            }
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("spec") {
                self.spec = dict["spec"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("userID") {
                self.userID = dict["userID"] as! String
            }
        }
    }
    public var data: GetClusterResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetClusterResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterWarningRequest : Tea.TeaModel {
    public var clusterID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterID != nil {
            map["clusterID"] = self.clusterID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterID") {
            self.clusterID = dict["clusterID"] as! String
        }
    }
}

public class GetClusterWarningResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetClusterWarningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterWarningResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClusterWarningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiagnosisResultRequest : Tea.TeaModel {
    public var diagnosisId: String?

    public var ownerUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosisId != nil {
            map["diagnosisId"] = self.diagnosisId!
        }
        if self.ownerUid != nil {
            map["ownerUid"] = self.ownerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("diagnosisId") {
            self.diagnosisId = dict["diagnosisId"] as! String
        }
        if dict.keys.contains("ownerUid") {
            self.ownerUid = dict["ownerUid"] as! String
        }
    }
}

public class GetDiagnosisResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDiagnosisResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiagnosisResultResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDiagnosisResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserClusterWarningRequest : Tea.TeaModel {
    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userID") {
            self.userID = dict["userID"] as! String
        }
    }
}

public class GetUserClusterWarningResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetUserClusterWarningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserClusterWarningResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserClusterWarningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebshellTokenResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetWebshellTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebshellTokenResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetWebshellTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HelloRequest : Tea.TeaModel {
    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("user") {
            self.user = dict["user"] as! String
        }
    }
}

public class HelloResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var date: String?

        public var name: String?

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
            if self.date != nil {
                map["date"] = self.date!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("date") {
                self.date = dict["date"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("success") {
                self.success = dict["success"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: HelloResponseBody.Data?

    public var msg: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = HelloResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class HelloResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HelloResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = HelloResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterDeprecatedAPIRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.targetVersion != nil {
            map["target_version"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("target_version") {
            self.targetVersion = dict["target_version"] as! String
        }
    }
}

public class ListClusterDeprecatedAPIResponseBody : Tea.TeaModel {
    public class Datas : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var clusterId: String?

            public var content: String?

            public var count: Int32?

            public var currentVersion: String?

            public var deprecatedK8sVersion: String?

            public var ds: String?

            public var label: String?

            public var lastTime: String?

            public var requestUri: String?

            public var sourceIps: String?

            public var targetVersion: String?

            public var userAgent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["cluster_id"] = self.clusterId!
                }
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.count != nil {
                    map["count"] = self.count!
                }
                if self.currentVersion != nil {
                    map["current_version"] = self.currentVersion!
                }
                if self.deprecatedK8sVersion != nil {
                    map["deprecated_k8s_version"] = self.deprecatedK8sVersion!
                }
                if self.ds != nil {
                    map["ds"] = self.ds!
                }
                if self.label != nil {
                    map["label"] = self.label!
                }
                if self.lastTime != nil {
                    map["last_time"] = self.lastTime!
                }
                if self.requestUri != nil {
                    map["request_uri"] = self.requestUri!
                }
                if self.sourceIps != nil {
                    map["source_ips"] = self.sourceIps!
                }
                if self.targetVersion != nil {
                    map["target_version"] = self.targetVersion!
                }
                if self.userAgent != nil {
                    map["user_agent"] = self.userAgent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster_id") {
                    self.clusterId = dict["cluster_id"] as! String
                }
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("count") {
                    self.count = dict["count"] as! Int32
                }
                if dict.keys.contains("current_version") {
                    self.currentVersion = dict["current_version"] as! String
                }
                if dict.keys.contains("deprecated_k8s_version") {
                    self.deprecatedK8sVersion = dict["deprecated_k8s_version"] as! String
                }
                if dict.keys.contains("ds") {
                    self.ds = dict["ds"] as! String
                }
                if dict.keys.contains("label") {
                    self.label = dict["label"] as! String
                }
                if dict.keys.contains("last_time") {
                    self.lastTime = dict["last_time"] as! String
                }
                if dict.keys.contains("request_uri") {
                    self.requestUri = dict["request_uri"] as! String
                }
                if dict.keys.contains("source_ips") {
                    self.sourceIps = dict["source_ips"] as! String
                }
                if dict.keys.contains("target_version") {
                    self.targetVersion = dict["target_version"] as! String
                }
                if dict.keys.contains("user_agent") {
                    self.userAgent = dict["user_agent"] as! String
                }
            }
        }
        public var current: Int32?

        public var data: [ListClusterDeprecatedAPIResponseBody.Datas.Data]?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.current != nil {
                map["current"] = self.current!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("current") {
                self.current = dict["current"] as! Int32
            }
            if dict.keys.contains("data") {
                var tmp : [ListClusterDeprecatedAPIResponseBody.Datas.Data] = []
                for v in dict["data"] as! [Any] {
                    var model = ListClusterDeprecatedAPIResponseBody.Datas.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var datas: ListClusterDeprecatedAPIResponseBody.Datas?

    public var msg: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.datas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.datas != nil {
            map["datas"] = self.datas?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("datas") {
            var model = ListClusterDeprecatedAPIResponseBody.Datas()
            model.fromMap(dict["datas"] as! [String: Any])
            self.datas = model
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListClusterDeprecatedAPIResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterDeprecatedAPIResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClusterDeprecatedAPIResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterImagesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var imageHash: String?

    public var imageName: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.imageHash != nil {
            map["image_hash"] = self.imageHash!
        }
        if self.imageName != nil {
            map["image_name"] = self.imageName!
        }
        if self.pageNo != nil {
            map["page_no"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("image_hash") {
            self.imageHash = dict["image_hash"] as! String
        }
        if dict.keys.contains("image_name") {
            self.imageName = dict["image_name"] as! String
        }
        if dict.keys.contains("page_no") {
            self.pageNo = dict["page_no"] as! Int32
        }
        if dict.keys.contains("page_size") {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class ListClusterImagesResponseBody : Tea.TeaModel {
    public class Datas : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var clusterId: String?

            public var controllerName: String?

            public var controllerType: String?

            public var created: String?

            public var imageHash: String?

            public var imageName: String?

            public var namespace: String?

            public var uid: String?

            public var updated: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["cluster_id"] = self.clusterId!
                }
                if self.controllerName != nil {
                    map["controller_name"] = self.controllerName!
                }
                if self.controllerType != nil {
                    map["controller_type"] = self.controllerType!
                }
                if self.created != nil {
                    map["created"] = self.created!
                }
                if self.imageHash != nil {
                    map["image_hash"] = self.imageHash!
                }
                if self.imageName != nil {
                    map["image_name"] = self.imageName!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.updated != nil {
                    map["updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster_id") {
                    self.clusterId = dict["cluster_id"] as! String
                }
                if dict.keys.contains("controller_name") {
                    self.controllerName = dict["controller_name"] as! String
                }
                if dict.keys.contains("controller_type") {
                    self.controllerType = dict["controller_type"] as! String
                }
                if dict.keys.contains("created") {
                    self.created = dict["created"] as! String
                }
                if dict.keys.contains("image_hash") {
                    self.imageHash = dict["image_hash"] as! String
                }
                if dict.keys.contains("image_name") {
                    self.imageName = dict["image_name"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("uid") {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("updated") {
                    self.updated = dict["updated"] as! String
                }
            }
        }
        public var current: Int32?

        public var data: [ListClusterImagesResponseBody.Datas.Data]?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.current != nil {
                map["current"] = self.current!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("current") {
                self.current = dict["current"] as! Int32
            }
            if dict.keys.contains("data") {
                var tmp : [ListClusterImagesResponseBody.Datas.Data] = []
                for v in dict["data"] as! [Any] {
                    var model = ListClusterImagesResponseBody.Datas.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var datas: ListClusterImagesResponseBody.Datas?

    public var msg: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.datas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.datas != nil {
            map["datas"] = self.datas?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("datas") {
            var model = ListClusterImagesResponseBody.Datas()
            model.fromMap(dict["datas"] as! [String: Any])
            self.datas = model
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListClusterImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterImagesResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClusterImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserClustersRequest : Tea.TeaModel {
    public var current: String?

    public var pageSize: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("current") {
            self.current = dict["current"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("userID") {
            self.userID = dict["userID"] as! String
        }
    }
}

public class ListUserClustersResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: String?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListUserClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserClustersResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUserClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryByInstanceInfoRequest : Tea.TeaModel {
    public var instanceId: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class QueryByInstanceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterId: String?

        public var clusterName: String?

        public var instanceId: String?

        public var regionId: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterId") {
                self.clusterId = dict["clusterId"] as! String
            }
            if dict.keys.contains("clusterName") {
                self.clusterName = dict["clusterName"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("uid") {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [QueryByInstanceInfoResponseBody.Data]?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            var tmp : [QueryByInstanceInfoResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = QueryByInstanceInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class QueryByInstanceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryByInstanceInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryByInstanceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryNodeInfoRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class QueryNodeInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cluserName: String?

        public var clusterId: String?

        public var instanceId: String?

        public var region: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluserName != nil {
                map["cluserName"] = self.cluserName!
            }
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluserName") {
                self.cluserName = dict["cluserName"] as! String
            }
            if dict.keys.contains("clusterId") {
                self.clusterId = dict["clusterId"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("region") {
                self.region = dict["region"] as! String
            }
            if dict.keys.contains("uid") {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [QueryNodeInfoResponseBody.Data]?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int32
        }
        if dict.keys.contains("data") {
            var tmp : [QueryNodeInfoResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = QueryNodeInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class QueryNodeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryNodeInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryNodeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
