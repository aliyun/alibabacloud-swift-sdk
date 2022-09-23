import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AbortAndRollbackChangeOrderRequest : Tea.TeaModel {
    public var changeOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeOrderId != nil {
            map["ChangeOrderId"] = self.changeOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeOrderId") {
            self.changeOrderId = dict["ChangeOrderId"] as! String
        }
    }
}

public class AbortAndRollbackChangeOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: AbortAndRollbackChangeOrderResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = AbortAndRollbackChangeOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class AbortAndRollbackChangeOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortAndRollbackChangeOrderResponseBody?

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
            var model = AbortAndRollbackChangeOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AbortChangeOrderRequest : Tea.TeaModel {
    public var changeOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeOrderId != nil {
            map["ChangeOrderId"] = self.changeOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeOrderId") {
            self.changeOrderId = dict["ChangeOrderId"] as! String
        }
    }
}

public class AbortChangeOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: AbortChangeOrderResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = AbortChangeOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class AbortChangeOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortChangeOrderResponseBody?

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
            var model = AbortChangeOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStartApplicationsRequest : Tea.TeaModel {
    public var appIds: String?

    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIds") {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class BatchStartApplicationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: BatchStartApplicationsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = BatchStartApplicationsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class BatchStartApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStartApplicationsResponseBody?

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
            var model = BatchStartApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStopApplicationsRequest : Tea.TeaModel {
    public var appIds: String?

    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIds") {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class BatchStopApplicationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: BatchStopApplicationsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = BatchStopApplicationsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class BatchStopApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStopApplicationsResponseBody?

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
            var model = BatchStopApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindSlbRequest : Tea.TeaModel {
    public var appId: String?

    public var internet: String?

    public var internetSlbId: String?

    public var intranet: String?

    public var intranetSlbId: String?

    public override init() {
        super.init()
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
        if self.internet != nil {
            map["Internet"] = self.internet!
        }
        if self.internetSlbId != nil {
            map["InternetSlbId"] = self.internetSlbId!
        }
        if self.intranet != nil {
            map["Intranet"] = self.intranet!
        }
        if self.intranetSlbId != nil {
            map["IntranetSlbId"] = self.intranetSlbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Internet") {
            self.internet = dict["Internet"] as! String
        }
        if dict.keys.contains("InternetSlbId") {
            self.internetSlbId = dict["InternetSlbId"] as! String
        }
        if dict.keys.contains("Intranet") {
            self.intranet = dict["Intranet"] as! String
        }
        if dict.keys.contains("IntranetSlbId") {
            self.intranetSlbId = dict["IntranetSlbId"] as! String
        }
    }
}

public class BindSlbResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: BindSlbResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = BindSlbResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class BindSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindSlbResponseBody?

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
            var model = BindSlbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmPipelineBatchRequest : Tea.TeaModel {
    public var confirm: Bool?

    public var pipelineId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confirm != nil {
            map["Confirm"] = self.confirm!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Confirm") {
            self.confirm = dict["Confirm"] as! Bool
        }
        if dict.keys.contains("PipelineId") {
            self.pipelineId = dict["PipelineId"] as! String
        }
    }
}

public class ConfirmPipelineBatchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pipelineId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pipelineId != nil {
                map["PipelineId"] = self.pipelineId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PipelineId") {
                self.pipelineId = dict["PipelineId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ConfirmPipelineBatchResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ConfirmPipelineBatchResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ConfirmPipelineBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmPipelineBatchResponseBody?

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
            var model = ConfirmPipelineBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var acrAssumeRoleArn: String?

    public var acrInstanceId: String?

    public var appDescription: String?

    public var appName: String?

    public var associateEip: Bool?

    public var autoConfig: Bool?

    public var command: String?

    public var commandArgs: String?

    public var configMapMountDesc: String?

    public var cpu: Int32?

    public var customHostAlias: String?

    public var deploy: Bool?

    public var edasContainerVersion: String?

    public var envs: String?

    public var imageUrl: String?

    public var jarStartArgs: String?

    public var jarStartOptions: String?

    public var jdk: String?

    public var kafkaConfigs: String?

    public var liveness: String?

    public var memory: Int32?

    public var microRegistration: String?

    public var mountDesc: String?

    public var mountHost: String?

    public var namespaceId: String?

    public var nasConfigs: String?

    public var nasId: String?

    public var ossAkId: String?

    public var ossAkSecret: String?

    public var ossMountDescs: String?

    public var packageType: String?

    public var packageUrl: String?

    public var packageVersion: String?

    public var phpArmsConfigLocation: String?

    public var phpConfig: String?

    public var phpConfigLocation: String?

    public var postStart: String?

    public var preStop: String?

    public var programmingLanguage: String?

    public var pvtzDiscoverySvc: String?

    public var readiness: String?

    public var replicas: Int32?

    public var securityGroupId: String?

    public var slsConfigs: String?

    public var terminationGracePeriodSeconds: Int32?

    public var timezone: String?

    public var tomcatConfig: String?

    public var vSwitchId: String?

    public var vpcId: String?

    public var warStartOptions: String?

    public var webContainer: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrAssumeRoleArn != nil {
            map["AcrAssumeRoleArn"] = self.acrAssumeRoleArn!
        }
        if self.acrInstanceId != nil {
            map["AcrInstanceId"] = self.acrInstanceId!
        }
        if self.appDescription != nil {
            map["AppDescription"] = self.appDescription!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.associateEip != nil {
            map["AssociateEip"] = self.associateEip!
        }
        if self.autoConfig != nil {
            map["AutoConfig"] = self.autoConfig!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.commandArgs != nil {
            map["CommandArgs"] = self.commandArgs!
        }
        if self.configMapMountDesc != nil {
            map["ConfigMapMountDesc"] = self.configMapMountDesc!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.customHostAlias != nil {
            map["CustomHostAlias"] = self.customHostAlias!
        }
        if self.deploy != nil {
            map["Deploy"] = self.deploy!
        }
        if self.edasContainerVersion != nil {
            map["EdasContainerVersion"] = self.edasContainerVersion!
        }
        if self.envs != nil {
            map["Envs"] = self.envs!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.jarStartArgs != nil {
            map["JarStartArgs"] = self.jarStartArgs!
        }
        if self.jarStartOptions != nil {
            map["JarStartOptions"] = self.jarStartOptions!
        }
        if self.jdk != nil {
            map["Jdk"] = self.jdk!
        }
        if self.kafkaConfigs != nil {
            map["KafkaConfigs"] = self.kafkaConfigs!
        }
        if self.liveness != nil {
            map["Liveness"] = self.liveness!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.microRegistration != nil {
            map["MicroRegistration"] = self.microRegistration!
        }
        if self.mountDesc != nil {
            map["MountDesc"] = self.mountDesc!
        }
        if self.mountHost != nil {
            map["MountHost"] = self.mountHost!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.nasConfigs != nil {
            map["NasConfigs"] = self.nasConfigs!
        }
        if self.nasId != nil {
            map["NasId"] = self.nasId!
        }
        if self.ossAkId != nil {
            map["OssAkId"] = self.ossAkId!
        }
        if self.ossAkSecret != nil {
            map["OssAkSecret"] = self.ossAkSecret!
        }
        if self.ossMountDescs != nil {
            map["OssMountDescs"] = self.ossMountDescs!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.packageUrl != nil {
            map["PackageUrl"] = self.packageUrl!
        }
        if self.packageVersion != nil {
            map["PackageVersion"] = self.packageVersion!
        }
        if self.phpArmsConfigLocation != nil {
            map["PhpArmsConfigLocation"] = self.phpArmsConfigLocation!
        }
        if self.phpConfig != nil {
            map["PhpConfig"] = self.phpConfig!
        }
        if self.phpConfigLocation != nil {
            map["PhpConfigLocation"] = self.phpConfigLocation!
        }
        if self.postStart != nil {
            map["PostStart"] = self.postStart!
        }
        if self.preStop != nil {
            map["PreStop"] = self.preStop!
        }
        if self.programmingLanguage != nil {
            map["ProgrammingLanguage"] = self.programmingLanguage!
        }
        if self.pvtzDiscoverySvc != nil {
            map["PvtzDiscoverySvc"] = self.pvtzDiscoverySvc!
        }
        if self.readiness != nil {
            map["Readiness"] = self.readiness!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.slsConfigs != nil {
            map["SlsConfigs"] = self.slsConfigs!
        }
        if self.terminationGracePeriodSeconds != nil {
            map["TerminationGracePeriodSeconds"] = self.terminationGracePeriodSeconds!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.tomcatConfig != nil {
            map["TomcatConfig"] = self.tomcatConfig!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.warStartOptions != nil {
            map["WarStartOptions"] = self.warStartOptions!
        }
        if self.webContainer != nil {
            map["WebContainer"] = self.webContainer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcrAssumeRoleArn") {
            self.acrAssumeRoleArn = dict["AcrAssumeRoleArn"] as! String
        }
        if dict.keys.contains("AcrInstanceId") {
            self.acrInstanceId = dict["AcrInstanceId"] as! String
        }
        if dict.keys.contains("AppDescription") {
            self.appDescription = dict["AppDescription"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AssociateEip") {
            self.associateEip = dict["AssociateEip"] as! Bool
        }
        if dict.keys.contains("AutoConfig") {
            self.autoConfig = dict["AutoConfig"] as! Bool
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("CommandArgs") {
            self.commandArgs = dict["CommandArgs"] as! String
        }
        if dict.keys.contains("ConfigMapMountDesc") {
            self.configMapMountDesc = dict["ConfigMapMountDesc"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("CustomHostAlias") {
            self.customHostAlias = dict["CustomHostAlias"] as! String
        }
        if dict.keys.contains("Deploy") {
            self.deploy = dict["Deploy"] as! Bool
        }
        if dict.keys.contains("EdasContainerVersion") {
            self.edasContainerVersion = dict["EdasContainerVersion"] as! String
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("JarStartArgs") {
            self.jarStartArgs = dict["JarStartArgs"] as! String
        }
        if dict.keys.contains("JarStartOptions") {
            self.jarStartOptions = dict["JarStartOptions"] as! String
        }
        if dict.keys.contains("Jdk") {
            self.jdk = dict["Jdk"] as! String
        }
        if dict.keys.contains("KafkaConfigs") {
            self.kafkaConfigs = dict["KafkaConfigs"] as! String
        }
        if dict.keys.contains("Liveness") {
            self.liveness = dict["Liveness"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("MicroRegistration") {
            self.microRegistration = dict["MicroRegistration"] as! String
        }
        if dict.keys.contains("MountDesc") {
            self.mountDesc = dict["MountDesc"] as! String
        }
        if dict.keys.contains("MountHost") {
            self.mountHost = dict["MountHost"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("NasConfigs") {
            self.nasConfigs = dict["NasConfigs"] as! String
        }
        if dict.keys.contains("NasId") {
            self.nasId = dict["NasId"] as! String
        }
        if dict.keys.contains("OssAkId") {
            self.ossAkId = dict["OssAkId"] as! String
        }
        if dict.keys.contains("OssAkSecret") {
            self.ossAkSecret = dict["OssAkSecret"] as! String
        }
        if dict.keys.contains("OssMountDescs") {
            self.ossMountDescs = dict["OssMountDescs"] as! String
        }
        if dict.keys.contains("PackageType") {
            self.packageType = dict["PackageType"] as! String
        }
        if dict.keys.contains("PackageUrl") {
            self.packageUrl = dict["PackageUrl"] as! String
        }
        if dict.keys.contains("PackageVersion") {
            self.packageVersion = dict["PackageVersion"] as! String
        }
        if dict.keys.contains("PhpArmsConfigLocation") {
            self.phpArmsConfigLocation = dict["PhpArmsConfigLocation"] as! String
        }
        if dict.keys.contains("PhpConfig") {
            self.phpConfig = dict["PhpConfig"] as! String
        }
        if dict.keys.contains("PhpConfigLocation") {
            self.phpConfigLocation = dict["PhpConfigLocation"] as! String
        }
        if dict.keys.contains("PostStart") {
            self.postStart = dict["PostStart"] as! String
        }
        if dict.keys.contains("PreStop") {
            self.preStop = dict["PreStop"] as! String
        }
        if dict.keys.contains("ProgrammingLanguage") {
            self.programmingLanguage = dict["ProgrammingLanguage"] as! String
        }
        if dict.keys.contains("PvtzDiscoverySvc") {
            self.pvtzDiscoverySvc = dict["PvtzDiscoverySvc"] as! String
        }
        if dict.keys.contains("Readiness") {
            self.readiness = dict["Readiness"] as! String
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SlsConfigs") {
            self.slsConfigs = dict["SlsConfigs"] as! String
        }
        if dict.keys.contains("TerminationGracePeriodSeconds") {
            self.terminationGracePeriodSeconds = dict["TerminationGracePeriodSeconds"] as! Int32
        }
        if dict.keys.contains("Timezone") {
            self.timezone = dict["Timezone"] as! String
        }
        if dict.keys.contains("TomcatConfig") {
            self.tomcatConfig = dict["TomcatConfig"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WarStartOptions") {
            self.warStartOptions = dict["WarStartOptions"] as! String
        }
        if dict.keys.contains("WebContainer") {
            self.webContainer = dict["WebContainer"] as! String
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var changeOrderId: String?

        public override init() {
            super.init()
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
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

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
            var model = CreateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationScalingRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var minReadyInstanceRatio: Int32?

    public var minReadyInstances: Int32?

    public var scalingRuleEnable: Bool?

    public var scalingRuleMetric: String?

    public var scalingRuleName: String?

    public var scalingRuleTimer: String?

    public var scalingRuleType: String?

    public override init() {
        super.init()
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
        if self.minReadyInstanceRatio != nil {
            map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
        }
        if self.minReadyInstances != nil {
            map["MinReadyInstances"] = self.minReadyInstances!
        }
        if self.scalingRuleEnable != nil {
            map["ScalingRuleEnable"] = self.scalingRuleEnable!
        }
        if self.scalingRuleMetric != nil {
            map["ScalingRuleMetric"] = self.scalingRuleMetric!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        if self.scalingRuleTimer != nil {
            map["ScalingRuleTimer"] = self.scalingRuleTimer!
        }
        if self.scalingRuleType != nil {
            map["ScalingRuleType"] = self.scalingRuleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("MinReadyInstanceRatio") {
            self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
        }
        if dict.keys.contains("MinReadyInstances") {
            self.minReadyInstances = dict["MinReadyInstances"] as! Int32
        }
        if dict.keys.contains("ScalingRuleEnable") {
            self.scalingRuleEnable = dict["ScalingRuleEnable"] as! Bool
        }
        if dict.keys.contains("ScalingRuleMetric") {
            self.scalingRuleMetric = dict["ScalingRuleMetric"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
        if dict.keys.contains("ScalingRuleTimer") {
            self.scalingRuleTimer = dict["ScalingRuleTimer"] as! String
        }
        if dict.keys.contains("ScalingRuleType") {
            self.scalingRuleType = dict["ScalingRuleType"] as! String
        }
    }
}

public class CreateApplicationScalingRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Metric : Tea.TeaModel {
            public class Metrics : Tea.TeaModel {
                public var metricTargetAverageUtilization: Int32?

                public var metricType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.metricTargetAverageUtilization != nil {
                        map["MetricTargetAverageUtilization"] = self.metricTargetAverageUtilization!
                    }
                    if self.metricType != nil {
                        map["MetricType"] = self.metricType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MetricTargetAverageUtilization") {
                        self.metricTargetAverageUtilization = dict["MetricTargetAverageUtilization"] as! Int32
                    }
                    if dict.keys.contains("MetricType") {
                        self.metricType = dict["MetricType"] as! String
                    }
                }
            }
            public var maxReplicas: Int32?

            public var metrics: [CreateApplicationScalingRuleResponseBody.Data.Metric.Metrics]?

            public var minReplicas: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxReplicas != nil {
                    map["MaxReplicas"] = self.maxReplicas!
                }
                if self.metrics != nil {
                    var tmp : [Any] = []
                    for k in self.metrics! {
                        tmp.append(k.toMap())
                    }
                    map["Metrics"] = tmp
                }
                if self.minReplicas != nil {
                    map["MinReplicas"] = self.minReplicas!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxReplicas") {
                    self.maxReplicas = dict["MaxReplicas"] as! Int32
                }
                if dict.keys.contains("Metrics") {
                    self.metrics = dict["Metrics"] as! [CreateApplicationScalingRuleResponseBody.Data.Metric.Metrics]
                }
                if dict.keys.contains("MinReplicas") {
                    self.minReplicas = dict["MinReplicas"] as! Int32
                }
            }
        }
        public class Timer : Tea.TeaModel {
            public class Schedules : Tea.TeaModel {
                public var atTime: String?

                public var targetReplicas: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.atTime != nil {
                        map["AtTime"] = self.atTime!
                    }
                    if self.targetReplicas != nil {
                        map["TargetReplicas"] = self.targetReplicas!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AtTime") {
                        self.atTime = dict["AtTime"] as! String
                    }
                    if dict.keys.contains("TargetReplicas") {
                        self.targetReplicas = dict["TargetReplicas"] as! Int32
                    }
                }
            }
            public var beginDate: String?

            public var endDate: String?

            public var period: String?

            public var schedules: [CreateApplicationScalingRuleResponseBody.Data.Timer.Schedules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginDate != nil {
                    map["BeginDate"] = self.beginDate!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.schedules != nil {
                    var tmp : [Any] = []
                    for k in self.schedules! {
                        tmp.append(k.toMap())
                    }
                    map["Schedules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginDate") {
                    self.beginDate = dict["BeginDate"] as! String
                }
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("Schedules") {
                    self.schedules = dict["Schedules"] as! [CreateApplicationScalingRuleResponseBody.Data.Timer.Schedules]
                }
            }
        }
        public var appId: String?

        public var createTime: Int64?

        public var lastDisableTime: Int64?

        public var metric: CreateApplicationScalingRuleResponseBody.Data.Metric?

        public var scaleRuleEnabled: Bool?

        public var scaleRuleName: String?

        public var scaleRuleType: String?

        public var timer: CreateApplicationScalingRuleResponseBody.Data.Timer?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metric?.validate()
            try self.timer?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.lastDisableTime != nil {
                map["LastDisableTime"] = self.lastDisableTime!
            }
            if self.metric != nil {
                map["Metric"] = self.metric?.toMap()
            }
            if self.scaleRuleEnabled != nil {
                map["ScaleRuleEnabled"] = self.scaleRuleEnabled!
            }
            if self.scaleRuleName != nil {
                map["ScaleRuleName"] = self.scaleRuleName!
            }
            if self.scaleRuleType != nil {
                map["ScaleRuleType"] = self.scaleRuleType!
            }
            if self.timer != nil {
                map["Timer"] = self.timer?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("LastDisableTime") {
                self.lastDisableTime = dict["LastDisableTime"] as! Int64
            }
            if dict.keys.contains("Metric") {
                var model = CreateApplicationScalingRuleResponseBody.Data.Metric()
                model.fromMap(dict["Metric"] as! [String: Any])
                self.metric = model
            }
            if dict.keys.contains("ScaleRuleEnabled") {
                self.scaleRuleEnabled = dict["ScaleRuleEnabled"] as! Bool
            }
            if dict.keys.contains("ScaleRuleName") {
                self.scaleRuleName = dict["ScaleRuleName"] as! String
            }
            if dict.keys.contains("ScaleRuleType") {
                self.scaleRuleType = dict["ScaleRuleType"] as! String
            }
            if dict.keys.contains("Timer") {
                var model = CreateApplicationScalingRuleResponseBody.Data.Timer()
                model.fromMap(dict["Timer"] as! [String: Any])
                self.timer = model
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var data: CreateApplicationScalingRuleResponseBody.Data?

    public var requestId: String?

    public var traceId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateApplicationScalingRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class CreateApplicationScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationScalingRuleResponseBody?

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
            var model = CreateApplicationScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConfigMapRequest : Tea.TeaModel {
    public var data: String?

    public var description_: String?

    public var name: String?

    public var namespaceId: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class CreateConfigMapResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configMapId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configMapId != nil {
                map["ConfigMapId"] = self.configMapId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigMapId") {
                self.configMapId = dict["ConfigMapId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: CreateConfigMapResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateConfigMapResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class CreateConfigMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigMapResponseBody?

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
            var model = CreateConfigMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGreyTagRouteRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

    public var dubboRules: String?

    public var name: String?

    public var scRules: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dubboRules != nil {
            map["DubboRules"] = self.dubboRules!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scRules != nil {
            map["ScRules"] = self.scRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DubboRules") {
            self.dubboRules = dict["DubboRules"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ScRules") {
            self.scRules = dict["ScRules"] as! String
        }
    }
}

public class CreateGreyTagRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var greyTagRouteId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.greyTagRouteId != nil {
                map["GreyTagRouteId"] = self.greyTagRouteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GreyTagRouteId") {
                self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: CreateGreyTagRouteResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateGreyTagRouteResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class CreateGreyTagRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGreyTagRouteResponseBody?

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
            var model = CreateGreyTagRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIngressRequest : Tea.TeaModel {
    public var certId: String?

    public var defaultRule: String?

    public var description_: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalanceType: String?

    public var namespaceId: String?

    public var rules: String?

    public var slbId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        if self.defaultRule != nil {
            map["DefaultRule"] = self.defaultRule!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalanceType != nil {
            map["LoadBalanceType"] = self.loadBalanceType!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        if self.slbId != nil {
            map["SlbId"] = self.slbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertId") {
            self.certId = dict["CertId"] as! String
        }
        if dict.keys.contains("DefaultRule") {
            self.defaultRule = dict["DefaultRule"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalanceType") {
            self.loadBalanceType = dict["LoadBalanceType"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("Rules") {
            self.rules = dict["Rules"] as! String
        }
        if dict.keys.contains("SlbId") {
            self.slbId = dict["SlbId"] as! String
        }
    }
}

public class CreateIngressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ingressId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ingressId != nil {
                map["IngressId"] = self.ingressId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IngressId") {
                self.ingressId = dict["IngressId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: CreateIngressResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateIngressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class CreateIngressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIngressResponseBody?

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
            var model = CreateIngressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
    public var namespaceDescription: String?

    public var namespaceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceDescription != nil {
            map["NamespaceDescription"] = self.namespaceDescription!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceDescription") {
            self.namespaceDescription = dict["NamespaceDescription"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var namespaceDescription: String?

        public var namespaceId: String?

        public var namespaceName: String?

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
            if self.namespaceDescription != nil {
                map["NamespaceDescription"] = self.namespaceDescription!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NamespaceDescription") {
                self.namespaceDescription = dict["NamespaceDescription"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateNamespaceResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateNamespaceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class CreateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNamespaceResponseBody?

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
            var model = CreateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeleteApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

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
            var model = DeleteApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationScalingRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var scalingRuleName: String?

    public override init() {
        super.init()
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
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
    }
}

public class DeleteApplicationScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeleteApplicationScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationScalingRuleResponseBody?

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
            var model = DeleteApplicationScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConfigMapRequest : Tea.TeaModel {
    public var configMapId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configMapId != nil {
            map["ConfigMapId"] = self.configMapId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigMapId") {
            self.configMapId = dict["ConfigMapId"] as! Int64
        }
    }
}

public class DeleteConfigMapResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configMapId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configMapId != nil {
                map["ConfigMapId"] = self.configMapId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigMapId") {
                self.configMapId = dict["ConfigMapId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DeleteConfigMapResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeleteConfigMapResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeleteConfigMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigMapResponseBody?

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
            var model = DeleteConfigMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGreyTagRouteRequest : Tea.TeaModel {
    public var greyTagRouteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.greyTagRouteId != nil {
            map["GreyTagRouteId"] = self.greyTagRouteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GreyTagRouteId") {
            self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
        }
    }
}

public class DeleteGreyTagRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var greyTagRouteId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.greyTagRouteId != nil {
                map["GreyTagRouteId"] = self.greyTagRouteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GreyTagRouteId") {
                self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DeleteGreyTagRouteResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeleteGreyTagRouteResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeleteGreyTagRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGreyTagRouteResponseBody?

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
            var model = DeleteGreyTagRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIngressRequest : Tea.TeaModel {
    public var ingressId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ingressId != nil {
            map["IngressId"] = self.ingressId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IngressId") {
            self.ingressId = dict["IngressId"] as! Int64
        }
    }
}

public class DeleteIngressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ingressId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ingressId != nil {
                map["IngressId"] = self.ingressId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IngressId") {
                self.ingressId = dict["IngressId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DeleteIngressResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeleteIngressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeleteIngressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIngressResponseBody?

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
            var model = DeleteIngressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNamespaceRequest : Tea.TeaModel {
    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class DeleteNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeleteNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNamespaceResponseBody?

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
            var model = DeleteNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployApplicationRequest : Tea.TeaModel {
    public var acrAssumeRoleArn: String?

    public var acrInstanceId: String?

    public var appId: String?

    public var associateEip: Bool?

    public var autoEnableApplicationScalingRule: Bool?

    public var batchWaitTime: Int32?

    public var changeOrderDesc: String?

    public var command: String?

    public var commandArgs: String?

    public var configMapMountDesc: String?

    public var customHostAlias: String?

    public var edasContainerVersion: String?

    public var enableAhas: String?

    public var enableGreyTagRoute: Bool?

    public var envs: String?

    public var imageUrl: String?

    public var jarStartArgs: String?

    public var jarStartOptions: String?

    public var jdk: String?

    public var kafkaConfigs: String?

    public var liveness: String?

    public var microRegistration: String?

    public var minReadyInstanceRatio: Int32?

    public var minReadyInstances: Int32?

    public var mountDesc: String?

    public var mountHost: String?

    public var nasConfigs: String?

    public var nasId: String?

    public var ossAkId: String?

    public var ossAkSecret: String?

    public var ossMountDescs: String?

    public var packageUrl: String?

    public var packageVersion: String?

    public var phpArmsConfigLocation: String?

    public var phpConfig: String?

    public var phpConfigLocation: String?

    public var postStart: String?

    public var preStop: String?

    public var pvtzDiscoverySvc: String?

    public var readiness: String?

    public var slsConfigs: String?

    public var terminationGracePeriodSeconds: Int32?

    public var timezone: String?

    public var tomcatConfig: String?

    public var updateStrategy: String?

    public var warStartOptions: String?

    public var webContainer: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrAssumeRoleArn != nil {
            map["AcrAssumeRoleArn"] = self.acrAssumeRoleArn!
        }
        if self.acrInstanceId != nil {
            map["AcrInstanceId"] = self.acrInstanceId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.associateEip != nil {
            map["AssociateEip"] = self.associateEip!
        }
        if self.autoEnableApplicationScalingRule != nil {
            map["AutoEnableApplicationScalingRule"] = self.autoEnableApplicationScalingRule!
        }
        if self.batchWaitTime != nil {
            map["BatchWaitTime"] = self.batchWaitTime!
        }
        if self.changeOrderDesc != nil {
            map["ChangeOrderDesc"] = self.changeOrderDesc!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.commandArgs != nil {
            map["CommandArgs"] = self.commandArgs!
        }
        if self.configMapMountDesc != nil {
            map["ConfigMapMountDesc"] = self.configMapMountDesc!
        }
        if self.customHostAlias != nil {
            map["CustomHostAlias"] = self.customHostAlias!
        }
        if self.edasContainerVersion != nil {
            map["EdasContainerVersion"] = self.edasContainerVersion!
        }
        if self.enableAhas != nil {
            map["EnableAhas"] = self.enableAhas!
        }
        if self.enableGreyTagRoute != nil {
            map["EnableGreyTagRoute"] = self.enableGreyTagRoute!
        }
        if self.envs != nil {
            map["Envs"] = self.envs!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.jarStartArgs != nil {
            map["JarStartArgs"] = self.jarStartArgs!
        }
        if self.jarStartOptions != nil {
            map["JarStartOptions"] = self.jarStartOptions!
        }
        if self.jdk != nil {
            map["Jdk"] = self.jdk!
        }
        if self.kafkaConfigs != nil {
            map["KafkaConfigs"] = self.kafkaConfigs!
        }
        if self.liveness != nil {
            map["Liveness"] = self.liveness!
        }
        if self.microRegistration != nil {
            map["MicroRegistration"] = self.microRegistration!
        }
        if self.minReadyInstanceRatio != nil {
            map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
        }
        if self.minReadyInstances != nil {
            map["MinReadyInstances"] = self.minReadyInstances!
        }
        if self.mountDesc != nil {
            map["MountDesc"] = self.mountDesc!
        }
        if self.mountHost != nil {
            map["MountHost"] = self.mountHost!
        }
        if self.nasConfigs != nil {
            map["NasConfigs"] = self.nasConfigs!
        }
        if self.nasId != nil {
            map["NasId"] = self.nasId!
        }
        if self.ossAkId != nil {
            map["OssAkId"] = self.ossAkId!
        }
        if self.ossAkSecret != nil {
            map["OssAkSecret"] = self.ossAkSecret!
        }
        if self.ossMountDescs != nil {
            map["OssMountDescs"] = self.ossMountDescs!
        }
        if self.packageUrl != nil {
            map["PackageUrl"] = self.packageUrl!
        }
        if self.packageVersion != nil {
            map["PackageVersion"] = self.packageVersion!
        }
        if self.phpArmsConfigLocation != nil {
            map["PhpArmsConfigLocation"] = self.phpArmsConfigLocation!
        }
        if self.phpConfig != nil {
            map["PhpConfig"] = self.phpConfig!
        }
        if self.phpConfigLocation != nil {
            map["PhpConfigLocation"] = self.phpConfigLocation!
        }
        if self.postStart != nil {
            map["PostStart"] = self.postStart!
        }
        if self.preStop != nil {
            map["PreStop"] = self.preStop!
        }
        if self.pvtzDiscoverySvc != nil {
            map["PvtzDiscoverySvc"] = self.pvtzDiscoverySvc!
        }
        if self.readiness != nil {
            map["Readiness"] = self.readiness!
        }
        if self.slsConfigs != nil {
            map["SlsConfigs"] = self.slsConfigs!
        }
        if self.terminationGracePeriodSeconds != nil {
            map["TerminationGracePeriodSeconds"] = self.terminationGracePeriodSeconds!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.tomcatConfig != nil {
            map["TomcatConfig"] = self.tomcatConfig!
        }
        if self.updateStrategy != nil {
            map["UpdateStrategy"] = self.updateStrategy!
        }
        if self.warStartOptions != nil {
            map["WarStartOptions"] = self.warStartOptions!
        }
        if self.webContainer != nil {
            map["WebContainer"] = self.webContainer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcrAssumeRoleArn") {
            self.acrAssumeRoleArn = dict["AcrAssumeRoleArn"] as! String
        }
        if dict.keys.contains("AcrInstanceId") {
            self.acrInstanceId = dict["AcrInstanceId"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AssociateEip") {
            self.associateEip = dict["AssociateEip"] as! Bool
        }
        if dict.keys.contains("AutoEnableApplicationScalingRule") {
            self.autoEnableApplicationScalingRule = dict["AutoEnableApplicationScalingRule"] as! Bool
        }
        if dict.keys.contains("BatchWaitTime") {
            self.batchWaitTime = dict["BatchWaitTime"] as! Int32
        }
        if dict.keys.contains("ChangeOrderDesc") {
            self.changeOrderDesc = dict["ChangeOrderDesc"] as! String
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("CommandArgs") {
            self.commandArgs = dict["CommandArgs"] as! String
        }
        if dict.keys.contains("ConfigMapMountDesc") {
            self.configMapMountDesc = dict["ConfigMapMountDesc"] as! String
        }
        if dict.keys.contains("CustomHostAlias") {
            self.customHostAlias = dict["CustomHostAlias"] as! String
        }
        if dict.keys.contains("EdasContainerVersion") {
            self.edasContainerVersion = dict["EdasContainerVersion"] as! String
        }
        if dict.keys.contains("EnableAhas") {
            self.enableAhas = dict["EnableAhas"] as! String
        }
        if dict.keys.contains("EnableGreyTagRoute") {
            self.enableGreyTagRoute = dict["EnableGreyTagRoute"] as! Bool
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("JarStartArgs") {
            self.jarStartArgs = dict["JarStartArgs"] as! String
        }
        if dict.keys.contains("JarStartOptions") {
            self.jarStartOptions = dict["JarStartOptions"] as! String
        }
        if dict.keys.contains("Jdk") {
            self.jdk = dict["Jdk"] as! String
        }
        if dict.keys.contains("KafkaConfigs") {
            self.kafkaConfigs = dict["KafkaConfigs"] as! String
        }
        if dict.keys.contains("Liveness") {
            self.liveness = dict["Liveness"] as! String
        }
        if dict.keys.contains("MicroRegistration") {
            self.microRegistration = dict["MicroRegistration"] as! String
        }
        if dict.keys.contains("MinReadyInstanceRatio") {
            self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
        }
        if dict.keys.contains("MinReadyInstances") {
            self.minReadyInstances = dict["MinReadyInstances"] as! Int32
        }
        if dict.keys.contains("MountDesc") {
            self.mountDesc = dict["MountDesc"] as! String
        }
        if dict.keys.contains("MountHost") {
            self.mountHost = dict["MountHost"] as! String
        }
        if dict.keys.contains("NasConfigs") {
            self.nasConfigs = dict["NasConfigs"] as! String
        }
        if dict.keys.contains("NasId") {
            self.nasId = dict["NasId"] as! String
        }
        if dict.keys.contains("OssAkId") {
            self.ossAkId = dict["OssAkId"] as! String
        }
        if dict.keys.contains("OssAkSecret") {
            self.ossAkSecret = dict["OssAkSecret"] as! String
        }
        if dict.keys.contains("OssMountDescs") {
            self.ossMountDescs = dict["OssMountDescs"] as! String
        }
        if dict.keys.contains("PackageUrl") {
            self.packageUrl = dict["PackageUrl"] as! String
        }
        if dict.keys.contains("PackageVersion") {
            self.packageVersion = dict["PackageVersion"] as! String
        }
        if dict.keys.contains("PhpArmsConfigLocation") {
            self.phpArmsConfigLocation = dict["PhpArmsConfigLocation"] as! String
        }
        if dict.keys.contains("PhpConfig") {
            self.phpConfig = dict["PhpConfig"] as! String
        }
        if dict.keys.contains("PhpConfigLocation") {
            self.phpConfigLocation = dict["PhpConfigLocation"] as! String
        }
        if dict.keys.contains("PostStart") {
            self.postStart = dict["PostStart"] as! String
        }
        if dict.keys.contains("PreStop") {
            self.preStop = dict["PreStop"] as! String
        }
        if dict.keys.contains("PvtzDiscoverySvc") {
            self.pvtzDiscoverySvc = dict["PvtzDiscoverySvc"] as! String
        }
        if dict.keys.contains("Readiness") {
            self.readiness = dict["Readiness"] as! String
        }
        if dict.keys.contains("SlsConfigs") {
            self.slsConfigs = dict["SlsConfigs"] as! String
        }
        if dict.keys.contains("TerminationGracePeriodSeconds") {
            self.terminationGracePeriodSeconds = dict["TerminationGracePeriodSeconds"] as! Int32
        }
        if dict.keys.contains("Timezone") {
            self.timezone = dict["Timezone"] as! String
        }
        if dict.keys.contains("TomcatConfig") {
            self.tomcatConfig = dict["TomcatConfig"] as! String
        }
        if dict.keys.contains("UpdateStrategy") {
            self.updateStrategy = dict["UpdateStrategy"] as! String
        }
        if dict.keys.contains("WarStartOptions") {
            self.warStartOptions = dict["WarStartOptions"] as! String
        }
        if dict.keys.contains("WebContainer") {
            self.webContainer = dict["WebContainer"] as! String
        }
    }
}

public class DeployApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var changeOrderId: String?

        public var isNeedApproval: Bool?

        public override init() {
            super.init()
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
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            if self.isNeedApproval != nil {
                map["IsNeedApproval"] = self.isNeedApproval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
            if dict.keys.contains("IsNeedApproval") {
                self.isNeedApproval = dict["IsNeedApproval"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: DeployApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeployApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DeployApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployApplicationResponseBody?

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
            var model = DeployApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppServiceDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var serviceGroup: String?

    public var serviceName: String?

    public var serviceType: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.serviceGroup != nil {
            map["ServiceGroup"] = self.serviceGroup!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ServiceGroup") {
            self.serviceGroup = dict["ServiceGroup"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
    }
}

public class DescribeAppServiceDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Methods : Tea.TeaModel {
            public class ParameterDefinitions : Tea.TeaModel {
                public var description_: String?

                public var name: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
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
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var methodController: String?

            public var name: String?

            public var nameDetail: String?

            public var parameterDefinitions: [DescribeAppServiceDetailResponseBody.Data.Methods.ParameterDefinitions]?

            public var parameterDetails: [String]?

            public var parameterTypes: [String]?

            public var paths: [String]?

            public var requestMethods: [String]?

            public var returnDetails: String?

            public var returnType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.methodController != nil {
                    map["MethodController"] = self.methodController!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nameDetail != nil {
                    map["NameDetail"] = self.nameDetail!
                }
                if self.parameterDefinitions != nil {
                    var tmp : [Any] = []
                    for k in self.parameterDefinitions! {
                        tmp.append(k.toMap())
                    }
                    map["ParameterDefinitions"] = tmp
                }
                if self.parameterDetails != nil {
                    map["ParameterDetails"] = self.parameterDetails!
                }
                if self.parameterTypes != nil {
                    map["ParameterTypes"] = self.parameterTypes!
                }
                if self.paths != nil {
                    map["Paths"] = self.paths!
                }
                if self.requestMethods != nil {
                    map["RequestMethods"] = self.requestMethods!
                }
                if self.returnDetails != nil {
                    map["ReturnDetails"] = self.returnDetails!
                }
                if self.returnType != nil {
                    map["ReturnType"] = self.returnType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MethodController") {
                    self.methodController = dict["MethodController"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NameDetail") {
                    self.nameDetail = dict["NameDetail"] as! String
                }
                if dict.keys.contains("ParameterDefinitions") {
                    self.parameterDefinitions = dict["ParameterDefinitions"] as! [DescribeAppServiceDetailResponseBody.Data.Methods.ParameterDefinitions]
                }
                if dict.keys.contains("ParameterDetails") {
                    self.parameterDetails = dict["ParameterDetails"] as! [String]
                }
                if dict.keys.contains("ParameterTypes") {
                    self.parameterTypes = dict["ParameterTypes"] as! [String]
                }
                if dict.keys.contains("Paths") {
                    self.paths = dict["Paths"] as! [String]
                }
                if dict.keys.contains("RequestMethods") {
                    self.requestMethods = dict["RequestMethods"] as! [String]
                }
                if dict.keys.contains("ReturnDetails") {
                    self.returnDetails = dict["ReturnDetails"] as! String
                }
                if dict.keys.contains("ReturnType") {
                    self.returnType = dict["ReturnType"] as! String
                }
            }
        }
        public var dubboApplicationName: String?

        public var edasAppName: String?

        public var group: String?

        public var metadata: [String: Any]?

        public var methods: [DescribeAppServiceDetailResponseBody.Data.Methods]?

        public var serviceName: String?

        public var serviceType: String?

        public var springApplicationName: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dubboApplicationName != nil {
                map["DubboApplicationName"] = self.dubboApplicationName!
            }
            if self.edasAppName != nil {
                map["EdasAppName"] = self.edasAppName!
            }
            if self.group != nil {
                map["Group"] = self.group!
            }
            if self.metadata != nil {
                map["Metadata"] = self.metadata!
            }
            if self.methods != nil {
                var tmp : [Any] = []
                for k in self.methods! {
                    tmp.append(k.toMap())
                }
                map["Methods"] = tmp
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.springApplicationName != nil {
                map["SpringApplicationName"] = self.springApplicationName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DubboApplicationName") {
                self.dubboApplicationName = dict["DubboApplicationName"] as! String
            }
            if dict.keys.contains("EdasAppName") {
                self.edasAppName = dict["EdasAppName"] as! String
            }
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("Metadata") {
                self.metadata = dict["Metadata"] as! [String: Any]
            }
            if dict.keys.contains("Methods") {
                self.methods = dict["Methods"] as! [DescribeAppServiceDetailResponseBody.Data.Methods]
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("SpringApplicationName") {
                self.springApplicationName = dict["SpringApplicationName"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeAppServiceDetailResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeAppServiceDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeAppServiceDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppServiceDetailResponseBody?

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
            var model = DescribeAppServiceDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class DescribeApplicationConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConfigMapMountDesc : Tea.TeaModel {
            public var configMapId: Int64?

            public var configMapName: String?

            public var key: String?

            public var mountPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configMapId != nil {
                    map["ConfigMapId"] = self.configMapId!
                }
                if self.configMapName != nil {
                    map["ConfigMapName"] = self.configMapName!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigMapId") {
                    self.configMapId = dict["ConfigMapId"] as! Int64
                }
                if dict.keys.contains("ConfigMapName") {
                    self.configMapName = dict["ConfigMapName"] as! String
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
            }
        }
        public class MountDesc : Tea.TeaModel {
            public var mountPath: String?

            public var nasPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.nasPath != nil {
                    map["NasPath"] = self.nasPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("NasPath") {
                    self.nasPath = dict["NasPath"] as! String
                }
            }
        }
        public class OssMountDescs : Tea.TeaModel {
            public var bucketName: String?

            public var bucketPath: String?

            public var mountPath: String?

            public var readOnly: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["bucketName"] = self.bucketName!
                }
                if self.bucketPath != nil {
                    map["bucketPath"] = self.bucketPath!
                }
                if self.mountPath != nil {
                    map["mountPath"] = self.mountPath!
                }
                if self.readOnly != nil {
                    map["readOnly"] = self.readOnly!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bucketName") {
                    self.bucketName = dict["bucketName"] as! String
                }
                if dict.keys.contains("bucketPath") {
                    self.bucketPath = dict["bucketPath"] as! String
                }
                if dict.keys.contains("mountPath") {
                    self.mountPath = dict["mountPath"] as! String
                }
                if dict.keys.contains("readOnly") {
                    self.readOnly = dict["readOnly"] as! Bool
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var acrAssumeRoleArn: String?

        public var acrInstanceId: String?

        public var appDescription: String?

        public var appId: String?

        public var appName: String?

        public var associateEip: Bool?

        public var batchWaitTime: Int32?

        public var command: String?

        public var commandArgs: String?

        public var configMapMountDesc: [DescribeApplicationConfigResponseBody.Data.ConfigMapMountDesc]?

        public var cpu: Int32?

        public var customHostAlias: String?

        public var edasContainerVersion: String?

        public var enableAhas: String?

        public var enableGreyTagRoute: Bool?

        public var envs: String?

        public var imageUrl: String?

        public var jarStartArgs: String?

        public var jarStartOptions: String?

        public var jdk: String?

        public var kafkaConfigs: String?

        public var liveness: String?

        public var memory: Int32?

        public var microRegistration: String?

        public var minReadyInstanceRatio: Int32?

        public var minReadyInstances: Int32?

        public var mountDesc: [DescribeApplicationConfigResponseBody.Data.MountDesc]?

        public var mountHost: String?

        public var mseApplicationId: String?

        public var namespaceId: String?

        public var nasConfigs: String?

        public var nasId: String?

        public var ossAkId: String?

        public var ossAkSecret: String?

        public var ossMountDescs: [DescribeApplicationConfigResponseBody.Data.OssMountDescs]?

        public var packageType: String?

        public var packageUrl: String?

        public var packageVersion: String?

        public var phpArmsConfigLocation: String?

        public var phpConfig: String?

        public var phpConfigLocation: String?

        public var postStart: String?

        public var preStop: String?

        public var programmingLanguage: String?

        public var pvtzDiscovery: String?

        public var readiness: String?

        public var regionId: String?

        public var replicas: Int32?

        public var securityGroupId: String?

        public var slsConfigs: String?

        public var tags: [DescribeApplicationConfigResponseBody.Data.Tags]?

        public var terminationGracePeriodSeconds: Int32?

        public var timezone: String?

        public var tomcatConfig: String?

        public var updateStrategy: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public var warStartOptions: String?

        public var webContainer: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acrAssumeRoleArn != nil {
                map["AcrAssumeRoleArn"] = self.acrAssumeRoleArn!
            }
            if self.acrInstanceId != nil {
                map["AcrInstanceId"] = self.acrInstanceId!
            }
            if self.appDescription != nil {
                map["AppDescription"] = self.appDescription!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.associateEip != nil {
                map["AssociateEip"] = self.associateEip!
            }
            if self.batchWaitTime != nil {
                map["BatchWaitTime"] = self.batchWaitTime!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.commandArgs != nil {
                map["CommandArgs"] = self.commandArgs!
            }
            if self.configMapMountDesc != nil {
                var tmp : [Any] = []
                for k in self.configMapMountDesc! {
                    tmp.append(k.toMap())
                }
                map["ConfigMapMountDesc"] = tmp
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.customHostAlias != nil {
                map["CustomHostAlias"] = self.customHostAlias!
            }
            if self.edasContainerVersion != nil {
                map["EdasContainerVersion"] = self.edasContainerVersion!
            }
            if self.enableAhas != nil {
                map["EnableAhas"] = self.enableAhas!
            }
            if self.enableGreyTagRoute != nil {
                map["EnableGreyTagRoute"] = self.enableGreyTagRoute!
            }
            if self.envs != nil {
                map["Envs"] = self.envs!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.jarStartArgs != nil {
                map["JarStartArgs"] = self.jarStartArgs!
            }
            if self.jarStartOptions != nil {
                map["JarStartOptions"] = self.jarStartOptions!
            }
            if self.jdk != nil {
                map["Jdk"] = self.jdk!
            }
            if self.kafkaConfigs != nil {
                map["KafkaConfigs"] = self.kafkaConfigs!
            }
            if self.liveness != nil {
                map["Liveness"] = self.liveness!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.microRegistration != nil {
                map["MicroRegistration"] = self.microRegistration!
            }
            if self.minReadyInstanceRatio != nil {
                map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
            }
            if self.minReadyInstances != nil {
                map["MinReadyInstances"] = self.minReadyInstances!
            }
            if self.mountDesc != nil {
                var tmp : [Any] = []
                for k in self.mountDesc! {
                    tmp.append(k.toMap())
                }
                map["MountDesc"] = tmp
            }
            if self.mountHost != nil {
                map["MountHost"] = self.mountHost!
            }
            if self.mseApplicationId != nil {
                map["MseApplicationId"] = self.mseApplicationId!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.nasConfigs != nil {
                map["NasConfigs"] = self.nasConfigs!
            }
            if self.nasId != nil {
                map["NasId"] = self.nasId!
            }
            if self.ossAkId != nil {
                map["OssAkId"] = self.ossAkId!
            }
            if self.ossAkSecret != nil {
                map["OssAkSecret"] = self.ossAkSecret!
            }
            if self.ossMountDescs != nil {
                var tmp : [Any] = []
                for k in self.ossMountDescs! {
                    tmp.append(k.toMap())
                }
                map["OssMountDescs"] = tmp
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.packageUrl != nil {
                map["PackageUrl"] = self.packageUrl!
            }
            if self.packageVersion != nil {
                map["PackageVersion"] = self.packageVersion!
            }
            if self.phpArmsConfigLocation != nil {
                map["PhpArmsConfigLocation"] = self.phpArmsConfigLocation!
            }
            if self.phpConfig != nil {
                map["PhpConfig"] = self.phpConfig!
            }
            if self.phpConfigLocation != nil {
                map["PhpConfigLocation"] = self.phpConfigLocation!
            }
            if self.postStart != nil {
                map["PostStart"] = self.postStart!
            }
            if self.preStop != nil {
                map["PreStop"] = self.preStop!
            }
            if self.programmingLanguage != nil {
                map["ProgrammingLanguage"] = self.programmingLanguage!
            }
            if self.pvtzDiscovery != nil {
                map["PvtzDiscovery"] = self.pvtzDiscovery!
            }
            if self.readiness != nil {
                map["Readiness"] = self.readiness!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.replicas != nil {
                map["Replicas"] = self.replicas!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.slsConfigs != nil {
                map["SlsConfigs"] = self.slsConfigs!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.terminationGracePeriodSeconds != nil {
                map["TerminationGracePeriodSeconds"] = self.terminationGracePeriodSeconds!
            }
            if self.timezone != nil {
                map["Timezone"] = self.timezone!
            }
            if self.tomcatConfig != nil {
                map["TomcatConfig"] = self.tomcatConfig!
            }
            if self.updateStrategy != nil {
                map["UpdateStrategy"] = self.updateStrategy!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.warStartOptions != nil {
                map["WarStartOptions"] = self.warStartOptions!
            }
            if self.webContainer != nil {
                map["WebContainer"] = self.webContainer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcrAssumeRoleArn") {
                self.acrAssumeRoleArn = dict["AcrAssumeRoleArn"] as! String
            }
            if dict.keys.contains("AcrInstanceId") {
                self.acrInstanceId = dict["AcrInstanceId"] as! String
            }
            if dict.keys.contains("AppDescription") {
                self.appDescription = dict["AppDescription"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AssociateEip") {
                self.associateEip = dict["AssociateEip"] as! Bool
            }
            if dict.keys.contains("BatchWaitTime") {
                self.batchWaitTime = dict["BatchWaitTime"] as! Int32
            }
            if dict.keys.contains("Command") {
                self.command = dict["Command"] as! String
            }
            if dict.keys.contains("CommandArgs") {
                self.commandArgs = dict["CommandArgs"] as! String
            }
            if dict.keys.contains("ConfigMapMountDesc") {
                self.configMapMountDesc = dict["ConfigMapMountDesc"] as! [DescribeApplicationConfigResponseBody.Data.ConfigMapMountDesc]
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CustomHostAlias") {
                self.customHostAlias = dict["CustomHostAlias"] as! String
            }
            if dict.keys.contains("EdasContainerVersion") {
                self.edasContainerVersion = dict["EdasContainerVersion"] as! String
            }
            if dict.keys.contains("EnableAhas") {
                self.enableAhas = dict["EnableAhas"] as! String
            }
            if dict.keys.contains("EnableGreyTagRoute") {
                self.enableGreyTagRoute = dict["EnableGreyTagRoute"] as! Bool
            }
            if dict.keys.contains("Envs") {
                self.envs = dict["Envs"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("JarStartArgs") {
                self.jarStartArgs = dict["JarStartArgs"] as! String
            }
            if dict.keys.contains("JarStartOptions") {
                self.jarStartOptions = dict["JarStartOptions"] as! String
            }
            if dict.keys.contains("Jdk") {
                self.jdk = dict["Jdk"] as! String
            }
            if dict.keys.contains("KafkaConfigs") {
                self.kafkaConfigs = dict["KafkaConfigs"] as! String
            }
            if dict.keys.contains("Liveness") {
                self.liveness = dict["Liveness"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int32
            }
            if dict.keys.contains("MicroRegistration") {
                self.microRegistration = dict["MicroRegistration"] as! String
            }
            if dict.keys.contains("MinReadyInstanceRatio") {
                self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
            }
            if dict.keys.contains("MinReadyInstances") {
                self.minReadyInstances = dict["MinReadyInstances"] as! Int32
            }
            if dict.keys.contains("MountDesc") {
                self.mountDesc = dict["MountDesc"] as! [DescribeApplicationConfigResponseBody.Data.MountDesc]
            }
            if dict.keys.contains("MountHost") {
                self.mountHost = dict["MountHost"] as! String
            }
            if dict.keys.contains("MseApplicationId") {
                self.mseApplicationId = dict["MseApplicationId"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NasConfigs") {
                self.nasConfigs = dict["NasConfigs"] as! String
            }
            if dict.keys.contains("NasId") {
                self.nasId = dict["NasId"] as! String
            }
            if dict.keys.contains("OssAkId") {
                self.ossAkId = dict["OssAkId"] as! String
            }
            if dict.keys.contains("OssAkSecret") {
                self.ossAkSecret = dict["OssAkSecret"] as! String
            }
            if dict.keys.contains("OssMountDescs") {
                self.ossMountDescs = dict["OssMountDescs"] as! [DescribeApplicationConfigResponseBody.Data.OssMountDescs]
            }
            if dict.keys.contains("PackageType") {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PackageUrl") {
                self.packageUrl = dict["PackageUrl"] as! String
            }
            if dict.keys.contains("PackageVersion") {
                self.packageVersion = dict["PackageVersion"] as! String
            }
            if dict.keys.contains("PhpArmsConfigLocation") {
                self.phpArmsConfigLocation = dict["PhpArmsConfigLocation"] as! String
            }
            if dict.keys.contains("PhpConfig") {
                self.phpConfig = dict["PhpConfig"] as! String
            }
            if dict.keys.contains("PhpConfigLocation") {
                self.phpConfigLocation = dict["PhpConfigLocation"] as! String
            }
            if dict.keys.contains("PostStart") {
                self.postStart = dict["PostStart"] as! String
            }
            if dict.keys.contains("PreStop") {
                self.preStop = dict["PreStop"] as! String
            }
            if dict.keys.contains("ProgrammingLanguage") {
                self.programmingLanguage = dict["ProgrammingLanguage"] as! String
            }
            if dict.keys.contains("PvtzDiscovery") {
                self.pvtzDiscovery = dict["PvtzDiscovery"] as! String
            }
            if dict.keys.contains("Readiness") {
                self.readiness = dict["Readiness"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Replicas") {
                self.replicas = dict["Replicas"] as! Int32
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("SlsConfigs") {
                self.slsConfigs = dict["SlsConfigs"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeApplicationConfigResponseBody.Data.Tags]
            }
            if dict.keys.contains("TerminationGracePeriodSeconds") {
                self.terminationGracePeriodSeconds = dict["TerminationGracePeriodSeconds"] as! Int32
            }
            if dict.keys.contains("Timezone") {
                self.timezone = dict["Timezone"] as! String
            }
            if dict.keys.contains("TomcatConfig") {
                self.tomcatConfig = dict["TomcatConfig"] as! String
            }
            if dict.keys.contains("UpdateStrategy") {
                self.updateStrategy = dict["UpdateStrategy"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("WarStartOptions") {
                self.warStartOptions = dict["WarStartOptions"] as! String
            }
            if dict.keys.contains("WebContainer") {
                self.webContainer = dict["WebContainer"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeApplicationConfigResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeApplicationConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationConfigResponseBody?

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
            var model = DescribeApplicationConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationGroupsRequest : Tea.TeaModel {
    public var appId: String?

    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeApplicationGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var edasContainerVersion: String?

        public var groupId: String?

        public var groupName: String?

        public var groupType: Int32?

        public var imageUrl: String?

        public var jdk: String?

        public var packageType: String?

        public var packageUrl: String?

        public var packageVersion: String?

        public var replicas: Int32?

        public var runningInstances: Int32?

        public var webContainer: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.edasContainerVersion != nil {
                map["EdasContainerVersion"] = self.edasContainerVersion!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupType != nil {
                map["GroupType"] = self.groupType!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.jdk != nil {
                map["Jdk"] = self.jdk!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.packageUrl != nil {
                map["PackageUrl"] = self.packageUrl!
            }
            if self.packageVersion != nil {
                map["PackageVersion"] = self.packageVersion!
            }
            if self.replicas != nil {
                map["Replicas"] = self.replicas!
            }
            if self.runningInstances != nil {
                map["RunningInstances"] = self.runningInstances!
            }
            if self.webContainer != nil {
                map["WebContainer"] = self.webContainer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EdasContainerVersion") {
                self.edasContainerVersion = dict["EdasContainerVersion"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") {
                self.groupType = dict["GroupType"] as! Int32
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("Jdk") {
                self.jdk = dict["Jdk"] as! String
            }
            if dict.keys.contains("PackageType") {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PackageUrl") {
                self.packageUrl = dict["PackageUrl"] as! String
            }
            if dict.keys.contains("PackageVersion") {
                self.packageVersion = dict["PackageVersion"] as! String
            }
            if dict.keys.contains("Replicas") {
                self.replicas = dict["Replicas"] as! Int32
            }
            if dict.keys.contains("RunningInstances") {
                self.runningInstances = dict["RunningInstances"] as! Int32
            }
            if dict.keys.contains("WebContainer") {
                self.webContainer = dict["WebContainer"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DescribeApplicationGroupsResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeApplicationGroupsResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationGroupsResponseBody?

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
            var model = DescribeApplicationGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationImageRequest : Tea.TeaModel {
    public var appId: String?

    public var imageUrl: String?

    public override init() {
        super.init()
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
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
    }
}

public class DescribeApplicationImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var crUrl: String?

        public var logo: String?

        public var regionId: String?

        public var repoName: String?

        public var repoNamespace: String?

        public var repoOriginType: String?

        public var repoTag: String?

        public var repoType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.crUrl != nil {
                map["CrUrl"] = self.crUrl!
            }
            if self.logo != nil {
                map["Logo"] = self.logo!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespace != nil {
                map["RepoNamespace"] = self.repoNamespace!
            }
            if self.repoOriginType != nil {
                map["RepoOriginType"] = self.repoOriginType!
            }
            if self.repoTag != nil {
                map["RepoTag"] = self.repoTag!
            }
            if self.repoType != nil {
                map["RepoType"] = self.repoType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CrUrl") {
                self.crUrl = dict["CrUrl"] as! String
            }
            if dict.keys.contains("Logo") {
                self.logo = dict["Logo"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepoName") {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespace") {
                self.repoNamespace = dict["RepoNamespace"] as! String
            }
            if dict.keys.contains("RepoOriginType") {
                self.repoOriginType = dict["RepoOriginType"] as! String
            }
            if dict.keys.contains("RepoTag") {
                self.repoTag = dict["RepoTag"] as! String
            }
            if dict.keys.contains("RepoType") {
                self.repoType = dict["RepoType"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeApplicationImageResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeApplicationImageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationImageResponseBody?

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
            var model = DescribeApplicationImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationInstancesRequest : Tea.TeaModel {
    public var appId: String?

    public var currentPage: Int32?

    public var groupId: String?

    public var pageSize: Int32?

    public var reverse: Bool?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
    }
}

public class DescribeApplicationInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public var createTimeStamp: Int64?

            public var debugStatus: Bool?

            public var eip: String?

            public var finishTimeStamp: Int64?

            public var groupId: String?

            public var imageUrl: String?

            public var instanceContainerIp: String?

            public var instanceContainerRestarts: Int64?

            public var instanceContainerStatus: String?

            public var instanceHealthStatus: String?

            public var instanceId: String?

            public var packageVersion: String?

            public var vSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTimeStamp != nil {
                    map["CreateTimeStamp"] = self.createTimeStamp!
                }
                if self.debugStatus != nil {
                    map["DebugStatus"] = self.debugStatus!
                }
                if self.eip != nil {
                    map["Eip"] = self.eip!
                }
                if self.finishTimeStamp != nil {
                    map["FinishTimeStamp"] = self.finishTimeStamp!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.instanceContainerIp != nil {
                    map["InstanceContainerIp"] = self.instanceContainerIp!
                }
                if self.instanceContainerRestarts != nil {
                    map["InstanceContainerRestarts"] = self.instanceContainerRestarts!
                }
                if self.instanceContainerStatus != nil {
                    map["InstanceContainerStatus"] = self.instanceContainerStatus!
                }
                if self.instanceHealthStatus != nil {
                    map["InstanceHealthStatus"] = self.instanceHealthStatus!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.packageVersion != nil {
                    map["PackageVersion"] = self.packageVersion!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTimeStamp") {
                    self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
                }
                if dict.keys.contains("DebugStatus") {
                    self.debugStatus = dict["DebugStatus"] as! Bool
                }
                if dict.keys.contains("Eip") {
                    self.eip = dict["Eip"] as! String
                }
                if dict.keys.contains("FinishTimeStamp") {
                    self.finishTimeStamp = dict["FinishTimeStamp"] as! Int64
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("InstanceContainerIp") {
                    self.instanceContainerIp = dict["InstanceContainerIp"] as! String
                }
                if dict.keys.contains("InstanceContainerRestarts") {
                    self.instanceContainerRestarts = dict["InstanceContainerRestarts"] as! Int64
                }
                if dict.keys.contains("InstanceContainerStatus") {
                    self.instanceContainerStatus = dict["InstanceContainerStatus"] as! String
                }
                if dict.keys.contains("InstanceHealthStatus") {
                    self.instanceHealthStatus = dict["InstanceHealthStatus"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("PackageVersion") {
                    self.packageVersion = dict["PackageVersion"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public var currentPage: Int32?

        public var instances: [DescribeApplicationInstancesResponseBody.Data.Instances]?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["Instances"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("Instances") {
                self.instances = dict["Instances"] as! [DescribeApplicationInstancesResponseBody.Data.Instances]
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeApplicationInstancesResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeApplicationInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationInstancesResponseBody?

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
            var model = DescribeApplicationInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationScalingRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var scalingRuleName: String?

    public override init() {
        super.init()
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
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
    }
}

public class DescribeApplicationScalingRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Metric : Tea.TeaModel {
            public class Metrics : Tea.TeaModel {
                public var metricTargetAverageUtilization: Int32?

                public var metricType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.metricTargetAverageUtilization != nil {
                        map["MetricTargetAverageUtilization"] = self.metricTargetAverageUtilization!
                    }
                    if self.metricType != nil {
                        map["MetricType"] = self.metricType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MetricTargetAverageUtilization") {
                        self.metricTargetAverageUtilization = dict["MetricTargetAverageUtilization"] as! Int32
                    }
                    if dict.keys.contains("MetricType") {
                        self.metricType = dict["MetricType"] as! String
                    }
                }
            }
            public class MetricsStatus : Tea.TeaModel {
                public class CurrentMetrics : Tea.TeaModel {
                    public var currentValue: Int64?

                    public var name: String?

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
                        if self.currentValue != nil {
                            map["CurrentValue"] = self.currentValue!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CurrentValue") {
                            self.currentValue = dict["CurrentValue"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public class NextScaleMetrics : Tea.TeaModel {
                    public var name: String?

                    public var nextScaleInAverageUtilization: Int32?

                    public var nextScaleOutAverageUtilization: Int32?

                    public override init() {
                        super.init()
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
                        if self.nextScaleInAverageUtilization != nil {
                            map["NextScaleInAverageUtilization"] = self.nextScaleInAverageUtilization!
                        }
                        if self.nextScaleOutAverageUtilization != nil {
                            map["NextScaleOutAverageUtilization"] = self.nextScaleOutAverageUtilization!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("NextScaleInAverageUtilization") {
                            self.nextScaleInAverageUtilization = dict["NextScaleInAverageUtilization"] as! Int32
                        }
                        if dict.keys.contains("NextScaleOutAverageUtilization") {
                            self.nextScaleOutAverageUtilization = dict["NextScaleOutAverageUtilization"] as! Int32
                        }
                    }
                }
                public var currentMetrics: [DescribeApplicationScalingRuleResponseBody.Data.Metric.MetricsStatus.CurrentMetrics]?

                public var currentReplicas: Int64?

                public var desiredReplicas: Int64?

                public var lastScaleTime: String?

                public var nextScaleMetrics: [DescribeApplicationScalingRuleResponseBody.Data.Metric.MetricsStatus.NextScaleMetrics]?

                public var nextScaleTimePeriod: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.currentMetrics != nil {
                        var tmp : [Any] = []
                        for k in self.currentMetrics! {
                            tmp.append(k.toMap())
                        }
                        map["CurrentMetrics"] = tmp
                    }
                    if self.currentReplicas != nil {
                        map["CurrentReplicas"] = self.currentReplicas!
                    }
                    if self.desiredReplicas != nil {
                        map["DesiredReplicas"] = self.desiredReplicas!
                    }
                    if self.lastScaleTime != nil {
                        map["LastScaleTime"] = self.lastScaleTime!
                    }
                    if self.nextScaleMetrics != nil {
                        var tmp : [Any] = []
                        for k in self.nextScaleMetrics! {
                            tmp.append(k.toMap())
                        }
                        map["NextScaleMetrics"] = tmp
                    }
                    if self.nextScaleTimePeriod != nil {
                        map["NextScaleTimePeriod"] = self.nextScaleTimePeriod!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CurrentMetrics") {
                        self.currentMetrics = dict["CurrentMetrics"] as! [DescribeApplicationScalingRuleResponseBody.Data.Metric.MetricsStatus.CurrentMetrics]
                    }
                    if dict.keys.contains("CurrentReplicas") {
                        self.currentReplicas = dict["CurrentReplicas"] as! Int64
                    }
                    if dict.keys.contains("DesiredReplicas") {
                        self.desiredReplicas = dict["DesiredReplicas"] as! Int64
                    }
                    if dict.keys.contains("LastScaleTime") {
                        self.lastScaleTime = dict["LastScaleTime"] as! String
                    }
                    if dict.keys.contains("NextScaleMetrics") {
                        self.nextScaleMetrics = dict["NextScaleMetrics"] as! [DescribeApplicationScalingRuleResponseBody.Data.Metric.MetricsStatus.NextScaleMetrics]
                    }
                    if dict.keys.contains("NextScaleTimePeriod") {
                        self.nextScaleTimePeriod = dict["NextScaleTimePeriod"] as! Int32
                    }
                }
            }
            public class ScaleDownRules : Tea.TeaModel {
                public var disabled: Bool?

                public var stabilizationWindowSeconds: Int64?

                public var step: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.disabled != nil {
                        map["Disabled"] = self.disabled!
                    }
                    if self.stabilizationWindowSeconds != nil {
                        map["StabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                    }
                    if self.step != nil {
                        map["Step"] = self.step!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Disabled") {
                        self.disabled = dict["Disabled"] as! Bool
                    }
                    if dict.keys.contains("StabilizationWindowSeconds") {
                        self.stabilizationWindowSeconds = dict["StabilizationWindowSeconds"] as! Int64
                    }
                    if dict.keys.contains("Step") {
                        self.step = dict["Step"] as! Int64
                    }
                }
            }
            public class ScaleUpRules : Tea.TeaModel {
                public var disabled: Bool?

                public var stabilizationWindowSeconds: Int64?

                public var step: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.disabled != nil {
                        map["Disabled"] = self.disabled!
                    }
                    if self.stabilizationWindowSeconds != nil {
                        map["StabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                    }
                    if self.step != nil {
                        map["Step"] = self.step!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Disabled") {
                        self.disabled = dict["Disabled"] as! Bool
                    }
                    if dict.keys.contains("StabilizationWindowSeconds") {
                        self.stabilizationWindowSeconds = dict["StabilizationWindowSeconds"] as! Int64
                    }
                    if dict.keys.contains("Step") {
                        self.step = dict["Step"] as! Int64
                    }
                }
            }
            public var maxReplicas: Int32?

            public var metrics: [DescribeApplicationScalingRuleResponseBody.Data.Metric.Metrics]?

            public var metricsStatus: DescribeApplicationScalingRuleResponseBody.Data.Metric.MetricsStatus?

            public var minReplicas: Int32?

            public var scaleDownRules: DescribeApplicationScalingRuleResponseBody.Data.Metric.ScaleDownRules?

            public var scaleUpRules: DescribeApplicationScalingRuleResponseBody.Data.Metric.ScaleUpRules?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metricsStatus?.validate()
                try self.scaleDownRules?.validate()
                try self.scaleUpRules?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxReplicas != nil {
                    map["MaxReplicas"] = self.maxReplicas!
                }
                if self.metrics != nil {
                    var tmp : [Any] = []
                    for k in self.metrics! {
                        tmp.append(k.toMap())
                    }
                    map["Metrics"] = tmp
                }
                if self.metricsStatus != nil {
                    map["MetricsStatus"] = self.metricsStatus?.toMap()
                }
                if self.minReplicas != nil {
                    map["MinReplicas"] = self.minReplicas!
                }
                if self.scaleDownRules != nil {
                    map["ScaleDownRules"] = self.scaleDownRules?.toMap()
                }
                if self.scaleUpRules != nil {
                    map["ScaleUpRules"] = self.scaleUpRules?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxReplicas") {
                    self.maxReplicas = dict["MaxReplicas"] as! Int32
                }
                if dict.keys.contains("Metrics") {
                    self.metrics = dict["Metrics"] as! [DescribeApplicationScalingRuleResponseBody.Data.Metric.Metrics]
                }
                if dict.keys.contains("MetricsStatus") {
                    var model = DescribeApplicationScalingRuleResponseBody.Data.Metric.MetricsStatus()
                    model.fromMap(dict["MetricsStatus"] as! [String: Any])
                    self.metricsStatus = model
                }
                if dict.keys.contains("MinReplicas") {
                    self.minReplicas = dict["MinReplicas"] as! Int32
                }
                if dict.keys.contains("ScaleDownRules") {
                    var model = DescribeApplicationScalingRuleResponseBody.Data.Metric.ScaleDownRules()
                    model.fromMap(dict["ScaleDownRules"] as! [String: Any])
                    self.scaleDownRules = model
                }
                if dict.keys.contains("ScaleUpRules") {
                    var model = DescribeApplicationScalingRuleResponseBody.Data.Metric.ScaleUpRules()
                    model.fromMap(dict["ScaleUpRules"] as! [String: Any])
                    self.scaleUpRules = model
                }
            }
        }
        public class Timer : Tea.TeaModel {
            public class Schedules : Tea.TeaModel {
                public var atTime: String?

                public var targetReplicas: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.atTime != nil {
                        map["AtTime"] = self.atTime!
                    }
                    if self.targetReplicas != nil {
                        map["TargetReplicas"] = self.targetReplicas!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AtTime") {
                        self.atTime = dict["AtTime"] as! String
                    }
                    if dict.keys.contains("TargetReplicas") {
                        self.targetReplicas = dict["TargetReplicas"] as! Int32
                    }
                }
            }
            public var beginDate: String?

            public var endDate: String?

            public var period: String?

            public var schedules: [DescribeApplicationScalingRuleResponseBody.Data.Timer.Schedules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginDate != nil {
                    map["BeginDate"] = self.beginDate!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.schedules != nil {
                    var tmp : [Any] = []
                    for k in self.schedules! {
                        tmp.append(k.toMap())
                    }
                    map["Schedules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginDate") {
                    self.beginDate = dict["BeginDate"] as! String
                }
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("Schedules") {
                    self.schedules = dict["Schedules"] as! [DescribeApplicationScalingRuleResponseBody.Data.Timer.Schedules]
                }
            }
        }
        public var appId: String?

        public var createTime: Int64?

        public var lastDisableTime: Int64?

        public var metric: DescribeApplicationScalingRuleResponseBody.Data.Metric?

        public var scaleRuleEnabled: Bool?

        public var scaleRuleName: String?

        public var scaleRuleType: String?

        public var timer: DescribeApplicationScalingRuleResponseBody.Data.Timer?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metric?.validate()
            try self.timer?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.lastDisableTime != nil {
                map["LastDisableTime"] = self.lastDisableTime!
            }
            if self.metric != nil {
                map["Metric"] = self.metric?.toMap()
            }
            if self.scaleRuleEnabled != nil {
                map["ScaleRuleEnabled"] = self.scaleRuleEnabled!
            }
            if self.scaleRuleName != nil {
                map["ScaleRuleName"] = self.scaleRuleName!
            }
            if self.scaleRuleType != nil {
                map["ScaleRuleType"] = self.scaleRuleType!
            }
            if self.timer != nil {
                map["Timer"] = self.timer?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("LastDisableTime") {
                self.lastDisableTime = dict["LastDisableTime"] as! Int64
            }
            if dict.keys.contains("Metric") {
                var model = DescribeApplicationScalingRuleResponseBody.Data.Metric()
                model.fromMap(dict["Metric"] as! [String: Any])
                self.metric = model
            }
            if dict.keys.contains("ScaleRuleEnabled") {
                self.scaleRuleEnabled = dict["ScaleRuleEnabled"] as! Bool
            }
            if dict.keys.contains("ScaleRuleName") {
                self.scaleRuleName = dict["ScaleRuleName"] as! String
            }
            if dict.keys.contains("ScaleRuleType") {
                self.scaleRuleType = dict["ScaleRuleType"] as! String
            }
            if dict.keys.contains("Timer") {
                var model = DescribeApplicationScalingRuleResponseBody.Data.Timer()
                model.fromMap(dict["Timer"] as! [String: Any])
                self.timer = model
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var data: DescribeApplicationScalingRuleResponseBody.Data?

    public var requestId: String?

    public var traceId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeApplicationScalingRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationScalingRuleResponseBody?

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
            var model = DescribeApplicationScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationScalingRulesRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class DescribeApplicationScalingRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ApplicationScalingRules : Tea.TeaModel {
            public class Metric : Tea.TeaModel {
                public class Metrics : Tea.TeaModel {
                    public var metricTargetAverageUtilization: Int32?

                    public var metricType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.metricTargetAverageUtilization != nil {
                            map["MetricTargetAverageUtilization"] = self.metricTargetAverageUtilization!
                        }
                        if self.metricType != nil {
                            map["MetricType"] = self.metricType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("MetricTargetAverageUtilization") {
                            self.metricTargetAverageUtilization = dict["MetricTargetAverageUtilization"] as! Int32
                        }
                        if dict.keys.contains("MetricType") {
                            self.metricType = dict["MetricType"] as! String
                        }
                    }
                }
                public class MetricsStatus : Tea.TeaModel {
                    public class CurrentMetrics : Tea.TeaModel {
                        public var currentValue: Int64?

                        public var name: String?

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
                            if self.currentValue != nil {
                                map["CurrentValue"] = self.currentValue!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CurrentValue") {
                                self.currentValue = dict["CurrentValue"] as! Int64
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                        }
                    }
                    public class NextScaleMetrics : Tea.TeaModel {
                        public var name: String?

                        public var nextScaleInAverageUtilization: Int32?

                        public var nextScaleOutAverageUtilization: Int32?

                        public override init() {
                            super.init()
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
                            if self.nextScaleInAverageUtilization != nil {
                                map["NextScaleInAverageUtilization"] = self.nextScaleInAverageUtilization!
                            }
                            if self.nextScaleOutAverageUtilization != nil {
                                map["NextScaleOutAverageUtilization"] = self.nextScaleOutAverageUtilization!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("NextScaleInAverageUtilization") {
                                self.nextScaleInAverageUtilization = dict["NextScaleInAverageUtilization"] as! Int32
                            }
                            if dict.keys.contains("NextScaleOutAverageUtilization") {
                                self.nextScaleOutAverageUtilization = dict["NextScaleOutAverageUtilization"] as! Int32
                            }
                        }
                    }
                    public var currentMetrics: [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.MetricsStatus.CurrentMetrics]?

                    public var currentReplicas: Int64?

                    public var desiredReplicas: Int64?

                    public var lastScaleTime: String?

                    public var maxReplicas: Int64?

                    public var minReplicas: Int64?

                    public var nextScaleMetrics: [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.MetricsStatus.NextScaleMetrics]?

                    public var nextScaleTimePeriod: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.currentMetrics != nil {
                            var tmp : [Any] = []
                            for k in self.currentMetrics! {
                                tmp.append(k.toMap())
                            }
                            map["CurrentMetrics"] = tmp
                        }
                        if self.currentReplicas != nil {
                            map["CurrentReplicas"] = self.currentReplicas!
                        }
                        if self.desiredReplicas != nil {
                            map["DesiredReplicas"] = self.desiredReplicas!
                        }
                        if self.lastScaleTime != nil {
                            map["LastScaleTime"] = self.lastScaleTime!
                        }
                        if self.maxReplicas != nil {
                            map["MaxReplicas"] = self.maxReplicas!
                        }
                        if self.minReplicas != nil {
                            map["MinReplicas"] = self.minReplicas!
                        }
                        if self.nextScaleMetrics != nil {
                            var tmp : [Any] = []
                            for k in self.nextScaleMetrics! {
                                tmp.append(k.toMap())
                            }
                            map["NextScaleMetrics"] = tmp
                        }
                        if self.nextScaleTimePeriod != nil {
                            map["NextScaleTimePeriod"] = self.nextScaleTimePeriod!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CurrentMetrics") {
                            self.currentMetrics = dict["CurrentMetrics"] as! [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.MetricsStatus.CurrentMetrics]
                        }
                        if dict.keys.contains("CurrentReplicas") {
                            self.currentReplicas = dict["CurrentReplicas"] as! Int64
                        }
                        if dict.keys.contains("DesiredReplicas") {
                            self.desiredReplicas = dict["DesiredReplicas"] as! Int64
                        }
                        if dict.keys.contains("LastScaleTime") {
                            self.lastScaleTime = dict["LastScaleTime"] as! String
                        }
                        if dict.keys.contains("MaxReplicas") {
                            self.maxReplicas = dict["MaxReplicas"] as! Int64
                        }
                        if dict.keys.contains("MinReplicas") {
                            self.minReplicas = dict["MinReplicas"] as! Int64
                        }
                        if dict.keys.contains("NextScaleMetrics") {
                            self.nextScaleMetrics = dict["NextScaleMetrics"] as! [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.MetricsStatus.NextScaleMetrics]
                        }
                        if dict.keys.contains("NextScaleTimePeriod") {
                            self.nextScaleTimePeriod = dict["NextScaleTimePeriod"] as! Int32
                        }
                    }
                }
                public class ScaleDownRules : Tea.TeaModel {
                    public var disabled: Bool?

                    public var stabilizationWindowSeconds: Int64?

                    public var step: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.disabled != nil {
                            map["Disabled"] = self.disabled!
                        }
                        if self.stabilizationWindowSeconds != nil {
                            map["StabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                        }
                        if self.step != nil {
                            map["Step"] = self.step!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Disabled") {
                            self.disabled = dict["Disabled"] as! Bool
                        }
                        if dict.keys.contains("StabilizationWindowSeconds") {
                            self.stabilizationWindowSeconds = dict["StabilizationWindowSeconds"] as! Int64
                        }
                        if dict.keys.contains("Step") {
                            self.step = dict["Step"] as! Int64
                        }
                    }
                }
                public class ScaleUpRules : Tea.TeaModel {
                    public var disabled: Bool?

                    public var stabilizationWindowSeconds: Int64?

                    public var step: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.disabled != nil {
                            map["Disabled"] = self.disabled!
                        }
                        if self.stabilizationWindowSeconds != nil {
                            map["StabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                        }
                        if self.step != nil {
                            map["Step"] = self.step!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Disabled") {
                            self.disabled = dict["Disabled"] as! Bool
                        }
                        if dict.keys.contains("StabilizationWindowSeconds") {
                            self.stabilizationWindowSeconds = dict["StabilizationWindowSeconds"] as! Int64
                        }
                        if dict.keys.contains("Step") {
                            self.step = dict["Step"] as! Int64
                        }
                    }
                }
                public var maxReplicas: Int32?

                public var metrics: [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.Metrics]?

                public var metricsStatus: DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.MetricsStatus?

                public var minReplicas: Int32?

                public var scaleDownRules: DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.ScaleDownRules?

                public var scaleUpRules: DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.ScaleUpRules?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.metricsStatus?.validate()
                    try self.scaleDownRules?.validate()
                    try self.scaleUpRules?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.maxReplicas != nil {
                        map["MaxReplicas"] = self.maxReplicas!
                    }
                    if self.metrics != nil {
                        var tmp : [Any] = []
                        for k in self.metrics! {
                            tmp.append(k.toMap())
                        }
                        map["Metrics"] = tmp
                    }
                    if self.metricsStatus != nil {
                        map["MetricsStatus"] = self.metricsStatus?.toMap()
                    }
                    if self.minReplicas != nil {
                        map["MinReplicas"] = self.minReplicas!
                    }
                    if self.scaleDownRules != nil {
                        map["ScaleDownRules"] = self.scaleDownRules?.toMap()
                    }
                    if self.scaleUpRules != nil {
                        map["ScaleUpRules"] = self.scaleUpRules?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MaxReplicas") {
                        self.maxReplicas = dict["MaxReplicas"] as! Int32
                    }
                    if dict.keys.contains("Metrics") {
                        self.metrics = dict["Metrics"] as! [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.Metrics]
                    }
                    if dict.keys.contains("MetricsStatus") {
                        var model = DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.MetricsStatus()
                        model.fromMap(dict["MetricsStatus"] as! [String: Any])
                        self.metricsStatus = model
                    }
                    if dict.keys.contains("MinReplicas") {
                        self.minReplicas = dict["MinReplicas"] as! Int32
                    }
                    if dict.keys.contains("ScaleDownRules") {
                        var model = DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.ScaleDownRules()
                        model.fromMap(dict["ScaleDownRules"] as! [String: Any])
                        self.scaleDownRules = model
                    }
                    if dict.keys.contains("ScaleUpRules") {
                        var model = DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric.ScaleUpRules()
                        model.fromMap(dict["ScaleUpRules"] as! [String: Any])
                        self.scaleUpRules = model
                    }
                }
            }
            public class Timer : Tea.TeaModel {
                public class Schedules : Tea.TeaModel {
                    public var atTime: String?

                    public var maxReplicas: Int64?

                    public var minReplicas: Int64?

                    public var targetReplicas: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.atTime != nil {
                            map["AtTime"] = self.atTime!
                        }
                        if self.maxReplicas != nil {
                            map["MaxReplicas"] = self.maxReplicas!
                        }
                        if self.minReplicas != nil {
                            map["MinReplicas"] = self.minReplicas!
                        }
                        if self.targetReplicas != nil {
                            map["TargetReplicas"] = self.targetReplicas!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AtTime") {
                            self.atTime = dict["AtTime"] as! String
                        }
                        if dict.keys.contains("MaxReplicas") {
                            self.maxReplicas = dict["MaxReplicas"] as! Int64
                        }
                        if dict.keys.contains("MinReplicas") {
                            self.minReplicas = dict["MinReplicas"] as! Int64
                        }
                        if dict.keys.contains("TargetReplicas") {
                            self.targetReplicas = dict["TargetReplicas"] as! Int32
                        }
                    }
                }
                public var beginDate: String?

                public var endDate: String?

                public var period: String?

                public var schedules: [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Timer.Schedules]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.beginDate != nil {
                        map["BeginDate"] = self.beginDate!
                    }
                    if self.endDate != nil {
                        map["EndDate"] = self.endDate!
                    }
                    if self.period != nil {
                        map["Period"] = self.period!
                    }
                    if self.schedules != nil {
                        var tmp : [Any] = []
                        for k in self.schedules! {
                            tmp.append(k.toMap())
                        }
                        map["Schedules"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BeginDate") {
                        self.beginDate = dict["BeginDate"] as! String
                    }
                    if dict.keys.contains("EndDate") {
                        self.endDate = dict["EndDate"] as! String
                    }
                    if dict.keys.contains("Period") {
                        self.period = dict["Period"] as! String
                    }
                    if dict.keys.contains("Schedules") {
                        self.schedules = dict["Schedules"] as! [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Timer.Schedules]
                    }
                }
            }
            public var appId: String?

            public var createTime: Int64?

            public var lastDisableTime: Int64?

            public var metric: DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric?

            public var scaleRuleEnabled: Bool?

            public var scaleRuleName: String?

            public var scaleRuleType: String?

            public var timer: DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Timer?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metric?.validate()
                try self.timer?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.lastDisableTime != nil {
                    map["LastDisableTime"] = self.lastDisableTime!
                }
                if self.metric != nil {
                    map["Metric"] = self.metric?.toMap()
                }
                if self.scaleRuleEnabled != nil {
                    map["ScaleRuleEnabled"] = self.scaleRuleEnabled!
                }
                if self.scaleRuleName != nil {
                    map["ScaleRuleName"] = self.scaleRuleName!
                }
                if self.scaleRuleType != nil {
                    map["ScaleRuleType"] = self.scaleRuleType!
                }
                if self.timer != nil {
                    map["Timer"] = self.timer?.toMap()
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("LastDisableTime") {
                    self.lastDisableTime = dict["LastDisableTime"] as! Int64
                }
                if dict.keys.contains("Metric") {
                    var model = DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Metric()
                    model.fromMap(dict["Metric"] as! [String: Any])
                    self.metric = model
                }
                if dict.keys.contains("ScaleRuleEnabled") {
                    self.scaleRuleEnabled = dict["ScaleRuleEnabled"] as! Bool
                }
                if dict.keys.contains("ScaleRuleName") {
                    self.scaleRuleName = dict["ScaleRuleName"] as! String
                }
                if dict.keys.contains("ScaleRuleType") {
                    self.scaleRuleType = dict["ScaleRuleType"] as! String
                }
                if dict.keys.contains("Timer") {
                    var model = DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules.Timer()
                    model.fromMap(dict["Timer"] as! [String: Any])
                    self.timer = model
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var applicationScalingRules: [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules]?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationScalingRules != nil {
                var tmp : [Any] = []
                for k in self.applicationScalingRules! {
                    tmp.append(k.toMap())
                }
                map["ApplicationScalingRules"] = tmp
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationScalingRules") {
                self.applicationScalingRules = dict["ApplicationScalingRules"] as! [DescribeApplicationScalingRulesResponseBody.Data.ApplicationScalingRules]
            }
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var data: DescribeApplicationScalingRulesResponseBody.Data?

    public var requestId: String?

    public var traceId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeApplicationScalingRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationScalingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationScalingRulesResponseBody?

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
            var model = DescribeApplicationScalingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationSlbsRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class DescribeApplicationSlbsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Internet : Tea.TeaModel {
            public var httpsCertId: String?

            public var port: Int32?

            public var protocol_: String?

            public var targetPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpsCertId != nil {
                    map["HttpsCertId"] = self.httpsCertId!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.targetPort != nil {
                    map["TargetPort"] = self.targetPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpsCertId") {
                    self.httpsCertId = dict["HttpsCertId"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("TargetPort") {
                    self.targetPort = dict["TargetPort"] as! Int32
                }
            }
        }
        public class Intranet : Tea.TeaModel {
            public var httpsCertId: String?

            public var port: Int32?

            public var protocol_: String?

            public var targetPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpsCertId != nil {
                    map["HttpsCertId"] = self.httpsCertId!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.targetPort != nil {
                    map["TargetPort"] = self.targetPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpsCertId") {
                    self.httpsCertId = dict["HttpsCertId"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("TargetPort") {
                    self.targetPort = dict["TargetPort"] as! Int32
                }
            }
        }
        public var internet: [DescribeApplicationSlbsResponseBody.Data.Internet]?

        public var internetIp: String?

        public var internetSlbExpired: Bool?

        public var internetSlbId: String?

        public var intranet: [DescribeApplicationSlbsResponseBody.Data.Intranet]?

        public var intranetIp: String?

        public var intranetSlbExpired: Bool?

        public var intranetSlbId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.internet != nil {
                var tmp : [Any] = []
                for k in self.internet! {
                    tmp.append(k.toMap())
                }
                map["Internet"] = tmp
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.internetSlbExpired != nil {
                map["InternetSlbExpired"] = self.internetSlbExpired!
            }
            if self.internetSlbId != nil {
                map["InternetSlbId"] = self.internetSlbId!
            }
            if self.intranet != nil {
                var tmp : [Any] = []
                for k in self.intranet! {
                    tmp.append(k.toMap())
                }
                map["Intranet"] = tmp
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.intranetSlbExpired != nil {
                map["IntranetSlbExpired"] = self.intranetSlbExpired!
            }
            if self.intranetSlbId != nil {
                map["IntranetSlbId"] = self.intranetSlbId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Internet") {
                self.internet = dict["Internet"] as! [DescribeApplicationSlbsResponseBody.Data.Internet]
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("InternetSlbExpired") {
                self.internetSlbExpired = dict["InternetSlbExpired"] as! Bool
            }
            if dict.keys.contains("InternetSlbId") {
                self.internetSlbId = dict["InternetSlbId"] as! String
            }
            if dict.keys.contains("Intranet") {
                self.intranet = dict["Intranet"] as! [DescribeApplicationSlbsResponseBody.Data.Intranet]
            }
            if dict.keys.contains("IntranetIp") {
                self.intranetIp = dict["IntranetIp"] as! String
            }
            if dict.keys.contains("IntranetSlbExpired") {
                self.intranetSlbExpired = dict["IntranetSlbExpired"] as! Bool
            }
            if dict.keys.contains("IntranetSlbId") {
                self.intranetSlbId = dict["IntranetSlbId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeApplicationSlbsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeApplicationSlbsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationSlbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationSlbsResponseBody?

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
            var model = DescribeApplicationSlbsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationStatusRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class DescribeApplicationStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var armsAdvancedEnabled: String?

        public var armsApmInfo: String?

        public var createTime: String?

        public var currentStatus: String?

        public var enableAgent: Bool?

        public var fileSizeLimit: Int64?

        public var lastChangeOrderId: String?

        public var lastChangeOrderRunning: Bool?

        public var lastChangeOrderStatus: String?

        public var runningInstances: Int32?

        public var subStatus: String?

        public override init() {
            super.init()
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
            if self.armsAdvancedEnabled != nil {
                map["ArmsAdvancedEnabled"] = self.armsAdvancedEnabled!
            }
            if self.armsApmInfo != nil {
                map["ArmsApmInfo"] = self.armsApmInfo!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.currentStatus != nil {
                map["CurrentStatus"] = self.currentStatus!
            }
            if self.enableAgent != nil {
                map["EnableAgent"] = self.enableAgent!
            }
            if self.fileSizeLimit != nil {
                map["FileSizeLimit"] = self.fileSizeLimit!
            }
            if self.lastChangeOrderId != nil {
                map["LastChangeOrderId"] = self.lastChangeOrderId!
            }
            if self.lastChangeOrderRunning != nil {
                map["LastChangeOrderRunning"] = self.lastChangeOrderRunning!
            }
            if self.lastChangeOrderStatus != nil {
                map["LastChangeOrderStatus"] = self.lastChangeOrderStatus!
            }
            if self.runningInstances != nil {
                map["RunningInstances"] = self.runningInstances!
            }
            if self.subStatus != nil {
                map["SubStatus"] = self.subStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ArmsAdvancedEnabled") {
                self.armsAdvancedEnabled = dict["ArmsAdvancedEnabled"] as! String
            }
            if dict.keys.contains("ArmsApmInfo") {
                self.armsApmInfo = dict["ArmsApmInfo"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CurrentStatus") {
                self.currentStatus = dict["CurrentStatus"] as! String
            }
            if dict.keys.contains("EnableAgent") {
                self.enableAgent = dict["EnableAgent"] as! Bool
            }
            if dict.keys.contains("FileSizeLimit") {
                self.fileSizeLimit = dict["FileSizeLimit"] as! Int64
            }
            if dict.keys.contains("LastChangeOrderId") {
                self.lastChangeOrderId = dict["LastChangeOrderId"] as! String
            }
            if dict.keys.contains("LastChangeOrderRunning") {
                self.lastChangeOrderRunning = dict["LastChangeOrderRunning"] as! Bool
            }
            if dict.keys.contains("LastChangeOrderStatus") {
                self.lastChangeOrderStatus = dict["LastChangeOrderStatus"] as! String
            }
            if dict.keys.contains("RunningInstances") {
                self.runningInstances = dict["RunningInstances"] as! Int32
            }
            if dict.keys.contains("SubStatus") {
                self.subStatus = dict["SubStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeApplicationStatusResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeApplicationStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeApplicationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationStatusResponseBody?

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
            var model = DescribeApplicationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChangeOrderRequest : Tea.TeaModel {
    public var changeOrderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeOrderId != nil {
            map["ChangeOrderId"] = self.changeOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeOrderId") {
            self.changeOrderId = dict["ChangeOrderId"] as! String
        }
    }
}

public class DescribeChangeOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Pipelines : Tea.TeaModel {
            public var batchType: Int32?

            public var parallelCount: Int32?

            public var pipelineId: String?

            public var pipelineName: String?

            public var startTime: Int64?

            public var status: Int32?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchType != nil {
                    map["BatchType"] = self.batchType!
                }
                if self.parallelCount != nil {
                    map["ParallelCount"] = self.parallelCount!
                }
                if self.pipelineId != nil {
                    map["PipelineId"] = self.pipelineId!
                }
                if self.pipelineName != nil {
                    map["PipelineName"] = self.pipelineName!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BatchType") {
                    self.batchType = dict["BatchType"] as! Int32
                }
                if dict.keys.contains("ParallelCount") {
                    self.parallelCount = dict["ParallelCount"] as! Int32
                }
                if dict.keys.contains("PipelineId") {
                    self.pipelineId = dict["PipelineId"] as! String
                }
                if dict.keys.contains("PipelineName") {
                    self.pipelineName = dict["PipelineName"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var appId: String?

        public var appName: String?

        public var approvalId: String?

        public var auto: Bool?

        public var batchCount: Int32?

        public var batchType: String?

        public var batchWaitTime: Int32?

        public var changeOrderId: String?

        public var coType: String?

        public var coTypeCode: String?

        public var createTime: String?

        public var currentPipelineId: String?

        public var description_: String?

        public var errorMessage: String?

        public var pipelines: [DescribeChangeOrderResponseBody.Data.Pipelines]?

        public var status: Int32?

        public var subStatus: Int32?

        public var supportRollback: Bool?

        public override init() {
            super.init()
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
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.approvalId != nil {
                map["ApprovalId"] = self.approvalId!
            }
            if self.auto != nil {
                map["Auto"] = self.auto!
            }
            if self.batchCount != nil {
                map["BatchCount"] = self.batchCount!
            }
            if self.batchType != nil {
                map["BatchType"] = self.batchType!
            }
            if self.batchWaitTime != nil {
                map["BatchWaitTime"] = self.batchWaitTime!
            }
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            if self.coType != nil {
                map["CoType"] = self.coType!
            }
            if self.coTypeCode != nil {
                map["CoTypeCode"] = self.coTypeCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.currentPipelineId != nil {
                map["CurrentPipelineId"] = self.currentPipelineId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.pipelines != nil {
                var tmp : [Any] = []
                for k in self.pipelines! {
                    tmp.append(k.toMap())
                }
                map["Pipelines"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subStatus != nil {
                map["SubStatus"] = self.subStatus!
            }
            if self.supportRollback != nil {
                map["SupportRollback"] = self.supportRollback!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("ApprovalId") {
                self.approvalId = dict["ApprovalId"] as! String
            }
            if dict.keys.contains("Auto") {
                self.auto = dict["Auto"] as! Bool
            }
            if dict.keys.contains("BatchCount") {
                self.batchCount = dict["BatchCount"] as! Int32
            }
            if dict.keys.contains("BatchType") {
                self.batchType = dict["BatchType"] as! String
            }
            if dict.keys.contains("BatchWaitTime") {
                self.batchWaitTime = dict["BatchWaitTime"] as! Int32
            }
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
            if dict.keys.contains("CoType") {
                self.coType = dict["CoType"] as! String
            }
            if dict.keys.contains("CoTypeCode") {
                self.coTypeCode = dict["CoTypeCode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CurrentPipelineId") {
                self.currentPipelineId = dict["CurrentPipelineId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Pipelines") {
                self.pipelines = dict["Pipelines"] as! [DescribeChangeOrderResponseBody.Data.Pipelines]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("SubStatus") {
                self.subStatus = dict["SubStatus"] as! Int32
            }
            if dict.keys.contains("SupportRollback") {
                self.supportRollback = dict["SupportRollback"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: DescribeChangeOrderResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeChangeOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeChangeOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChangeOrderResponseBody?

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
            var model = DescribeChangeOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComponentsRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeComponentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var componentDescription: String?

        public var componentKey: String?

        public var expired: Bool?

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
            if self.componentDescription != nil {
                map["ComponentDescription"] = self.componentDescription!
            }
            if self.componentKey != nil {
                map["ComponentKey"] = self.componentKey!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComponentDescription") {
                self.componentDescription = dict["ComponentDescription"] as! String
            }
            if dict.keys.contains("ComponentKey") {
                self.componentKey = dict["ComponentKey"] as! String
            }
            if dict.keys.contains("Expired") {
                self.expired = dict["Expired"] as! Bool
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DescribeComponentsResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeComponentsResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComponentsResponseBody?

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
            var model = DescribeComponentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigMapRequest : Tea.TeaModel {
    public var configMapId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configMapId != nil {
            map["ConfigMapId"] = self.configMapId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigMapId") {
            self.configMapId = dict["ConfigMapId"] as! Int64
        }
    }
}

public class DescribeConfigMapResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RelateApps : Tea.TeaModel {
            public var appId: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
            }
        }
        public var configMapId: Int64?

        public var createTime: Int64?

        public var data: [String: Any]?

        public var description_: String?

        public var name: String?

        public var namespaceId: String?

        public var relateApps: [DescribeConfigMapResponseBody.Data.RelateApps]?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configMapId != nil {
                map["ConfigMapId"] = self.configMapId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.relateApps != nil {
                var tmp : [Any] = []
                for k in self.relateApps! {
                    tmp.append(k.toMap())
                }
                map["RelateApps"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigMapId") {
                self.configMapId = dict["ConfigMapId"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [String: Any]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("RelateApps") {
                self.relateApps = dict["RelateApps"] as! [DescribeConfigMapResponseBody.Data.RelateApps]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeConfigMapResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeConfigMapResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeConfigMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigMapResponseBody?

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
            var model = DescribeConfigMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigurationPriceRequest : Tea.TeaModel {
    public var cpu: Int32?

    public var memory: Int32?

    public var workload: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.workload != nil {
            map["Workload"] = self.workload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("Workload") {
            self.workload = dict["Workload"] as! String
        }
    }
}

public class DescribeConfigurationPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BagUsage : Tea.TeaModel {
            public var cpu: Double?

            public var mem: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.mem != nil {
                    map["Mem"] = self.mem!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    self.cpu = dict["Cpu"] as! Double
                }
                if dict.keys.contains("Mem") {
                    self.mem = dict["Mem"] as! Double
                }
            }
        }
        public class Order : Tea.TeaModel {
            public var discountAmount: Double?

            public var originalAmount: Double?

            public var ruleIds: [String]?

            public var tradeAmount: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.discountAmount != nil {
                    map["DiscountAmount"] = self.discountAmount!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.ruleIds != nil {
                    map["RuleIds"] = self.ruleIds!
                }
                if self.tradeAmount != nil {
                    map["TradeAmount"] = self.tradeAmount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiscountAmount") {
                    self.discountAmount = dict["DiscountAmount"] as! Double
                }
                if dict.keys.contains("OriginalAmount") {
                    self.originalAmount = dict["OriginalAmount"] as! Double
                }
                if dict.keys.contains("RuleIds") {
                    self.ruleIds = dict["RuleIds"] as! [String]
                }
                if dict.keys.contains("TradeAmount") {
                    self.tradeAmount = dict["TradeAmount"] as! Double
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var name: String?

            public var ruleDescId: Int64?

            public override init() {
                super.init()
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
                if self.ruleDescId != nil {
                    map["RuleDescId"] = self.ruleDescId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RuleDescId") {
                    self.ruleDescId = dict["RuleDescId"] as! Int64
                }
            }
        }
        public var bagUsage: DescribeConfigurationPriceResponseBody.Data.BagUsage?

        public var order: DescribeConfigurationPriceResponseBody.Data.Order?

        public var rules: [DescribeConfigurationPriceResponseBody.Data.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bagUsage?.validate()
            try self.order?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bagUsage != nil {
                map["BagUsage"] = self.bagUsage?.toMap()
            }
            if self.order != nil {
                map["Order"] = self.order?.toMap()
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BagUsage") {
                var model = DescribeConfigurationPriceResponseBody.Data.BagUsage()
                model.fromMap(dict["BagUsage"] as! [String: Any])
                self.bagUsage = model
            }
            if dict.keys.contains("Order") {
                var model = DescribeConfigurationPriceResponseBody.Data.Order()
                model.fromMap(dict["Order"] as! [String: Any])
                self.order = model
            }
            if dict.keys.contains("Rules") {
                self.rules = dict["Rules"] as! [DescribeConfigurationPriceResponseBody.Data.Rules]
            }
        }
    }
    public var code: String?

    public var data: DescribeConfigurationPriceResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeConfigurationPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeConfigurationPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigurationPriceResponseBody?

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
            var model = DescribeConfigurationPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEdasContainersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var disabled: Bool?

        public var edasContainerVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.edasContainerVersion != nil {
                map["EdasContainerVersion"] = self.edasContainerVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Disabled") {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("EdasContainerVersion") {
                self.edasContainerVersion = dict["EdasContainerVersion"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DescribeEdasContainersResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeEdasContainersResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeEdasContainersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEdasContainersResponseBody?

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
            var model = DescribeEdasContainersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGreyTagRouteRequest : Tea.TeaModel {
    public var greyTagRouteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.greyTagRouteId != nil {
            map["GreyTagRouteId"] = self.greyTagRouteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GreyTagRouteId") {
            self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
        }
    }
}

public class DescribeGreyTagRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DubboRules : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public var cond: String?

                public var expr: String?

                public var index: Int32?

                public var name: String?

                public var operator_: String?

                public var type: String?

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
                    if self.cond != nil {
                        map["cond"] = self.cond!
                    }
                    if self.expr != nil {
                        map["expr"] = self.expr!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.operator_ != nil {
                        map["operator"] = self.operator_!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cond") {
                        self.cond = dict["cond"] as! String
                    }
                    if dict.keys.contains("expr") {
                        self.expr = dict["expr"] as! String
                    }
                    if dict.keys.contains("index") {
                        self.index = dict["index"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("operator") {
                        self.operator_ = dict["operator"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public var condition: String?

            public var group: String?

            public var items: [DescribeGreyTagRouteResponseBody.Data.DubboRules.Items]?

            public var methodName: String?

            public var serviceName: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.condition != nil {
                    map["condition"] = self.condition!
                }
                if self.group != nil {
                    map["group"] = self.group!
                }
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["items"] = tmp
                }
                if self.methodName != nil {
                    map["methodName"] = self.methodName!
                }
                if self.serviceName != nil {
                    map["serviceName"] = self.serviceName!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("condition") {
                    self.condition = dict["condition"] as! String
                }
                if dict.keys.contains("group") {
                    self.group = dict["group"] as! String
                }
                if dict.keys.contains("items") {
                    self.items = dict["items"] as! [DescribeGreyTagRouteResponseBody.Data.DubboRules.Items]
                }
                if dict.keys.contains("methodName") {
                    self.methodName = dict["methodName"] as! String
                }
                if dict.keys.contains("serviceName") {
                    self.serviceName = dict["serviceName"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public class ScRules : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public var cond: String?

                public var expr: String?

                public var index: Int32?

                public var name: String?

                public var operator_: String?

                public var type: String?

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
                    if self.cond != nil {
                        map["cond"] = self.cond!
                    }
                    if self.expr != nil {
                        map["expr"] = self.expr!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.operator_ != nil {
                        map["operator"] = self.operator_!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cond") {
                        self.cond = dict["cond"] as! String
                    }
                    if dict.keys.contains("expr") {
                        self.expr = dict["expr"] as! String
                    }
                    if dict.keys.contains("index") {
                        self.index = dict["index"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("operator") {
                        self.operator_ = dict["operator"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public var condition: String?

            public var items: [DescribeGreyTagRouteResponseBody.Data.ScRules.Items]?

            public var path: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.condition != nil {
                    map["condition"] = self.condition!
                }
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["items"] = tmp
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("condition") {
                    self.condition = dict["condition"] as! String
                }
                if dict.keys.contains("items") {
                    self.items = dict["items"] as! [DescribeGreyTagRouteResponseBody.Data.ScRules.Items]
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
            }
        }
        public var appId: String?

        public var createTime: Int64?

        public var description_: String?

        public var dubboRules: [DescribeGreyTagRouteResponseBody.Data.DubboRules]?

        public var greyTagRouteId: Int64?

        public var name: String?

        public var scRules: [DescribeGreyTagRouteResponseBody.Data.ScRules]?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dubboRules != nil {
                var tmp : [Any] = []
                for k in self.dubboRules! {
                    tmp.append(k.toMap())
                }
                map["DubboRules"] = tmp
            }
            if self.greyTagRouteId != nil {
                map["GreyTagRouteId"] = self.greyTagRouteId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scRules != nil {
                var tmp : [Any] = []
                for k in self.scRules! {
                    tmp.append(k.toMap())
                }
                map["ScRules"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DubboRules") {
                self.dubboRules = dict["DubboRules"] as! [DescribeGreyTagRouteResponseBody.Data.DubboRules]
            }
            if dict.keys.contains("GreyTagRouteId") {
                self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ScRules") {
                self.scRules = dict["ScRules"] as! [DescribeGreyTagRouteResponseBody.Data.ScRules]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeGreyTagRouteResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeGreyTagRouteResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeGreyTagRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGreyTagRouteResponseBody?

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
            var model = DescribeGreyTagRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIngressRequest : Tea.TeaModel {
    public var ingressId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ingressId != nil {
            map["IngressId"] = self.ingressId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IngressId") {
            self.ingressId = dict["IngressId"] as! Int64
        }
    }
}

public class DescribeIngressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DefaultRule : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var backendProtocol: String?

            public var containerPort: Int32?

            public override init() {
                super.init()
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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.backendProtocol != nil {
                    map["BackendProtocol"] = self.backendProtocol!
                }
                if self.containerPort != nil {
                    map["ContainerPort"] = self.containerPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("BackendProtocol") {
                    self.backendProtocol = dict["BackendProtocol"] as! String
                }
                if dict.keys.contains("ContainerPort") {
                    self.containerPort = dict["ContainerPort"] as! Int32
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var backendProtocol: String?

            public var containerPort: Int32?

            public var domain: String?

            public var path: String?

            public override init() {
                super.init()
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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.backendProtocol != nil {
                    map["BackendProtocol"] = self.backendProtocol!
                }
                if self.containerPort != nil {
                    map["ContainerPort"] = self.containerPort!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("BackendProtocol") {
                    self.backendProtocol = dict["BackendProtocol"] as! String
                }
                if dict.keys.contains("ContainerPort") {
                    self.containerPort = dict["ContainerPort"] as! Int32
                }
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
            }
        }
        public var certId: String?

        public var defaultRule: DescribeIngressResponseBody.Data.DefaultRule?

        public var description_: String?

        public var id: Int64?

        public var listenerPort: Int32?

        public var listenerProtocol: String?

        public var loadBalanceType: String?

        public var name: String?

        public var namespaceId: String?

        public var rules: [DescribeIngressResponseBody.Data.Rules]?

        public var slbId: String?

        public var slbType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.defaultRule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certId != nil {
                map["CertId"] = self.certId!
            }
            if self.defaultRule != nil {
                map["DefaultRule"] = self.defaultRule?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            if self.listenerProtocol != nil {
                map["ListenerProtocol"] = self.listenerProtocol!
            }
            if self.loadBalanceType != nil {
                map["LoadBalanceType"] = self.loadBalanceType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.slbId != nil {
                map["SlbId"] = self.slbId!
            }
            if self.slbType != nil {
                map["SlbType"] = self.slbType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertId") {
                self.certId = dict["CertId"] as! String
            }
            if dict.keys.contains("DefaultRule") {
                var model = DescribeIngressResponseBody.Data.DefaultRule()
                model.fromMap(dict["DefaultRule"] as! [String: Any])
                self.defaultRule = model
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
            if dict.keys.contains("ListenerProtocol") {
                self.listenerProtocol = dict["ListenerProtocol"] as! String
            }
            if dict.keys.contains("LoadBalanceType") {
                self.loadBalanceType = dict["LoadBalanceType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("Rules") {
                self.rules = dict["Rules"] as! [DescribeIngressResponseBody.Data.Rules]
            }
            if dict.keys.contains("SlbId") {
                self.slbId = dict["SlbId"] as! String
            }
            if dict.keys.contains("SlbType") {
                self.slbType = dict["SlbType"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeIngressResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeIngressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeIngressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIngressResponseBody?

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
            var model = DescribeIngressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceLogRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceLogResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeInstanceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceLogResponseBody?

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
            var model = DescribeInstanceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceSpecificationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cpu: Int32?

        public var enable: Bool?

        public var id: Int32?

        public var memory: Int32?

        public var specInfo: String?

        public var version: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.specInfo != nil {
                map["SpecInfo"] = self.specInfo!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int32
            }
            if dict.keys.contains("SpecInfo") {
                self.specInfo = dict["SpecInfo"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [DescribeInstanceSpecificationsResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeInstanceSpecificationsResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeInstanceSpecificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSpecificationsResponseBody?

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
            var model = DescribeInstanceSpecificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeJobStatusRequest : Tea.TeaModel {
    public var appId: String?

    public var jobId: String?

    public override init() {
        super.init()
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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class DescribeJobStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var active: Int64?

        public var completionTime: Int64?

        public var failed: Int64?

        public var jobId: String?

        public var message: String?

        public var startTime: Int64?

        public var state: String?

        public var succeeded: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.completionTime != nil {
                map["CompletionTime"] = self.completionTime!
            }
            if self.failed != nil {
                map["Failed"] = self.failed!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Int64
            }
            if dict.keys.contains("CompletionTime") {
                self.completionTime = dict["CompletionTime"] as! Int64
            }
            if dict.keys.contains("Failed") {
                self.failed = dict["Failed"] as! Int64
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Succeeded") {
                self.succeeded = dict["Succeeded"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeJobStatusResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeJobStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobStatusResponseBody?

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
            var model = DescribeJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNamespaceRequest : Tea.TeaModel {
    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class DescribeNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var namespaceDescription: String?

        public var namespaceId: String?

        public var namespaceName: String?

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
            if self.namespaceDescription != nil {
                map["NamespaceDescription"] = self.namespaceDescription!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NamespaceDescription") {
                self.namespaceDescription = dict["NamespaceDescription"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeNamespaceResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeNamespaceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNamespaceResponseBody?

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
            var model = DescribeNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNamespaceListRequest : Tea.TeaModel {
    public var containCustom: Bool?

    public var hybridCloudExclude: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containCustom != nil {
            map["ContainCustom"] = self.containCustom!
        }
        if self.hybridCloudExclude != nil {
            map["HybridCloudExclude"] = self.hybridCloudExclude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainCustom") {
            self.containCustom = dict["ContainCustom"] as! Bool
        }
        if dict.keys.contains("HybridCloudExclude") {
            self.hybridCloudExclude = dict["HybridCloudExclude"] as! Bool
        }
    }
}

public class DescribeNamespaceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentInstall: String?

        public var current: Bool?

        public var custom: Bool?

        public var hybridCloudEnable: Bool?

        public var namespaceId: String?

        public var namespaceName: String?

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
            if self.agentInstall != nil {
                map["AgentInstall"] = self.agentInstall!
            }
            if self.current != nil {
                map["Current"] = self.current!
            }
            if self.custom != nil {
                map["Custom"] = self.custom!
            }
            if self.hybridCloudEnable != nil {
                map["HybridCloudEnable"] = self.hybridCloudEnable!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
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
            if dict.keys.contains("AgentInstall") {
                self.agentInstall = dict["AgentInstall"] as! String
            }
            if dict.keys.contains("Current") {
                self.current = dict["Current"] as! Bool
            }
            if dict.keys.contains("Custom") {
                self.custom = dict["Custom"] as! Bool
            }
            if dict.keys.contains("HybridCloudEnable") {
                self.hybridCloudEnable = dict["HybridCloudEnable"] as! Bool
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") {
                self.namespaceName = dict["NamespaceName"] as! String
            }
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
    public var code: String?

    public var data: [DescribeNamespaceListResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeNamespaceListResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeNamespaceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNamespaceListResponseBody?

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
            var model = DescribeNamespaceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNamespaceResourcesRequest : Tea.TeaModel {
    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class DescribeNamespaceResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appCount: Int64?

        public var belongRegion: String?

        public var description_: String?

        public var jumpServerAppId: String?

        public var jumpServerIp: String?

        public var lastChangeOrderId: String?

        public var lastChangeOrderRunning: Bool?

        public var lastChangeOrderStatus: String?

        public var namespaceId: String?

        public var namespaceName: String?

        public var notificationExpired: Bool?

        public var securityGroupId: String?

        public var tenantId: String?

        public var userId: String?

        public var vSwitchId: String?

        public var vSwitchName: String?

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
            if self.appCount != nil {
                map["AppCount"] = self.appCount!
            }
            if self.belongRegion != nil {
                map["BelongRegion"] = self.belongRegion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.jumpServerAppId != nil {
                map["JumpServerAppId"] = self.jumpServerAppId!
            }
            if self.jumpServerIp != nil {
                map["JumpServerIp"] = self.jumpServerIp!
            }
            if self.lastChangeOrderId != nil {
                map["LastChangeOrderId"] = self.lastChangeOrderId!
            }
            if self.lastChangeOrderRunning != nil {
                map["LastChangeOrderRunning"] = self.lastChangeOrderRunning!
            }
            if self.lastChangeOrderStatus != nil {
                map["LastChangeOrderStatus"] = self.lastChangeOrderStatus!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.notificationExpired != nil {
                map["NotificationExpired"] = self.notificationExpired!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
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
            if self.vpcName != nil {
                map["VpcName"] = self.vpcName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCount") {
                self.appCount = dict["AppCount"] as! Int64
            }
            if dict.keys.contains("BelongRegion") {
                self.belongRegion = dict["BelongRegion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("JumpServerAppId") {
                self.jumpServerAppId = dict["JumpServerAppId"] as! String
            }
            if dict.keys.contains("JumpServerIp") {
                self.jumpServerIp = dict["JumpServerIp"] as! String
            }
            if dict.keys.contains("LastChangeOrderId") {
                self.lastChangeOrderId = dict["LastChangeOrderId"] as! String
            }
            if dict.keys.contains("LastChangeOrderRunning") {
                self.lastChangeOrderRunning = dict["LastChangeOrderRunning"] as! Bool
            }
            if dict.keys.contains("LastChangeOrderStatus") {
                self.lastChangeOrderStatus = dict["LastChangeOrderStatus"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("NotificationExpired") {
                self.notificationExpired = dict["NotificationExpired"] as! Bool
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
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
            if dict.keys.contains("VpcName") {
                self.vpcName = dict["VpcName"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeNamespaceResourcesResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeNamespaceResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeNamespaceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNamespaceResourcesResponseBody?

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
            var model = DescribeNamespaceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNamespacesRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeNamespacesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Namespaces : Tea.TeaModel {
            public var accessKey: String?

            public var namespaceDescription: String?

            public var namespaceId: String?

            public var namespaceName: String?

            public var regionId: String?

            public var secretKey: String?

            public var tenantId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["AccessKey"] = self.accessKey!
                }
                if self.namespaceDescription != nil {
                    map["NamespaceDescription"] = self.namespaceDescription!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.namespaceName != nil {
                    map["NamespaceName"] = self.namespaceName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.secretKey != nil {
                    map["SecretKey"] = self.secretKey!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessKey") {
                    self.accessKey = dict["AccessKey"] as! String
                }
                if dict.keys.contains("NamespaceDescription") {
                    self.namespaceDescription = dict["NamespaceDescription"] as! String
                }
                if dict.keys.contains("NamespaceId") {
                    self.namespaceId = dict["NamespaceId"] as! String
                }
                if dict.keys.contains("NamespaceName") {
                    self.namespaceName = dict["NamespaceName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SecretKey") {
                    self.secretKey = dict["SecretKey"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
            }
        }
        public var currentPage: Int32?

        public var namespaces: [DescribeNamespacesResponseBody.Data.Namespaces]?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.namespaces != nil {
                var tmp : [Any] = []
                for k in self.namespaces! {
                    tmp.append(k.toMap())
                }
                map["Namespaces"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("Namespaces") {
                self.namespaces = dict["Namespaces"] as! [DescribeNamespacesResponseBody.Data.Namespaces]
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeNamespacesResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeNamespacesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribeNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNamespacesResponseBody?

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
            var model = DescribeNamespacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePipelineRequest : Tea.TeaModel {
    public var pipelineId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PipelineId") {
            self.pipelineId = dict["PipelineId"] as! String
        }
    }
}

public class DescribePipelineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StageList : Tea.TeaModel {
            public class TaskList : Tea.TeaModel {
                public var errorCode: String?

                public var errorIgnore: Int32?

                public var errorMessage: String?

                public var message: String?

                public var showManualIgnore: Bool?

                public var stageId: String?

                public var status: Int32?

                public var taskId: String?

                public var taskName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorIgnore != nil {
                        map["ErrorIgnore"] = self.errorIgnore!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.showManualIgnore != nil {
                        map["ShowManualIgnore"] = self.showManualIgnore!
                    }
                    if self.stageId != nil {
                        map["StageId"] = self.stageId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    if self.taskName != nil {
                        map["TaskName"] = self.taskName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorIgnore") {
                        self.errorIgnore = dict["ErrorIgnore"] as! Int32
                    }
                    if dict.keys.contains("ErrorMessage") {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("ShowManualIgnore") {
                        self.showManualIgnore = dict["ShowManualIgnore"] as! Bool
                    }
                    if dict.keys.contains("StageId") {
                        self.stageId = dict["StageId"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("TaskId") {
                        self.taskId = dict["TaskId"] as! String
                    }
                    if dict.keys.contains("TaskName") {
                        self.taskName = dict["TaskName"] as! String
                    }
                }
            }
            public var executorType: Int32?

            public var stageId: String?

            public var stageName: String?

            public var status: Int32?

            public var taskList: [DescribePipelineResponseBody.Data.StageList.TaskList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.executorType != nil {
                    map["ExecutorType"] = self.executorType!
                }
                if self.stageId != nil {
                    map["StageId"] = self.stageId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskList != nil {
                    var tmp : [Any] = []
                    for k in self.taskList! {
                        tmp.append(k.toMap())
                    }
                    map["TaskList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExecutorType") {
                    self.executorType = dict["ExecutorType"] as! Int32
                }
                if dict.keys.contains("StageId") {
                    self.stageId = dict["StageId"] as! String
                }
                if dict.keys.contains("StageName") {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskList") {
                    self.taskList = dict["TaskList"] as! [DescribePipelineResponseBody.Data.StageList.TaskList]
                }
            }
        }
        public var coStatus: String?

        public var currentStageId: String?

        public var nextPipelineId: String?

        public var pipelineId: String?

        public var pipelineName: String?

        public var pipelineStatus: Int32?

        public var showBatch: Bool?

        public var stageList: [DescribePipelineResponseBody.Data.StageList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coStatus != nil {
                map["CoStatus"] = self.coStatus!
            }
            if self.currentStageId != nil {
                map["CurrentStageId"] = self.currentStageId!
            }
            if self.nextPipelineId != nil {
                map["NextPipelineId"] = self.nextPipelineId!
            }
            if self.pipelineId != nil {
                map["PipelineId"] = self.pipelineId!
            }
            if self.pipelineName != nil {
                map["PipelineName"] = self.pipelineName!
            }
            if self.pipelineStatus != nil {
                map["PipelineStatus"] = self.pipelineStatus!
            }
            if self.showBatch != nil {
                map["ShowBatch"] = self.showBatch!
            }
            if self.stageList != nil {
                var tmp : [Any] = []
                for k in self.stageList! {
                    tmp.append(k.toMap())
                }
                map["StageList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoStatus") {
                self.coStatus = dict["CoStatus"] as! String
            }
            if dict.keys.contains("CurrentStageId") {
                self.currentStageId = dict["CurrentStageId"] as! String
            }
            if dict.keys.contains("NextPipelineId") {
                self.nextPipelineId = dict["NextPipelineId"] as! String
            }
            if dict.keys.contains("PipelineId") {
                self.pipelineId = dict["PipelineId"] as! String
            }
            if dict.keys.contains("PipelineName") {
                self.pipelineName = dict["PipelineName"] as! String
            }
            if dict.keys.contains("PipelineStatus") {
                self.pipelineStatus = dict["PipelineStatus"] as! Int32
            }
            if dict.keys.contains("ShowBatch") {
                self.showBatch = dict["ShowBatch"] as! Bool
            }
            if dict.keys.contains("StageList") {
                self.stageList = dict["StageList"] as! [DescribePipelineResponseBody.Data.StageList]
            }
        }
    }
    public var code: String?

    public var data: DescribePipelineResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribePipelineResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DescribePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePipelineResponseBody?

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
            var model = DescribePipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class RecommendZones : Tea.TeaModel {
                public var recommendZone: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.recommendZone != nil {
                        map["RecommendZone"] = self.recommendZone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecommendZone") {
                        self.recommendZone = dict["RecommendZone"] as! [String]
                    }
                }
            }
            public var localName: String?

            public var recommendZones: DescribeRegionsResponseBody.Regions.Region.RecommendZones?

            public var regionEndpoint: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.recommendZones?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.recommendZones != nil {
                    map["RecommendZones"] = self.recommendZones?.toMap()
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RecommendZones") {
                    var model = DescribeRegionsResponseBody.Regions.Region.RecommendZones()
                    model.fromMap(dict["RecommendZones"] as! [String: Any])
                    self.recommendZones = model
                }
                if dict.keys.contains("RegionEndpoint") {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! [DescribeRegionsResponseBody.Regions.Region]
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationScalingRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var scalingRuleName: String?

    public override init() {
        super.init()
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
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
    }
}

public class DisableApplicationScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class DisableApplicationScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationScalingRuleResponseBody?

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
            var model = DisableApplicationScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationScalingRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var scalingRuleName: String?

    public override init() {
        super.init()
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
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
    }
}

public class EnableApplicationScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class EnableApplicationScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationScalingRuleResponseBody?

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
            var model = EnableApplicationScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecJobRequest : Tea.TeaModel {
    public var appId: String?

    public var command: String?

    public var commandArgs: String?

    public var envs: String?

    public var eventId: String?

    public var jarStartArgs: String?

    public var jarStartOptions: String?

    public var warStartOptions: String?

    public override init() {
        super.init()
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
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.commandArgs != nil {
            map["CommandArgs"] = self.commandArgs!
        }
        if self.envs != nil {
            map["Envs"] = self.envs!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.jarStartArgs != nil {
            map["JarStartArgs"] = self.jarStartArgs!
        }
        if self.jarStartOptions != nil {
            map["JarStartOptions"] = self.jarStartOptions!
        }
        if self.warStartOptions != nil {
            map["WarStartOptions"] = self.warStartOptions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("CommandArgs") {
            self.commandArgs = dict["CommandArgs"] as! String
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("JarStartArgs") {
            self.jarStartArgs = dict["JarStartArgs"] as! String
        }
        if dict.keys.contains("JarStartOptions") {
            self.jarStartOptions = dict["JarStartOptions"] as! String
        }
        if dict.keys.contains("WarStartOptions") {
            self.warStartOptions = dict["WarStartOptions"] as! String
        }
    }
}

public class ExecJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var data: String?

        public var msg: String?

        public var success: String?

        public override init() {
            super.init()
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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
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
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! String
            }
        }
    }
    public var code: String?

    public var data: ExecJobResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ExecJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ExecJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecJobResponseBody?

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
            var model = ExecJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppEventsRequest : Tea.TeaModel {
    public var appId: String?

    public var currentPage: Int32?

    public var eventType: String?

    public var namespace: String?

    public var objectKind: String?

    public var objectName: String?

    public var pageSize: Int32?

    public var reason: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.objectKind != nil {
            map["ObjectKind"] = self.objectKind!
        }
        if self.objectName != nil {
            map["ObjectName"] = self.objectName!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ObjectKind") {
            self.objectKind = dict["ObjectKind"] as! String
        }
        if dict.keys.contains("ObjectName") {
            self.objectName = dict["ObjectName"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
    }
}

public class ListAppEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppEventEntity : Tea.TeaModel {
            public var eventType: String?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var objectKind: String?

            public var objectName: String?

            public var reason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.objectKind != nil {
                    map["ObjectKind"] = self.objectKind!
                }
                if self.objectName != nil {
                    map["ObjectName"] = self.objectName!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventType") {
                    self.eventType = dict["EventType"] as! String
                }
                if dict.keys.contains("FirstTimestamp") {
                    self.firstTimestamp = dict["FirstTimestamp"] as! String
                }
                if dict.keys.contains("LastTimestamp") {
                    self.lastTimestamp = dict["LastTimestamp"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("ObjectKind") {
                    self.objectKind = dict["ObjectKind"] as! String
                }
                if dict.keys.contains("ObjectName") {
                    self.objectName = dict["ObjectName"] as! String
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
            }
        }
        public var appEventEntity: [ListAppEventsResponseBody.Data.AppEventEntity]?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appEventEntity != nil {
                var tmp : [Any] = []
                for k in self.appEventEntity! {
                    tmp.append(k.toMap())
                }
                map["AppEventEntity"] = tmp
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppEventEntity") {
                self.appEventEntity = dict["AppEventEntity"] as! [ListAppEventsResponseBody.Data.AppEventEntity]
            }
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListAppEventsResponseBody.Data?

    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
            var model = ListAppEventsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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

public class ListAppEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppEventsResponseBody?

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
            var model = ListAppEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppServicesPageRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var serviceType: String?

    public override init() {
        super.init()
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
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
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
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
    }
}

public class ListAppServicesPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var edasAppId: String?

            public var edasAppName: String?

            public var group: String?

            public var instanceNum: Int64?

            public var serviceName: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.edasAppId != nil {
                    map["EdasAppId"] = self.edasAppId!
                }
                if self.edasAppName != nil {
                    map["EdasAppName"] = self.edasAppName!
                }
                if self.group != nil {
                    map["Group"] = self.group!
                }
                if self.instanceNum != nil {
                    map["InstanceNum"] = self.instanceNum!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EdasAppId") {
                    self.edasAppId = dict["EdasAppId"] as! String
                }
                if dict.keys.contains("EdasAppName") {
                    self.edasAppName = dict["EdasAppName"] as! String
                }
                if dict.keys.contains("Group") {
                    self.group = dict["Group"] as! String
                }
                if dict.keys.contains("InstanceNum") {
                    self.instanceNum = dict["InstanceNum"] as! Int64
                }
                if dict.keys.contains("ServiceName") {
                    self.serviceName = dict["ServiceName"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var currentPage: String?

        public var pageNumber: String?

        public var pageSize: String?

        public var result: [ListAppServicesPageResponseBody.Data.Result]?

        public var totalSize: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! String
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! [ListAppServicesPageResponseBody.Data.Result]
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListAppServicesPageResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListAppServicesPageResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListAppServicesPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppServicesPageResponseBody?

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
            var model = ListAppServicesPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppVersionsRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class ListAppVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var buildPackageUrl: String?

        public var createTime: String?

        public var id: String?

        public var type: String?

        public var warUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildPackageUrl != nil {
                map["BuildPackageUrl"] = self.buildPackageUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.warUrl != nil {
                map["WarUrl"] = self.warUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildPackageUrl") {
                self.buildPackageUrl = dict["BuildPackageUrl"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("WarUrl") {
                self.warUrl = dict["WarUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListAppVersionsResponseBody.Data]?

    public var errorCode: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
            self.data = dict["Data"] as! [ListAppVersionsResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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

public class ListAppVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppVersionsResponseBody?

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
            var model = ListAppVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsRequest : Tea.TeaModel {
    public var appName: String?

    public var currentPage: Int32?

    public var fieldType: String?

    public var fieldValue: String?

    public var namespaceId: String?

    public var orderBy: String?

    public var pageSize: Int32?

    public var reverse: Bool?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.fieldType != nil {
            map["FieldType"] = self.fieldType!
        }
        if self.fieldValue != nil {
            map["FieldValue"] = self.fieldValue!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FieldType") {
            self.fieldType = dict["FieldType"] as! String
        }
        if dict.keys.contains("FieldValue") {
            self.fieldValue = dict["FieldValue"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public var key: String?

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
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var appDeletingStatus: Bool?

            public var appDescription: String?

            public var appId: String?

            public var appName: String?

            public var instances: Int32?

            public var namespaceId: String?

            public var regionId: String?

            public var runningInstances: Int32?

            public var tags: [ListApplicationsResponseBody.Data.Applications.Tags]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appDeletingStatus != nil {
                    map["AppDeletingStatus"] = self.appDeletingStatus!
                }
                if self.appDescription != nil {
                    map["AppDescription"] = self.appDescription!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.instances != nil {
                    map["Instances"] = self.instances!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.runningInstances != nil {
                    map["RunningInstances"] = self.runningInstances!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppDeletingStatus") {
                    self.appDeletingStatus = dict["AppDeletingStatus"] as! Bool
                }
                if dict.keys.contains("AppDescription") {
                    self.appDescription = dict["AppDescription"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("Instances") {
                    self.instances = dict["Instances"] as! Int32
                }
                if dict.keys.contains("NamespaceId") {
                    self.namespaceId = dict["NamespaceId"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RunningInstances") {
                    self.runningInstances = dict["RunningInstances"] as! Int32
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [ListApplicationsResponseBody.Data.Applications.Tags]
                }
            }
        }
        public var applications: [ListApplicationsResponseBody.Data.Applications]?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applications != nil {
                var tmp : [Any] = []
                for k in self.applications! {
                    tmp.append(k.toMap())
                }
                map["Applications"] = tmp
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") {
                self.applications = dict["Applications"] as! [ListApplicationsResponseBody.Data.Applications]
            }
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var data: ListApplicationsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.totalSize != nil {
            map["TotalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListApplicationsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
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
        if dict.keys.contains("TotalSize") {
            self.totalSize = dict["TotalSize"] as! Int32
        }
    }
}

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

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
            var model = ListApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListChangeOrdersRequest : Tea.TeaModel {
    public var appId: String?

    public var coStatus: String?

    public var coType: String?

    public var currentPage: Int32?

    public var key: String?

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
        if self.coStatus != nil {
            map["CoStatus"] = self.coStatus!
        }
        if self.coType != nil {
            map["CoType"] = self.coType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.key != nil {
            map["Key"] = self.key!
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
        if dict.keys.contains("CoStatus") {
            self.coStatus = dict["CoStatus"] as! String
        }
        if dict.keys.contains("CoType") {
            self.coType = dict["CoType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListChangeOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangeOrderList : Tea.TeaModel {
            public var appId: String?

            public var batchCount: Int32?

            public var batchType: String?

            public var changeOrderId: String?

            public var coType: String?

            public var coTypeCode: String?

            public var createTime: String?

            public var createUserId: String?

            public var description_: String?

            public var finishTime: String?

            public var groupId: String?

            public var source: String?

            public var status: Int32?

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
                if self.batchCount != nil {
                    map["BatchCount"] = self.batchCount!
                }
                if self.batchType != nil {
                    map["BatchType"] = self.batchType!
                }
                if self.changeOrderId != nil {
                    map["ChangeOrderId"] = self.changeOrderId!
                }
                if self.coType != nil {
                    map["CoType"] = self.coType!
                }
                if self.coTypeCode != nil {
                    map["CoTypeCode"] = self.coTypeCode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUserId != nil {
                    map["CreateUserId"] = self.createUserId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
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
                if dict.keys.contains("BatchCount") {
                    self.batchCount = dict["BatchCount"] as! Int32
                }
                if dict.keys.contains("BatchType") {
                    self.batchType = dict["BatchType"] as! String
                }
                if dict.keys.contains("ChangeOrderId") {
                    self.changeOrderId = dict["ChangeOrderId"] as! String
                }
                if dict.keys.contains("CoType") {
                    self.coType = dict["CoType"] as! String
                }
                if dict.keys.contains("CoTypeCode") {
                    self.coTypeCode = dict["CoTypeCode"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateUserId") {
                    self.createUserId = dict["CreateUserId"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var changeOrderList: [ListChangeOrdersResponseBody.Data.ChangeOrderList]?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderList != nil {
                var tmp : [Any] = []
                for k in self.changeOrderList! {
                    tmp.append(k.toMap())
                }
                map["ChangeOrderList"] = tmp
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderList") {
                self.changeOrderList = dict["ChangeOrderList"] as! [ListChangeOrdersResponseBody.Data.ChangeOrderList]
            }
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListChangeOrdersResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListChangeOrdersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListChangeOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChangeOrdersResponseBody?

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
            var model = ListChangeOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConsumedServicesRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class ListConsumedServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var group2Ip: String?

        public var groups: [String]?

        public var ips: [String]?

        public var name: String?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.group2Ip != nil {
                map["Group2Ip"] = self.group2Ip!
            }
            if self.groups != nil {
                map["Groups"] = self.groups!
            }
            if self.ips != nil {
                map["Ips"] = self.ips!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Group2Ip") {
                self.group2Ip = dict["Group2Ip"] as! String
            }
            if dict.keys.contains("Groups") {
                self.groups = dict["Groups"] as! [String]
            }
            if dict.keys.contains("Ips") {
                self.ips = dict["Ips"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListConsumedServicesResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListConsumedServicesResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListConsumedServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConsumedServicesResponseBody?

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
            var model = ListConsumedServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGreyTagRouteRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class ListGreyTagRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class DubboRules : Tea.TeaModel {
                public class Items : Tea.TeaModel {
                    public var cond: String?

                    public var expr: String?

                    public var index: Int32?

                    public var name: String?

                    public var operator_: String?

                    public var type: String?

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
                        if self.cond != nil {
                            map["cond"] = self.cond!
                        }
                        if self.expr != nil {
                            map["expr"] = self.expr!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.operator_ != nil {
                            map["operator"] = self.operator_!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cond") {
                            self.cond = dict["cond"] as! String
                        }
                        if dict.keys.contains("expr") {
                            self.expr = dict["expr"] as! String
                        }
                        if dict.keys.contains("index") {
                            self.index = dict["index"] as! Int32
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("operator") {
                            self.operator_ = dict["operator"] as! String
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var condition: String?

                public var group: String?

                public var items: [ListGreyTagRouteResponseBody.Data.Result.DubboRules.Items]?

                public var methodName: String?

                public var serviceName: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.condition != nil {
                        map["condition"] = self.condition!
                    }
                    if self.group != nil {
                        map["group"] = self.group!
                    }
                    if self.items != nil {
                        var tmp : [Any] = []
                        for k in self.items! {
                            tmp.append(k.toMap())
                        }
                        map["items"] = tmp
                    }
                    if self.methodName != nil {
                        map["methodName"] = self.methodName!
                    }
                    if self.serviceName != nil {
                        map["serviceName"] = self.serviceName!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("condition") {
                        self.condition = dict["condition"] as! String
                    }
                    if dict.keys.contains("group") {
                        self.group = dict["group"] as! String
                    }
                    if dict.keys.contains("items") {
                        self.items = dict["items"] as! [ListGreyTagRouteResponseBody.Data.Result.DubboRules.Items]
                    }
                    if dict.keys.contains("methodName") {
                        self.methodName = dict["methodName"] as! String
                    }
                    if dict.keys.contains("serviceName") {
                        self.serviceName = dict["serviceName"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public class ScRules : Tea.TeaModel {
                public class Items : Tea.TeaModel {
                    public var cond: String?

                    public var expr: String?

                    public var index: Int32?

                    public var name: String?

                    public var operator_: String?

                    public var type: String?

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
                        if self.cond != nil {
                            map["cond"] = self.cond!
                        }
                        if self.expr != nil {
                            map["expr"] = self.expr!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.operator_ != nil {
                            map["operator"] = self.operator_!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cond") {
                            self.cond = dict["cond"] as! String
                        }
                        if dict.keys.contains("expr") {
                            self.expr = dict["expr"] as! String
                        }
                        if dict.keys.contains("index") {
                            self.index = dict["index"] as! Int32
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("operator") {
                            self.operator_ = dict["operator"] as! String
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var condition: String?

                public var items: [ListGreyTagRouteResponseBody.Data.Result.ScRules.Items]?

                public var path: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.condition != nil {
                        map["condition"] = self.condition!
                    }
                    if self.items != nil {
                        var tmp : [Any] = []
                        for k in self.items! {
                            tmp.append(k.toMap())
                        }
                        map["items"] = tmp
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("condition") {
                        self.condition = dict["condition"] as! String
                    }
                    if dict.keys.contains("items") {
                        self.items = dict["items"] as! [ListGreyTagRouteResponseBody.Data.Result.ScRules.Items]
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                }
            }
            public var createTime: Int64?

            public var description_: String?

            public var dubboRules: [ListGreyTagRouteResponseBody.Data.Result.DubboRules]?

            public var greyTagRouteId: Int64?

            public var name: String?

            public var scRules: [ListGreyTagRouteResponseBody.Data.Result.ScRules]?

            public var updateTime: Int64?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.dubboRules != nil {
                    var tmp : [Any] = []
                    for k in self.dubboRules! {
                        tmp.append(k.toMap())
                    }
                    map["DubboRules"] = tmp
                }
                if self.greyTagRouteId != nil {
                    map["GreyTagRouteId"] = self.greyTagRouteId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.scRules != nil {
                    var tmp : [Any] = []
                    for k in self.scRules! {
                        tmp.append(k.toMap())
                    }
                    map["ScRules"] = tmp
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DubboRules") {
                    self.dubboRules = dict["DubboRules"] as! [ListGreyTagRouteResponseBody.Data.Result.DubboRules]
                }
                if dict.keys.contains("GreyTagRouteId") {
                    self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ScRules") {
                    self.scRules = dict["ScRules"] as! [ListGreyTagRouteResponseBody.Data.Result.ScRules]
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var result: [ListGreyTagRouteResponseBody.Data.Result]?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! [ListGreyTagRouteResponseBody.Data.Result]
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListGreyTagRouteResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListGreyTagRouteResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListGreyTagRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGreyTagRouteResponseBody?

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
            var model = ListGreyTagRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIngressesRequest : Tea.TeaModel {
    public var appId: String?

    public var namespaceId: String?

    public override init() {
        super.init()
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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class ListIngressesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class IngressList : Tea.TeaModel {
            public var certId: String?

            public var description_: String?

            public var id: Int64?

            public var listenerPort: String?

            public var listenerProtocol: String?

            public var loadBalanceType: String?

            public var name: String?

            public var namespaceId: String?

            public var slbId: String?

            public var slbType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certId != nil {
                    map["CertId"] = self.certId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.listenerProtocol != nil {
                    map["ListenerProtocol"] = self.listenerProtocol!
                }
                if self.loadBalanceType != nil {
                    map["LoadBalanceType"] = self.loadBalanceType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.slbId != nil {
                    map["SlbId"] = self.slbId!
                }
                if self.slbType != nil {
                    map["SlbType"] = self.slbType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertId") {
                    self.certId = dict["CertId"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! String
                }
                if dict.keys.contains("ListenerProtocol") {
                    self.listenerProtocol = dict["ListenerProtocol"] as! String
                }
                if dict.keys.contains("LoadBalanceType") {
                    self.loadBalanceType = dict["LoadBalanceType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NamespaceId") {
                    self.namespaceId = dict["NamespaceId"] as! String
                }
                if dict.keys.contains("SlbId") {
                    self.slbId = dict["SlbId"] as! String
                }
                if dict.keys.contains("SlbType") {
                    self.slbType = dict["SlbType"] as! String
                }
            }
        }
        public var ingressList: [ListIngressesResponseBody.Data.IngressList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ingressList != nil {
                var tmp : [Any] = []
                for k in self.ingressList! {
                    tmp.append(k.toMap())
                }
                map["IngressList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IngressList") {
                self.ingressList = dict["IngressList"] as! [ListIngressesResponseBody.Data.IngressList]
            }
        }
    }
    public var code: String?

    public var data: ListIngressesResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListIngressesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListIngressesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIngressesResponseBody?

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
            var model = ListIngressesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLogConfigsRequest : Tea.TeaModel {
    public var appId: String?

    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListLogConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LogConfigs : Tea.TeaModel {
            public var configName: String?

            public var createTime: String?

            public var logDir: String?

            public var logType: String?

            public var regionId: String?

            public var slsLogStore: String?

            public var slsProject: String?

            public var storeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configName != nil {
                    map["ConfigName"] = self.configName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.logDir != nil {
                    map["LogDir"] = self.logDir!
                }
                if self.logType != nil {
                    map["LogType"] = self.logType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.slsLogStore != nil {
                    map["SlsLogStore"] = self.slsLogStore!
                }
                if self.slsProject != nil {
                    map["SlsProject"] = self.slsProject!
                }
                if self.storeType != nil {
                    map["StoreType"] = self.storeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigName") {
                    self.configName = dict["ConfigName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("LogDir") {
                    self.logDir = dict["LogDir"] as! String
                }
                if dict.keys.contains("LogType") {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SlsLogStore") {
                    self.slsLogStore = dict["SlsLogStore"] as! String
                }
                if dict.keys.contains("SlsProject") {
                    self.slsProject = dict["SlsProject"] as! String
                }
                if dict.keys.contains("StoreType") {
                    self.storeType = dict["StoreType"] as! String
                }
            }
        }
        public var currentPage: Int32?

        public var logConfigs: [ListLogConfigsResponseBody.Data.LogConfigs]?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.logConfigs != nil {
                var tmp : [Any] = []
                for k in self.logConfigs! {
                    tmp.append(k.toMap())
                }
                map["LogConfigs"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("LogConfigs") {
                self.logConfigs = dict["LogConfigs"] as! [ListLogConfigsResponseBody.Data.LogConfigs]
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListLogConfigsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListLogConfigsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListLogConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogConfigsResponseBody?

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
            var model = ListLogConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNamespaceChangeOrdersRequest : Tea.TeaModel {
    public var coStatus: String?

    public var coType: String?

    public var currentPage: Int32?

    public var key: String?

    public var namespaceId: String?

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
        if self.coStatus != nil {
            map["CoStatus"] = self.coStatus!
        }
        if self.coType != nil {
            map["CoType"] = self.coType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoStatus") {
            self.coStatus = dict["CoStatus"] as! String
        }
        if dict.keys.contains("CoType") {
            self.coType = dict["CoType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListNamespaceChangeOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangeOrderList : Tea.TeaModel {
            public var batchCount: Int32?

            public var batchType: String?

            public var changeOrderId: String?

            public var coType: String?

            public var coTypeCode: String?

            public var createTime: String?

            public var createUserId: String?

            public var description_: String?

            public var finishTime: String?

            public var groupId: String?

            public var namespaceId: String?

            public var pipelines: String?

            public var source: String?

            public var status: Int32?

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
                if self.batchCount != nil {
                    map["BatchCount"] = self.batchCount!
                }
                if self.batchType != nil {
                    map["BatchType"] = self.batchType!
                }
                if self.changeOrderId != nil {
                    map["ChangeOrderId"] = self.changeOrderId!
                }
                if self.coType != nil {
                    map["CoType"] = self.coType!
                }
                if self.coTypeCode != nil {
                    map["CoTypeCode"] = self.coTypeCode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUserId != nil {
                    map["CreateUserId"] = self.createUserId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.pipelines != nil {
                    map["Pipelines"] = self.pipelines!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BatchCount") {
                    self.batchCount = dict["BatchCount"] as! Int32
                }
                if dict.keys.contains("BatchType") {
                    self.batchType = dict["BatchType"] as! String
                }
                if dict.keys.contains("ChangeOrderId") {
                    self.changeOrderId = dict["ChangeOrderId"] as! String
                }
                if dict.keys.contains("CoType") {
                    self.coType = dict["CoType"] as! String
                }
                if dict.keys.contains("CoTypeCode") {
                    self.coTypeCode = dict["CoTypeCode"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateUserId") {
                    self.createUserId = dict["CreateUserId"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("NamespaceId") {
                    self.namespaceId = dict["NamespaceId"] as! String
                }
                if dict.keys.contains("Pipelines") {
                    self.pipelines = dict["Pipelines"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var changeOrderList: [ListNamespaceChangeOrdersResponseBody.Data.ChangeOrderList]?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderList != nil {
                var tmp : [Any] = []
                for k in self.changeOrderList! {
                    tmp.append(k.toMap())
                }
                map["ChangeOrderList"] = tmp
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderList") {
                self.changeOrderList = dict["ChangeOrderList"] as! [ListNamespaceChangeOrdersResponseBody.Data.ChangeOrderList]
            }
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListNamespaceChangeOrdersResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListNamespaceChangeOrdersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListNamespaceChangeOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespaceChangeOrdersResponseBody?

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
            var model = ListNamespaceChangeOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNamespacedConfigMapsRequest : Tea.TeaModel {
    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
    }
}

public class ListNamespacedConfigMapsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConfigMaps : Tea.TeaModel {
            public class RelateApps : Tea.TeaModel {
                public var appId: String?

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
                    if self.appId != nil {
                        map["AppId"] = self.appId!
                    }
                    if self.appName != nil {
                        map["AppName"] = self.appName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppId") {
                        self.appId = dict["AppId"] as! String
                    }
                    if dict.keys.contains("AppName") {
                        self.appName = dict["AppName"] as! String
                    }
                }
            }
            public var configMapId: Int64?

            public var createTime: Int64?

            public var data: [String: Any]?

            public var description_: String?

            public var name: String?

            public var namespaceId: String?

            public var relateApps: [ListNamespacedConfigMapsResponseBody.Data.ConfigMaps.RelateApps]?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configMapId != nil {
                    map["ConfigMapId"] = self.configMapId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.relateApps != nil {
                    var tmp : [Any] = []
                    for k in self.relateApps! {
                        tmp.append(k.toMap())
                    }
                    map["RelateApps"] = tmp
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigMapId") {
                    self.configMapId = dict["ConfigMapId"] as! Int64
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [String: Any]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NamespaceId") {
                    self.namespaceId = dict["NamespaceId"] as! String
                }
                if dict.keys.contains("RelateApps") {
                    self.relateApps = dict["RelateApps"] as! [ListNamespacedConfigMapsResponseBody.Data.ConfigMaps.RelateApps]
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var configMaps: [ListNamespacedConfigMapsResponseBody.Data.ConfigMaps]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configMaps != nil {
                var tmp : [Any] = []
                for k in self.configMaps! {
                    tmp.append(k.toMap())
                }
                map["ConfigMaps"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigMaps") {
                self.configMaps = dict["ConfigMaps"] as! [ListNamespacedConfigMapsResponseBody.Data.ConfigMaps]
            }
        }
    }
    public var code: String?

    public var data: ListNamespacedConfigMapsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListNamespacedConfigMapsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListNamespacedConfigMapsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespacedConfigMapsResponseBody?

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
            var model = ListNamespacedConfigMapsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublishedServicesRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class ListPublishedServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var group2Ip: String?

        public var groups: [String]?

        public var ips: [String]?

        public var name: String?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.group2Ip != nil {
                map["Group2Ip"] = self.group2Ip!
            }
            if self.groups != nil {
                map["Groups"] = self.groups!
            }
            if self.ips != nil {
                map["Ips"] = self.ips!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Group2Ip") {
                self.group2Ip = dict["Group2Ip"] as! String
            }
            if dict.keys.contains("Groups") {
                self.groups = dict["Groups"] as! [String]
            }
            if dict.keys.contains("Ips") {
                self.ips = dict["Ips"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListPublishedServicesResponseBody.Data]?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListPublishedServicesResponseBody.Data]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListPublishedServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishedServicesResponseBody?

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
            var model = ListPublishedServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIds: String?

    public var resourceType: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TagResources : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var nextToken: String?

        public var tagResources: [ListTagResourcesResponseBody.Data.TagResources]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.tagResources != nil {
                var tmp : [Any] = []
                for k in self.tagResources! {
                    tmp.append(k.toMap())
                }
                map["TagResources"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TagResources") {
                self.tagResources = dict["TagResources"] as! [ListTagResourcesResponseBody.Data.TagResources]
            }
        }
    }
    public var code: String?

    public var data: ListTagResourcesResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListTagResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenSaeServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenSaeServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenSaeServiceResponseBody?

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
            var model = OpenSaeServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryResourceStaticsRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class QueryResourceStaticsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RealTimeRes : Tea.TeaModel {
            public var cpu: Double?

            public var memory: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    self.cpu = dict["Cpu"] as! Double
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! Double
                }
            }
        }
        public class Summary : Tea.TeaModel {
            public var cpu: Double?

            public var memory: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    self.cpu = dict["Cpu"] as! Double
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! Double
                }
            }
        }
        public var realTimeRes: QueryResourceStaticsResponseBody.Data.RealTimeRes?

        public var summary: QueryResourceStaticsResponseBody.Data.Summary?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.realTimeRes?.validate()
            try self.summary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.realTimeRes != nil {
                map["RealTimeRes"] = self.realTimeRes?.toMap()
            }
            if self.summary != nil {
                map["Summary"] = self.summary?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RealTimeRes") {
                var model = QueryResourceStaticsResponseBody.Data.RealTimeRes()
                model.fromMap(dict["RealTimeRes"] as! [String: Any])
                self.realTimeRes = model
            }
            if dict.keys.contains("Summary") {
                var model = QueryResourceStaticsResponseBody.Data.Summary()
                model.fromMap(dict["Summary"] as! [String: Any])
                self.summary = model
            }
        }
    }
    public var code: String?

    public var data: QueryResourceStaticsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryResourceStaticsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class QueryResourceStaticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryResourceStaticsResponseBody?

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
            var model = QueryResourceStaticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReduceApplicationCapacityByInstanceIdsRequest : Tea.TeaModel {
    public var appId: String?

    public var instanceIds: String?

    public override init() {
        super.init()
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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
    }
}

public class ReduceApplicationCapacityByInstanceIdsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ReduceApplicationCapacityByInstanceIdsResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ReduceApplicationCapacityByInstanceIdsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class ReduceApplicationCapacityByInstanceIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReduceApplicationCapacityByInstanceIdsResponseBody?

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
            var model = ReduceApplicationCapacityByInstanceIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RescaleApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var autoEnableApplicationScalingRule: Bool?

    public var minReadyInstanceRatio: Int32?

    public var minReadyInstances: Int32?

    public var replicas: Int32?

    public override init() {
        super.init()
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
        if self.autoEnableApplicationScalingRule != nil {
            map["AutoEnableApplicationScalingRule"] = self.autoEnableApplicationScalingRule!
        }
        if self.minReadyInstanceRatio != nil {
            map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
        }
        if self.minReadyInstances != nil {
            map["MinReadyInstances"] = self.minReadyInstances!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AutoEnableApplicationScalingRule") {
            self.autoEnableApplicationScalingRule = dict["AutoEnableApplicationScalingRule"] as! Bool
        }
        if dict.keys.contains("MinReadyInstanceRatio") {
            self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
        }
        if dict.keys.contains("MinReadyInstances") {
            self.minReadyInstances = dict["MinReadyInstances"] as! Int32
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
        }
    }
}

public class RescaleApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: RescaleApplicationResponseBody.Data?

    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
            var model = RescaleApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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

public class RescaleApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RescaleApplicationResponseBody?

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
            var model = RescaleApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RescaleApplicationVerticallyRequest : Tea.TeaModel {
    public var appId: String?

    public var cpu: String?

    public var memory: String?

    public override init() {
        super.init()
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
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! String
        }
    }
}

public class RescaleApplicationVerticallyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: RescaleApplicationVerticallyResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RescaleApplicationVerticallyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class RescaleApplicationVerticallyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RescaleApplicationVerticallyResponseBody?

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
            var model = RescaleApplicationVerticallyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var minReadyInstanceRatio: Int32?

    public var minReadyInstances: Int32?

    public override init() {
        super.init()
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
        if self.minReadyInstanceRatio != nil {
            map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
        }
        if self.minReadyInstances != nil {
            map["MinReadyInstances"] = self.minReadyInstances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("MinReadyInstanceRatio") {
            self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
        }
        if dict.keys.contains("MinReadyInstances") {
            self.minReadyInstances = dict["MinReadyInstances"] as! Int32
        }
    }
}

public class RestartApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: RestartApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RestartApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class RestartApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartApplicationResponseBody?

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
            var model = RestartApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartInstancesRequest : Tea.TeaModel {
    public var appId: String?

    public var instanceIds: String?

    public override init() {
        super.init()
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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
    }
}

public class RestartInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: RestartInstancesResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RestartInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class RestartInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartInstancesResponseBody?

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
            var model = RestartInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RollbackApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var autoEnableApplicationScalingRule: String?

    public var batchWaitTime: Int32?

    public var minReadyInstanceRatio: Int32?

    public var minReadyInstances: Int32?

    public var updateStrategy: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.autoEnableApplicationScalingRule != nil {
            map["AutoEnableApplicationScalingRule"] = self.autoEnableApplicationScalingRule!
        }
        if self.batchWaitTime != nil {
            map["BatchWaitTime"] = self.batchWaitTime!
        }
        if self.minReadyInstanceRatio != nil {
            map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
        }
        if self.minReadyInstances != nil {
            map["MinReadyInstances"] = self.minReadyInstances!
        }
        if self.updateStrategy != nil {
            map["UpdateStrategy"] = self.updateStrategy!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AutoEnableApplicationScalingRule") {
            self.autoEnableApplicationScalingRule = dict["AutoEnableApplicationScalingRule"] as! String
        }
        if dict.keys.contains("BatchWaitTime") {
            self.batchWaitTime = dict["BatchWaitTime"] as! Int32
        }
        if dict.keys.contains("MinReadyInstanceRatio") {
            self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
        }
        if dict.keys.contains("MinReadyInstances") {
            self.minReadyInstances = dict["MinReadyInstances"] as! Int32
        }
        if dict.keys.contains("UpdateStrategy") {
            self.updateStrategy = dict["UpdateStrategy"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class RollbackApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public var isNeedApproval: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            if self.isNeedApproval != nil {
                map["IsNeedApproval"] = self.isNeedApproval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
            if dict.keys.contains("IsNeedApproval") {
                self.isNeedApproval = dict["IsNeedApproval"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: RollbackApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RollbackApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class RollbackApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackApplicationResponseBody?

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
            var model = RollbackApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class StartApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: StartApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = StartApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class StartApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartApplicationResponseBody?

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
            var model = StartApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class StopApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: StopApplicationResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = StopApplicationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class StopApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopApplicationResponseBody?

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
            var model = StopApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIds: String?

    public var resourceType: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindSlbRequest : Tea.TeaModel {
    public var appId: String?

    public var internet: Bool?

    public var intranet: Bool?

    public override init() {
        super.init()
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
        if self.internet != nil {
            map["Internet"] = self.internet!
        }
        if self.intranet != nil {
            map["Intranet"] = self.intranet!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Internet") {
            self.internet = dict["Internet"] as! Bool
        }
        if dict.keys.contains("Intranet") {
            self.intranet = dict["Intranet"] as! Bool
        }
    }
}

public class UnbindSlbResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeOrderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrderId != nil {
                map["ChangeOrderId"] = self.changeOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeOrderId") {
                self.changeOrderId = dict["ChangeOrderId"] as! String
            }
        }
    }
    public var code: String?

    public var data: UnbindSlbResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UnbindSlbResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UnbindSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindSlbResponseBody?

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
            var model = UnbindSlbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var deleteAll: Bool?

    public var regionId: String?

    public var resourceIds: String?

    public var resourceType: String?

    public var tagKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteAll != nil {
            map["DeleteAll"] = self.deleteAll!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteAll") {
            self.deleteAll = dict["DeleteAll"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeys = dict["TagKeys"] as! String
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppSecurityGroupRequest : Tea.TeaModel {
    public var appId: String?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
    }
}

public class UpdateAppSecurityGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateAppSecurityGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppSecurityGroupResponseBody?

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
            var model = UpdateAppSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationDescriptionRequest : Tea.TeaModel {
    public var appDescription: String?

    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDescription != nil {
            map["AppDescription"] = self.appDescription!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppDescription") {
            self.appDescription = dict["AppDescription"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class UpdateApplicationDescriptionResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateApplicationDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationDescriptionResponseBody?

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
            var model = UpdateApplicationDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationScalingRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var minReadyInstanceRatio: Int32?

    public var minReadyInstances: Int32?

    public var scalingRuleMetric: String?

    public var scalingRuleName: String?

    public var scalingRuleTimer: String?

    public override init() {
        super.init()
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
        if self.minReadyInstanceRatio != nil {
            map["MinReadyInstanceRatio"] = self.minReadyInstanceRatio!
        }
        if self.minReadyInstances != nil {
            map["MinReadyInstances"] = self.minReadyInstances!
        }
        if self.scalingRuleMetric != nil {
            map["ScalingRuleMetric"] = self.scalingRuleMetric!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        if self.scalingRuleTimer != nil {
            map["ScalingRuleTimer"] = self.scalingRuleTimer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("MinReadyInstanceRatio") {
            self.minReadyInstanceRatio = dict["MinReadyInstanceRatio"] as! Int32
        }
        if dict.keys.contains("MinReadyInstances") {
            self.minReadyInstances = dict["MinReadyInstances"] as! Int32
        }
        if dict.keys.contains("ScalingRuleMetric") {
            self.scalingRuleMetric = dict["ScalingRuleMetric"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
        if dict.keys.contains("ScalingRuleTimer") {
            self.scalingRuleTimer = dict["ScalingRuleTimer"] as! String
        }
    }
}

public class UpdateApplicationScalingRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Metric : Tea.TeaModel {
            public class Metrics : Tea.TeaModel {
                public var metricTargetAverageUtilization: Int32?

                public var metricType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.metricTargetAverageUtilization != nil {
                        map["MetricTargetAverageUtilization"] = self.metricTargetAverageUtilization!
                    }
                    if self.metricType != nil {
                        map["MetricType"] = self.metricType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MetricTargetAverageUtilization") {
                        self.metricTargetAverageUtilization = dict["MetricTargetAverageUtilization"] as! Int32
                    }
                    if dict.keys.contains("MetricType") {
                        self.metricType = dict["MetricType"] as! String
                    }
                }
            }
            public var maxReplicas: Int32?

            public var metrics: [UpdateApplicationScalingRuleResponseBody.Data.Metric.Metrics]?

            public var minReplicas: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxReplicas != nil {
                    map["MaxReplicas"] = self.maxReplicas!
                }
                if self.metrics != nil {
                    var tmp : [Any] = []
                    for k in self.metrics! {
                        tmp.append(k.toMap())
                    }
                    map["Metrics"] = tmp
                }
                if self.minReplicas != nil {
                    map["MinReplicas"] = self.minReplicas!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxReplicas") {
                    self.maxReplicas = dict["MaxReplicas"] as! Int32
                }
                if dict.keys.contains("Metrics") {
                    self.metrics = dict["Metrics"] as! [UpdateApplicationScalingRuleResponseBody.Data.Metric.Metrics]
                }
                if dict.keys.contains("MinReplicas") {
                    self.minReplicas = dict["MinReplicas"] as! Int32
                }
            }
        }
        public class Timer : Tea.TeaModel {
            public class Schedules : Tea.TeaModel {
                public var atTime: String?

                public var targetReplicas: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.atTime != nil {
                        map["AtTime"] = self.atTime!
                    }
                    if self.targetReplicas != nil {
                        map["TargetReplicas"] = self.targetReplicas!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AtTime") {
                        self.atTime = dict["AtTime"] as! String
                    }
                    if dict.keys.contains("TargetReplicas") {
                        self.targetReplicas = dict["TargetReplicas"] as! Int32
                    }
                }
            }
            public var beginDate: String?

            public var endDate: String?

            public var period: String?

            public var schedules: [UpdateApplicationScalingRuleResponseBody.Data.Timer.Schedules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginDate != nil {
                    map["BeginDate"] = self.beginDate!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.schedules != nil {
                    var tmp : [Any] = []
                    for k in self.schedules! {
                        tmp.append(k.toMap())
                    }
                    map["Schedules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginDate") {
                    self.beginDate = dict["BeginDate"] as! String
                }
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! String
                }
                if dict.keys.contains("Schedules") {
                    self.schedules = dict["Schedules"] as! [UpdateApplicationScalingRuleResponseBody.Data.Timer.Schedules]
                }
            }
        }
        public var appId: String?

        public var createTime: Int64?

        public var lastDisableTime: Int64?

        public var metric: UpdateApplicationScalingRuleResponseBody.Data.Metric?

        public var scaleRuleEnabled: Bool?

        public var scaleRuleName: String?

        public var scaleRuleType: String?

        public var timer: UpdateApplicationScalingRuleResponseBody.Data.Timer?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metric?.validate()
            try self.timer?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.lastDisableTime != nil {
                map["LastDisableTime"] = self.lastDisableTime!
            }
            if self.metric != nil {
                map["Metric"] = self.metric?.toMap()
            }
            if self.scaleRuleEnabled != nil {
                map["ScaleRuleEnabled"] = self.scaleRuleEnabled!
            }
            if self.scaleRuleName != nil {
                map["ScaleRuleName"] = self.scaleRuleName!
            }
            if self.scaleRuleType != nil {
                map["ScaleRuleType"] = self.scaleRuleType!
            }
            if self.timer != nil {
                map["Timer"] = self.timer?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("LastDisableTime") {
                self.lastDisableTime = dict["LastDisableTime"] as! Int64
            }
            if dict.keys.contains("Metric") {
                var model = UpdateApplicationScalingRuleResponseBody.Data.Metric()
                model.fromMap(dict["Metric"] as! [String: Any])
                self.metric = model
            }
            if dict.keys.contains("ScaleRuleEnabled") {
                self.scaleRuleEnabled = dict["ScaleRuleEnabled"] as! Bool
            }
            if dict.keys.contains("ScaleRuleName") {
                self.scaleRuleName = dict["ScaleRuleName"] as! String
            }
            if dict.keys.contains("ScaleRuleType") {
                self.scaleRuleType = dict["ScaleRuleType"] as! String
            }
            if dict.keys.contains("Timer") {
                var model = UpdateApplicationScalingRuleResponseBody.Data.Timer()
                model.fromMap(dict["Timer"] as! [String: Any])
                self.timer = model
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var data: UpdateApplicationScalingRuleResponseBody.Data?

    public var requestId: String?

    public var traceId: String?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = UpdateApplicationScalingRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateApplicationScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationScalingRuleResponseBody?

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
            var model = UpdateApplicationScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationVswitchesRequest : Tea.TeaModel {
    public var appId: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class UpdateApplicationVswitchesResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateApplicationVswitchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationVswitchesResponseBody?

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
            var model = UpdateApplicationVswitchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConfigMapRequest : Tea.TeaModel {
    public var configMapId: Int64?

    public var data: String?

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
        if self.configMapId != nil {
            map["ConfigMapId"] = self.configMapId!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigMapId") {
            self.configMapId = dict["ConfigMapId"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class UpdateConfigMapResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configMapId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configMapId != nil {
                map["ConfigMapId"] = self.configMapId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigMapId") {
                self.configMapId = dict["ConfigMapId"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateConfigMapResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateConfigMapResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateConfigMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigMapResponseBody?

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
            var model = UpdateConfigMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGreyTagRouteRequest : Tea.TeaModel {
    public var description_: String?

    public var dubboRules: String?

    public var greyTagRouteId: Int64?

    public var scRules: String?

    public override init() {
        super.init()
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
        if self.dubboRules != nil {
            map["DubboRules"] = self.dubboRules!
        }
        if self.greyTagRouteId != nil {
            map["GreyTagRouteId"] = self.greyTagRouteId!
        }
        if self.scRules != nil {
            map["ScRules"] = self.scRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DubboRules") {
            self.dubboRules = dict["DubboRules"] as! String
        }
        if dict.keys.contains("GreyTagRouteId") {
            self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
        }
        if dict.keys.contains("ScRules") {
            self.scRules = dict["ScRules"] as! String
        }
    }
}

public class UpdateGreyTagRouteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var greyTagRouteId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.greyTagRouteId != nil {
                map["GreyTagRouteId"] = self.greyTagRouteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GreyTagRouteId") {
                self.greyTagRouteId = dict["GreyTagRouteId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: UpdateGreyTagRouteResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateGreyTagRouteResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateGreyTagRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGreyTagRouteResponseBody?

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
            var model = UpdateGreyTagRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIngressRequest : Tea.TeaModel {
    public var certId: String?

    public var defaultRule: String?

    public var description_: String?

    public var ingressId: Int64?

    public var listenerPort: String?

    public var listenerProtocol: String?

    public var loadBalanceType: String?

    public var rules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        if self.defaultRule != nil {
            map["DefaultRule"] = self.defaultRule!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ingressId != nil {
            map["IngressId"] = self.ingressId!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalanceType != nil {
            map["LoadBalanceType"] = self.loadBalanceType!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertId") {
            self.certId = dict["CertId"] as! String
        }
        if dict.keys.contains("DefaultRule") {
            self.defaultRule = dict["DefaultRule"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IngressId") {
            self.ingressId = dict["IngressId"] as! Int64
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! String
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalanceType") {
            self.loadBalanceType = dict["LoadBalanceType"] as! String
        }
        if dict.keys.contains("Rules") {
            self.rules = dict["Rules"] as! String
        }
    }
}

public class UpdateIngressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ingressId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ingressId != nil {
                map["IngressId"] = self.ingressId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IngressId") {
                self.ingressId = dict["IngressId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: UpdateIngressResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateIngressResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateIngressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIngressResponseBody?

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
            var model = UpdateIngressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNamespaceRequest : Tea.TeaModel {
    public var namespaceDescription: String?

    public var namespaceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceDescription != nil {
            map["NamespaceDescription"] = self.namespaceDescription!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceDescription") {
            self.namespaceDescription = dict["NamespaceDescription"] as! String
        }
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("NamespaceName") {
            self.namespaceName = dict["NamespaceName"] as! String
        }
    }
}

public class UpdateNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var namespaceDescription: String?

        public var namespaceId: String?

        public var namespaceName: String?

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
            if self.namespaceDescription != nil {
                map["NamespaceDescription"] = self.namespaceDescription!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NamespaceDescription") {
                self.namespaceDescription = dict["NamespaceDescription"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateNamespaceResponseBody.Data?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateNamespaceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNamespaceResponseBody?

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
            var model = UpdateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNamespaceVpcRequest : Tea.TeaModel {
    public var namespaceId: String?

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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NamespaceId") {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class UpdateNamespaceVpcResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceId: String?

    public override init() {
        super.init()
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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
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
        if dict.keys.contains("TraceId") {
            self.traceId = dict["TraceId"] as! String
        }
    }
}

public class UpdateNamespaceVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNamespaceVpcResponseBody?

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
            var model = UpdateNamespaceVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
