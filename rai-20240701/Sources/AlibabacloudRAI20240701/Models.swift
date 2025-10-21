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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["serviceParameterList"] as? [Any?] {
            var tmp : [BatchContentAsyncDetectRequest.ServiceParameterList] = []
            for v in value {
                if v != nil {
                    var model = BatchContentAsyncDetectRequest.ServiceParameterList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BatchContentAsyncDetectResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchContentAsyncDetectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["serviceParameterList"] as? [Any?] {
            var tmp : [BatchContentSyncDetectRequest.ServiceParameterList] = []
            for v in value {
                if v != nil {
                    var model = BatchContentSyncDetectRequest.ServiceParameterList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RiskInfo"] as? String {
                    self.riskInfo = value
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetectResultList"] as? [Any?] {
                var tmp : [BatchContentSyncDetectResponseBody.Data.DetectResultList] = []
                for v in value {
                    if v != nil {
                        var model = BatchContentSyncDetectResponseBody.Data.DetectResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BatchContentSyncDetectResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchContentSyncDetectResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckResult"] as? Int32 {
                self.checkResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CheckAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckAccountResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["serviceParameter"] as? [String: Any?] {
            var model = ContentAsyncDetectRequest.ServiceParameter()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ContentAsyncDetectResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ContentAsyncDetectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["serviceParameter"] as? [String: Any?] {
            var model = ContentSyncDetectRequest.ServiceParameter()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RiskInfo"] as? String {
                self.riskInfo = value
            }
            if let value = dict["RiskResult"] as? Int32 {
                self.riskResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ContentSyncDetectResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ContentSyncDetectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelInstanceRequest : Tea.TeaModel {
    public var easServiceId: String?

    public var easServiceName: String?

    public var modelCallName: String?

    public var modelCategoryId: Int64?

    public var modelToken: String?

    public var modelUrl: String?

    public var modelVpcUrl: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.easServiceId != nil {
            map["EasServiceId"] = self.easServiceId!
        }
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.modelCallName != nil {
            map["ModelCallName"] = self.modelCallName!
        }
        if self.modelCategoryId != nil {
            map["ModelCategoryId"] = self.modelCategoryId!
        }
        if self.modelToken != nil {
            map["ModelToken"] = self.modelToken!
        }
        if self.modelUrl != nil {
            map["ModelUrl"] = self.modelUrl!
        }
        if self.modelVpcUrl != nil {
            map["ModelVpcUrl"] = self.modelVpcUrl!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EasServiceId"] as? String {
            self.easServiceId = value
        }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["ModelCallName"] as? String {
            self.modelCallName = value
        }
        if let value = dict["ModelCategoryId"] as? Int64 {
            self.modelCategoryId = value
        }
        if let value = dict["ModelToken"] as? String {
            self.modelToken = value
        }
        if let value = dict["ModelUrl"] as? String {
            self.modelUrl = value
        }
        if let value = dict["ModelVpcUrl"] as? String {
            self.modelVpcUrl = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateModelInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var modelInstanceId: Int64?

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
        if self.modelInstanceId != nil {
            map["ModelInstanceId"] = self.modelInstanceId!
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
        if let value = dict["ModelInstanceId"] as? Int64 {
            self.modelInstanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateModelInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelInstanceResponseBody?

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
            var model = CreateModelInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public class HarmfulCategoryConfigInfoList : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLabel: String?

        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var isEnabled: Int32?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfo : Tea.TeaModel {
        public var isEnabled: Int32?

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
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfoList : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLabel: String?

        public var isEnabled: Int32?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class RegularExpressList : Tea.TeaModel {
        public var actionType: Int32?

        public var regularExpress: String?

        public var regularExpressName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.regularExpress != nil {
                map["RegularExpress"] = self.regularExpress!
            }
            if self.regularExpressName != nil {
                map["RegularExpressName"] = self.regularExpressName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["RegularExpress"] as? String {
                self.regularExpress = value
            }
            if let value = dict["RegularExpressName"] as? String {
                self.regularExpressName = value
            }
        }
    }
    public class SensitiveConfigList : Tea.TeaModel {
        public var actionType: Int32?

        public var isEnabled: Int32?

        public var sensitiveConfigId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.sensitiveConfigId != nil {
                map["SensitiveConfigId"] = self.sensitiveConfigId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SensitiveConfigId"] as? Int64 {
                self.sensitiveConfigId = value
            }
        }
    }
    public class SensitiveTopicList : Tea.TeaModel {
        public class TopicExampleInfoList : Tea.TeaModel {
            public var content: String?

            public var exampleType: Int32?

            public override init() {
                super.init()
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
                if self.exampleType != nil {
                    map["ExampleType"] = self.exampleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ExampleType"] as? Int32 {
                    self.exampleType = value
                }
            }
        }
        public var categoryType: Int32?

        public var securityLevel: Int32?

        public var topicDefinition: String?

        public var topicExampleInfoList: [CreatePolicyRequest.SensitiveTopicList.TopicExampleInfoList]?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicDefinition != nil {
                map["TopicDefinition"] = self.topicDefinition!
            }
            if self.topicExampleInfoList != nil {
                var tmp : [Any] = []
                for k in self.topicExampleInfoList! {
                    tmp.append(k.toMap())
                }
                map["TopicExampleInfoList"] = tmp
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicDefinition"] as? String {
                self.topicDefinition = value
            }
            if let value = dict["TopicExampleInfoList"] as? [Any?] {
                var tmp : [CreatePolicyRequest.SensitiveTopicList.TopicExampleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = CreatePolicyRequest.SensitiveTopicList.TopicExampleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topicExampleInfoList = tmp
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class SensitiveWordList : Tea.TeaModel {
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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.word != nil {
                map["Word"] = self.word!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Word"] as? String {
                self.word = value
            }
        }
    }
    public class TopicConfigInfoList : Tea.TeaModel {
        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var securityLevel: Int32?

        public var topicId: Int64?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicId != nil {
                map["TopicId"] = self.topicId!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicId"] as? Int64 {
                self.topicId = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class WordGroupInfoList : Tea.TeaModel {
        public var groupId: Int64?

        public var groupName: String?

        public var inputOutputType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
        }
    }
    public var contentSafeModelInstanceId: Int64?

    public var enableSensitiveInputCheck: Int32?

    public var enableSensitiveOutputCheck: Int32?

    public var harmfulCategoryConfigInfoList: [CreatePolicyRequest.HarmfulCategoryConfigInfoList]?

    public var inputSafeAnswer: String?

    public var inputSafeAnswerSwitch: Int32?

    public var isSidecarPolicy: Int32?

    public var outputSafeAnswer: String?

    public var outputSafeAnswerSwitch: Int32?

    public var policyName: String?

    public var promptAttackInfo: CreatePolicyRequest.PromptAttackInfo?

    public var promptAttackInfoList: [CreatePolicyRequest.PromptAttackInfoList]?

    public var promptAttackModelInstanceId: Int64?

    public var regionId: String?

    public var regularExpressList: [CreatePolicyRequest.RegularExpressList]?

    public var sceneType: Int32?

    public var sensitiveConfigList: [CreatePolicyRequest.SensitiveConfigList]?

    public var sensitiveTopicList: [CreatePolicyRequest.SensitiveTopicList]?

    public var sensitiveTopicModelInstanceId: Int64?

    public var sensitiveWordList: [CreatePolicyRequest.SensitiveWordList]?

    public var topicConfigInfoList: [CreatePolicyRequest.TopicConfigInfoList]?

    public var wordGroupInfoList: [CreatePolicyRequest.WordGroupInfoList]?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.promptAttackInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentSafeModelInstanceId != nil {
            map["ContentSafeModelInstanceId"] = self.contentSafeModelInstanceId!
        }
        if self.enableSensitiveInputCheck != nil {
            map["EnableSensitiveInputCheck"] = self.enableSensitiveInputCheck!
        }
        if self.enableSensitiveOutputCheck != nil {
            map["EnableSensitiveOutputCheck"] = self.enableSensitiveOutputCheck!
        }
        if self.harmfulCategoryConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.harmfulCategoryConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["HarmfulCategoryConfigInfoList"] = tmp
        }
        if self.inputSafeAnswer != nil {
            map["InputSafeAnswer"] = self.inputSafeAnswer!
        }
        if self.inputSafeAnswerSwitch != nil {
            map["InputSafeAnswerSwitch"] = self.inputSafeAnswerSwitch!
        }
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.outputSafeAnswer != nil {
            map["OutputSafeAnswer"] = self.outputSafeAnswer!
        }
        if self.outputSafeAnswerSwitch != nil {
            map["OutputSafeAnswerSwitch"] = self.outputSafeAnswerSwitch!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.promptAttackInfo != nil {
            map["PromptAttackInfo"] = self.promptAttackInfo?.toMap()
        }
        if self.promptAttackInfoList != nil {
            var tmp : [Any] = []
            for k in self.promptAttackInfoList! {
                tmp.append(k.toMap())
            }
            map["PromptAttackInfoList"] = tmp
        }
        if self.promptAttackModelInstanceId != nil {
            map["PromptAttackModelInstanceId"] = self.promptAttackModelInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regularExpressList != nil {
            var tmp : [Any] = []
            for k in self.regularExpressList! {
                tmp.append(k.toMap())
            }
            map["RegularExpressList"] = tmp
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.sensitiveConfigList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveConfigList! {
                tmp.append(k.toMap())
            }
            map["SensitiveConfigList"] = tmp
        }
        if self.sensitiveTopicList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveTopicList! {
                tmp.append(k.toMap())
            }
            map["SensitiveTopicList"] = tmp
        }
        if self.sensitiveTopicModelInstanceId != nil {
            map["SensitiveTopicModelInstanceId"] = self.sensitiveTopicModelInstanceId!
        }
        if self.sensitiveWordList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveWordList! {
                tmp.append(k.toMap())
            }
            map["SensitiveWordList"] = tmp
        }
        if self.topicConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.topicConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["TopicConfigInfoList"] = tmp
        }
        if self.wordGroupInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordGroupInfoList! {
                tmp.append(k.toMap())
            }
            map["WordGroupInfoList"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentSafeModelInstanceId"] as? Int64 {
            self.contentSafeModelInstanceId = value
        }
        if let value = dict["EnableSensitiveInputCheck"] as? Int32 {
            self.enableSensitiveInputCheck = value
        }
        if let value = dict["EnableSensitiveOutputCheck"] as? Int32 {
            self.enableSensitiveOutputCheck = value
        }
        if let value = dict["HarmfulCategoryConfigInfoList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.HarmfulCategoryConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.HarmfulCategoryConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.harmfulCategoryConfigInfoList = tmp
        }
        if let value = dict["InputSafeAnswer"] as? String {
            self.inputSafeAnswer = value
        }
        if let value = dict["InputSafeAnswerSwitch"] as? Int32 {
            self.inputSafeAnswerSwitch = value
        }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["OutputSafeAnswer"] as? String {
            self.outputSafeAnswer = value
        }
        if let value = dict["OutputSafeAnswerSwitch"] as? Int32 {
            self.outputSafeAnswerSwitch = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PromptAttackInfo"] as? [String: Any?] {
            var model = CreatePolicyRequest.PromptAttackInfo()
            model.fromMap(value)
            self.promptAttackInfo = model
        }
        if let value = dict["PromptAttackInfoList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.PromptAttackInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.PromptAttackInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptAttackInfoList = tmp
        }
        if let value = dict["PromptAttackModelInstanceId"] as? Int64 {
            self.promptAttackModelInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegularExpressList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.RegularExpressList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.RegularExpressList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regularExpressList = tmp
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
        if let value = dict["SensitiveConfigList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.SensitiveConfigList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.SensitiveConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveConfigList = tmp
        }
        if let value = dict["SensitiveTopicList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.SensitiveTopicList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.SensitiveTopicList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveTopicList = tmp
        }
        if let value = dict["SensitiveTopicModelInstanceId"] as? Int64 {
            self.sensitiveTopicModelInstanceId = value
        }
        if let value = dict["SensitiveWordList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.SensitiveWordList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.SensitiveWordList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveWordList = tmp
        }
        if let value = dict["TopicConfigInfoList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.TopicConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.TopicConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topicConfigInfoList = tmp
        }
        if let value = dict["WordGroupInfoList"] as? [Any?] {
            var tmp : [CreatePolicyRequest.WordGroupInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.WordGroupInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordGroupInfoList = tmp
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreatePolicyShrinkRequest : Tea.TeaModel {
    public var contentSafeModelInstanceId: Int64?

    public var enableSensitiveInputCheck: Int32?

    public var enableSensitiveOutputCheck: Int32?

    public var harmfulCategoryConfigInfoListShrink: String?

    public var inputSafeAnswer: String?

    public var inputSafeAnswerSwitch: Int32?

    public var isSidecarPolicy: Int32?

    public var outputSafeAnswer: String?

    public var outputSafeAnswerSwitch: Int32?

    public var policyName: String?

    public var promptAttackInfoShrink: String?

    public var promptAttackInfoListShrink: String?

    public var promptAttackModelInstanceId: Int64?

    public var regionId: String?

    public var regularExpressListShrink: String?

    public var sceneType: Int32?

    public var sensitiveConfigListShrink: String?

    public var sensitiveTopicListShrink: String?

    public var sensitiveTopicModelInstanceId: Int64?

    public var sensitiveWordListShrink: String?

    public var topicConfigInfoListShrink: String?

    public var wordGroupInfoListShrink: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentSafeModelInstanceId != nil {
            map["ContentSafeModelInstanceId"] = self.contentSafeModelInstanceId!
        }
        if self.enableSensitiveInputCheck != nil {
            map["EnableSensitiveInputCheck"] = self.enableSensitiveInputCheck!
        }
        if self.enableSensitiveOutputCheck != nil {
            map["EnableSensitiveOutputCheck"] = self.enableSensitiveOutputCheck!
        }
        if self.harmfulCategoryConfigInfoListShrink != nil {
            map["HarmfulCategoryConfigInfoList"] = self.harmfulCategoryConfigInfoListShrink!
        }
        if self.inputSafeAnswer != nil {
            map["InputSafeAnswer"] = self.inputSafeAnswer!
        }
        if self.inputSafeAnswerSwitch != nil {
            map["InputSafeAnswerSwitch"] = self.inputSafeAnswerSwitch!
        }
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.outputSafeAnswer != nil {
            map["OutputSafeAnswer"] = self.outputSafeAnswer!
        }
        if self.outputSafeAnswerSwitch != nil {
            map["OutputSafeAnswerSwitch"] = self.outputSafeAnswerSwitch!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.promptAttackInfoShrink != nil {
            map["PromptAttackInfo"] = self.promptAttackInfoShrink!
        }
        if self.promptAttackInfoListShrink != nil {
            map["PromptAttackInfoList"] = self.promptAttackInfoListShrink!
        }
        if self.promptAttackModelInstanceId != nil {
            map["PromptAttackModelInstanceId"] = self.promptAttackModelInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regularExpressListShrink != nil {
            map["RegularExpressList"] = self.regularExpressListShrink!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.sensitiveConfigListShrink != nil {
            map["SensitiveConfigList"] = self.sensitiveConfigListShrink!
        }
        if self.sensitiveTopicListShrink != nil {
            map["SensitiveTopicList"] = self.sensitiveTopicListShrink!
        }
        if self.sensitiveTopicModelInstanceId != nil {
            map["SensitiveTopicModelInstanceId"] = self.sensitiveTopicModelInstanceId!
        }
        if self.sensitiveWordListShrink != nil {
            map["SensitiveWordList"] = self.sensitiveWordListShrink!
        }
        if self.topicConfigInfoListShrink != nil {
            map["TopicConfigInfoList"] = self.topicConfigInfoListShrink!
        }
        if self.wordGroupInfoListShrink != nil {
            map["WordGroupInfoList"] = self.wordGroupInfoListShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentSafeModelInstanceId"] as? Int64 {
            self.contentSafeModelInstanceId = value
        }
        if let value = dict["EnableSensitiveInputCheck"] as? Int32 {
            self.enableSensitiveInputCheck = value
        }
        if let value = dict["EnableSensitiveOutputCheck"] as? Int32 {
            self.enableSensitiveOutputCheck = value
        }
        if let value = dict["HarmfulCategoryConfigInfoList"] as? String {
            self.harmfulCategoryConfigInfoListShrink = value
        }
        if let value = dict["InputSafeAnswer"] as? String {
            self.inputSafeAnswer = value
        }
        if let value = dict["InputSafeAnswerSwitch"] as? Int32 {
            self.inputSafeAnswerSwitch = value
        }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["OutputSafeAnswer"] as? String {
            self.outputSafeAnswer = value
        }
        if let value = dict["OutputSafeAnswerSwitch"] as? Int32 {
            self.outputSafeAnswerSwitch = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PromptAttackInfo"] as? String {
            self.promptAttackInfoShrink = value
        }
        if let value = dict["PromptAttackInfoList"] as? String {
            self.promptAttackInfoListShrink = value
        }
        if let value = dict["PromptAttackModelInstanceId"] as? Int64 {
            self.promptAttackModelInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegularExpressList"] as? String {
            self.regularExpressListShrink = value
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
        if let value = dict["SensitiveConfigList"] as? String {
            self.sensitiveConfigListShrink = value
        }
        if let value = dict["SensitiveTopicList"] as? String {
            self.sensitiveTopicListShrink = value
        }
        if let value = dict["SensitiveTopicModelInstanceId"] as? Int64 {
            self.sensitiveTopicModelInstanceId = value
        }
        if let value = dict["SensitiveWordList"] as? String {
            self.sensitiveWordListShrink = value
        }
        if let value = dict["TopicConfigInfoList"] as? String {
            self.topicConfigInfoListShrink = value
        }
        if let value = dict["WordGroupInfoList"] as? String {
            self.wordGroupInfoListShrink = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var policyId: Int64?

    public var policyIdentifier: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
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
        if let value = dict["PolicyId"] as? Int64 {
            self.policyId = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyResponseBody?

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
            var model = CreatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public class TopicExampleInfoList : Tea.TeaModel {
            public var content: String?

            public var exampleType: Int32?

            public override init() {
                super.init()
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
                if self.exampleType != nil {
                    map["ExampleType"] = self.exampleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ExampleType"] as? Int32 {
                    self.exampleType = value
                }
            }
        }
        public var topicExampleInfoList: [CreateTopicRequest.BodyData.TopicExampleInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topicExampleInfoList != nil {
                var tmp : [Any] = []
                for k in self.topicExampleInfoList! {
                    tmp.append(k.toMap())
                }
                map["TopicExampleInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TopicExampleInfoList"] as? [Any?] {
                var tmp : [CreateTopicRequest.BodyData.TopicExampleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = CreateTopicRequest.BodyData.TopicExampleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topicExampleInfoList = tmp
            }
        }
    }
    public var bodyData: CreateTopicRequest.BodyData?

    public var regionId: String?

    public var topicDefinition: String?

    public var topicName: String?

    public var workspaceId: Int64?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topicDefinition != nil {
            map["TopicDefinition"] = self.topicDefinition!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = CreateTopicRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicDefinition"] as? String {
            self.topicDefinition = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateTopicShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var regionId: String?

    public var topicDefinition: String?

    public var topicName: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topicDefinition != nil {
            map["TopicDefinition"] = self.topicDefinition!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicDefinition"] as? String {
            self.topicDefinition = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateTopicResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var topicId: Int64?

    public override init() {
        super.init()
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
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
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
        if let value = dict["TopicId"] as? Int64 {
            self.topicId = value
        }
    }
}

public class CreateTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTopicResponseBody?

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
            var model = CreateTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWordGroupRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public class WordInfoList : Tea.TeaModel {
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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Word"] as? String {
                    self.word = value
                }
            }
        }
        public var wordInfoList: [CreateWordGroupRequest.BodyData.WordInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wordInfoList != nil {
                var tmp : [Any] = []
                for k in self.wordInfoList! {
                    tmp.append(k.toMap())
                }
                map["WordInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WordInfoList"] as? [Any?] {
                var tmp : [CreateWordGroupRequest.BodyData.WordInfoList] = []
                for v in value {
                    if v != nil {
                        var model = CreateWordGroupRequest.BodyData.WordInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordInfoList = tmp
            }
        }
    }
    public var bodyData: CreateWordGroupRequest.BodyData?

    public var commit: Bool?

    public var groupName: String?

    public var regionId: String?

    public var workspaceId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = CreateWordGroupRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["Commit"] as? Bool {
            self.commit = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateWordGroupShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var commit: Bool?

    public var groupName: String?

    public var regionId: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["Commit"] as? Bool {
            self.commit = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class CreateWordGroupResponseBody : Tea.TeaModel {
    public class WordErrorInfoList : Tea.TeaModel {
        public var errorMessage: String?

        public var errorStatus: Int32?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.errorStatus != nil {
                map["ErrorStatus"] = self.errorStatus!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["ErrorStatus"] as? Int32 {
                self.errorStatus = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Word"] as? String {
                self.word = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var wordErrorInfoList: [CreateWordGroupResponseBody.WordErrorInfoList]?

    public override init() {
        super.init()
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
        if self.wordErrorInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordErrorInfoList! {
                tmp.append(k.toMap())
            }
            map["WordErrorInfoList"] = tmp
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
        if let value = dict["WordErrorInfoList"] as? [Any?] {
            var tmp : [CreateWordGroupResponseBody.WordErrorInfoList] = []
            for v in value {
                if v != nil {
                    var model = CreateWordGroupResponseBody.WordErrorInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordErrorInfoList = tmp
        }
    }
}

public class CreateWordGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWordGroupResponseBody?

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
            var model = CreateWordGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelInstanceRequest : Tea.TeaModel {
    public var modelInstanceIdList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelInstanceIdList != nil {
            map["ModelInstanceIdList"] = self.modelInstanceIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelInstanceIdList"] as? [Int64] {
            self.modelInstanceIdList = value
        }
    }
}

public class DeleteModelInstanceShrinkRequest : Tea.TeaModel {
    public var modelInstanceIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelInstanceIdListShrink != nil {
            map["ModelInstanceIdList"] = self.modelInstanceIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelInstanceIdList"] as? String {
            self.modelInstanceIdListShrink = value
        }
    }
}

public class DeleteModelInstanceResponseBody : Tea.TeaModel {
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

public class DeleteModelInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelInstanceResponseBody?

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
            var model = DeleteModelInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
    public var policyIdList: [Int64]?

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
        if self.policyIdList != nil {
            map["PolicyIdList"] = self.policyIdList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyIdList"] as? [Int64] {
            self.policyIdList = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeletePolicyShrinkRequest : Tea.TeaModel {
    public var policyIdListShrink: String?

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
        if self.policyIdListShrink != nil {
            map["PolicyIdList"] = self.policyIdListShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyIdList"] as? String {
            self.policyIdListShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeletePolicyResponseBody : Tea.TeaModel {
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

public class DeletePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyResponseBody?

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
            var model = DeletePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTopicRequest : Tea.TeaModel {
    public var regionId: String?

    public var topicIdList: [Int64]?

    public override init() {
        super.init()
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
        if self.topicIdList != nil {
            map["TopicIdList"] = self.topicIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicIdList"] as? [Int64] {
            self.topicIdList = value
        }
    }
}

public class DeleteTopicShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var topicIdListShrink: String?

    public override init() {
        super.init()
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
        if self.topicIdListShrink != nil {
            map["TopicIdList"] = self.topicIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicIdList"] as? String {
            self.topicIdListShrink = value
        }
    }
}

public class DeleteTopicResponseBody : Tea.TeaModel {
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

public class DeleteTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTopicResponseBody?

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
            var model = DeleteTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWordGroupRequest : Tea.TeaModel {
    public var groupIdList: [Int64]?

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
        if self.groupIdList != nil {
            map["GroupIdList"] = self.groupIdList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupIdList"] as? [Int64] {
            self.groupIdList = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteWordGroupShrinkRequest : Tea.TeaModel {
    public var groupIdListShrink: String?

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
        if self.groupIdListShrink != nil {
            map["GroupIdList"] = self.groupIdListShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupIdList"] as? String {
            self.groupIdListShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteWordGroupResponseBody : Tea.TeaModel {
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

public class DeleteWordGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWordGroupResponseBody?

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
            var model = DeleteWordGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RiskInfo"] as? String {
                    self.riskInfo = value
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetectResultList"] as? [Any?] {
                var tmp : [GetContentDetectResultResponseBody.Data.DetectResultList] = []
                for v in value {
                    if v != nil {
                        var model = GetContentDetectResultResponseBody.Data.DetectResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detectResultList = tmp
            }
            if let value = dict["ProcessedCount"] as? Int32 {
                self.processedCount = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? Int32 {
                self.taskStatus = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetContentDetectResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetContentDetectResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Word"] as? String {
                                self.word = value
                            }
                            if let value = dict["WordLabel"] as? String {
                                self.wordLabel = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BlockWordList"] as? [Any?] {
                            var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                            for v in value {
                                if v != nil {
                                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.blockWordList = tmp
                        }
                        if let value = dict["GroupName"] as? String {
                            self.groupName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BlockWordGroupInfoList"] as? [Any?] {
                        var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.blockWordGroupInfoList = tmp
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                }
            }
            public class DenyTopics : Tea.TeaModel {
                public class TopicInfoList : Tea.TeaModel {
                    public var categoryType: Int32?

                    public var riskResult: Int32?

                    public var securityLevel: Int32?

                    public var topicName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.categoryType != nil {
                            map["CategoryType"] = self.categoryType!
                        }
                        if self.riskResult != nil {
                            map["RiskResult"] = self.riskResult!
                        }
                        if self.securityLevel != nil {
                            map["SecurityLevel"] = self.securityLevel!
                        }
                        if self.topicName != nil {
                            map["TopicName"] = self.topicName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CategoryType"] as? Int32 {
                            self.categoryType = value
                        }
                        if let value = dict["RiskResult"] as? Int32 {
                            self.riskResult = value
                        }
                        if let value = dict["SecurityLevel"] as? Int32 {
                            self.securityLevel = value
                        }
                        if let value = dict["TopicName"] as? String {
                            self.topicName = value
                        }
                    }
                }
                public var confidenceScore: Double?

                public var riskResult: Int32?

                public var topicInfoList: [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics.TopicInfoList]?

                public override init() {
                    super.init()
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
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.topicInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.topicInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["TopicInfoList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfidenceScore"] as? Double {
                        self.confidenceScore = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["TopicInfoList"] as? [Any?] {
                        var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics.TopicInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics.TopicInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.topicInfoList = tmp
                    }
                }
            }
            public class HarmfulCategories : Tea.TeaModel {
                public class HarmfulCategoryInfoList : Tea.TeaModel {
                    public var categoryLabel: String?

                    public var categoryType: Int32?

                    public var riskResult: Int32?

                    public var securityLevel: Int32?

                    public var subCategoryLabel: String?

                    public override init() {
                        super.init()
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
                        if self.subCategoryLabel != nil {
                            map["SubCategoryLabel"] = self.subCategoryLabel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CategoryLabel"] as? String {
                            self.categoryLabel = value
                        }
                        if let value = dict["CategoryType"] as? Int32 {
                            self.categoryType = value
                        }
                        if let value = dict["RiskResult"] as? Int32 {
                            self.riskResult = value
                        }
                        if let value = dict["SecurityLevel"] as? Int32 {
                            self.securityLevel = value
                        }
                        if let value = dict["SubCategoryLabel"] as? String {
                            self.subCategoryLabel = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfidenceScore"] as? Double {
                        self.confidenceScore = value
                    }
                    if let value = dict["HarmfulCategoryInfoList"] as? [Any?] {
                        var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.harmfulCategoryInfoList = tmp
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                }
            }
            public class PromptAttack : Tea.TeaModel {
                public class PromptAttackInfoList : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CategoryLabel"] as? String {
                            self.categoryLabel = value
                        }
                        if let value = dict["CategoryType"] as? Int32 {
                            self.categoryType = value
                        }
                        if let value = dict["RiskResult"] as? Int32 {
                            self.riskResult = value
                        }
                        if let value = dict["SecurityLevel"] as? Int32 {
                            self.securityLevel = value
                        }
                    }
                }
                public var confidenceScore: Double?

                public var promptAttackInfo: String?

                public var promptAttackInfoList: [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack.PromptAttackInfoList]?

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
                    if self.promptAttackInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.promptAttackInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["PromptAttackInfoList"] = tmp
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfidenceScore"] as? Double {
                        self.confidenceScore = value
                    }
                    if let value = dict["PromptAttackInfo"] as? String {
                        self.promptAttackInfo = value
                    }
                    if let value = dict["PromptAttackInfoList"] as? [Any?] {
                        var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack.PromptAttackInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack.PromptAttackInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.promptAttackInfoList = tmp
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                }
            }
            public var blockWord: GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord?

            public var denyTopics: GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics?

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
                try self.denyTopics?.validate()
                try self.harmfulCategories?.validate()
                try self.promptAttack?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockWord != nil {
                    map["BlockWord"] = self.blockWord?.toMap()
                }
                if self.denyTopics != nil {
                    map["DenyTopics"] = self.denyTopics?.toMap()
                }
                if self.harmfulCategories != nil {
                    map["HarmfulCategories"] = self.harmfulCategories?.toMap()
                }
                if self.promptAttack != nil {
                    map["PromptAttack"] = self.promptAttack?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockWord"] as? [String: Any?] {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord()
                    model.fromMap(value)
                    self.blockWord = model
                }
                if let value = dict["DenyTopics"] as? [String: Any?] {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics()
                    model.fromMap(value)
                    self.denyTopics = model
                }
                if let value = dict["HarmfulCategories"] as? [String: Any?] {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories()
                    model.fromMap(value)
                    self.harmfulCategories = model
                }
                if let value = dict["PromptAttack"] as? [String: Any?] {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RiskResult"] as? Int32 {
                self.riskResult = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TraceInfo"] as? [String: Any?] {
                var model = GetModelInputContentDetectResultResponseBody.DetectResultList.TraceInfo()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DetectResultList"] as? [Any?] {
            var tmp : [GetModelInputContentDetectResultResponseBody.DetectResultList] = []
            for v in value {
                if v != nil {
                    var model = GetModelInputContentDetectResultResponseBody.DetectResultList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detectResultList = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ProcessedCount"] as? Int32 {
            self.processedCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModelInputContentDetectResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelInstanceInfoRequest : Tea.TeaModel {
    public var modelInstanceId: Int64?

    public var sceneType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelInstanceId != nil {
            map["ModelInstanceId"] = self.modelInstanceId!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelInstanceId"] as? Int64 {
            self.modelInstanceId = value
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
    }
}

public class GetModelInstanceInfoResponseBody : Tea.TeaModel {
    public class HarmfulCategoryConfigInfoList : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLabel: String?

        public var categoryType: Int32?

        public var inputOutputType: Int32?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfoList : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLabel: String?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public var code: String?

    public var description_: String?

    public var easServiceId: String?

    public var easServiceName: String?

    public var gmtModified: Int64?

    public var harmfulCategoryConfigInfoList: [GetModelInstanceInfoResponseBody.HarmfulCategoryConfigInfoList]?

    public var httpStatusCode: Int32?

    public var isSupportImage: Bool?

    public var isSupportText: Bool?

    public var message: String?

    public var modelCallName: String?

    public var modelCategoryId: Int64?

    public var modelInstanceId: Int64?

    public var modelSource: Int32?

    public var modelToken: String?

    public var modelUrl: String?

    public var modelVpcUrl: String?

    public var promptAttackInfoList: [GetModelInstanceInfoResponseBody.PromptAttackInfoList]?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.easServiceId != nil {
            map["EasServiceId"] = self.easServiceId!
        }
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.harmfulCategoryConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.harmfulCategoryConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["HarmfulCategoryConfigInfoList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.isSupportImage != nil {
            map["IsSupportImage"] = self.isSupportImage!
        }
        if self.isSupportText != nil {
            map["IsSupportText"] = self.isSupportText!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.modelCallName != nil {
            map["ModelCallName"] = self.modelCallName!
        }
        if self.modelCategoryId != nil {
            map["ModelCategoryId"] = self.modelCategoryId!
        }
        if self.modelInstanceId != nil {
            map["ModelInstanceId"] = self.modelInstanceId!
        }
        if self.modelSource != nil {
            map["ModelSource"] = self.modelSource!
        }
        if self.modelToken != nil {
            map["ModelToken"] = self.modelToken!
        }
        if self.modelUrl != nil {
            map["ModelUrl"] = self.modelUrl!
        }
        if self.modelVpcUrl != nil {
            map["ModelVpcUrl"] = self.modelVpcUrl!
        }
        if self.promptAttackInfoList != nil {
            var tmp : [Any] = []
            for k in self.promptAttackInfoList! {
                tmp.append(k.toMap())
            }
            map["PromptAttackInfoList"] = tmp
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EasServiceId"] as? String {
            self.easServiceId = value
        }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["GmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["HarmfulCategoryConfigInfoList"] as? [Any?] {
            var tmp : [GetModelInstanceInfoResponseBody.HarmfulCategoryConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetModelInstanceInfoResponseBody.HarmfulCategoryConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.harmfulCategoryConfigInfoList = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["IsSupportImage"] as? Bool {
            self.isSupportImage = value
        }
        if let value = dict["IsSupportText"] as? Bool {
            self.isSupportText = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ModelCallName"] as? String {
            self.modelCallName = value
        }
        if let value = dict["ModelCategoryId"] as? Int64 {
            self.modelCategoryId = value
        }
        if let value = dict["ModelInstanceId"] as? Int64 {
            self.modelInstanceId = value
        }
        if let value = dict["ModelSource"] as? Int32 {
            self.modelSource = value
        }
        if let value = dict["ModelToken"] as? String {
            self.modelToken = value
        }
        if let value = dict["ModelUrl"] as? String {
            self.modelUrl = value
        }
        if let value = dict["ModelVpcUrl"] as? String {
            self.modelVpcUrl = value
        }
        if let value = dict["PromptAttackInfoList"] as? [Any?] {
            var tmp : [GetModelInstanceInfoResponseBody.PromptAttackInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetModelInstanceInfoResponseBody.PromptAttackInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptAttackInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetModelInstanceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelInstanceInfoResponseBody?

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
            var model = GetModelInstanceInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Word"] as? String {
                                self.word = value
                            }
                            if let value = dict["WordLabel"] as? String {
                                self.wordLabel = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BlockWordList"] as? [Any?] {
                            var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                            for v in value {
                                if v != nil {
                                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.blockWordList = tmp
                        }
                        if let value = dict["GroupName"] as? String {
                            self.groupName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BlockWordGroupInfoList"] as? [Any?] {
                        var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord.BlockWordGroupInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.blockWordGroupInfoList = tmp
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                }
            }
            public class DenyTopics : Tea.TeaModel {
                public class TopicInfoList : Tea.TeaModel {
                    public var categoryType: Int32?

                    public var riskResult: Int32?

                    public var securityLevel: Int32?

                    public var topicName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.categoryType != nil {
                            map["CategoryType"] = self.categoryType!
                        }
                        if self.riskResult != nil {
                            map["RiskResult"] = self.riskResult!
                        }
                        if self.securityLevel != nil {
                            map["SecurityLevel"] = self.securityLevel!
                        }
                        if self.topicName != nil {
                            map["TopicName"] = self.topicName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CategoryType"] as? Int32 {
                            self.categoryType = value
                        }
                        if let value = dict["RiskResult"] as? Int32 {
                            self.riskResult = value
                        }
                        if let value = dict["SecurityLevel"] as? Int32 {
                            self.securityLevel = value
                        }
                        if let value = dict["TopicName"] as? String {
                            self.topicName = value
                        }
                    }
                }
                public var confidenceScore: Double?

                public var riskResult: Int32?

                public var topicInfoList: [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics.TopicInfoList]?

                public override init() {
                    super.init()
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
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.topicInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.topicInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["TopicInfoList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfidenceScore"] as? Double {
                        self.confidenceScore = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["TopicInfoList"] as? [Any?] {
                        var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics.TopicInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics.TopicInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.topicInfoList = tmp
                    }
                }
            }
            public class HarmfulCategories : Tea.TeaModel {
                public class HarmfulCategoryInfoList : Tea.TeaModel {
                    public var categoryLabel: String?

                    public var categoryType: Int32?

                    public var riskResult: Int32?

                    public var securityLevel: Int32?

                    public var subCategoryLabel: String?

                    public override init() {
                        super.init()
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
                        if self.subCategoryLabel != nil {
                            map["SubCategoryLabel"] = self.subCategoryLabel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CategoryLabel"] as? String {
                            self.categoryLabel = value
                        }
                        if let value = dict["CategoryType"] as? Int32 {
                            self.categoryType = value
                        }
                        if let value = dict["RiskResult"] as? Int32 {
                            self.riskResult = value
                        }
                        if let value = dict["SecurityLevel"] as? Int32 {
                            self.securityLevel = value
                        }
                        if let value = dict["SubCategoryLabel"] as? String {
                            self.subCategoryLabel = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfidenceScore"] as? Double {
                        self.confidenceScore = value
                    }
                    if let value = dict["HarmfulCategoryInfoList"] as? [Any?] {
                        var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.harmfulCategoryInfoList = tmp
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                }
            }
            public class PromptAttack : Tea.TeaModel {
                public class PromptAttackInfoList : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CategoryLabel"] as? String {
                            self.categoryLabel = value
                        }
                        if let value = dict["CategoryType"] as? Int32 {
                            self.categoryType = value
                        }
                        if let value = dict["RiskResult"] as? Int32 {
                            self.riskResult = value
                        }
                        if let value = dict["SecurityLevel"] as? Int32 {
                            self.securityLevel = value
                        }
                    }
                }
                public var confidenceScore: Double?

                public var promptAttackInfo: String?

                public var promptAttackInfoList: [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack.PromptAttackInfoList]?

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
                    if self.promptAttackInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.promptAttackInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["PromptAttackInfoList"] = tmp
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfidenceScore"] as? Double {
                        self.confidenceScore = value
                    }
                    if let value = dict["PromptAttackInfo"] as? String {
                        self.promptAttackInfo = value
                    }
                    if let value = dict["PromptAttackInfoList"] as? [Any?] {
                        var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack.PromptAttackInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack.PromptAttackInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.promptAttackInfoList = tmp
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                }
            }
            public var blockWord: GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord?

            public var denyTopics: GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics?

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
                try self.denyTopics?.validate()
                try self.harmfulCategories?.validate()
                try self.promptAttack?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockWord != nil {
                    map["BlockWord"] = self.blockWord?.toMap()
                }
                if self.denyTopics != nil {
                    map["DenyTopics"] = self.denyTopics?.toMap()
                }
                if self.harmfulCategories != nil {
                    map["HarmfulCategories"] = self.harmfulCategories?.toMap()
                }
                if self.promptAttack != nil {
                    map["PromptAttack"] = self.promptAttack?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockWord"] as? [String: Any?] {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.BlockWord()
                    model.fromMap(value)
                    self.blockWord = model
                }
                if let value = dict["DenyTopics"] as? [String: Any?] {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.DenyTopics()
                    model.fromMap(value)
                    self.denyTopics = model
                }
                if let value = dict["HarmfulCategories"] as? [String: Any?] {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.HarmfulCategories()
                    model.fromMap(value)
                    self.harmfulCategories = model
                }
                if let value = dict["PromptAttack"] as? [String: Any?] {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo.PromptAttack()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RiskResult"] as? Int32 {
                self.riskResult = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TraceInfo"] as? [String: Any?] {
                var model = GetModelOutputContentDetectResultResponseBody.DetectResultList.TraceInfo()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DetectResultList"] as? [Any?] {
            var tmp : [GetModelOutputContentDetectResultResponseBody.DetectResultList] = []
            for v in value {
                if v != nil {
                    var model = GetModelOutputContentDetectResultResponseBody.DetectResultList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detectResultList = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ProcessedCount"] as? Int32 {
            self.processedCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModelOutputContentDetectResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicyDefaultOptionsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetPolicyDefaultOptionsResponseBody : Tea.TeaModel {
    public class HarmfulCategoryInfoList : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLabel: String?

        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var isEnabled: Int32?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfo : Tea.TeaModel {
        public var isEnabled: Int32?

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
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfoList : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLabel: String?

        public var isEnabled: Int32?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class SensitiveDataTypeList : Tea.TeaModel {
        public var actionType: Int32?

        public var dataType: String?

        public var example: String?

        public var exampleProcessed: String?

        public var isEnabled: Int32?

        public var matchAndReplace: String?

        public var sensitiveConfigId: Int64?

        public var sensitiveName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.example != nil {
                map["Example"] = self.example!
            }
            if self.exampleProcessed != nil {
                map["ExampleProcessed"] = self.exampleProcessed!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.matchAndReplace != nil {
                map["MatchAndReplace"] = self.matchAndReplace!
            }
            if self.sensitiveConfigId != nil {
                map["SensitiveConfigId"] = self.sensitiveConfigId!
            }
            if self.sensitiveName != nil {
                map["SensitiveName"] = self.sensitiveName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["Example"] as? String {
                self.example = value
            }
            if let value = dict["ExampleProcessed"] as? String {
                self.exampleProcessed = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["MatchAndReplace"] as? String {
                self.matchAndReplace = value
            }
            if let value = dict["SensitiveConfigId"] as? Int64 {
                self.sensitiveConfigId = value
            }
            if let value = dict["SensitiveName"] as? String {
                self.sensitiveName = value
            }
        }
    }
    public class TopicConfigInfoList : Tea.TeaModel {
        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var securityLevel: Int32?

        public var topicId: Int64?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicId != nil {
                map["TopicId"] = self.topicId!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicId"] as? Int64 {
                self.topicId = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class WordGroupInfoList : Tea.TeaModel {
        public var groupId: Int64?

        public var groupName: String?

        public var inputOutputType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
        }
    }
    public var code: String?

    public var enableSensitiveInputCheck: Int32?

    public var enableSensitiveOutputCheck: Int32?

    public var harmfulCategoryInfoList: [GetPolicyDefaultOptionsResponseBody.HarmfulCategoryInfoList]?

    public var httpStatusCode: Int32?

    public var inputSafeAnswer: String?

    public var inputSafeAnswerSwitch: Int32?

    public var message: String?

    public var outputSafeAnswer: String?

    public var outputSafeAnswerSwitch: Int32?

    public var promptAttackInfo: GetPolicyDefaultOptionsResponseBody.PromptAttackInfo?

    public var promptAttackInfoList: [GetPolicyDefaultOptionsResponseBody.PromptAttackInfoList]?

    public var requestId: String?

    public var sensitiveDataTypeList: [GetPolicyDefaultOptionsResponseBody.SensitiveDataTypeList]?

    public var success: Bool?

    public var topicConfigInfoList: [GetPolicyDefaultOptionsResponseBody.TopicConfigInfoList]?

    public var wordGroupInfoList: [GetPolicyDefaultOptionsResponseBody.WordGroupInfoList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.promptAttackInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.enableSensitiveInputCheck != nil {
            map["EnableSensitiveInputCheck"] = self.enableSensitiveInputCheck!
        }
        if self.enableSensitiveOutputCheck != nil {
            map["EnableSensitiveOutputCheck"] = self.enableSensitiveOutputCheck!
        }
        if self.harmfulCategoryInfoList != nil {
            var tmp : [Any] = []
            for k in self.harmfulCategoryInfoList! {
                tmp.append(k.toMap())
            }
            map["HarmfulCategoryInfoList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.inputSafeAnswer != nil {
            map["InputSafeAnswer"] = self.inputSafeAnswer!
        }
        if self.inputSafeAnswerSwitch != nil {
            map["InputSafeAnswerSwitch"] = self.inputSafeAnswerSwitch!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.outputSafeAnswer != nil {
            map["OutputSafeAnswer"] = self.outputSafeAnswer!
        }
        if self.outputSafeAnswerSwitch != nil {
            map["OutputSafeAnswerSwitch"] = self.outputSafeAnswerSwitch!
        }
        if self.promptAttackInfo != nil {
            map["PromptAttackInfo"] = self.promptAttackInfo?.toMap()
        }
        if self.promptAttackInfoList != nil {
            var tmp : [Any] = []
            for k in self.promptAttackInfoList! {
                tmp.append(k.toMap())
            }
            map["PromptAttackInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sensitiveDataTypeList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveDataTypeList! {
                tmp.append(k.toMap())
            }
            map["SensitiveDataTypeList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.topicConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["TopicConfigInfoList"] = tmp
        }
        if self.wordGroupInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordGroupInfoList! {
                tmp.append(k.toMap())
            }
            map["WordGroupInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EnableSensitiveInputCheck"] as? Int32 {
            self.enableSensitiveInputCheck = value
        }
        if let value = dict["EnableSensitiveOutputCheck"] as? Int32 {
            self.enableSensitiveOutputCheck = value
        }
        if let value = dict["HarmfulCategoryInfoList"] as? [Any?] {
            var tmp : [GetPolicyDefaultOptionsResponseBody.HarmfulCategoryInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyDefaultOptionsResponseBody.HarmfulCategoryInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.harmfulCategoryInfoList = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InputSafeAnswer"] as? String {
            self.inputSafeAnswer = value
        }
        if let value = dict["InputSafeAnswerSwitch"] as? Int32 {
            self.inputSafeAnswerSwitch = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OutputSafeAnswer"] as? String {
            self.outputSafeAnswer = value
        }
        if let value = dict["OutputSafeAnswerSwitch"] as? Int32 {
            self.outputSafeAnswerSwitch = value
        }
        if let value = dict["PromptAttackInfo"] as? [String: Any?] {
            var model = GetPolicyDefaultOptionsResponseBody.PromptAttackInfo()
            model.fromMap(value)
            self.promptAttackInfo = model
        }
        if let value = dict["PromptAttackInfoList"] as? [Any?] {
            var tmp : [GetPolicyDefaultOptionsResponseBody.PromptAttackInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyDefaultOptionsResponseBody.PromptAttackInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptAttackInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SensitiveDataTypeList"] as? [Any?] {
            var tmp : [GetPolicyDefaultOptionsResponseBody.SensitiveDataTypeList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyDefaultOptionsResponseBody.SensitiveDataTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveDataTypeList = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicConfigInfoList"] as? [Any?] {
            var tmp : [GetPolicyDefaultOptionsResponseBody.TopicConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyDefaultOptionsResponseBody.TopicConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topicConfigInfoList = tmp
        }
        if let value = dict["WordGroupInfoList"] as? [Any?] {
            var tmp : [GetPolicyDefaultOptionsResponseBody.WordGroupInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyDefaultOptionsResponseBody.WordGroupInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordGroupInfoList = tmp
        }
    }
}

public class GetPolicyDefaultOptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyDefaultOptionsResponseBody?

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
            var model = GetPolicyDefaultOptionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicyInfoRequest : Tea.TeaModel {
    public var policyId: Int64?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? Int64 {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetPolicyInfoResponseBody : Tea.TeaModel {
    public class ContentSafeModelInfo : Tea.TeaModel {
        public var easServiceName: String?

        public var modelInstanceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.easServiceName != nil {
                map["EasServiceName"] = self.easServiceName!
            }
            if self.modelInstanceId != nil {
                map["ModelInstanceId"] = self.modelInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EasServiceName"] as? String {
                self.easServiceName = value
            }
            if let value = dict["ModelInstanceId"] as? Int64 {
                self.modelInstanceId = value
            }
        }
    }
    public class HarmfulCategoryConfigInfoList : Tea.TeaModel {
        public var categoryConfigId: Int64?

        public var categoryId: Int64?

        public var categoryLabel: String?

        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var isEnabled: Int32?

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
            if self.categoryConfigId != nil {
                map["CategoryConfigId"] = self.categoryConfigId!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryConfigId"] as? Int64 {
                self.categoryConfigId = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfo : Tea.TeaModel {
        public var isEnabled: Int32?

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
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfoList : Tea.TeaModel {
        public var categoryConfigId: Int64?

        public var categoryId: Int64?

        public var categoryLabel: String?

        public var isEnabled: Int32?

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
            if self.categoryConfigId != nil {
                map["CategoryConfigId"] = self.categoryConfigId!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryConfigId"] as? Int64 {
                self.categoryConfigId = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackModelInfo : Tea.TeaModel {
        public var easServiceName: String?

        public var modelInstanceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.easServiceName != nil {
                map["EasServiceName"] = self.easServiceName!
            }
            if self.modelInstanceId != nil {
                map["ModelInstanceId"] = self.modelInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EasServiceName"] as? String {
                self.easServiceName = value
            }
            if let value = dict["ModelInstanceId"] as? Int64 {
                self.modelInstanceId = value
            }
        }
    }
    public class RegularExpressList : Tea.TeaModel {
        public var actionType: Int32?

        public var inputOutputType: Int32?

        public var isEnabled: Int32?

        public var matchAndReplace: String?

        public var regularExpress: String?

        public var regularExpressId: Int64?

        public var regularExpressName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.matchAndReplace != nil {
                map["MatchAndReplace"] = self.matchAndReplace!
            }
            if self.regularExpress != nil {
                map["RegularExpress"] = self.regularExpress!
            }
            if self.regularExpressId != nil {
                map["RegularExpressId"] = self.regularExpressId!
            }
            if self.regularExpressName != nil {
                map["RegularExpressName"] = self.regularExpressName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["MatchAndReplace"] as? String {
                self.matchAndReplace = value
            }
            if let value = dict["RegularExpress"] as? String {
                self.regularExpress = value
            }
            if let value = dict["RegularExpressId"] as? Int64 {
                self.regularExpressId = value
            }
            if let value = dict["RegularExpressName"] as? String {
                self.regularExpressName = value
            }
        }
    }
    public class SensitiveConfigList : Tea.TeaModel {
        public var actionType: Int32?

        public var inputOutputType: Int32?

        public var isEnabled: Int32?

        public var matchAndReplace: String?

        public var sensitiveConfigId: Int64?

        public var sensitiveName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.matchAndReplace != nil {
                map["MatchAndReplace"] = self.matchAndReplace!
            }
            if self.sensitiveConfigId != nil {
                map["SensitiveConfigId"] = self.sensitiveConfigId!
            }
            if self.sensitiveName != nil {
                map["SensitiveName"] = self.sensitiveName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["MatchAndReplace"] as? String {
                self.matchAndReplace = value
            }
            if let value = dict["SensitiveConfigId"] as? Int64 {
                self.sensitiveConfigId = value
            }
            if let value = dict["SensitiveName"] as? String {
                self.sensitiveName = value
            }
        }
    }
    public class SensitiveTopicList : Tea.TeaModel {
        public class TopicExampleInfoList : Tea.TeaModel {
            public var content: String?

            public var exampleType: Int64?

            public override init() {
                super.init()
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
                if self.exampleType != nil {
                    map["ExampleType"] = self.exampleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ExampleType"] as? Int64 {
                    self.exampleType = value
                }
            }
        }
        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var securityLevel: Int32?

        public var topicDefinition: String?

        public var topicExampleInfoList: [GetPolicyInfoResponseBody.SensitiveTopicList.TopicExampleInfoList]?

        public var topicId: Int64?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicDefinition != nil {
                map["TopicDefinition"] = self.topicDefinition!
            }
            if self.topicExampleInfoList != nil {
                var tmp : [Any] = []
                for k in self.topicExampleInfoList! {
                    tmp.append(k.toMap())
                }
                map["TopicExampleInfoList"] = tmp
            }
            if self.topicId != nil {
                map["TopicId"] = self.topicId!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicDefinition"] as? String {
                self.topicDefinition = value
            }
            if let value = dict["TopicExampleInfoList"] as? [Any?] {
                var tmp : [GetPolicyInfoResponseBody.SensitiveTopicList.TopicExampleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = GetPolicyInfoResponseBody.SensitiveTopicList.TopicExampleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topicExampleInfoList = tmp
            }
            if let value = dict["TopicId"] as? Int64 {
                self.topicId = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class SensitiveTopicModelInfo : Tea.TeaModel {
        public var easServiceName: String?

        public var modelInstanceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.easServiceName != nil {
                map["EasServiceName"] = self.easServiceName!
            }
            if self.modelInstanceId != nil {
                map["ModelInstanceId"] = self.modelInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EasServiceName"] as? String {
                self.easServiceName = value
            }
            if let value = dict["ModelInstanceId"] as? Int64 {
                self.modelInstanceId = value
            }
        }
    }
    public class SensitiveWordList : Tea.TeaModel {
        public var inputOutputType: Int32?

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
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.word != nil {
                map["Word"] = self.word!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Word"] as? String {
                self.word = value
            }
        }
    }
    public class TopicConfigInfoList : Tea.TeaModel {
        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var securityLevel: Int32?

        public var topicId: Int64?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicId != nil {
                map["TopicId"] = self.topicId!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicId"] as? Int64 {
                self.topicId = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class WordGroupInfoList : Tea.TeaModel {
        public var groupId: Int64?

        public var groupName: String?

        public var inputOutputType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
        }
    }
    public var code: String?

    public var contentSafeModelInfo: GetPolicyInfoResponseBody.ContentSafeModelInfo?

    public var enableSensitiveInputCheck: Int32?

    public var enableSensitiveOutputCheck: Int32?

    public var gmtModified: Int64?

    public var harmfulCategoryConfigInfoList: [GetPolicyInfoResponseBody.HarmfulCategoryConfigInfoList]?

    public var httpStatusCode: Int32?

    public var inputSafeAnswer: String?

    public var inputSafeAnswerSwitch: Int32?

    public var isSidecarPolicy: Int32?

    public var message: String?

    public var outputSafeAnswer: String?

    public var outputSafeAnswerSwitch: Int32?

    public var policyIdentifier: String?

    public var policyName: String?

    public var promptAttackInfo: GetPolicyInfoResponseBody.PromptAttackInfo?

    public var promptAttackInfoList: [GetPolicyInfoResponseBody.PromptAttackInfoList]?

    public var promptAttackModelInfo: GetPolicyInfoResponseBody.PromptAttackModelInfo?

    public var regularExpressList: [GetPolicyInfoResponseBody.RegularExpressList]?

    public var requestId: String?

    public var sceneType: Int32?

    public var sensitiveConfigList: [GetPolicyInfoResponseBody.SensitiveConfigList]?

    public var sensitiveTopicList: [GetPolicyInfoResponseBody.SensitiveTopicList]?

    public var sensitiveTopicModelInfo: GetPolicyInfoResponseBody.SensitiveTopicModelInfo?

    public var sensitiveWordList: [GetPolicyInfoResponseBody.SensitiveWordList]?

    public var success: Bool?

    public var topicConfigInfoList: [GetPolicyInfoResponseBody.TopicConfigInfoList]?

    public var wordGroupInfoList: [GetPolicyInfoResponseBody.WordGroupInfoList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contentSafeModelInfo?.validate()
        try self.promptAttackInfo?.validate()
        try self.promptAttackModelInfo?.validate()
        try self.sensitiveTopicModelInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.contentSafeModelInfo != nil {
            map["ContentSafeModelInfo"] = self.contentSafeModelInfo?.toMap()
        }
        if self.enableSensitiveInputCheck != nil {
            map["EnableSensitiveInputCheck"] = self.enableSensitiveInputCheck!
        }
        if self.enableSensitiveOutputCheck != nil {
            map["EnableSensitiveOutputCheck"] = self.enableSensitiveOutputCheck!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.harmfulCategoryConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.harmfulCategoryConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["HarmfulCategoryConfigInfoList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.inputSafeAnswer != nil {
            map["InputSafeAnswer"] = self.inputSafeAnswer!
        }
        if self.inputSafeAnswerSwitch != nil {
            map["InputSafeAnswerSwitch"] = self.inputSafeAnswerSwitch!
        }
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.outputSafeAnswer != nil {
            map["OutputSafeAnswer"] = self.outputSafeAnswer!
        }
        if self.outputSafeAnswerSwitch != nil {
            map["OutputSafeAnswerSwitch"] = self.outputSafeAnswerSwitch!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.promptAttackInfo != nil {
            map["PromptAttackInfo"] = self.promptAttackInfo?.toMap()
        }
        if self.promptAttackInfoList != nil {
            var tmp : [Any] = []
            for k in self.promptAttackInfoList! {
                tmp.append(k.toMap())
            }
            map["PromptAttackInfoList"] = tmp
        }
        if self.promptAttackModelInfo != nil {
            map["PromptAttackModelInfo"] = self.promptAttackModelInfo?.toMap()
        }
        if self.regularExpressList != nil {
            var tmp : [Any] = []
            for k in self.regularExpressList! {
                tmp.append(k.toMap())
            }
            map["RegularExpressList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.sensitiveConfigList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveConfigList! {
                tmp.append(k.toMap())
            }
            map["SensitiveConfigList"] = tmp
        }
        if self.sensitiveTopicList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveTopicList! {
                tmp.append(k.toMap())
            }
            map["SensitiveTopicList"] = tmp
        }
        if self.sensitiveTopicModelInfo != nil {
            map["SensitiveTopicModelInfo"] = self.sensitiveTopicModelInfo?.toMap()
        }
        if self.sensitiveWordList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveWordList! {
                tmp.append(k.toMap())
            }
            map["SensitiveWordList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.topicConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["TopicConfigInfoList"] = tmp
        }
        if self.wordGroupInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordGroupInfoList! {
                tmp.append(k.toMap())
            }
            map["WordGroupInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ContentSafeModelInfo"] as? [String: Any?] {
            var model = GetPolicyInfoResponseBody.ContentSafeModelInfo()
            model.fromMap(value)
            self.contentSafeModelInfo = model
        }
        if let value = dict["EnableSensitiveInputCheck"] as? Int32 {
            self.enableSensitiveInputCheck = value
        }
        if let value = dict["EnableSensitiveOutputCheck"] as? Int32 {
            self.enableSensitiveOutputCheck = value
        }
        if let value = dict["GmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["HarmfulCategoryConfigInfoList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.HarmfulCategoryConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.HarmfulCategoryConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.harmfulCategoryConfigInfoList = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InputSafeAnswer"] as? String {
            self.inputSafeAnswer = value
        }
        if let value = dict["InputSafeAnswerSwitch"] as? Int32 {
            self.inputSafeAnswerSwitch = value
        }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OutputSafeAnswer"] as? String {
            self.outputSafeAnswer = value
        }
        if let value = dict["OutputSafeAnswerSwitch"] as? Int32 {
            self.outputSafeAnswerSwitch = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PromptAttackInfo"] as? [String: Any?] {
            var model = GetPolicyInfoResponseBody.PromptAttackInfo()
            model.fromMap(value)
            self.promptAttackInfo = model
        }
        if let value = dict["PromptAttackInfoList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.PromptAttackInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.PromptAttackInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptAttackInfoList = tmp
        }
        if let value = dict["PromptAttackModelInfo"] as? [String: Any?] {
            var model = GetPolicyInfoResponseBody.PromptAttackModelInfo()
            model.fromMap(value)
            self.promptAttackModelInfo = model
        }
        if let value = dict["RegularExpressList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.RegularExpressList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.RegularExpressList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regularExpressList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
        if let value = dict["SensitiveConfigList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.SensitiveConfigList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.SensitiveConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveConfigList = tmp
        }
        if let value = dict["SensitiveTopicList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.SensitiveTopicList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.SensitiveTopicList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveTopicList = tmp
        }
        if let value = dict["SensitiveTopicModelInfo"] as? [String: Any?] {
            var model = GetPolicyInfoResponseBody.SensitiveTopicModelInfo()
            model.fromMap(value)
            self.sensitiveTopicModelInfo = model
        }
        if let value = dict["SensitiveWordList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.SensitiveWordList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.SensitiveWordList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveWordList = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicConfigInfoList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.TopicConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.TopicConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topicConfigInfoList = tmp
        }
        if let value = dict["WordGroupInfoList"] as? [Any?] {
            var tmp : [GetPolicyInfoResponseBody.WordGroupInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetPolicyInfoResponseBody.WordGroupInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordGroupInfoList = tmp
        }
    }
}

public class GetPolicyInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyInfoResponseBody?

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
            var model = GetPolicyInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicRequest : Tea.TeaModel {
    public var regionId: String?

    public var topicId: Int64?

    public override init() {
        super.init()
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
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicId"] as? Int64 {
            self.topicId = value
        }
    }
}

public class GetTopicResponseBody : Tea.TeaModel {
    public class PolicyInfoList : Tea.TeaModel {
        public var policyId: Int64?

        public var policyIdentifier: String?

        public var policyName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyIdentifier != nil {
                map["PolicyIdentifier"] = self.policyIdentifier!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PolicyId"] as? Int64 {
                self.policyId = value
            }
            if let value = dict["PolicyIdentifier"] as? String {
                self.policyIdentifier = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
        }
    }
    public class TopicExampleInfoList : Tea.TeaModel {
        public var content: String?

        public var exampleId: Int64?

        public var exampleType: Int32?

        public override init() {
            super.init()
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
            if self.exampleId != nil {
                map["ExampleId"] = self.exampleId!
            }
            if self.exampleType != nil {
                map["ExampleType"] = self.exampleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ExampleId"] as? Int64 {
                self.exampleId = value
            }
            if let value = dict["ExampleType"] as? Int32 {
                self.exampleType = value
            }
        }
    }
    public var code: String?

    public var gmtModified: Int64?

    public var httpStatusCode: Int32?

    public var message: String?

    public var policyInfoList: [GetTopicResponseBody.PolicyInfoList]?

    public var requestId: String?

    public var success: Bool?

    public var topicDefinition: String?

    public var topicExampleInfoList: [GetTopicResponseBody.TopicExampleInfoList]?

    public var topicName: String?

    public override init() {
        super.init()
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
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.policyInfoList != nil {
            var tmp : [Any] = []
            for k in self.policyInfoList! {
                tmp.append(k.toMap())
            }
            map["PolicyInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicDefinition != nil {
            map["TopicDefinition"] = self.topicDefinition!
        }
        if self.topicExampleInfoList != nil {
            var tmp : [Any] = []
            for k in self.topicExampleInfoList! {
                tmp.append(k.toMap())
            }
            map["TopicExampleInfoList"] = tmp
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["GmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PolicyInfoList"] as? [Any?] {
            var tmp : [GetTopicResponseBody.PolicyInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetTopicResponseBody.PolicyInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicDefinition"] as? String {
            self.topicDefinition = value
        }
        if let value = dict["TopicExampleInfoList"] as? [Any?] {
            var tmp : [GetTopicResponseBody.TopicExampleInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetTopicResponseBody.TopicExampleInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topicExampleInfoList = tmp
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicResponseBody?

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
            var model = GetTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWordGroupRequest : Tea.TeaModel {
    public var groupId: Int64?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetWordGroupResponseBody : Tea.TeaModel {
    public class WordInfoList : Tea.TeaModel {
        public var label: String?

        public var word: String?

        public var wordId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.word != nil {
                map["Word"] = self.word!
            }
            if self.wordId != nil {
                map["WordId"] = self.wordId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Word"] as? String {
                self.word = value
            }
            if let value = dict["WordId"] as? Int64 {
                self.wordId = value
            }
        }
    }
    public var code: String?

    public var groupName: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var wordInfoList: [GetWordGroupResponseBody.WordInfoList]?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.wordInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordInfoList! {
                tmp.append(k.toMap())
            }
            map["WordInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["WordInfoList"] as? [Any?] {
            var tmp : [GetWordGroupResponseBody.WordInfoList] = []
            for v in value {
                if v != nil {
                    var model = GetWordGroupResponseBody.WordInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordInfoList = tmp
        }
    }
}

public class GetWordGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWordGroupResponseBody?

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
            var model = GetWordGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelCategoryRequest : Tea.TeaModel {
    public var contentSafeImageSupported: Int32?

    public var contentSafeTextSupported: Int32?

    public var modelCategoryName: String?

    public var modelSource: String?

    public var promptAttackTextSupported: Int32?

    public var sensitiveTopicTextSupported: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentSafeImageSupported != nil {
            map["ContentSafeImageSupported"] = self.contentSafeImageSupported!
        }
        if self.contentSafeTextSupported != nil {
            map["ContentSafeTextSupported"] = self.contentSafeTextSupported!
        }
        if self.modelCategoryName != nil {
            map["ModelCategoryName"] = self.modelCategoryName!
        }
        if self.modelSource != nil {
            map["ModelSource"] = self.modelSource!
        }
        if self.promptAttackTextSupported != nil {
            map["PromptAttackTextSupported"] = self.promptAttackTextSupported!
        }
        if self.sensitiveTopicTextSupported != nil {
            map["SensitiveTopicTextSupported"] = self.sensitiveTopicTextSupported!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentSafeImageSupported"] as? Int32 {
            self.contentSafeImageSupported = value
        }
        if let value = dict["ContentSafeTextSupported"] as? Int32 {
            self.contentSafeTextSupported = value
        }
        if let value = dict["ModelCategoryName"] as? String {
            self.modelCategoryName = value
        }
        if let value = dict["ModelSource"] as? String {
            self.modelSource = value
        }
        if let value = dict["PromptAttackTextSupported"] as? Int32 {
            self.promptAttackTextSupported = value
        }
        if let value = dict["SensitiveTopicTextSupported"] as? Int32 {
            self.sensitiveTopicTextSupported = value
        }
    }
}

public class ListModelCategoryResponseBody : Tea.TeaModel {
    public class ModelCategoryInfoList : Tea.TeaModel {
        public var contentSafeImageSupported: Int32?

        public var contentSafeTextSupported: Int32?

        public var modelCategoryId: Int64?

        public var modelCategoryName: String?

        public var modelSource: Int32?

        public var priority: Int32?

        public var promptAttackTextSupported: Int32?

        public var sensitiveTopicTextSupported: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentSafeImageSupported != nil {
                map["ContentSafeImageSupported"] = self.contentSafeImageSupported!
            }
            if self.contentSafeTextSupported != nil {
                map["ContentSafeTextSupported"] = self.contentSafeTextSupported!
            }
            if self.modelCategoryId != nil {
                map["ModelCategoryId"] = self.modelCategoryId!
            }
            if self.modelCategoryName != nil {
                map["ModelCategoryName"] = self.modelCategoryName!
            }
            if self.modelSource != nil {
                map["ModelSource"] = self.modelSource!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.promptAttackTextSupported != nil {
                map["PromptAttackTextSupported"] = self.promptAttackTextSupported!
            }
            if self.sensitiveTopicTextSupported != nil {
                map["SensitiveTopicTextSupported"] = self.sensitiveTopicTextSupported!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContentSafeImageSupported"] as? Int32 {
                self.contentSafeImageSupported = value
            }
            if let value = dict["ContentSafeTextSupported"] as? Int32 {
                self.contentSafeTextSupported = value
            }
            if let value = dict["ModelCategoryId"] as? Int64 {
                self.modelCategoryId = value
            }
            if let value = dict["ModelCategoryName"] as? String {
                self.modelCategoryName = value
            }
            if let value = dict["ModelSource"] as? Int32 {
                self.modelSource = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["PromptAttackTextSupported"] as? Int32 {
                self.promptAttackTextSupported = value
            }
            if let value = dict["SensitiveTopicTextSupported"] as? Int32 {
                self.sensitiveTopicTextSupported = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var modelCategoryInfoList: [ListModelCategoryResponseBody.ModelCategoryInfoList]?

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
        if self.modelCategoryInfoList != nil {
            var tmp : [Any] = []
            for k in self.modelCategoryInfoList! {
                tmp.append(k.toMap())
            }
            map["ModelCategoryInfoList"] = tmp
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
        if let value = dict["ModelCategoryInfoList"] as? [Any?] {
            var tmp : [ListModelCategoryResponseBody.ModelCategoryInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListModelCategoryResponseBody.ModelCategoryInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelCategoryInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListModelCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelCategoryResponseBody?

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
            var model = ListModelCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelInstanceRequest : Tea.TeaModel {
    public var easServiceName: String?

    public var isSidecarPolicy: Int32?

    public var isSupportContentSafe: Int32?

    public var isSupportPromptAttack: Int32?

    public var isSupportSensitiveTopic: Int32?

    public var modelSource: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortBy: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.isSupportContentSafe != nil {
            map["IsSupportContentSafe"] = self.isSupportContentSafe!
        }
        if self.isSupportPromptAttack != nil {
            map["IsSupportPromptAttack"] = self.isSupportPromptAttack!
        }
        if self.isSupportSensitiveTopic != nil {
            map["IsSupportSensitiveTopic"] = self.isSupportSensitiveTopic!
        }
        if self.modelSource != nil {
            map["ModelSource"] = self.modelSource!
        }
        if self.order != nil {
            map["Order"] = self.order!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["IsSupportContentSafe"] as? Int32 {
            self.isSupportContentSafe = value
        }
        if let value = dict["IsSupportPromptAttack"] as? Int32 {
            self.isSupportPromptAttack = value
        }
        if let value = dict["IsSupportSensitiveTopic"] as? Int32 {
            self.isSupportSensitiveTopic = value
        }
        if let value = dict["ModelSource"] as? String {
            self.modelSource = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
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
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListModelInstanceResponseBody : Tea.TeaModel {
    public class ModelInstanceInfoList : Tea.TeaModel {
        public var easServiceName: String?

        public var gmtModified: Int64?

        public var isSupportContentSafe: Int32?

        public var isSupportImage: Bool?

        public var isSupportPromptAttack: Int32?

        public var isSupportSensitiveTopic: Int32?

        public var isSupportText: Bool?

        public var modelInstanceId: Int64?

        public var modelSource: Int32?

        public var workspaceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.easServiceName != nil {
                map["EasServiceName"] = self.easServiceName!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.isSupportContentSafe != nil {
                map["IsSupportContentSafe"] = self.isSupportContentSafe!
            }
            if self.isSupportImage != nil {
                map["IsSupportImage"] = self.isSupportImage!
            }
            if self.isSupportPromptAttack != nil {
                map["IsSupportPromptAttack"] = self.isSupportPromptAttack!
            }
            if self.isSupportSensitiveTopic != nil {
                map["IsSupportSensitiveTopic"] = self.isSupportSensitiveTopic!
            }
            if self.isSupportText != nil {
                map["IsSupportText"] = self.isSupportText!
            }
            if self.modelInstanceId != nil {
                map["ModelInstanceId"] = self.modelInstanceId!
            }
            if self.modelSource != nil {
                map["ModelSource"] = self.modelSource!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EasServiceName"] as? String {
                self.easServiceName = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["IsSupportContentSafe"] as? Int32 {
                self.isSupportContentSafe = value
            }
            if let value = dict["IsSupportImage"] as? Bool {
                self.isSupportImage = value
            }
            if let value = dict["IsSupportPromptAttack"] as? Int32 {
                self.isSupportPromptAttack = value
            }
            if let value = dict["IsSupportSensitiveTopic"] as? Int32 {
                self.isSupportSensitiveTopic = value
            }
            if let value = dict["IsSupportText"] as? Bool {
                self.isSupportText = value
            }
            if let value = dict["ModelInstanceId"] as? Int64 {
                self.modelInstanceId = value
            }
            if let value = dict["ModelSource"] as? Int32 {
                self.modelSource = value
            }
            if let value = dict["WorkspaceId"] as? Int64 {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var modelInstanceInfoList: [ListModelInstanceResponseBody.ModelInstanceInfoList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.modelInstanceInfoList != nil {
            var tmp : [Any] = []
            for k in self.modelInstanceInfoList! {
                tmp.append(k.toMap())
            }
            map["ModelInstanceInfoList"] = tmp
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ModelInstanceInfoList"] as? [Any?] {
            var tmp : [ListModelInstanceResponseBody.ModelInstanceInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListModelInstanceResponseBody.ModelInstanceInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelInstanceInfoList = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListModelInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelInstanceResponseBody?

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
            var model = ListModelInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicyRequest : Tea.TeaModel {
    public var isSidecarPolicy: Int32?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyIdentifier: String?

    public var policyName: String?

    public var regionId: String?

    public var sceneType: Int32?

    public var sortBy: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyIdentifier != nil {
            map["PolicyIdentifier"] = self.policyIdentifier!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListPolicyResponseBody : Tea.TeaModel {
    public class PolicyInfoList : Tea.TeaModel {
        public var gmtModified: Int64?

        public var isSidecarPolicy: Int32?

        public var policyId: Int64?

        public var policyIdentifier: String?

        public var policyName: String?

        public var sceneType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.isSidecarPolicy != nil {
                map["IsSidecarPolicy"] = self.isSidecarPolicy!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyIdentifier != nil {
                map["PolicyIdentifier"] = self.policyIdentifier!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.sceneType != nil {
                map["SceneType"] = self.sceneType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["IsSidecarPolicy"] as? Int32 {
                self.isSidecarPolicy = value
            }
            if let value = dict["PolicyId"] as? Int64 {
                self.policyId = value
            }
            if let value = dict["PolicyIdentifier"] as? String {
                self.policyIdentifier = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["SceneType"] as? Int32 {
                self.sceneType = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyInfoList: [ListPolicyResponseBody.PolicyInfoList]?

    public var requestId: String?

    public var success: Bool?

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
        if self.policyInfoList != nil {
            var tmp : [Any] = []
            for k in self.policyInfoList! {
                tmp.append(k.toMap())
            }
            map["PolicyInfoList"] = tmp
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
        if let value = dict["PolicyInfoList"] as? [Any?] {
            var tmp : [ListPolicyResponseBody.PolicyInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListPolicyResponseBody.PolicyInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyResponseBody?

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
            var model = ListPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTopicRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortBy: String?

    public var topicName: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.order != nil {
            map["Order"] = self.order!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
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
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListTopicResponseBody : Tea.TeaModel {
    public class TopicInfoList : Tea.TeaModel {
        public class PolicyInfoList : Tea.TeaModel {
            public var policyId: Int64?

            public var policyIdentifier: String?

            public var policyName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.policyIdentifier != nil {
                    map["PolicyIdentifier"] = self.policyIdentifier!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PolicyId"] as? Int64 {
                    self.policyId = value
                }
                if let value = dict["PolicyIdentifier"] as? String {
                    self.policyIdentifier = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
            }
        }
        public var gmtModified: Int64?

        public var policyInfoList: [ListTopicResponseBody.TopicInfoList.PolicyInfoList]?

        public var topicDefinition: String?

        public var topicId: Int64?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.policyInfoList != nil {
                var tmp : [Any] = []
                for k in self.policyInfoList! {
                    tmp.append(k.toMap())
                }
                map["PolicyInfoList"] = tmp
            }
            if self.topicDefinition != nil {
                map["TopicDefinition"] = self.topicDefinition!
            }
            if self.topicId != nil {
                map["TopicId"] = self.topicId!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["PolicyInfoList"] as? [Any?] {
                var tmp : [ListTopicResponseBody.TopicInfoList.PolicyInfoList] = []
                for v in value {
                    if v != nil {
                        var model = ListTopicResponseBody.TopicInfoList.PolicyInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policyInfoList = tmp
            }
            if let value = dict["TopicDefinition"] as? String {
                self.topicDefinition = value
            }
            if let value = dict["TopicId"] as? Int64 {
                self.topicId = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
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

    public var topicInfoList: [ListTopicResponseBody.TopicInfoList]?

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
        if self.topicInfoList != nil {
            var tmp : [Any] = []
            for k in self.topicInfoList! {
                tmp.append(k.toMap())
            }
            map["TopicInfoList"] = tmp
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicInfoList"] as? [Any?] {
            var tmp : [ListTopicResponseBody.TopicInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListTopicResponseBody.TopicInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topicInfoList = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicResponseBody?

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
            var model = ListTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWordGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortBy: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.order != nil {
            map["Order"] = self.order!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
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
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class ListWordGroupResponseBody : Tea.TeaModel {
    public class WordGroupInfoList : Tea.TeaModel {
        public class PolicyInfoList : Tea.TeaModel {
            public var policyId: Int64?

            public var policyIdentifier: String?

            public var policyName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.policyIdentifier != nil {
                    map["PolicyIdentifier"] = self.policyIdentifier!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PolicyId"] as? Int64 {
                    self.policyId = value
                }
                if let value = dict["PolicyIdentifier"] as? String {
                    self.policyIdentifier = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
            }
        }
        public var gmtModified: Int64?

        public var groupId: Int64?

        public var groupName: String?

        public var policyInfoList: [ListWordGroupResponseBody.WordGroupInfoList.PolicyInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.policyInfoList != nil {
                var tmp : [Any] = []
                for k in self.policyInfoList! {
                    tmp.append(k.toMap())
                }
                map["PolicyInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["PolicyInfoList"] as? [Any?] {
                var tmp : [ListWordGroupResponseBody.WordGroupInfoList.PolicyInfoList] = []
                for v in value {
                    if v != nil {
                        var model = ListWordGroupResponseBody.WordGroupInfoList.PolicyInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policyInfoList = tmp
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

    public var totalCount: Int32?

    public var wordGroupInfoList: [ListWordGroupResponseBody.WordGroupInfoList]?

    public override init() {
        super.init()
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
        if self.wordGroupInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordGroupInfoList! {
                tmp.append(k.toMap())
            }
            map["WordGroupInfoList"] = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["WordGroupInfoList"] as? [Any?] {
            var tmp : [ListWordGroupResponseBody.WordGroupInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListWordGroupResponseBody.WordGroupInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordGroupInfoList = tmp
        }
    }
}

public class ListWordGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWordGroupResponseBody?

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
            var model = ListWordGroupResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = ModelInputContentAsyncDetectRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelInputContentAsyncDetectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = ModelInputContentSyncDetectRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Word"] as? String {
                            self.word = value
                        }
                        if let value = dict["WordLabel"] as? String {
                            self.wordLabel = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BlockWordList"] as? [Any?] {
                        var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                        for v in value {
                            if v != nil {
                                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.blockWordList = tmp
                    }
                    if let value = dict["GroupName"] as? String {
                        self.groupName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockWordGroupInfoList"] as? [Any?] {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.blockWordGroupInfoList = tmp
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
            }
        }
        public class DenyTopics : Tea.TeaModel {
            public class TopicInfoList : Tea.TeaModel {
                public var categoryType: Int32?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public var topicName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryType != nil {
                        map["CategoryType"] = self.categoryType!
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    if self.topicName != nil {
                        map["TopicName"] = self.topicName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryType"] as? Int32 {
                        self.categoryType = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                    if let value = dict["TopicName"] as? String {
                        self.topicName = value
                    }
                }
            }
            public var confidenceScore: Double?

            public var riskResult: Int32?

            public var topicInfoList: [ModelInputContentSyncDetectResponseBody.TraceInfo.DenyTopics.TopicInfoList]?

            public override init() {
                super.init()
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
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.topicInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.topicInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["TopicInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfidenceScore"] as? Double {
                    self.confidenceScore = value
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["TopicInfoList"] as? [Any?] {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.DenyTopics.TopicInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelInputContentSyncDetectResponseBody.TraceInfo.DenyTopics.TopicInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.topicInfoList = tmp
                }
            }
        }
        public class HarmfulCategories : Tea.TeaModel {
            public class HarmfulCategoryInfoList : Tea.TeaModel {
                public var categoryLabel: String?

                public var categoryType: Int32?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public var subCategoryLabel: String?

                public override init() {
                    super.init()
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
                    if self.subCategoryLabel != nil {
                        map["SubCategoryLabel"] = self.subCategoryLabel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryLabel"] as? String {
                        self.categoryLabel = value
                    }
                    if let value = dict["CategoryType"] as? Int32 {
                        self.categoryType = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                    if let value = dict["SubCategoryLabel"] as? String {
                        self.subCategoryLabel = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfidenceScore"] as? Double {
                    self.confidenceScore = value
                }
                if let value = dict["HarmfulCategoryInfoList"] as? [Any?] {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.harmfulCategoryInfoList = tmp
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
            }
        }
        public class PromptAttack : Tea.TeaModel {
            public class PromptAttackInfoList : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryLabel"] as? String {
                        self.categoryLabel = value
                    }
                    if let value = dict["CategoryType"] as? Int32 {
                        self.categoryType = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                }
            }
            public var confidenceScore: Double?

            public var promptAttackInfo: String?

            public var promptAttackInfoList: [ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack.PromptAttackInfoList]?

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
                if self.promptAttackInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.promptAttackInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["PromptAttackInfoList"] = tmp
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfidenceScore"] as? Double {
                    self.confidenceScore = value
                }
                if let value = dict["PromptAttackInfo"] as? String {
                    self.promptAttackInfo = value
                }
                if let value = dict["PromptAttackInfoList"] as? [Any?] {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack.PromptAttackInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack.PromptAttackInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promptAttackInfoList = tmp
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["SecurityLevel"] as? Int32 {
                    self.securityLevel = value
                }
            }
        }
        public class SensitiveType : Tea.TeaModel {
            public class SensitiveTypeInfoList : Tea.TeaModel {
                public var actionType: Int32?

                public var maskedContent: String?

                public var sensitiveCategory: Int32?

                public var sensitiveContent: String?

                public var sensitiveTypeName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actionType != nil {
                        map["ActionType"] = self.actionType!
                    }
                    if self.maskedContent != nil {
                        map["MaskedContent"] = self.maskedContent!
                    }
                    if self.sensitiveCategory != nil {
                        map["SensitiveCategory"] = self.sensitiveCategory!
                    }
                    if self.sensitiveContent != nil {
                        map["SensitiveContent"] = self.sensitiveContent!
                    }
                    if self.sensitiveTypeName != nil {
                        map["SensitiveTypeName"] = self.sensitiveTypeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActionType"] as? Int32 {
                        self.actionType = value
                    }
                    if let value = dict["MaskedContent"] as? String {
                        self.maskedContent = value
                    }
                    if let value = dict["SensitiveCategory"] as? Int32 {
                        self.sensitiveCategory = value
                    }
                    if let value = dict["SensitiveContent"] as? String {
                        self.sensitiveContent = value
                    }
                    if let value = dict["SensitiveTypeName"] as? String {
                        self.sensitiveTypeName = value
                    }
                }
            }
            public var maskedContent: String?

            public var riskResult: Int32?

            public var sensitiveTypeInfoList: [ModelInputContentSyncDetectResponseBody.TraceInfo.SensitiveType.SensitiveTypeInfoList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maskedContent != nil {
                    map["MaskedContent"] = self.maskedContent!
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.sensitiveTypeInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.sensitiveTypeInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["SensitiveTypeInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaskedContent"] as? String {
                    self.maskedContent = value
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["SensitiveTypeInfoList"] as? [Any?] {
                    var tmp : [ModelInputContentSyncDetectResponseBody.TraceInfo.SensitiveType.SensitiveTypeInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelInputContentSyncDetectResponseBody.TraceInfo.SensitiveType.SensitiveTypeInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sensitiveTypeInfoList = tmp
                }
            }
        }
        public var blockWord: ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord?

        public var denyTopics: ModelInputContentSyncDetectResponseBody.TraceInfo.DenyTopics?

        public var harmfulCategories: ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories?

        public var promptAttack: ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack?

        public var sensitiveType: ModelInputContentSyncDetectResponseBody.TraceInfo.SensitiveType?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockWord?.validate()
            try self.denyTopics?.validate()
            try self.harmfulCategories?.validate()
            try self.promptAttack?.validate()
            try self.sensitiveType?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockWord != nil {
                map["BlockWord"] = self.blockWord?.toMap()
            }
            if self.denyTopics != nil {
                map["DenyTopics"] = self.denyTopics?.toMap()
            }
            if self.harmfulCategories != nil {
                map["HarmfulCategories"] = self.harmfulCategories?.toMap()
            }
            if self.promptAttack != nil {
                map["PromptAttack"] = self.promptAttack?.toMap()
            }
            if self.sensitiveType != nil {
                map["SensitiveType"] = self.sensitiveType?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockWord"] as? [String: Any?] {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.BlockWord()
                model.fromMap(value)
                self.blockWord = model
            }
            if let value = dict["DenyTopics"] as? [String: Any?] {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.DenyTopics()
                model.fromMap(value)
                self.denyTopics = model
            }
            if let value = dict["HarmfulCategories"] as? [String: Any?] {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories()
                model.fromMap(value)
                self.harmfulCategories = model
            }
            if let value = dict["PromptAttack"] as? [String: Any?] {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.PromptAttack()
                model.fromMap(value)
                self.promptAttack = model
            }
            if let value = dict["SensitiveType"] as? [String: Any?] {
                var model = ModelInputContentSyncDetectResponseBody.TraceInfo.SensitiveType()
                model.fromMap(value)
                self.sensitiveType = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var riskResult: Int32?

    public var safeAnswer: String?

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
        if self.safeAnswer != nil {
            map["SafeAnswer"] = self.safeAnswer!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.traceInfo != nil {
            map["TraceInfo"] = self.traceInfo?.toMap()
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
        if let value = dict["RiskResult"] as? Int32 {
            self.riskResult = value
        }
        if let value = dict["SafeAnswer"] as? String {
            self.safeAnswer = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TraceInfo"] as? [String: Any?] {
            var model = ModelInputContentSyncDetectResponseBody.TraceInfo()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelInputContentSyncDetectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = ModelOutputContentAsyncDetectRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelOutputContentAsyncDetectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = ModelOutputContentSyncDetectRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["PolicyIdentifier"] as? String {
            self.policyIdentifier = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Word"] as? String {
                            self.word = value
                        }
                        if let value = dict["WordLabel"] as? String {
                            self.wordLabel = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BlockWordList"] as? [Any?] {
                        var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList] = []
                        for v in value {
                            if v != nil {
                                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList.BlockWordList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.blockWordList = tmp
                    }
                    if let value = dict["GroupName"] as? String {
                        self.groupName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockWordGroupInfoList"] as? [Any?] {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord.BlockWordGroupInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.blockWordGroupInfoList = tmp
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
            }
        }
        public class DenyTopics : Tea.TeaModel {
            public class TopicInfoList : Tea.TeaModel {
                public var categoryType: Int32?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public var topicName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryType != nil {
                        map["CategoryType"] = self.categoryType!
                    }
                    if self.riskResult != nil {
                        map["RiskResult"] = self.riskResult!
                    }
                    if self.securityLevel != nil {
                        map["SecurityLevel"] = self.securityLevel!
                    }
                    if self.topicName != nil {
                        map["TopicName"] = self.topicName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryType"] as? Int32 {
                        self.categoryType = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                    if let value = dict["TopicName"] as? String {
                        self.topicName = value
                    }
                }
            }
            public var confidenceScore: Double?

            public var riskResult: Int32?

            public var topicInfoList: [ModelOutputContentSyncDetectResponseBody.TraceInfo.DenyTopics.TopicInfoList]?

            public override init() {
                super.init()
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
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.topicInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.topicInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["TopicInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfidenceScore"] as? Double {
                    self.confidenceScore = value
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["TopicInfoList"] as? [Any?] {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.DenyTopics.TopicInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.DenyTopics.TopicInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.topicInfoList = tmp
                }
            }
        }
        public class HarmfulCategories : Tea.TeaModel {
            public class HarmfulCategoryInfoList : Tea.TeaModel {
                public var categoryLabel: String?

                public var categoryType: Int32?

                public var riskResult: Int32?

                public var securityLevel: Int32?

                public var subCategoryLabel: String?

                public override init() {
                    super.init()
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
                    if self.subCategoryLabel != nil {
                        map["SubCategoryLabel"] = self.subCategoryLabel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryLabel"] as? String {
                        self.categoryLabel = value
                    }
                    if let value = dict["CategoryType"] as? Int32 {
                        self.categoryType = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                    if let value = dict["SubCategoryLabel"] as? String {
                        self.subCategoryLabel = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfidenceScore"] as? Double {
                    self.confidenceScore = value
                }
                if let value = dict["HarmfulCategoryInfoList"] as? [Any?] {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories.HarmfulCategoryInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.harmfulCategoryInfoList = tmp
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
            }
        }
        public class PromptAttack : Tea.TeaModel {
            public class PromptAttackInfoList : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryLabel"] as? String {
                        self.categoryLabel = value
                    }
                    if let value = dict["CategoryType"] as? Int32 {
                        self.categoryType = value
                    }
                    if let value = dict["RiskResult"] as? Int32 {
                        self.riskResult = value
                    }
                    if let value = dict["SecurityLevel"] as? Int32 {
                        self.securityLevel = value
                    }
                }
            }
            public var confidenceScore: Double?

            public var promptAttackInfo: String?

            public var promptAttackInfoList: [ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack.PromptAttackInfoList]?

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
                if self.promptAttackInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.promptAttackInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["PromptAttackInfoList"] = tmp
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfidenceScore"] as? Double {
                    self.confidenceScore = value
                }
                if let value = dict["PromptAttackInfo"] as? String {
                    self.promptAttackInfo = value
                }
                if let value = dict["PromptAttackInfoList"] as? [Any?] {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack.PromptAttackInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack.PromptAttackInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promptAttackInfoList = tmp
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["SecurityLevel"] as? Int32 {
                    self.securityLevel = value
                }
            }
        }
        public class SensitiveType : Tea.TeaModel {
            public class SensitiveTypeInfoList : Tea.TeaModel {
                public var actionType: Int32?

                public var maskedContent: String?

                public var sensitiveCategory: Int32?

                public var sensitiveContent: String?

                public var sensitiveTypeName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actionType != nil {
                        map["ActionType"] = self.actionType!
                    }
                    if self.maskedContent != nil {
                        map["MaskedContent"] = self.maskedContent!
                    }
                    if self.sensitiveCategory != nil {
                        map["SensitiveCategory"] = self.sensitiveCategory!
                    }
                    if self.sensitiveContent != nil {
                        map["SensitiveContent"] = self.sensitiveContent!
                    }
                    if self.sensitiveTypeName != nil {
                        map["SensitiveTypeName"] = self.sensitiveTypeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActionType"] as? Int32 {
                        self.actionType = value
                    }
                    if let value = dict["MaskedContent"] as? String {
                        self.maskedContent = value
                    }
                    if let value = dict["SensitiveCategory"] as? Int32 {
                        self.sensitiveCategory = value
                    }
                    if let value = dict["SensitiveContent"] as? String {
                        self.sensitiveContent = value
                    }
                    if let value = dict["SensitiveTypeName"] as? String {
                        self.sensitiveTypeName = value
                    }
                }
            }
            public var maskedContent: String?

            public var riskResult: Int32?

            public var sensitiveTypeInfoList: [ModelOutputContentSyncDetectResponseBody.TraceInfo.SensitiveType.SensitiveTypeInfoList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maskedContent != nil {
                    map["MaskedContent"] = self.maskedContent!
                }
                if self.riskResult != nil {
                    map["RiskResult"] = self.riskResult!
                }
                if self.sensitiveTypeInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.sensitiveTypeInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["SensitiveTypeInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaskedContent"] as? String {
                    self.maskedContent = value
                }
                if let value = dict["RiskResult"] as? Int32 {
                    self.riskResult = value
                }
                if let value = dict["SensitiveTypeInfoList"] as? [Any?] {
                    var tmp : [ModelOutputContentSyncDetectResponseBody.TraceInfo.SensitiveType.SensitiveTypeInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.SensitiveType.SensitiveTypeInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sensitiveTypeInfoList = tmp
                }
            }
        }
        public var blockWord: ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord?

        public var denyTopics: ModelOutputContentSyncDetectResponseBody.TraceInfo.DenyTopics?

        public var harmfulCategories: ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories?

        public var promptAttack: ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack?

        public var sensitiveType: ModelOutputContentSyncDetectResponseBody.TraceInfo.SensitiveType?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockWord?.validate()
            try self.denyTopics?.validate()
            try self.harmfulCategories?.validate()
            try self.promptAttack?.validate()
            try self.sensitiveType?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockWord != nil {
                map["BlockWord"] = self.blockWord?.toMap()
            }
            if self.denyTopics != nil {
                map["DenyTopics"] = self.denyTopics?.toMap()
            }
            if self.harmfulCategories != nil {
                map["HarmfulCategories"] = self.harmfulCategories?.toMap()
            }
            if self.promptAttack != nil {
                map["PromptAttack"] = self.promptAttack?.toMap()
            }
            if self.sensitiveType != nil {
                map["SensitiveType"] = self.sensitiveType?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockWord"] as? [String: Any?] {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.BlockWord()
                model.fromMap(value)
                self.blockWord = model
            }
            if let value = dict["DenyTopics"] as? [String: Any?] {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.DenyTopics()
                model.fromMap(value)
                self.denyTopics = model
            }
            if let value = dict["HarmfulCategories"] as? [String: Any?] {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.HarmfulCategories()
                model.fromMap(value)
                self.harmfulCategories = model
            }
            if let value = dict["PromptAttack"] as? [String: Any?] {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.PromptAttack()
                model.fromMap(value)
                self.promptAttack = model
            }
            if let value = dict["SensitiveType"] as? [String: Any?] {
                var model = ModelOutputContentSyncDetectResponseBody.TraceInfo.SensitiveType()
                model.fromMap(value)
                self.sensitiveType = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var riskInfo: String?

    public var riskResult: Int32?

    public var safeAnswer: String?

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
        if self.safeAnswer != nil {
            map["SafeAnswer"] = self.safeAnswer!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.traceInfo != nil {
            map["TraceInfo"] = self.traceInfo?.toMap()
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
        if let value = dict["RiskInfo"] as? String {
            self.riskInfo = value
        }
        if let value = dict["RiskResult"] as? Int32 {
            self.riskResult = value
        }
        if let value = dict["SafeAnswer"] as? String {
            self.safeAnswer = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TraceInfo"] as? [String: Any?] {
            var model = ModelOutputContentSyncDetectResponseBody.TraceInfo()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModelOutputContentSyncDetectResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RegisterAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelInstanceRequest : Tea.TeaModel {
    public var description_: String?

    public var easServiceId: String?

    public var easServiceName: String?

    public var modelCallName: String?

    public var modelCategoryId: Int64?

    public var modelInstanceId: Int64?

    public var modelToken: String?

    public var modelUrl: String?

    public var modelVpcUrl: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
        if self.easServiceId != nil {
            map["EasServiceId"] = self.easServiceId!
        }
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.modelCallName != nil {
            map["ModelCallName"] = self.modelCallName!
        }
        if self.modelCategoryId != nil {
            map["ModelCategoryId"] = self.modelCategoryId!
        }
        if self.modelInstanceId != nil {
            map["ModelInstanceId"] = self.modelInstanceId!
        }
        if self.modelToken != nil {
            map["ModelToken"] = self.modelToken!
        }
        if self.modelUrl != nil {
            map["ModelUrl"] = self.modelUrl!
        }
        if self.modelVpcUrl != nil {
            map["ModelVpcUrl"] = self.modelVpcUrl!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EasServiceId"] as? String {
            self.easServiceId = value
        }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["ModelCallName"] as? String {
            self.modelCallName = value
        }
        if let value = dict["ModelCategoryId"] as? Int64 {
            self.modelCategoryId = value
        }
        if let value = dict["ModelInstanceId"] as? Int64 {
            self.modelInstanceId = value
        }
        if let value = dict["ModelToken"] as? String {
            self.modelToken = value
        }
        if let value = dict["ModelUrl"] as? String {
            self.modelUrl = value
        }
        if let value = dict["ModelVpcUrl"] as? String {
            self.modelVpcUrl = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdateModelInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var modelInstanceId: Int64?

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
        if self.modelInstanceId != nil {
            map["ModelInstanceId"] = self.modelInstanceId!
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
        if let value = dict["ModelInstanceId"] as? Int64 {
            self.modelInstanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateModelInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelInstanceResponseBody?

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
            var model = UpdateModelInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePolicyRequest : Tea.TeaModel {
    public class HarmfulCategoryConfigInfoList : Tea.TeaModel {
        public var categoryConfigId: Int64?

        public var categoryId: Int64?

        public var categoryLabel: String?

        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var isEnabled: Int32?

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
            if self.categoryConfigId != nil {
                map["CategoryConfigId"] = self.categoryConfigId!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryConfigId"] as? Int64 {
                self.categoryConfigId = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfo : Tea.TeaModel {
        public var isEnabled: Int32?

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
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class PromptAttackInfoList : Tea.TeaModel {
        public var categoryConfigId: Int64?

        public var categoryId: Int64?

        public var categoryLabel: String?

        public var isEnabled: Int32?

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
            if self.categoryConfigId != nil {
                map["CategoryConfigId"] = self.categoryConfigId!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLabel != nil {
                map["CategoryLabel"] = self.categoryLabel!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryConfigId"] as? Int64 {
                self.categoryConfigId = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryLabel"] as? String {
                self.categoryLabel = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
        }
    }
    public class RegularExpressList : Tea.TeaModel {
        public var actionType: Int32?

        public var regularExpress: String?

        public var regularExpressName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.regularExpress != nil {
                map["RegularExpress"] = self.regularExpress!
            }
            if self.regularExpressName != nil {
                map["RegularExpressName"] = self.regularExpressName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["RegularExpress"] as? String {
                self.regularExpress = value
            }
            if let value = dict["RegularExpressName"] as? String {
                self.regularExpressName = value
            }
        }
    }
    public class SensitiveConfigList : Tea.TeaModel {
        public var actionType: Int32?

        public var isEnabled: Int32?

        public var sensitiveConfigId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.sensitiveConfigId != nil {
                map["SensitiveConfigId"] = self.sensitiveConfigId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["SensitiveConfigId"] as? Int64 {
                self.sensitiveConfigId = value
            }
        }
    }
    public class SensitiveTopicList : Tea.TeaModel {
        public class TopicExampleInfoList : Tea.TeaModel {
            public var content: String?

            public var exampleType: Int32?

            public override init() {
                super.init()
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
                if self.exampleType != nil {
                    map["ExampleType"] = self.exampleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ExampleType"] as? Int32 {
                    self.exampleType = value
                }
            }
        }
        public var categoryType: Int32?

        public var securityLevel: Int32?

        public var topicDefinition: String?

        public var topicExampleInfoList: [UpdatePolicyRequest.SensitiveTopicList.TopicExampleInfoList]?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicDefinition != nil {
                map["TopicDefinition"] = self.topicDefinition!
            }
            if self.topicExampleInfoList != nil {
                var tmp : [Any] = []
                for k in self.topicExampleInfoList! {
                    tmp.append(k.toMap())
                }
                map["TopicExampleInfoList"] = tmp
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicDefinition"] as? String {
                self.topicDefinition = value
            }
            if let value = dict["TopicExampleInfoList"] as? [Any?] {
                var tmp : [UpdatePolicyRequest.SensitiveTopicList.TopicExampleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePolicyRequest.SensitiveTopicList.TopicExampleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topicExampleInfoList = tmp
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class SensitiveWordList : Tea.TeaModel {
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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.word != nil {
                map["Word"] = self.word!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Word"] as? String {
                self.word = value
            }
        }
    }
    public class TopicConfigInfoList : Tea.TeaModel {
        public var categoryType: Int32?

        public var inputOutputType: Int32?

        public var securityLevel: Int32?

        public var topicId: Int64?

        public var topicName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.topicId != nil {
                map["TopicId"] = self.topicId!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
            if let value = dict["SecurityLevel"] as? Int32 {
                self.securityLevel = value
            }
            if let value = dict["TopicId"] as? Int64 {
                self.topicId = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
        }
    }
    public class WordGroupInfoList : Tea.TeaModel {
        public var groupId: Int64?

        public var groupName: String?

        public var inputOutputType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.inputOutputType != nil {
                map["InputOutputType"] = self.inputOutputType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["InputOutputType"] as? Int32 {
                self.inputOutputType = value
            }
        }
    }
    public var contentSafeModelInstanceId: Int64?

    public var enableSensitiveInputCheck: Int32?

    public var enableSensitiveOutputCheck: Int32?

    public var harmfulCategoryConfigInfoList: [UpdatePolicyRequest.HarmfulCategoryConfigInfoList]?

    public var inputSafeAnswer: String?

    public var inputSafeAnswerSwitch: Int32?

    public var isSidecarPolicy: Int32?

    public var outputSafeAnswer: String?

    public var outputSafeAnswerSwitch: Int32?

    public var policyId: Int64?

    public var policyName: String?

    public var promptAttackInfo: UpdatePolicyRequest.PromptAttackInfo?

    public var promptAttackInfoList: [UpdatePolicyRequest.PromptAttackInfoList]?

    public var promptAttackModelInstanceId: Int64?

    public var regionId: String?

    public var regularExpressList: [UpdatePolicyRequest.RegularExpressList]?

    public var sceneType: Int32?

    public var sensitiveConfigList: [UpdatePolicyRequest.SensitiveConfigList]?

    public var sensitiveTopicList: [UpdatePolicyRequest.SensitiveTopicList]?

    public var sensitiveTopicModelInstanceId: Int64?

    public var sensitiveWordList: [UpdatePolicyRequest.SensitiveWordList]?

    public var topicConfigInfoList: [UpdatePolicyRequest.TopicConfigInfoList]?

    public var wordGroupInfoList: [UpdatePolicyRequest.WordGroupInfoList]?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.promptAttackInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentSafeModelInstanceId != nil {
            map["ContentSafeModelInstanceId"] = self.contentSafeModelInstanceId!
        }
        if self.enableSensitiveInputCheck != nil {
            map["EnableSensitiveInputCheck"] = self.enableSensitiveInputCheck!
        }
        if self.enableSensitiveOutputCheck != nil {
            map["EnableSensitiveOutputCheck"] = self.enableSensitiveOutputCheck!
        }
        if self.harmfulCategoryConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.harmfulCategoryConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["HarmfulCategoryConfigInfoList"] = tmp
        }
        if self.inputSafeAnswer != nil {
            map["InputSafeAnswer"] = self.inputSafeAnswer!
        }
        if self.inputSafeAnswerSwitch != nil {
            map["InputSafeAnswerSwitch"] = self.inputSafeAnswerSwitch!
        }
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.outputSafeAnswer != nil {
            map["OutputSafeAnswer"] = self.outputSafeAnswer!
        }
        if self.outputSafeAnswerSwitch != nil {
            map["OutputSafeAnswerSwitch"] = self.outputSafeAnswerSwitch!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.promptAttackInfo != nil {
            map["PromptAttackInfo"] = self.promptAttackInfo?.toMap()
        }
        if self.promptAttackInfoList != nil {
            var tmp : [Any] = []
            for k in self.promptAttackInfoList! {
                tmp.append(k.toMap())
            }
            map["PromptAttackInfoList"] = tmp
        }
        if self.promptAttackModelInstanceId != nil {
            map["PromptAttackModelInstanceId"] = self.promptAttackModelInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regularExpressList != nil {
            var tmp : [Any] = []
            for k in self.regularExpressList! {
                tmp.append(k.toMap())
            }
            map["RegularExpressList"] = tmp
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.sensitiveConfigList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveConfigList! {
                tmp.append(k.toMap())
            }
            map["SensitiveConfigList"] = tmp
        }
        if self.sensitiveTopicList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveTopicList! {
                tmp.append(k.toMap())
            }
            map["SensitiveTopicList"] = tmp
        }
        if self.sensitiveTopicModelInstanceId != nil {
            map["SensitiveTopicModelInstanceId"] = self.sensitiveTopicModelInstanceId!
        }
        if self.sensitiveWordList != nil {
            var tmp : [Any] = []
            for k in self.sensitiveWordList! {
                tmp.append(k.toMap())
            }
            map["SensitiveWordList"] = tmp
        }
        if self.topicConfigInfoList != nil {
            var tmp : [Any] = []
            for k in self.topicConfigInfoList! {
                tmp.append(k.toMap())
            }
            map["TopicConfigInfoList"] = tmp
        }
        if self.wordGroupInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordGroupInfoList! {
                tmp.append(k.toMap())
            }
            map["WordGroupInfoList"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentSafeModelInstanceId"] as? Int64 {
            self.contentSafeModelInstanceId = value
        }
        if let value = dict["EnableSensitiveInputCheck"] as? Int32 {
            self.enableSensitiveInputCheck = value
        }
        if let value = dict["EnableSensitiveOutputCheck"] as? Int32 {
            self.enableSensitiveOutputCheck = value
        }
        if let value = dict["HarmfulCategoryConfigInfoList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.HarmfulCategoryConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.HarmfulCategoryConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.harmfulCategoryConfigInfoList = tmp
        }
        if let value = dict["InputSafeAnswer"] as? String {
            self.inputSafeAnswer = value
        }
        if let value = dict["InputSafeAnswerSwitch"] as? Int32 {
            self.inputSafeAnswerSwitch = value
        }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["OutputSafeAnswer"] as? String {
            self.outputSafeAnswer = value
        }
        if let value = dict["OutputSafeAnswerSwitch"] as? Int32 {
            self.outputSafeAnswerSwitch = value
        }
        if let value = dict["PolicyId"] as? Int64 {
            self.policyId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PromptAttackInfo"] as? [String: Any?] {
            var model = UpdatePolicyRequest.PromptAttackInfo()
            model.fromMap(value)
            self.promptAttackInfo = model
        }
        if let value = dict["PromptAttackInfoList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.PromptAttackInfoList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.PromptAttackInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptAttackInfoList = tmp
        }
        if let value = dict["PromptAttackModelInstanceId"] as? Int64 {
            self.promptAttackModelInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegularExpressList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.RegularExpressList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.RegularExpressList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regularExpressList = tmp
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
        if let value = dict["SensitiveConfigList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.SensitiveConfigList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.SensitiveConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveConfigList = tmp
        }
        if let value = dict["SensitiveTopicList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.SensitiveTopicList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.SensitiveTopicList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveTopicList = tmp
        }
        if let value = dict["SensitiveTopicModelInstanceId"] as? Int64 {
            self.sensitiveTopicModelInstanceId = value
        }
        if let value = dict["SensitiveWordList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.SensitiveWordList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.SensitiveWordList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sensitiveWordList = tmp
        }
        if let value = dict["TopicConfigInfoList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.TopicConfigInfoList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.TopicConfigInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topicConfigInfoList = tmp
        }
        if let value = dict["WordGroupInfoList"] as? [Any?] {
            var tmp : [UpdatePolicyRequest.WordGroupInfoList] = []
            for v in value {
                if v != nil {
                    var model = UpdatePolicyRequest.WordGroupInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordGroupInfoList = tmp
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdatePolicyShrinkRequest : Tea.TeaModel {
    public var contentSafeModelInstanceId: Int64?

    public var enableSensitiveInputCheck: Int32?

    public var enableSensitiveOutputCheck: Int32?

    public var harmfulCategoryConfigInfoListShrink: String?

    public var inputSafeAnswer: String?

    public var inputSafeAnswerSwitch: Int32?

    public var isSidecarPolicy: Int32?

    public var outputSafeAnswer: String?

    public var outputSafeAnswerSwitch: Int32?

    public var policyId: Int64?

    public var policyName: String?

    public var promptAttackInfoShrink: String?

    public var promptAttackInfoListShrink: String?

    public var promptAttackModelInstanceId: Int64?

    public var regionId: String?

    public var regularExpressListShrink: String?

    public var sceneType: Int32?

    public var sensitiveConfigListShrink: String?

    public var sensitiveTopicListShrink: String?

    public var sensitiveTopicModelInstanceId: Int64?

    public var sensitiveWordListShrink: String?

    public var topicConfigInfoListShrink: String?

    public var wordGroupInfoListShrink: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentSafeModelInstanceId != nil {
            map["ContentSafeModelInstanceId"] = self.contentSafeModelInstanceId!
        }
        if self.enableSensitiveInputCheck != nil {
            map["EnableSensitiveInputCheck"] = self.enableSensitiveInputCheck!
        }
        if self.enableSensitiveOutputCheck != nil {
            map["EnableSensitiveOutputCheck"] = self.enableSensitiveOutputCheck!
        }
        if self.harmfulCategoryConfigInfoListShrink != nil {
            map["HarmfulCategoryConfigInfoList"] = self.harmfulCategoryConfigInfoListShrink!
        }
        if self.inputSafeAnswer != nil {
            map["InputSafeAnswer"] = self.inputSafeAnswer!
        }
        if self.inputSafeAnswerSwitch != nil {
            map["InputSafeAnswerSwitch"] = self.inputSafeAnswerSwitch!
        }
        if self.isSidecarPolicy != nil {
            map["IsSidecarPolicy"] = self.isSidecarPolicy!
        }
        if self.outputSafeAnswer != nil {
            map["OutputSafeAnswer"] = self.outputSafeAnswer!
        }
        if self.outputSafeAnswerSwitch != nil {
            map["OutputSafeAnswerSwitch"] = self.outputSafeAnswerSwitch!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.promptAttackInfoShrink != nil {
            map["PromptAttackInfo"] = self.promptAttackInfoShrink!
        }
        if self.promptAttackInfoListShrink != nil {
            map["PromptAttackInfoList"] = self.promptAttackInfoListShrink!
        }
        if self.promptAttackModelInstanceId != nil {
            map["PromptAttackModelInstanceId"] = self.promptAttackModelInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regularExpressListShrink != nil {
            map["RegularExpressList"] = self.regularExpressListShrink!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.sensitiveConfigListShrink != nil {
            map["SensitiveConfigList"] = self.sensitiveConfigListShrink!
        }
        if self.sensitiveTopicListShrink != nil {
            map["SensitiveTopicList"] = self.sensitiveTopicListShrink!
        }
        if self.sensitiveTopicModelInstanceId != nil {
            map["SensitiveTopicModelInstanceId"] = self.sensitiveTopicModelInstanceId!
        }
        if self.sensitiveWordListShrink != nil {
            map["SensitiveWordList"] = self.sensitiveWordListShrink!
        }
        if self.topicConfigInfoListShrink != nil {
            map["TopicConfigInfoList"] = self.topicConfigInfoListShrink!
        }
        if self.wordGroupInfoListShrink != nil {
            map["WordGroupInfoList"] = self.wordGroupInfoListShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentSafeModelInstanceId"] as? Int64 {
            self.contentSafeModelInstanceId = value
        }
        if let value = dict["EnableSensitiveInputCheck"] as? Int32 {
            self.enableSensitiveInputCheck = value
        }
        if let value = dict["EnableSensitiveOutputCheck"] as? Int32 {
            self.enableSensitiveOutputCheck = value
        }
        if let value = dict["HarmfulCategoryConfigInfoList"] as? String {
            self.harmfulCategoryConfigInfoListShrink = value
        }
        if let value = dict["InputSafeAnswer"] as? String {
            self.inputSafeAnswer = value
        }
        if let value = dict["InputSafeAnswerSwitch"] as? Int32 {
            self.inputSafeAnswerSwitch = value
        }
        if let value = dict["IsSidecarPolicy"] as? Int32 {
            self.isSidecarPolicy = value
        }
        if let value = dict["OutputSafeAnswer"] as? String {
            self.outputSafeAnswer = value
        }
        if let value = dict["OutputSafeAnswerSwitch"] as? Int32 {
            self.outputSafeAnswerSwitch = value
        }
        if let value = dict["PolicyId"] as? Int64 {
            self.policyId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PromptAttackInfo"] as? String {
            self.promptAttackInfoShrink = value
        }
        if let value = dict["PromptAttackInfoList"] as? String {
            self.promptAttackInfoListShrink = value
        }
        if let value = dict["PromptAttackModelInstanceId"] as? Int64 {
            self.promptAttackModelInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegularExpressList"] as? String {
            self.regularExpressListShrink = value
        }
        if let value = dict["SceneType"] as? Int32 {
            self.sceneType = value
        }
        if let value = dict["SensitiveConfigList"] as? String {
            self.sensitiveConfigListShrink = value
        }
        if let value = dict["SensitiveTopicList"] as? String {
            self.sensitiveTopicListShrink = value
        }
        if let value = dict["SensitiveTopicModelInstanceId"] as? Int64 {
            self.sensitiveTopicModelInstanceId = value
        }
        if let value = dict["SensitiveWordList"] as? String {
            self.sensitiveWordListShrink = value
        }
        if let value = dict["TopicConfigInfoList"] as? String {
            self.topicConfigInfoListShrink = value
        }
        if let value = dict["WordGroupInfoList"] as? String {
            self.wordGroupInfoListShrink = value
        }
        if let value = dict["WorkspaceId"] as? Int64 {
            self.workspaceId = value
        }
    }
}

public class UpdatePolicyResponseBody : Tea.TeaModel {
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

public class UpdatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyResponseBody?

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
            var model = UpdatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTopicRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public class TopicExampleInfoList : Tea.TeaModel {
            public var content: String?

            public var exampleType: Int32?

            public override init() {
                super.init()
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
                if self.exampleType != nil {
                    map["ExampleType"] = self.exampleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ExampleType"] as? Int32 {
                    self.exampleType = value
                }
            }
        }
        public var topicExampleInfoList: [UpdateTopicRequest.BodyData.TopicExampleInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topicExampleInfoList != nil {
                var tmp : [Any] = []
                for k in self.topicExampleInfoList! {
                    tmp.append(k.toMap())
                }
                map["TopicExampleInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TopicExampleInfoList"] as? [Any?] {
                var tmp : [UpdateTopicRequest.BodyData.TopicExampleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = UpdateTopicRequest.BodyData.TopicExampleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topicExampleInfoList = tmp
            }
        }
    }
    public var bodyData: UpdateTopicRequest.BodyData?

    public var regionId: String?

    public var topicDefinition: String?

    public var topicId: Int64?

    public var topicName: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topicDefinition != nil {
            map["TopicDefinition"] = self.topicDefinition!
        }
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = UpdateTopicRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicDefinition"] as? String {
            self.topicDefinition = value
        }
        if let value = dict["TopicId"] as? Int64 {
            self.topicId = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class UpdateTopicShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var regionId: String?

    public var topicDefinition: String?

    public var topicId: Int64?

    public var topicName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topicDefinition != nil {
            map["TopicDefinition"] = self.topicDefinition!
        }
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicDefinition"] as? String {
            self.topicDefinition = value
        }
        if let value = dict["TopicId"] as? Int64 {
            self.topicId = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class UpdateTopicResponseBody : Tea.TeaModel {
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

public class UpdateTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTopicResponseBody?

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
            var model = UpdateTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWordGroupRequest : Tea.TeaModel {
    public class BodyData : Tea.TeaModel {
        public class WordInfoList : Tea.TeaModel {
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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Word"] as? String {
                    self.word = value
                }
            }
        }
        public var wordInfoList: [UpdateWordGroupRequest.BodyData.WordInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wordInfoList != nil {
                var tmp : [Any] = []
                for k in self.wordInfoList! {
                    tmp.append(k.toMap())
                }
                map["WordInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WordInfoList"] as? [Any?] {
                var tmp : [UpdateWordGroupRequest.BodyData.WordInfoList] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWordGroupRequest.BodyData.WordInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wordInfoList = tmp
            }
        }
    }
    public var bodyData: UpdateWordGroupRequest.BodyData?

    public var commit: Bool?

    public var groupId: Int64?

    public var groupName: String?

    public var regionId: String?

    public var wordInfoListModified: Bool?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wordInfoListModified != nil {
            map["WordInfoListModified"] = self.wordInfoListModified!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? [String: Any?] {
            var model = UpdateWordGroupRequest.BodyData()
            model.fromMap(value)
            self.bodyData = model
        }
        if let value = dict["Commit"] as? Bool {
            self.commit = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WordInfoListModified"] as? Bool {
            self.wordInfoListModified = value
        }
    }
}

public class UpdateWordGroupShrinkRequest : Tea.TeaModel {
    public var bodyDataShrink: String?

    public var commit: Bool?

    public var groupId: Int64?

    public var groupName: String?

    public var regionId: String?

    public var wordInfoListModified: Bool?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wordInfoListModified != nil {
            map["WordInfoListModified"] = self.wordInfoListModified!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyData"] as? String {
            self.bodyDataShrink = value
        }
        if let value = dict["Commit"] as? Bool {
            self.commit = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WordInfoListModified"] as? Bool {
            self.wordInfoListModified = value
        }
    }
}

public class UpdateWordGroupResponseBody : Tea.TeaModel {
    public class WordErrorInfoList : Tea.TeaModel {
        public var errorMessage: String?

        public var errorStatus: Int32?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.errorStatus != nil {
                map["ErrorStatus"] = self.errorStatus!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["ErrorStatus"] as? Int32 {
                self.errorStatus = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Word"] as? String {
                self.word = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var wordErrorInfoList: [UpdateWordGroupResponseBody.WordErrorInfoList]?

    public override init() {
        super.init()
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
        if self.wordErrorInfoList != nil {
            var tmp : [Any] = []
            for k in self.wordErrorInfoList! {
                tmp.append(k.toMap())
            }
            map["WordErrorInfoList"] = tmp
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
        if let value = dict["WordErrorInfoList"] as? [Any?] {
            var tmp : [UpdateWordGroupResponseBody.WordErrorInfoList] = []
            for v in value {
                if v != nil {
                    var model = UpdateWordGroupResponseBody.WordErrorInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wordErrorInfoList = tmp
        }
    }
}

public class UpdateWordGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWordGroupResponseBody?

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
            var model = UpdateWordGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
