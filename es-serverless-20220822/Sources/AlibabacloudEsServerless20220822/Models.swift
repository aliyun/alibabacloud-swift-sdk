import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataStreamMapping : Tea.TeaModel {
    public var caseSensitive: Bool?

    public var docValues: Bool?

    public var index: Bool?

    public var key: String?

    public var properties: [DataStreamMapping]?

    public var tokenizeOnChars: [String]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caseSensitive != nil {
            map["caseSensitive"] = self.caseSensitive!
        }
        if self.docValues != nil {
            map["docValues"] = self.docValues!
        }
        if self.index != nil {
            map["index"] = self.index!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.properties != nil {
            var tmp : [Any] = []
            for k in self.properties! {
                tmp.append(k.toMap())
            }
            map["properties"] = tmp
        }
        if self.tokenizeOnChars != nil {
            map["tokenizeOnChars"] = self.tokenizeOnChars!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("caseSensitive") {
            self.caseSensitive = dict["caseSensitive"] as! Bool
        }
        if dict.keys.contains("docValues") {
            self.docValues = dict["docValues"] as! Bool
        }
        if dict.keys.contains("index") {
            self.index = dict["index"] as! Bool
        }
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("properties") {
            self.properties = dict["properties"] as! [DataStreamMapping]
        }
        if dict.keys.contains("tokenizeOnChars") {
            self.tokenizeOnChars = dict["tokenizeOnChars"] as! [String]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var appName: String?

    public var chargeType: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["appName"] = self.appName!
        }
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appName") {
            self.appName = dict["appName"] as! String
        }
        if dict.keys.contains("chargeType") {
            self.chargeType = dict["chargeType"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
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

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataStreamRequest : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var mappings: [DataStreamMapping]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mappings != nil {
                var tmp : [Any] = []
                for k in self.mappings! {
                    tmp.append(k.toMap())
                }
                map["mappings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mappings") {
                self.mappings = dict["mappings"] as! [DataStreamMapping]
            }
        }
    }
    public var dataStreamName: String?

    public var deletePhase: String?

    public var dynamic_: String?

    public var regionId: String?

    public var template: CreateDataStreamRequest.Template?

    public var timeStampKey: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataStreamName != nil {
            map["dataStreamName"] = self.dataStreamName!
        }
        if self.deletePhase != nil {
            map["deletePhase"] = self.deletePhase!
        }
        if self.dynamic_ != nil {
            map["dynamic"] = self.dynamic_!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.template != nil {
            map["template"] = self.template?.toMap()
        }
        if self.timeStampKey != nil {
            map["timeStampKey"] = self.timeStampKey!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataStreamName") {
            self.dataStreamName = dict["dataStreamName"] as! String
        }
        if dict.keys.contains("deletePhase") {
            self.deletePhase = dict["deletePhase"] as! String
        }
        if dict.keys.contains("dynamic") {
            self.dynamic_ = dict["dynamic"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("template") {
            var model = CreateDataStreamRequest.Template()
            model.fromMap(dict["template"] as! [String: Any])
            self.template = model
        }
        if dict.keys.contains("timeStampKey") {
            self.timeStampKey = dict["timeStampKey"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateDataStreamResponseBody : Tea.TeaModel {
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

public class CreateDataStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataStreamResponseBody?

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
            var model = CreateDataStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessTokenResponseBody : Tea.TeaModel {
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

public class DeleteAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessTokenResponseBody?

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
            var model = DeleteAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var instanceId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DeleteAppResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

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
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataStreamResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Bool
        }
    }
}

public class DeleteDataStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataStreamResponseBody?

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
            var model = DeleteDataStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescibeRegionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var endpoint: String?

        public var localName: String?

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
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.localName != nil {
                map["localName"] = self.localName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("localName") {
                self.localName = dict["localName"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [DescibeRegionsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [DescibeRegionsResponseBody.Result]
        }
    }
}

public class DescibeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescibeRegionsResponseBody?

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
            var model = DescibeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableAccessTokenResponseBody : Tea.TeaModel {
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

public class DisableAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAccessTokenResponseBody?

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
            var model = DisableAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableAccessTokenResponseBody : Tea.TeaModel {
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

public class EnableAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAccessTokenResponseBody?

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
            var model = EnableAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAcccessTokenResponseBody : Tea.TeaModel {
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

public class GenerateAcccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAcccessTokenResponseBody?

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
            var model = GenerateAcccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appName: String?

        public var createTime: String?

        public var description_: String?

        public var flowQuota: String?

        public var ownerId: String?

        public var regionId: String?

        public var status: String?

        public var storageQuota: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.flowQuota != nil {
                map["flowQuota"] = self.flowQuota!
            }
            if self.ownerId != nil {
                map["ownerId"] = self.ownerId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.storageQuota != nil {
                map["storageQuota"] = self.storageQuota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("flowQuota") {
                self.flowQuota = dict["flowQuota"] as! String
            }
            if dict.keys.contains("ownerId") {
                self.ownerId = dict["ownerId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("storageQuota") {
                self.storageQuota = dict["storageQuota"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetAppResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetAppResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppResponseBody?

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
            var model = GetAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataStreamResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Template : Tea.TeaModel {
            public var mappings: [DataStreamMapping]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mappings != nil {
                    var tmp : [Any] = []
                    for k in self.mappings! {
                        tmp.append(k.toMap())
                    }
                    map["mappings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("mappings") {
                    self.mappings = dict["mappings"] as! [DataStreamMapping]
                }
            }
        }
        public var appName: String?

        public var createTime: String?

        public var dataStreamId: String?

        public var dataStreamName: String?

        public var deletePhase: String?

        public var regionId: String?

        public var template: GetDataStreamResponseBody.Result.Template?

        public var timeStampKey: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataStreamId != nil {
                map["dataStreamId"] = self.dataStreamId!
            }
            if self.dataStreamName != nil {
                map["dataStreamName"] = self.dataStreamName!
            }
            if self.deletePhase != nil {
                map["deletePhase"] = self.deletePhase!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.timeStampKey != nil {
                map["timeStampKey"] = self.timeStampKey!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dataStreamId") {
                self.dataStreamId = dict["dataStreamId"] as! String
            }
            if dict.keys.contains("dataStreamName") {
                self.dataStreamName = dict["dataStreamName"] as! String
            }
            if dict.keys.contains("deletePhase") {
                self.deletePhase = dict["deletePhase"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("template") {
                var model = GetDataStreamResponseBody.Result.Template()
                model.fromMap(dict["template"] as! [String: Any])
                self.template = model
            }
            if dict.keys.contains("timeStampKey") {
                self.timeStampKey = dict["timeStampKey"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetDataStreamResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetDataStreamResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDataStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataStreamResponseBody?

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
            var model = GetDataStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRegionInfoResponseBody : Tea.TeaModel {
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

public class GetRegionInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegionInfoResponseBody?

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
            var model = GetRegionInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessTokensRequest : Tea.TeaModel {
    public var tokenId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tokenId != nil {
            map["tokenId"] = self.tokenId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("tokenId") {
            self.tokenId = dict["tokenId"] as! String
        }
    }
}

public class ListAccessTokensResponseBody : Tea.TeaModel {
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

public class ListAccessTokensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessTokensResponseBody?

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
            var model = ListAccessTokensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var appName: String?

    public var description_: String?

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
        if self.appName != nil {
            map["appName"] = self.appName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appName") {
            self.appName = dict["appName"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appName: String?

        public var createTime: String?

        public var description_: String?

        public var flowQuota: String?

        public var ownerId: String?

        public var regionId: String?

        public var status: String?

        public var storageQuota: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.flowQuota != nil {
                map["flowQuota"] = self.flowQuota!
            }
            if self.ownerId != nil {
                map["ownerId"] = self.ownerId!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.storageQuota != nil {
                map["storageQuota"] = self.storageQuota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("flowQuota") {
                self.flowQuota = dict["flowQuota"] as! String
            }
            if dict.keys.contains("ownerId") {
                self.ownerId = dict["ownerId"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("storageQuota") {
                self.storageQuota = dict["storageQuota"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListAppsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListAppsResponseBody.Result]
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

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
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataStreamsRequest : Tea.TeaModel {
    public var dataStreamName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.dataStreamName != nil {
            map["dataStreamName"] = self.dataStreamName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataStreamName") {
            self.dataStreamName = dict["dataStreamName"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
    }
}

public class ListDataStreamsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Template : Tea.TeaModel {
            public var mappings: [DataStreamMapping]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mappings != nil {
                    var tmp : [Any] = []
                    for k in self.mappings! {
                        tmp.append(k.toMap())
                    }
                    map["mappings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("mappings") {
                    self.mappings = dict["mappings"] as! [DataStreamMapping]
                }
            }
        }
        public var appName: String?

        public var createTime: String?

        public var dataStreamId: String?

        public var dataStreamName: String?

        public var deletePhase: String?

        public var regionId: String?

        public var template: ListDataStreamsResponseBody.Result.Template?

        public var timeStampKey: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataStreamId != nil {
                map["dataStreamId"] = self.dataStreamId!
            }
            if self.dataStreamName != nil {
                map["dataStreamName"] = self.dataStreamName!
            }
            if self.deletePhase != nil {
                map["deletePhase"] = self.deletePhase!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.timeStampKey != nil {
                map["timeStampKey"] = self.timeStampKey!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dataStreamId") {
                self.dataStreamId = dict["dataStreamId"] as! String
            }
            if dict.keys.contains("dataStreamName") {
                self.dataStreamName = dict["dataStreamName"] as! String
            }
            if dict.keys.contains("deletePhase") {
                self.deletePhase = dict["deletePhase"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("template") {
                var model = ListDataStreamsResponseBody.Result.Template()
                model.fromMap(dict["template"] as! [String: Any])
                self.template = model
            }
            if dict.keys.contains("timeStampKey") {
                self.timeStampKey = dict["timeStampKey"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataStreamsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListDataStreamsResponseBody.Result]
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListDataStreamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataStreamsResponseBody?

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
            var model = ListDataStreamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppRequest : Tea.TeaModel {
    public var description_: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class UpdateAppResponseBody : Tea.TeaModel {
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

public class UpdateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppResponseBody?

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
            var model = UpdateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDataStreamRequest : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var mappings: [DataStreamMapping]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mappings != nil {
                var tmp : [Any] = []
                for k in self.mappings! {
                    tmp.append(k.toMap())
                }
                map["mappings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mappings") {
                self.mappings = dict["mappings"] as! [DataStreamMapping]
            }
        }
    }
    public var deletePhase: String?

    public var dynamic_: String?

    public var template: UpdateDataStreamRequest.Template?

    public var timeStampKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletePhase != nil {
            map["deletePhase"] = self.deletePhase!
        }
        if self.dynamic_ != nil {
            map["dynamic"] = self.dynamic_!
        }
        if self.template != nil {
            map["template"] = self.template?.toMap()
        }
        if self.timeStampKey != nil {
            map["timeStampKey"] = self.timeStampKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deletePhase") {
            self.deletePhase = dict["deletePhase"] as! String
        }
        if dict.keys.contains("dynamic") {
            self.dynamic_ = dict["dynamic"] as! String
        }
        if dict.keys.contains("template") {
            var model = UpdateDataStreamRequest.Template()
            model.fromMap(dict["template"] as! [String: Any])
            self.template = model
        }
        if dict.keys.contains("timeStampKey") {
            self.timeStampKey = dict["timeStampKey"] as! String
        }
    }
}

public class UpdateDataStreamResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["appName"] = self.appName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appName") {
                self.appName = dict["appName"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: UpdateDataStreamResponseBody.Result?

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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateDataStreamResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateDataStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataStreamResponseBody?

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
            var model = UpdateDataStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
