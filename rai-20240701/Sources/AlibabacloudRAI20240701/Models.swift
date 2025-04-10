import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchContentAsyncDetectRequest : Tea.TeaModel {
    public class ServiceParameterList : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
        }
    }
    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public var serviceParameterList: [BatchContentAsyncDetectRequest.ServiceParameterList]?

    public override init() {
        super.init()
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
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceParameterList != nil {
            var tmp : [Any] = []
            for k in self.serviceParameterList! {
                tmp.append(k.toMap())
            }
            map["serviceParameterList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("serviceParameterList") {
            var tmp : [BatchContentAsyncDetectRequest.ServiceParameterList] = []
            for v in dict["serviceParameterList"] as! [Any] {
                var model = BatchContentAsyncDetectRequest.ServiceParameterList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceParameterList = tmp
        }
    }
}

public class BatchContentAsyncDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: BatchContentAsyncDetectResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = BatchContentAsyncDetectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class BatchContentAsyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchContentAsyncDetectResponseBody?

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
            var model = BatchContentAsyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchContentSyncDetectRequest : Tea.TeaModel {
    public class ServiceParameterList : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
        }
    }
    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public var serviceParameterList: [BatchContentSyncDetectRequest.ServiceParameterList]?

    public override init() {
        super.init()
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
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceParameterList != nil {
            var tmp : [Any] = []
            for k in self.serviceParameterList! {
                tmp.append(k.toMap())
            }
            map["serviceParameterList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("serviceParameterList") {
            var tmp : [BatchContentSyncDetectRequest.ServiceParameterList] = []
            for v in dict["serviceParameterList"] as! [Any] {
                var model = BatchContentSyncDetectRequest.ServiceParameterList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceParameterList = tmp
        }
    }
}

public class BatchContentSyncDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetectResultList : Tea.TeaModel {
            public var riskInfo: String?

            public var riskResult: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.riskInfo != nil {
                    map["RiskInfo"] = self.riskInfo!
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RiskInfo") {
                    self.riskInfo = dict["RiskInfo"] as! String
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
            }
        }
        public var detectResultList: [BatchContentSyncDetectResponseBody.Data.DetectResultList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectResultList != nil {
                var tmp : [Any] = []
                for k in self.detectResultList! {
                    tmp.append(k.toMap())
                }
                map["DetectResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectResultList") {
                var tmp : [BatchContentSyncDetectResponseBody.Data.DetectResultList] = []
                for v in dict["DetectResultList"] as! [Any] {
                    var model = BatchContentSyncDetectResponseBody.Data.DetectResultList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.detectResultList = tmp
            }
        }
    }
    public var code: String?

    public var data: BatchContentSyncDetectResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = BatchContentSyncDetectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class BatchContentSyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchContentSyncDetectResponseBody?

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
            var model = BatchContentSyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckAccountRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CheckAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkResult: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkResult != nil {
                map["CheckResult"] = self.checkResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckResult") {
                self.checkResult = dict["CheckResult"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: CheckAccountResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = CheckAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CheckAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAccountResponseBody?

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
            var model = CheckAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContentAsyncDetectRequest : Tea.TeaModel {
    public class ServiceParameter : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
        }
    }
    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public var serviceParameter: ContentAsyncDetectRequest.ServiceParameter?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceParameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceParameter != nil {
            map["serviceParameter"] = self.serviceParameter?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("serviceParameter") {
            var model = ContentAsyncDetectRequest.ServiceParameter()
            model.fromMap(dict["serviceParameter"] as! [String: Any])
            self.serviceParameter = model
        }
    }
}

public class ContentAsyncDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ContentAsyncDetectResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = ContentAsyncDetectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ContentAsyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContentAsyncDetectResponseBody?

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
            var model = ContentAsyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContentSyncDetectRequest : Tea.TeaModel {
    public class ServiceParameter : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
        }
    }
    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public var serviceParameter: ContentSyncDetectRequest.ServiceParameter?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceParameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceParameter != nil {
            map["serviceParameter"] = self.serviceParameter?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("serviceParameter") {
            var model = ContentSyncDetectRequest.ServiceParameter()
            model.fromMap(dict["serviceParameter"] as! [String: Any])
            self.serviceParameter = model
        }
    }
}

public class ContentSyncDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var riskInfo: String?

        public var riskResult: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.riskInfo != nil {
                map["RiskInfo"] = self.riskInfo!
            }
            if self.riskResult != nil {
                map["RiskResult"] = self.riskResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RiskInfo") {
                self.riskInfo = dict["RiskInfo"] as! String
            }
            if dict.keys.contains("RiskResult") {
                self.riskResult = dict["RiskResult"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ContentSyncDetectResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = ContentSyncDetectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ContentSyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContentSyncDetectResponseBody?

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
            var model = ContentSyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetContentDetectResultRequest : Tea.TeaModel {
    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetContentDetectResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetectResultList : Tea.TeaModel {
            public var riskInfo: String?

            public var riskResult: Int32?

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
                if self.riskInfo != nil {
                    map["RiskInfo"] = self.riskInfo!
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RiskInfo") {
                    self.riskInfo = dict["RiskInfo"] as! String
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var detectResultList: [GetContentDetectResultResponseBody.Data.DetectResultList]?

        public var processedCount: Int32?

        public var taskId: String?

        public var taskStatus: Int32?

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
            if self.detectResultList != nil {
                var tmp : [Any] = []
                for k in self.detectResultList! {
                    tmp.append(k.toMap())
                }
                map["DetectResultList"] = tmp
            }
            if self.processedCount != nil {
                map["ProcessedCount"] = self.processedCount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectResultList") {
                var tmp : [GetContentDetectResultResponseBody.Data.DetectResultList] = []
                for v in dict["DetectResultList"] as! [Any] {
                    var model = GetContentDetectResultResponseBody.Data.DetectResultList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.detectResultList = tmp
            }
            if dict.keys.contains("ProcessedCount") {
                self.processedCount = dict["ProcessedCount"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: GetContentDetectResultResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = GetContentDetectResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetContentDetectResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetContentDetectResultResponseBody?

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
            var model = GetContentDetectResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelInputContentDetectResultRequest : Tea.TeaModel {
    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetModelInputContentDetectResultResponseBody : Tea.TeaModel {
    public class DetectResultList : Tea.TeaModel {
        public class TraceInfo : Tea.TeaModel {
            public class BlockWord : Tea.TeaModel {
                public class BlockWordGroupInfoList : Tea.TeaModel {
                    public class BlockWordList : Tea.TeaModel {
                        public var word: String?

                        public var wordLabel: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.word != nil {
                                map["Word"] = self.word!
                            }
                            if self.wordLabel != nil {
                                map["WordLabel"] = self.wordLabel!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Word") {
                                self.word = dict["Word"] as! String
                            }
                            if dict.keys.contains("WordLabel") {
                                self.wordLabel = dict["WordLabel"] as! String
                            }
                        }
                    }
                    public var blockWordList: [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList]?

                    public var groupName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blockWordList != nil {
                            var tmp : [Any] = []
                            for k in self.blockWordList! {
                                tmp.append(k.toMap())
                            }
                            map["BlockWordList"] = tmp
                        }
                        if self.groupName != nil {
                            map["GroupName"] = self.groupName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BlockWordList") {
                            var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                            for v in dict["BlockWordList"] as! [Any] {
                                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.blockWordList = tmp
                        }
                        if dict.keys.contains("GroupName") {
                            self.groupName = dict["GroupName"] as! String
                        }
                    }
                }
                public var blockWordGroupInfoList: [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList]?

                public var riskResult: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockWordGroupInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.blockWordGroupInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["BlockWordGroupInfoList"] = tmp
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BlockWordGroupInfoList") {
                        var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                        for v in dict["BlockWordGroupInfoList"] as! [Any] {
                            var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.blockWordGroupInfoList = tmp
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                }
            }
            public class HarmfulCategories : Tea.TeaModel {
                public class HarmfulCategoryInfoList : Tea.TeaModel {
                    public var categoryLabel: String?

                    public var categoryType: Int32?

                    public var riskResult: Int32?

                    public var securityLevel: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.categoryLabel != nil {
                            map["CategoryLabel"] = self.categoryLabel!
                        }
                        if self.categoryType != nil {
                            map["CategoryType"] = self.categoryType!
                        }
                        if self.riskResult != nil {
                            map["RiskResult"] = self.riskResult!
                        }
                        if self.securityLevel != nil {
                            map["SecurityLevel"] = self.securityLevel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CategoryLabel") {
                            self.categoryLabel = dict["CategoryLabel"] as! String
                        }
                        if dict.keys.contains("CategoryType") {
                            self.categoryType = dict["CategoryType"] as! Int32
                        }
                        if dict.keys.contains("RiskResult") {
                            self.riskResult = dict["RiskResult"] as! Int32
                        }
                        if dict.keys.contains("SecurityLevel") {
                            self.securityLevel = dict["SecurityLevel"] as! Int32
                        }
                    }
                }
                public var confidenceScore: Double?

                public var harmfulCategoryInfoList: [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList]?

                public var riskResult: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidenceScore != nil {
                        map["ConfidenceScore"] = self.confidenceScore!
                    }
                    if self.harmfulCategoryInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.harmfulCategoryInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["HarmfulCategoryInfoList"] = tmp
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfidenceScore") {
                        self.confidenceScore = dict["ConfidenceScore"] as! Double
                    }
                    if dict.keys.contains("HarmfulCategoryInfoList") {
                        var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                        for v in dict["HarmfulCategoryInfoList"] as! [Any] {
                            var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.harmfulCategoryInfoList = tmp
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                }
            }
            public class PromptAttack : Tea.TeaModel {
                public var promptAttackInfo: String?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.promptAttackInfo != nil {
                        map["PromptAttackInfo"] = self.promptAttackInfo!
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PromptAttackInfo") {
                        self.promptAttackInfo = dict["PromptAttackInfo"] as! String
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                    if dict.keys.contains("SecurityLevel") {
                        self.securityLevel = dict["SecurityLevel"] as! Int32
                    }
                }
            }
            public var blockWord: GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord?

            public var harmfulCategories: GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories?

            public var promptAttack: GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.blockWord?.validate()
                try self.harmfulCategories?.validate()
                try self.promptAttack?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockWord != nil {
                    map["BlockWord"] = self.blockWord?.toMap()
                }
                if self.harmfulCategories != nil {
                    map["HarmfulCategories"] = self.harmfulCategories?.toMap()
                }
                if self.promptAttack != nil {
                    map["PromptAttack"] = self.promptAttack?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockWord") {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord()
                    model.fromMap(dict["BlockWord"] as! [String: Any])
                    self.blockWord = model
                }
                if dict.keys.contains("HarmfulCategories") {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories()
                    model.fromMap(dict["HarmfulCategories"] as! [String: Any])
                    self.harmfulCategories = model
                }
                if dict.keys.contains("PromptAttack") {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack()
                    model.fromMap(dict["PromptAttack"] as! [String: Any])
                    self.promptAttack = model
                }
            }
        }
        public var riskResult: Int32?

        public var status: Int32?

        public var traceInfo: GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.traceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.riskResult != nil {
                map["RiskResult"] = self.riskResult!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.traceInfo != nil {
                map["TraceInfo"] = self.traceInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RiskResult") {
                self.riskResult = dict["RiskResult"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TraceInfo") {
                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo()
                model.fromMap(dict["TraceInfo"] as! [String: Any])
                self.traceInfo = model
            }
        }
    }
    public var code: String?

    public var detectResultList: [GetModelInputContentDetectResultResponseBody.DetectResultList]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var processedCount: Int32?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public var taskStatus: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detectResultList != nil {
            var tmp : [Any] = []
            for k in self.detectResultList! {
                tmp.append(k.toMap())
            }
            map["DetectResultList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.processedCount != nil {
            map["ProcessedCount"] = self.processedCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
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
        if dict.keys.contains("DetectResultList") {
            var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList] = []
            for v in dict["DetectResultList"] as! [Any] {
                var model = GetModelInputContentDetectResultResponseBody.DetectResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.detectResultList = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProcessedCount") {
            self.processedCount = dict["ProcessedCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetModelInputContentDetectResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelInputContentDetectResultResponseBody?

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
            var model = GetModelInputContentDetectResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelOutputContentDetectResultRequest : Tea.TeaModel {
    public var regionId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetModelOutputContentDetectResultResponseBody : Tea.TeaModel {
    public class DetectResultList : Tea.TeaModel {
        public class TraceInfo : Tea.TeaModel {
            public class BlockWord : Tea.TeaModel {
                public class BlockWordGroupInfoList : Tea.TeaModel {
                    public class BlockWordList : Tea.TeaModel {
                        public var word: String?

                        public var wordLabel: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.word != nil {
                                map["Word"] = self.word!
                            }
                            if self.wordLabel != nil {
                                map["WordLabel"] = self.wordLabel!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Word") {
                                self.word = dict["Word"] as! String
                            }
                            if dict.keys.contains("WordLabel") {
                                self.wordLabel = dict["WordLabel"] as! String
                            }
                        }
                    }
                    public var blockWordList: [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList]?

                    public var groupName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blockWordList != nil {
                            var tmp : [Any] = []
                            for k in self.blockWordList! {
                                tmp.append(k.toMap())
                            }
                            map["BlockWordList"] = tmp
                        }
                        if self.groupName != nil {
                            map["GroupName"] = self.groupName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BlockWordList") {
                            var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                            for v in dict["BlockWordList"] as! [Any] {
                                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.blockWordList = tmp
                        }
                        if dict.keys.contains("GroupName") {
                            self.groupName = dict["GroupName"] as! String
                        }
                    }
                }
                public var blockWordGroupInfoList: [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList]?

                public var riskResult: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockWordGroupInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.blockWordGroupInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["BlockWordGroupInfoList"] = tmp
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BlockWordGroupInfoList") {
                        var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                        for v in dict["BlockWordGroupInfoList"] as! [Any] {
                            var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.blockWordGroupInfoList = tmp
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                }
            }
            public class HarmfulCategories : Tea.TeaModel {
                public class HarmfulCategoryInfoList : Tea.TeaModel {
                    public var categoryLabel: String?

                    public var categoryType: Int32?

                    public var riskResult: Int32?

                    public var securityLevel: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.categoryLabel != nil {
                            map["CategoryLabel"] = self.categoryLabel!
                        }
                        if self.categoryType != nil {
                            map["CategoryType"] = self.categoryType!
                        }
                        if self.riskResult != nil {
                            map["RiskResult"] = self.riskResult!
                        }
                        if self.securityLevel != nil {
                            map["SecurityLevel"] = self.securityLevel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CategoryLabel") {
                            self.categoryLabel = dict["CategoryLabel"] as! String
                        }
                        if dict.keys.contains("CategoryType") {
                            self.categoryType = dict["CategoryType"] as! Int32
                        }
                        if dict.keys.contains("RiskResult") {
                            self.riskResult = dict["RiskResult"] as! Int32
                        }
                        if dict.keys.contains("SecurityLevel") {
                            self.securityLevel = dict["SecurityLevel"] as! Int32
                        }
                    }
                }
                public var confidenceScore: Double?

                public var harmfulCategoryInfoList: [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList]?

                public var riskResult: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidenceScore != nil {
                        map["ConfidenceScore"] = self.confidenceScore!
                    }
                    if self.harmfulCategoryInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.harmfulCategoryInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["HarmfulCategoryInfoList"] = tmp
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfidenceScore") {
                        self.confidenceScore = dict["ConfidenceScore"] as! Double
                    }
                    if dict.keys.contains("HarmfulCategoryInfoList") {
                        var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                        for v in dict["HarmfulCategoryInfoList"] as! [Any] {
                            var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.harmfulCategoryInfoList = tmp
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                }
            }
            public class PromptAttack : Tea.TeaModel {
                public var promptAttackInfo: String?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.promptAttackInfo != nil {
                        map["PromptAttackInfo"] = self.promptAttackInfo!
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PromptAttackInfo") {
                        self.promptAttackInfo = dict["PromptAttackInfo"] as! String
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                    if dict.keys.contains("SecurityLevel") {
                        self.securityLevel = dict["SecurityLevel"] as! Int32
                    }
                }
            }
            public var blockWord: GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord?

            public var harmfulCategories: GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories?

            public var promptAttack: GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.blockWord?.validate()
                try self.harmfulCategories?.validate()
                try self.promptAttack?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockWord != nil {
                    map["BlockWord"] = self.blockWord?.toMap()
                }
                if self.harmfulCategories != nil {
                    map["HarmfulCategories"] = self.harmfulCategories?.toMap()
                }
                if self.promptAttack != nil {
                    map["PromptAttack"] = self.promptAttack?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockWord") {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord()
                    model.fromMap(dict["BlockWord"] as! [String: Any])
                    self.blockWord = model
                }
                if dict.keys.contains("HarmfulCategories") {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories()
                    model.fromMap(dict["HarmfulCategories"] as! [String: Any])
                    self.harmfulCategories = model
                }
                if dict.keys.contains("PromptAttack") {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack()
                    model.fromMap(dict["PromptAttack"] as! [String: Any])
                    self.promptAttack = model
                }
            }
        }
        public var riskResult: Int32?

        public var status: Int32?

        public var traceInfo: GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.traceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.riskResult != nil {
                map["RiskResult"] = self.riskResult!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.traceInfo != nil {
                map["TraceInfo"] = self.traceInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RiskResult") {
                self.riskResult = dict["RiskResult"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TraceInfo") {
                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo()
                model.fromMap(dict["TraceInfo"] as! [String: Any])
                self.traceInfo = model
            }
        }
    }
    public var code: String?

    public var detectResultList: [GetModelOutputContentDetectResultResponseBody.DetectResultList]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var processedCount: Int32?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public var taskStatus: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detectResultList != nil {
            var tmp : [Any] = []
            for k in self.detectResultList! {
                tmp.append(k.toMap())
            }
            map["DetectResultList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.processedCount != nil {
            map["ProcessedCount"] = self.processedCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
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
        if dict.keys.contains("DetectResultList") {
            var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList] = []
            for v in dict["DetectResultList"] as! [Any] {
                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.detectResultList = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProcessedCount") {
            self.processedCount = dict["ProcessedCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetModelOutputContentDetectResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelOutputContentDetectResultResponseBody?

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
            var model = GetModelOutputContentDetectResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSensitiveWordRequest : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
    }
}

public class ListSensitiveWordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SensitiveWordList : Tea.TeaModel {
            public var id: Int64?

            public var label: String?

            public var word: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Word") {
                    self.word = dict["Word"] as! String
                }
            }
        }
        public var maxCount: Int32?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var sensitiveWordList: [ListSensitiveWordResponseBody.Data.SensitiveWordList]?

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
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.sensitiveWordList != nil {
                var tmp : [Any] = []
                for k in self.sensitiveWordList! {
                    tmp.append(k.toMap())
                }
                map["SensitiveWordList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! Int32
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("SensitiveWordList") {
                var tmp : [ListSensitiveWordResponseBody.Data.SensitiveWordList] = []
                for v in dict["SensitiveWordList"] as! [Any] {
                    var model = ListSensitiveWordResponseBody.Data.SensitiveWordList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sensitiveWordList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListSensitiveWordResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = ListSensitiveWordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class ModelInputContentAsyncDetectRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
        }
    }
    public var bodyData: ModelInputContentAsyncDetectRequest.BodyData?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bodyData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyData != nil {
            map["BodyData"] = self.bodyData?.toMap()
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            var model = ModelInputContentAsyncDetectRequest.BodyData()
            model.fromMap(dict["BodyData"] as! [String: Any])
            self.bodyData = model
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelInputContentAsyncDetectShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyDataShrink != nil {
            map["BodyData"] = self.bodyDataShrink!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            self.bodyDataShrink = dict["BodyData"] as! String
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelInputContentAsyncDetectResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModelInputContentAsyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelInputContentAsyncDetectResponseBody?

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
            var model = ModelInputContentAsyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModelInputContentSyncDetectRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
        }
    }
    public var bodyData: ModelInputContentSyncDetectRequest.BodyData?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bodyData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyData != nil {
            map["BodyData"] = self.bodyData?.toMap()
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            var model = ModelInputContentSyncDetectRequest.BodyData()
            model.fromMap(dict["BodyData"] as! [String: Any])
            self.bodyData = model
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelInputContentSyncDetectShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyDataShrink != nil {
            map["BodyData"] = self.bodyDataShrink!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            self.bodyDataShrink = dict["BodyData"] as! String
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelInputContentSyncDetectResponseBody : Tea.TeaModel {
    public class TraceInfo : Tea.TeaModel {
        public class BlockWord : Tea.TeaModel {
            public class BlockWordGroupInfoList : Tea.TeaModel {
                public class BlockWordList : Tea.TeaModel {
                    public var word: String?

                    public var wordLabel: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.word != nil {
                            map["Word"] = self.word!
                        }
                        if self.wordLabel != nil {
                            map["WordLabel"] = self.wordLabel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Word") {
                            self.word = dict["Word"] as! String
                        }
                        if dict.keys.contains("WordLabel") {
                            self.wordLabel = dict["WordLabel"] as! String
                        }
                    }
                }
                public var blockWordList: [ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList]?

                public var groupName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockWordList != nil {
                        var tmp : [Any] = []
                        for k in self.blockWordList! {
                            tmp.append(k.toMap())
                        }
                        map["BlockWordList"] = tmp
                    }
                    if self.groupName != nil {
                        map["GroupName"] = self.groupName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BlockWordList") {
                        var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                        for v in dict["BlockWordList"] as! [Any] {
                            var model = ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.blockWordList = tmp
                    }
                    if dict.keys.contains("GroupName") {
                        self.groupName = dict["GroupName"] as! String
                    }
                }
            }
            public var blockWordGroupInfoList: [ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList]?

            public var riskResult: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockWordGroupInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.blockWordGroupInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["BlockWordGroupInfoList"] = tmp
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockWordGroupInfoList") {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                    for v in dict["BlockWordGroupInfoList"] as! [Any] {
                        var model = ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.blockWordGroupInfoList = tmp
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
            }
        }
        public class HarmfulCategories : Tea.TeaModel {
            public class HarmfulCategoryInfoList : Tea.TeaModel {
                public var categoryLabel: String?

                public var categoryType: Int32?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryLabel != nil {
                        map["CategoryLabel"] = self.categoryLabel!
                    }
                    if self.categoryType != nil {
                        map["CategoryType"] = self.categoryType!
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CategoryLabel") {
                        self.categoryLabel = dict["CategoryLabel"] as! String
                    }
                    if dict.keys.contains("CategoryType") {
                        self.categoryType = dict["CategoryType"] as! Int32
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                    if dict.keys.contains("SecurityLevel") {
                        self.securityLevel = dict["SecurityLevel"] as! Int32
                    }
                }
            }
            public var confidenceScore: Double?

            public var harmfulCategoryInfoList: [ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList]?

            public var riskResult: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.confidenceScore != nil {
                    map["ConfidenceScore"] = self.confidenceScore!
                }
                if self.harmfulCategoryInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.harmfulCategoryInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["HarmfulCategoryInfoList"] = tmp
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfidenceScore") {
                    self.confidenceScore = dict["ConfidenceScore"] as! Double
                }
                if dict.keys.contains("HarmfulCategoryInfoList") {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                    for v in dict["HarmfulCategoryInfoList"] as! [Any] {
                        var model = ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.harmfulCategoryInfoList = tmp
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
            }
        }
        public class PromptAttack : Tea.TeaModel {
            public var confidenceScore: Double?

            public var promptAttackInfo: String?

            public var riskResult: Int32?

            public var securityLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.confidenceScore != nil {
                    map["ConfidenceScore"] = self.confidenceScore!
                }
                if self.promptAttackInfo != nil {
                    map["PromptAttackInfo"] = self.promptAttackInfo!
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfidenceScore") {
                    self.confidenceScore = dict["ConfidenceScore"] as! Double
                }
                if dict.keys.contains("PromptAttackInfo") {
                    self.promptAttackInfo = dict["PromptAttackInfo"] as! String
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
                if dict.keys.contains("SecurityLevel") {
                    self.securityLevel = dict["SecurityLevel"] as! Int32
                }
            }
        }
        public var blockWord: ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord?

        public var harmfulCategories: ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories?

        public var promptAttack: ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockWord?.validate()
            try self.harmfulCategories?.validate()
            try self.promptAttack?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockWord != nil {
                map["BlockWord"] = self.blockWord?.toMap()
            }
            if self.harmfulCategories != nil {
                map["HarmfulCategories"] = self.harmfulCategories?.toMap()
            }
            if self.promptAttack != nil {
                map["PromptAttack"] = self.promptAttack?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockWord") {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord()
                model.fromMap(dict["BlockWord"] as! [String: Any])
                self.blockWord = model
            }
            if dict.keys.contains("HarmfulCategories") {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories()
                model.fromMap(dict["HarmfulCategories"] as! [String: Any])
                self.harmfulCategories = model
            }
            if dict.keys.contains("PromptAttack") {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack()
                model.fromMap(dict["PromptAttack"] as! [String: Any])
                self.promptAttack = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var riskResult: Int32?

    public var success: Bool?

    public var traceInfo: ModelInputContentSyncDetectResponseBody.TraceInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.traceInfo?.validate()
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
        if self.riskResult != nil {
            map["RiskResult"] = self.riskResult!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.traceInfo != nil {
            map["TraceInfo"] = self.traceInfo?.toMap()
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
        if dict.keys.contains("RiskResult") {
            self.riskResult = dict["RiskResult"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TraceInfo") {
            var model = ModelInputContentSyncDetectResponseBody.TraceInfo()
            model.fromMap(dict["TraceInfo"] as! [String: Any])
            self.traceInfo = model
        }
    }
}

public class ModelInputContentSyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelInputContentSyncDetectResponseBody?

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
            var model = ModelInputContentSyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModelOutputContentAsyncDetectRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
        }
    }
    public var bodyData: ModelOutputContentAsyncDetectRequest.BodyData?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bodyData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyData != nil {
            map["BodyData"] = self.bodyData?.toMap()
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            var model = ModelOutputContentAsyncDetectRequest.BodyData()
            model.fromMap(dict["BodyData"] as! [String: Any])
            self.bodyData = model
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelOutputContentAsyncDetectShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyDataShrink != nil {
            map["BodyData"] = self.bodyDataShrink!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            self.bodyDataShrink = dict["BodyData"] as! String
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelOutputContentAsyncDetectResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModelOutputContentAsyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelOutputContentAsyncDetectResponseBody?

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
            var model = ModelOutputContentAsyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModelOutputContentSyncDetectRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
        }
    }
    public var bodyData: ModelOutputContentSyncDetectRequest.BodyData?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bodyData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyData != nil {
            map["BodyData"] = self.bodyData?.toMap()
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            var model = ModelOutputContentSyncDetectRequest.BodyData()
            model.fromMap(dict["BodyData"] as! [String: Any])
            self.bodyData = model
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelOutputContentSyncDetectShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var policyIdentifier: String?

    public var regionId: String?

    public var sceneName: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyDataShrink != nil {
            map["BodyData"] = self.bodyDataShrink!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            self.bodyDataShrink = dict["BodyData"] as! String
        }
        if dict.keys.contains("PolicyIdentifier") {
            self.policyIdentifier = dict["PolicyIdentifier"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class ModelOutputContentSyncDetectResponseBody : Tea.TeaModel {
    public class TraceInfo : Tea.TeaModel {
        public class BlockWord : Tea.TeaModel {
            public class BlockWordGroupInfoList : Tea.TeaModel {
                public class BlockWordList : Tea.TeaModel {
                    public var word: String?

                    public var wordLabel: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.word != nil {
                            map["Word"] = self.word!
                        }
                        if self.wordLabel != nil {
                            map["WordLabel"] = self.wordLabel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Word") {
                            self.word = dict["Word"] as! String
                        }
                        if dict.keys.contains("WordLabel") {
                            self.wordLabel = dict["WordLabel"] as! String
                        }
                    }
                }
                public var blockWordList: [ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList]?

                public var groupName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blockWordList != nil {
                        var tmp : [Any] = []
                        for k in self.blockWordList! {
                            tmp.append(k.toMap())
                        }
                        map["BlockWordList"] = tmp
                    }
                    if self.groupName != nil {
                        map["GroupName"] = self.groupName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BlockWordList") {
                        var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                        for v in dict["BlockWordList"] as! [Any] {
                            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.blockWordList = tmp
                    }
                    if dict.keys.contains("GroupName") {
                        self.groupName = dict["GroupName"] as! String
                    }
                }
            }
            public var blockWordGroupInfoList: [ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList]?

            public var riskResult: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockWordGroupInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.blockWordGroupInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["BlockWordGroupInfoList"] = tmp
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockWordGroupInfoList") {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                    for v in dict["BlockWordGroupInfoList"] as! [Any] {
                        var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.blockWordGroupInfoList = tmp
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
            }
        }
        public class HarmfulCategories : Tea.TeaModel {
            public class HarmfulCategoryInfoList : Tea.TeaModel {
                public var categoryLabel: String?

                public var categoryType: Int32?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryLabel != nil {
                        map["CategoryLabel"] = self.categoryLabel!
                    }
                    if self.categoryType != nil {
                        map["CategoryType"] = self.categoryType!
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CategoryLabel") {
                        self.categoryLabel = dict["CategoryLabel"] as! String
                    }
                    if dict.keys.contains("CategoryType") {
                        self.categoryType = dict["CategoryType"] as! Int32
                    }
                    if dict.keys.contains("RiskResult") {
                        self.riskResult = dict["RiskResult"] as! Int32
                    }
                    if dict.keys.contains("SecurityLevel") {
                        self.securityLevel = dict["SecurityLevel"] as! Int32
                    }
                }
            }
            public var confidenceScore: Double?

            public var harmfulCategoryInfoList: [ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList]?

            public var riskResult: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.confidenceScore != nil {
                    map["ConfidenceScore"] = self.confidenceScore!
                }
                if self.harmfulCategoryInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.harmfulCategoryInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["HarmfulCategoryInfoList"] = tmp
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfidenceScore") {
                    self.confidenceScore = dict["ConfidenceScore"] as! Double
                }
                if dict.keys.contains("HarmfulCategoryInfoList") {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                    for v in dict["HarmfulCategoryInfoList"] as! [Any] {
                        var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.harmfulCategoryInfoList = tmp
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
            }
        }
        public class PromptAttack : Tea.TeaModel {
            public var promptAttackInfo: String?

            public var riskResult: Int32?

            public var securityLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promptAttackInfo != nil {
                    map["PromptAttackInfo"] = self.promptAttackInfo!
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PromptAttackInfo") {
                    self.promptAttackInfo = dict["PromptAttackInfo"] as! String
                }
                if dict.keys.contains("RiskResult") {
                    self.riskResult = dict["RiskResult"] as! Int32
                }
                if dict.keys.contains("SecurityLevel") {
                    self.securityLevel = dict["SecurityLevel"] as! Int32
                }
            }
        }
        public var blockWord: ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord?

        public var harmfulCategories: ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories?

        public var promptAttack: ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockWord?.validate()
            try self.harmfulCategories?.validate()
            try self.promptAttack?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockWord != nil {
                map["BlockWord"] = self.blockWord?.toMap()
            }
            if self.harmfulCategories != nil {
                map["HarmfulCategories"] = self.harmfulCategories?.toMap()
            }
            if self.promptAttack != nil {
                map["PromptAttack"] = self.promptAttack?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockWord") {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord()
                model.fromMap(dict["BlockWord"] as! [String: Any])
                self.blockWord = model
            }
            if dict.keys.contains("HarmfulCategories") {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories()
                model.fromMap(dict["HarmfulCategories"] as! [String: Any])
                self.harmfulCategories = model
            }
            if dict.keys.contains("PromptAttack") {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack()
                model.fromMap(dict["PromptAttack"] as! [String: Any])
                self.promptAttack = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var riskInfo: String?

    public var riskResult: Int32?

    public var success: Bool?

    public var traceInfo: ModelOutputContentSyncDetectResponseBody.TraceInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.traceInfo?.validate()
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
        if self.riskInfo != nil {
            map["RiskInfo"] = self.riskInfo!
        }
        if self.riskResult != nil {
            map["RiskResult"] = self.riskResult!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.traceInfo != nil {
            map["TraceInfo"] = self.traceInfo?.toMap()
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
        if dict.keys.contains("RiskInfo") {
            self.riskInfo = dict["RiskInfo"] as! String
        }
        if dict.keys.contains("RiskResult") {
            self.riskResult = dict["RiskResult"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TraceInfo") {
            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo()
            model.fromMap(dict["TraceInfo"] as! [String: Any])
            self.traceInfo = model
        }
    }
}

public class ModelOutputContentSyncDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModelOutputContentSyncDetectResponseBody?

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
            var model = ModelOutputContentSyncDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterAccountRequest : Tea.TeaModel {
    public var memo: String?

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
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Memo") {
            self.memo = dict["Memo"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RegisterAccountResponseBody : Tea.TeaModel {
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

public class RegisterAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterAccountResponseBody?

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
            var model = RegisterAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncSensitiveWordRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public class SensitiveWordList : Tea.TeaModel {
            public var id: Int32?

            public var label: String?

            public var status: Int32?

            public var word: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Word") {
                    self.word = dict["Word"] as! String
                }
            }
        }
        public var sensitiveWordList: [SyncSensitiveWordRequest.BodyData.SensitiveWordList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sensitiveWordList != nil {
                var tmp : [Any] = []
                for k in self.sensitiveWordList! {
                    tmp.append(k.toMap())
                }
                map["SensitiveWordList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SensitiveWordList") {
                var tmp : [SyncSensitiveWordRequest.BodyData.SensitiveWordList] = []
                for v in dict["SensitiveWordList"] as! [Any] {
                    var model = SyncSensitiveWordRequest.BodyData.SensitiveWordList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sensitiveWordList = tmp
            }
        }
    }
    public var bodyData: SyncSensitiveWordRequest.BodyData?

    public var commit: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bodyData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyData != nil {
            map["BodyData"] = self.bodyData?.toMap()
        }
        if self.commit != nil {
            map["Commit"] = self.commit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            var model = SyncSensitiveWordRequest.BodyData()
            model.fromMap(dict["BodyData"] as! [String: Any])
            self.bodyData = model
        }
        if dict.keys.contains("Commit") {
            self.commit = dict["Commit"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SyncSensitiveWordShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var commit: Bool?

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
        if self.bodyDataShrink != nil {
            map["BodyData"] = self.bodyDataShrink!
        }
        if self.commit != nil {
            map["Commit"] = self.commit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BodyData") {
            self.bodyDataShrink = dict["BodyData"] as! String
        }
        if dict.keys.contains("Commit") {
            self.commit = dict["Commit"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SyncSensitiveWordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SensitiveWordErrorList : Tea.TeaModel {
            public var errMessage: String?

            public var errStatus: Int32?

            public var index: Int64?

            public var label: String?

            public var word: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errMessage != nil {
                    map["ErrMessage"] = self.errMessage!
                }
                if self.errStatus != nil {
                    map["ErrStatus"] = self.errStatus!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrMessage") {
                    self.errMessage = dict["ErrMessage"] as! String
                }
                if dict.keys.contains("ErrStatus") {
                    self.errStatus = dict["ErrStatus"] as! Int32
                }
                if dict.keys.contains("Index") {
                    self.index = dict["Index"] as! Int64
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Word") {
                    self.word = dict["Word"] as! String
                }
            }
        }
        public var sensitiveWordErrorList: [SyncSensitiveWordResponseBody.Data.SensitiveWordErrorList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sensitiveWordErrorList != nil {
                var tmp : [Any] = []
                for k in self.sensitiveWordErrorList! {
                    tmp.append(k.toMap())
                }
                map["SensitiveWordErrorList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SensitiveWordErrorList") {
                var tmp : [SyncSensitiveWordResponseBody.Data.SensitiveWordErrorList] = []
                for v in dict["SensitiveWordErrorList"] as! [Any] {
                    var model = SyncSensitiveWordResponseBody.Data.SensitiveWordErrorList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sensitiveWordErrorList = tmp
            }
        }
    }
    public var code: String?

    public var data: SyncSensitiveWordResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = SyncSensitiveWordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class SyncSensitiveWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncSensitiveWordResponseBody?

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
            var model = SyncSensitiveWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
