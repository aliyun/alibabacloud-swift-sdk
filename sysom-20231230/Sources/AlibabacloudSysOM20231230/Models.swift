import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthDiagnosisRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instance: String?

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
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
        }
    }
    public var autoCreateRole: Bool?

    public var autoInstallAgent: Bool?

    public var instances: [AuthDiagnosisRequest.Instances]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRole != nil {
            map["autoCreateRole"] = self.autoCreateRole!
        }
        if self.autoInstallAgent != nil {
            map["autoInstallAgent"] = self.autoInstallAgent!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoCreateRole"] as? Bool {
            self.autoCreateRole = value
        }
        if let value = dict["autoInstallAgent"] as? Bool {
            self.autoInstallAgent = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [AuthDiagnosisRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = AuthDiagnosisRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
    }
}

public class AuthDiagnosisResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
    }
}

public class AuthDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthDiagnosisResponseBody?

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
            var model = AuthDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckInstanceSupportRequest : Tea.TeaModel {
    public var instances: [String]?

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
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instances"] as? [String] {
            self.instances = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
    }
}

public class CheckInstanceSupportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instance: String?

        public var reason: String?

        public var support: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.reason != nil {
                map["reason"] = self.reason!
            }
            if self.support != nil {
                map["support"] = self.support!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["reason"] as? String {
                self.reason = value
            }
            if let value = dict["support"] as? Bool {
                self.support = value
            }
        }
    }
    public var code: String?

    public var data: [CheckInstanceSupportResponseBody.Data]?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [CheckInstanceSupportResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = CheckInstanceSupportResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckInstanceSupportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckInstanceSupportResponseBody?

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
            var model = CheckInstanceSupportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAlertStrategyRequest : Tea.TeaModel {
    public class Strategy : Tea.TeaModel {
        public var clusters: [String]?

        public var items: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusters != nil {
                map["clusters"] = self.clusters!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["clusters"] as? [String] {
                self.clusters = value
            }
            if let value = dict["items"] as? [String] {
                self.items = value
            }
        }
    }
    public var enabled: Bool?

    public var k8sLabel: Bool?

    public var name: String?

    public var strategy: CreateAlertStrategyRequest.Strategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.strategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.k8sLabel != nil {
            map["k8sLabel"] = self.k8sLabel!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.strategy != nil {
            map["strategy"] = self.strategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["k8sLabel"] as? Bool {
            self.k8sLabel = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["strategy"] as? [String: Any?] {
            var model = CreateAlertStrategyRequest.Strategy()
            model.fromMap(value)
            self.strategy = model
        }
    }
}

public class CreateAlertStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAlertStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAlertStrategyResponseBody?

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
            var model = CreateAlertStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAlertStrategyRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
    }
}

public class DeleteAlertStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAlertStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlertStrategyResponseBody?

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
            var model = DeleteAlertStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMetricListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instance: String?

    public var metricName: String?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.metricName != nil {
            map["metricName"] = self.metricName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["metricName"] as? String {
            self.metricName = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeMetricListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var labels: String?

        public var metricName: String?

        public var values: [[String]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.labels != nil {
                map["labels"] = self.labels!
            }
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["labels"] as? String {
                self.labels = value
            }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["values"] as? [[String]] {
                self.values = value
            }
        }
    }
    public var code: String?

    public var data: [DescribeMetricListResponseBody.Data]?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [DescribeMetricListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeMetricListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMetricListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetricListResponseBody?

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
            var model = DescribeMetricListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCopilotResponseRequest : Tea.TeaModel {
    public var llmParamString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.llmParamString != nil {
            map["llmParamString"] = self.llmParamString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["llmParamString"] as? String {
            self.llmParamString = value
        }
    }
}

public class GenerateCopilotResponseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var massage: String?

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
        if self.massage != nil {
            map["massage"] = self.massage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["massage"] as? String {
            self.massage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateCopilotResponseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCopilotResponseResponseBody?

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
            var model = GenerateCopilotResponseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCopilotStreamResponseRequest : Tea.TeaModel {
    public var llmParamString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.llmParamString != nil {
            map["llmParamString"] = self.llmParamString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["llmParamString"] as? String {
            self.llmParamString = value
        }
    }
}

public class GenerateCopilotStreamResponseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateCopilotStreamResponseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCopilotStreamResponseResponseBody?

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
            var model = GenerateCopilotStreamResponseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAIQueryResultRequest : Tea.TeaModel {
    public var analysisId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisId != nil {
            map["analysisId"] = self.analysisId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisId"] as? String {
            self.analysisId = value
        }
    }
}

public class GetAIQueryResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAIQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAIQueryResultResponseBody?

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
            var model = GetAIQueryResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAbnormalEventsCountRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var level: String?

    public var namespace: String?

    public var pod: String?

    public var showPod: Int32?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.pod != nil {
            map["pod"] = self.pod!
        }
        if self.showPod != nil {
            map["showPod"] = self.showPod!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["level"] as? String {
            self.level = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["pod"] as? String {
            self.pod = value
        }
        if let value = dict["showPod"] as? Int32 {
            self.showPod = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class GetAbnormalEventsCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var eventList: [String]?

        public var type: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventList != nil {
                map["eventList"] = self.eventList!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["eventList"] as? [String] {
                self.eventList = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? Int64 {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: [GetAbnormalEventsCountResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetAbnormalEventsCountResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetAbnormalEventsCountResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class GetAbnormalEventsCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAbnormalEventsCountResponseBody?

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
            var model = GetAbnormalEventsCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentRequest : Tea.TeaModel {
    public var agentId: String?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
    }
}

public class GetAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Versions : Tea.TeaModel {
            public var createdAt: String?

            public var installScript: String?

            public var uninstallScript: String?

            public var updatedAt: String?

            public var upgradeScript: String?

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
                if self.createdAt != nil {
                    map["created_at"] = self.createdAt!
                }
                if self.installScript != nil {
                    map["install_script"] = self.installScript!
                }
                if self.uninstallScript != nil {
                    map["uninstall_script"] = self.uninstallScript!
                }
                if self.updatedAt != nil {
                    map["updated_at"] = self.updatedAt!
                }
                if self.upgradeScript != nil {
                    map["upgrade_script"] = self.upgradeScript!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["created_at"] as? String {
                    self.createdAt = value
                }
                if let value = dict["install_script"] as? String {
                    self.installScript = value
                }
                if let value = dict["uninstall_script"] as? String {
                    self.uninstallScript = value
                }
                if let value = dict["updated_at"] as? String {
                    self.updatedAt = value
                }
                if let value = dict["upgrade_script"] as? String {
                    self.upgradeScript = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public var createdAt: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var supportArch: String?

        public var type: String?

        public var updatedAt: String?

        public var versions: [GetAgentResponseBody.Data.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.supportArch != nil {
                map["support_arch"] = self.supportArch!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["support_arch"] as? String {
                self.supportArch = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
            if let value = dict["versions"] as? [Any?] {
                var tmp : [GetAgentResponseBody.Data.Versions] = []
                for v in value {
                    if v != nil {
                        var model = GetAgentResponseBody.Data.Versions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: GetAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class GetAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentResponseBody?

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
            var model = GetAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentTaskRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task_id"] as? String {
            self.taskId = value
        }
    }
}

public class GetAgentTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Jobs : Tea.TeaModel {
            public var error: String?

            public var instance: String?

            public var params: Any?

            public var region: String?

            public var result: String?

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
                if self.error != nil {
                    map["error"] = self.error!
                }
                if self.instance != nil {
                    map["instance"] = self.instance!
                }
                if self.params != nil {
                    map["params"] = self.params!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.result != nil {
                    map["result"] = self.result!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["error"] as? String {
                    self.error = value
                }
                if let value = dict["instance"] as? String {
                    self.instance = value
                }
                if let value = dict["params"] as? Any {
                    self.params = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["result"] as? String {
                    self.result = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var jobs: [GetAgentTaskResponseBody.Data.Jobs]?

        public var status: String?

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
            if self.jobs != nil {
                var tmp : [Any] = []
                for k in self.jobs! {
                    tmp.append(k.toMap())
                }
                map["jobs"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["jobs"] as? [Any?] {
                var tmp : [GetAgentTaskResponseBody.Data.Jobs] = []
                for v in value {
                    if v != nil {
                        var model = GetAgentTaskResponseBody.Data.Jobs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobs = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: GetAgentTaskResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAgentTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class GetAgentTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentTaskResponseBody?

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
            var model = GetAgentTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlertStrategyRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class GetAlertStrategyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Strategy : Tea.TeaModel {
            public var clusters: [String]?

            public var items: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusters != nil {
                    map["clusters"] = self.clusters!
                }
                if self.items != nil {
                    map["items"] = self.items!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clusters"] as? [String] {
                    self.clusters = value
                }
                if let value = dict["items"] as? Any {
                    self.items = value
                }
            }
        }
        public var createdAt: Int64?

        public var enabled: Bool?

        public var id: Int64?

        public var k8sLabel: Bool?

        public var name: String?

        public var strategy: GetAlertStrategyResponseBody.Data.Strategy?

        public var uid: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.strategy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.k8sLabel != nil {
                map["k8sLabel"] = self.k8sLabel!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.strategy != nil {
                map["strategy"] = self.strategy?.toMap()
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["k8sLabel"] as? Bool {
                self.k8sLabel = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["strategy"] as? [String: Any?] {
                var model = GetAlertStrategyResponseBody.Data.Strategy()
                model.fromMap(value)
                self.strategy = model
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var code: String?

    public var data: GetAlertStrategyResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAlertStrategyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAlertStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlertStrategyResponseBody?

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
            var model = GetAlertStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCopilotHistoryRequest : Tea.TeaModel {
    public var count: Int64?

    public override init() {
        super.init()
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
            map["count"] = self.count!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
    }
}

public class GetCopilotHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var time: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["time"] as? String {
                self.time = value
            }
            if let value = dict["user"] as? String {
                self.user = value
            }
        }
    }
    public var code: String?

    public var data: [GetCopilotHistoryResponseBody.Data]?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetCopilotHistoryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetCopilotHistoryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCopilotHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCopilotHistoryResponseBody?

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
            var model = GetCopilotHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDiagnosisResultRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task_id"] as? String {
            self.taskId = value
        }
    }
}

public class GetDiagnosisResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int32?

        public var command: Any?

        public var createdAt: String?

        public var errMsg: String?

        public var params: Any?

        public var result: Any?

        public var serviceName: String?

        public var status: String?

        public var taskId: String?

        public var updatedAt: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.command != nil {
                map["command"] = self.command!
            }
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.errMsg != nil {
                map["err_msg"] = self.errMsg!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.serviceName != nil {
                map["service_name"] = self.serviceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? Int32 {
                self.code = value
            }
            if let value = dict["command"] as? Any {
                self.command = value
            }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["err_msg"] as? String {
                self.errMsg = value
            }
            if let value = dict["params"] as? Any {
                self.params = value
            }
            if let value = dict["result"] as? Any {
                self.result = value
            }
            if let value = dict["service_name"] as? String {
                self.serviceName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: GetDiagnosisResultResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDiagnosisResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDiagnosisResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHealthPercentageRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class GetHealthPercentageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var type: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? Int64 {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: [GetHealthPercentageResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetHealthPercentageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetHealthPercentageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class GetHealthPercentageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHealthPercentageResponseBody?

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
            var model = GetHealthPercentageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHostCountRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class GetHostCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var time: Int64?

        public var value: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["time"] as? Int64 {
                self.time = value
            }
            if let value = dict["value"] as? Int32 {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: [GetHostCountResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetHostCountResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetHostCountResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class GetHostCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostCountResponseBody?

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
            var model = GetHostCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotSpotUniqListRequest : Tea.TeaModel {
    public var begEnd: Int64?

    public var begStart: Int64?

    public var instance: String?

    public var pid: Int64?

    public var table: String?

    public var uniq: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pid != nil {
            map["pid"] = self.pid!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        if self.uniq != nil {
            map["uniq"] = self.uniq!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["beg_end"] as? Int64 {
            self.begEnd = value
        }
        if let value = dict["beg_start"] as? Int64 {
            self.begStart = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pid"] as? Int64 {
            self.pid = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
        if let value = dict["uniq"] as? String {
            self.uniq = value
        }
    }
}

public class GetHotSpotUniqListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var columns: [String]?

        public var values: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columns != nil {
                map["columns"] = self.columns!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["columns"] as? [String] {
                self.columns = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public var code: String?

    public var data: GetHotSpotUniqListResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHotSpotUniqListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetHotSpotUniqListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotSpotUniqListResponseBody?

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
            var model = GetHotSpotUniqListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotspotAnalysisRequest : Tea.TeaModel {
    public var appType: String?

    public var begEnd: Int64?

    public var begStart: Int64?

    public var instance: String?

    public var pid: Int64?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["appType"] = self.appType!
        }
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pid != nil {
            map["pid"] = self.pid!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appType"] as? String {
            self.appType = value
        }
        if let value = dict["beg_end"] as? Int64 {
            self.begEnd = value
        }
        if let value = dict["beg_start"] as? Int64 {
            self.begStart = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pid"] as? Int64 {
            self.pid = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class GetHotspotAnalysisResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetHotspotAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotAnalysisResponseBody?

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
            var model = GetHotspotAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotspotCompareRequest : Tea.TeaModel {
    public var beg1End: Int64?

    public var beg1Start: Int64?

    public var beg2End: Int64?

    public var beg2Start: Int64?

    public var hotType: String?

    public var instance1: String?

    public var instance2: String?

    public var pid1: Int64?

    public var pid2: Int64?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beg1End != nil {
            map["beg1_end"] = self.beg1End!
        }
        if self.beg1Start != nil {
            map["beg1_start"] = self.beg1Start!
        }
        if self.beg2End != nil {
            map["beg2_end"] = self.beg2End!
        }
        if self.beg2Start != nil {
            map["beg2_start"] = self.beg2Start!
        }
        if self.hotType != nil {
            map["hot_type"] = self.hotType!
        }
        if self.instance1 != nil {
            map["instance1"] = self.instance1!
        }
        if self.instance2 != nil {
            map["instance2"] = self.instance2!
        }
        if self.pid1 != nil {
            map["pid1"] = self.pid1!
        }
        if self.pid2 != nil {
            map["pid2"] = self.pid2!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["beg1_end"] as? Int64 {
            self.beg1End = value
        }
        if let value = dict["beg1_start"] as? Int64 {
            self.beg1Start = value
        }
        if let value = dict["beg2_end"] as? Int64 {
            self.beg2End = value
        }
        if let value = dict["beg2_start"] as? Int64 {
            self.beg2Start = value
        }
        if let value = dict["hot_type"] as? String {
            self.hotType = value
        }
        if let value = dict["instance1"] as? String {
            self.instance1 = value
        }
        if let value = dict["instance2"] as? String {
            self.instance2 = value
        }
        if let value = dict["pid1"] as? Int64 {
            self.pid1 = value
        }
        if let value = dict["pid2"] as? Int64 {
            self.pid2 = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class GetHotspotCompareResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Flame : Tea.TeaModel {
            public var columns: [String]?

            public var values: [[String]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columns != nil {
                    map["columns"] = self.columns!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["columns"] as? [String] {
                    self.columns = value
                }
                if let value = dict["values"] as? [[String]] {
                    self.values = value
                }
            }
        }
        public class SeriesInstance1 : Tea.TeaModel {
            public var columns: [String]?

            public var values: [[String]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columns != nil {
                    map["columns"] = self.columns!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["columns"] as? [String] {
                    self.columns = value
                }
                if let value = dict["values"] as? [[String]] {
                    self.values = value
                }
            }
        }
        public class SeriesInstance2 : Tea.TeaModel {
            public var columns: [String]?

            public var values: [[String]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columns != nil {
                    map["columns"] = self.columns!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["columns"] as? [String] {
                    self.columns = value
                }
                if let value = dict["values"] as? [[String]] {
                    self.values = value
                }
            }
        }
        public var flame: GetHotspotCompareResponseBody.Data.Flame?

        public var seriesInstance1: GetHotspotCompareResponseBody.Data.SeriesInstance1?

        public var seriesInstance2: GetHotspotCompareResponseBody.Data.SeriesInstance2?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.flame?.validate()
            try self.seriesInstance1?.validate()
            try self.seriesInstance2?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flame != nil {
                map["flame"] = self.flame?.toMap()
            }
            if self.seriesInstance1 != nil {
                map["series_instance1"] = self.seriesInstance1?.toMap()
            }
            if self.seriesInstance2 != nil {
                map["series_instance2"] = self.seriesInstance2?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["flame"] as? [String: Any?] {
                var model = GetHotspotCompareResponseBody.Data.Flame()
                model.fromMap(value)
                self.flame = model
            }
            if let value = dict["series_instance1"] as? [String: Any?] {
                var model = GetHotspotCompareResponseBody.Data.SeriesInstance1()
                model.fromMap(value)
                self.seriesInstance1 = model
            }
            if let value = dict["series_instance2"] as? [String: Any?] {
                var model = GetHotspotCompareResponseBody.Data.SeriesInstance2()
                model.fromMap(value)
                self.seriesInstance2 = model
            }
        }
    }
    public var code: String?

    public var data: GetHotspotCompareResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHotspotCompareResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetHotspotCompareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotCompareResponseBody?

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
            var model = GetHotspotCompareResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotspotInstanceListRequest : Tea.TeaModel {
    public var begEnd: Int64?

    public var begStart: Int64?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["beg_end"] as? Int64 {
            self.begEnd = value
        }
        if let value = dict["beg_start"] as? Int64 {
            self.begStart = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class GetHotspotInstanceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var columns: [String]?

        public var values: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columns != nil {
                map["columns"] = self.columns!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["columns"] as? [String] {
                self.columns = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public var code: String?

    public var data: GetHotspotInstanceListResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHotspotInstanceListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHotspotInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotInstanceListResponseBody?

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
            var model = GetHotspotInstanceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotspotPidListRequest : Tea.TeaModel {
    public var begEnd: Int64?

    public var begStart: Int64?

    public var instance: String?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["beg_end"] as? Int64 {
            self.begEnd = value
        }
        if let value = dict["beg_start"] as? Int64 {
            self.begStart = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class GetHotspotPidListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var columns: [String]?

        public var values: [[String]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columns != nil {
                map["columns"] = self.columns!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["columns"] as? [String] {
                self.columns = value
            }
            if let value = dict["values"] as? [[String]] {
                self.values = value
            }
        }
    }
    public var code: String?

    public var data: GetHotspotPidListResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHotspotPidListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHotspotPidListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotPidListResponseBody?

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
            var model = GetHotspotPidListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotspotTrackingRequest : Tea.TeaModel {
    public var begEnd: Int64?

    public var begStart: Int64?

    public var hotType: String?

    public var instance: String?

    public var pid: Int64?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.begEnd != nil {
            map["beg_end"] = self.begEnd!
        }
        if self.begStart != nil {
            map["beg_start"] = self.begStart!
        }
        if self.hotType != nil {
            map["hot_type"] = self.hotType!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pid != nil {
            map["pid"] = self.pid!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["beg_end"] as? Int64 {
            self.begEnd = value
        }
        if let value = dict["beg_start"] as? Int64 {
            self.begStart = value
        }
        if let value = dict["hot_type"] as? String {
            self.hotType = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pid"] as? Int64 {
            self.pid = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class GetHotspotTrackingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Flame : Tea.TeaModel {
            public var columns: [String]?

            public var values: [[String]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columns != nil {
                    map["columns"] = self.columns!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["columns"] as? [String] {
                    self.columns = value
                }
                if let value = dict["values"] as? [[String]] {
                    self.values = value
                }
            }
        }
        public class Series : Tea.TeaModel {
            public var columns: [String]?

            public var values: [[String]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columns != nil {
                    map["columns"] = self.columns!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["columns"] as? [String] {
                    self.columns = value
                }
                if let value = dict["values"] as? [[String]] {
                    self.values = value
                }
            }
        }
        public var flame: GetHotspotTrackingResponseBody.Data.Flame?

        public var series: GetHotspotTrackingResponseBody.Data.Series?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.flame?.validate()
            try self.series?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flame != nil {
                map["flame"] = self.flame?.toMap()
            }
            if self.series != nil {
                map["series"] = self.series?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["flame"] as? [String: Any?] {
                var model = GetHotspotTrackingResponseBody.Data.Flame()
                model.fromMap(value)
                self.flame = model
            }
            if let value = dict["series"] as? [String: Any?] {
                var model = GetHotspotTrackingResponseBody.Data.Series()
                model.fromMap(value)
                self.series = model
            }
        }
    }
    public var code: String?

    public var data: GetHotspotTrackingResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHotspotTrackingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHotspotTrackingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotspotTrackingResponseBody?

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
            var model = GetHotspotTrackingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstantScoreRequest : Tea.TeaModel {
    public var cluster: String?

    public var instance: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
    }
}

public class GetInstantScoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var error: Double?

        public var latency: Double?

        public var load: Double?

        public var saturation: Double?

        public var total: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.error != nil {
                map["error"] = self.error!
            }
            if self.latency != nil {
                map["latency"] = self.latency!
            }
            if self.load != nil {
                map["load"] = self.load!
            }
            if self.saturation != nil {
                map["saturation"] = self.saturation!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["error"] as? Double {
                self.error = value
            }
            if let value = dict["latency"] as? Double {
                self.latency = value
            }
            if let value = dict["load"] as? Double {
                self.load = value
            }
            if let value = dict["saturation"] as? Double {
                self.saturation = value
            }
            if let value = dict["total"] as? Double {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: GetInstantScoreResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInstantScoreResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInstantScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstantScoreResponseBody?

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
            var model = GetInstantScoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetListRecordRequest : Tea.TeaModel {
    public var current: Int64?

    public var pageSize: Int64?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
    }
}

public class GetListRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysisId: String?

        public var analysisTime: String?

        public var arguments: String?

        public var failedLog: String?

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
            if self.analysisId != nil {
                map["analysisId"] = self.analysisId!
            }
            if self.analysisTime != nil {
                map["analysisTime"] = self.analysisTime!
            }
            if self.arguments != nil {
                map["arguments"] = self.arguments!
            }
            if self.failedLog != nil {
                map["failedLog"] = self.failedLog!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysisId"] as? String {
                self.analysisId = value
            }
            if let value = dict["analysisTime"] as? String {
                self.analysisTime = value
            }
            if let value = dict["arguments"] as? String {
                self.arguments = value
            }
            if let value = dict["failedLog"] as? String {
                self.failedLog = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [GetListRecordResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetListRecordResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetListRecordResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class GetListRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetListRecordResponseBody?

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
            var model = GetListRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProblemPercentageRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class GetProblemPercentageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var type: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? Int64 {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: [GetProblemPercentageResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetProblemPercentageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetProblemPercentageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class GetProblemPercentageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProblemPercentageResponseBody?

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
            var model = GetProblemPercentageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRangeScoreRequest : Tea.TeaModel {
    public var cluster: String?

    public var end: Double?

    public var instance: String?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class GetRangeScoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var time: Int64?

        public var type: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["time"] as? Int64 {
                self.time = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["value"] as? Int64 {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: [GetRangeScoreResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Double?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetRangeScoreResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetRangeScoreResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Double {
            self.total = value
        }
    }
}

public class GetRangeScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRangeScoreResponseBody?

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
            var model = GetRangeScoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourcesRequest : Tea.TeaModel {
    public var cluster: String?

    public var instance: String?

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
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class GetResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var total: Double?

        public var unit: String?

        public var usage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.total != nil {
                map["total"] = self.total!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            if self.usage != nil {
                map["usage"] = self.usage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["total"] as? Double {
                self.total = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
            }
            if let value = dict["usage"] as? Double {
                self.usage = value
            }
        }
    }
    public var code: String?

    public var data: GetResourcesResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetResourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
    }
}

public class GetResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcesResponseBody?

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
            var model = GetResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceFuncStatusRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public var functionName: String?

        public var instance: String?

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
            if self.functionName != nil {
                map["function_name"] = self.functionName!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["function_name"] as? String {
                self.functionName = value
            }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
        }
    }
    public var channel: String?

    public var params: GetServiceFuncStatusRequest.Params?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.params?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.params != nil {
            map["params"] = self.params?.toMap()
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["params"] as? [String: Any?] {
            var model = GetServiceFuncStatusRequest.Params()
            model.fromMap(value)
            self.params = model
        }
        if let value = dict["service_name"] as? String {
            self.serviceName = value
        }
    }
}

public class GetServiceFuncStatusShrinkRequest : Tea.TeaModel {
    public var channel: String?

    public var paramsShrink: String?

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
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.paramsShrink != nil {
            map["params"] = self.paramsShrink!
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["params"] as? String {
            self.paramsShrink = value
        }
        if let value = dict["service_name"] as? String {
            self.serviceName = value
        }
    }
}

public class GetServiceFuncStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Args : Tea.TeaModel {
            public var addCmd: String?

            public var cpu: String?

            public var javaStorePath: String?

            public var locks: String?

            public var loop: Int32?

            public var mem: String?

            public var systemProfiling: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addCmd != nil {
                    map["add_cmd"] = self.addCmd!
                }
                if self.cpu != nil {
                    map["cpu"] = self.cpu!
                }
                if self.javaStorePath != nil {
                    map["java_store_path"] = self.javaStorePath!
                }
                if self.locks != nil {
                    map["locks"] = self.locks!
                }
                if self.loop != nil {
                    map["loop"] = self.loop!
                }
                if self.mem != nil {
                    map["mem"] = self.mem!
                }
                if self.systemProfiling != nil {
                    map["system_profiling"] = self.systemProfiling!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["add_cmd"] as? String {
                    self.addCmd = value
                }
                if let value = dict["cpu"] as? String {
                    self.cpu = value
                }
                if let value = dict["java_store_path"] as? String {
                    self.javaStorePath = value
                }
                if let value = dict["locks"] as? String {
                    self.locks = value
                }
                if let value = dict["loop"] as? Int32 {
                    self.loop = value
                }
                if let value = dict["mem"] as? String {
                    self.mem = value
                }
                if let value = dict["system_profiling"] as? String {
                    self.systemProfiling = value
                }
            }
        }
        public var args: GetServiceFuncStatusResponseBody.Data.Args?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.args?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.args != nil {
                map["args"] = self.args?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["args"] as? [String: Any?] {
                var model = GetServiceFuncStatusResponseBody.Data.Args()
                model.fromMap(value)
                self.args = model
            }
        }
    }
    public var code: String?

    public var data: GetServiceFuncStatusResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetServiceFuncStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetServiceFuncStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceFuncStatusResponseBody?

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
            var model = GetServiceFuncStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitialSysomRequest : Tea.TeaModel {
    public var checkOnly: Bool?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkOnly != nil {
            map["check_only"] = self.checkOnly!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["check_only"] as? Bool {
            self.checkOnly = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class InitialSysomResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var roleExist: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roleExist != nil {
                map["role_exist"] = self.roleExist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["role_exist"] as? Bool {
                self.roleExist = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: InitialSysomResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = InitialSysomResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class InitialSysomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitialSysomResponseBody?

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
            var model = InitialSysomResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallAgentRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instance: String?

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
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
        }
    }
    public var agentId: String?

    public var agentVersion: String?

    public var installType: String?

    public var instances: [InstallAgentRequest.Instances]?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.installType != nil {
            map["install_type"] = self.installType!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["agent_version"] as? String {
            self.agentVersion = value
        }
        if let value = dict["install_type"] as? String {
            self.installType = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [InstallAgentRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = InstallAgentRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
    }
}

public class InstallAgentResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: InstallAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = InstallAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class InstallAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallAgentResponseBody?

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
            var model = InstallAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallAgentForClusterRequest : Tea.TeaModel {
    public var agentId: String?

    public var agentVersion: String?

    public var clusterId: String?

    public var configId: String?

    public var grayscaleConfig: String?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.configId != nil {
            map["config_id"] = self.configId!
        }
        if self.grayscaleConfig != nil {
            map["grayscale_config"] = self.grayscaleConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["agent_version"] as? String {
            self.agentVersion = value
        }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
        if let value = dict["config_id"] as? String {
            self.configId = value
        }
        if let value = dict["grayscale_config"] as? String {
            self.grayscaleConfig = value
        }
    }
}

public class InstallAgentForClusterResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: InstallAgentForClusterResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = InstallAgentForClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class InstallAgentForClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallAgentForClusterResponseBody?

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
            var model = InstallAgentForClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InvokeAnomalyDiagnosisRequest : Tea.TeaModel {
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
        if self.uuid != nil {
            map["uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["uuid"] as? String {
            self.uuid = value
        }
    }
}

public class InvokeAnomalyDiagnosisResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class InvokeAnomalyDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeAnomalyDiagnosisResponseBody?

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
            var model = InvokeAnomalyDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InvokeDiagnosisRequest : Tea.TeaModel {
    public var channel: String?

    public var params: String?

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
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["service_name"] as? String {
            self.serviceName = value
        }
    }
}

public class InvokeDiagnosisResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: InvokeDiagnosisResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = InvokeDiagnosisResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
    }
}

public class InvokeDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeDiagnosisResponseBody?

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
            var model = InvokeDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAbnormalyEventsRequest : Tea.TeaModel {
    public var cluster: String?

    public var current: Int32?

    public var end: Double?

    public var event: String?

    public var instance: String?

    public var level: String?

    public var namespace: String?

    public var pageSize: Int32?

    public var pod: String?

    public var showPod: Int32?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.event != nil {
            map["event"] = self.event!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pod != nil {
            map["pod"] = self.pod!
        }
        if self.showPod != nil {
            map["showPod"] = self.showPod!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["current"] as? Int32 {
            self.current = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["event"] as? String {
            self.event = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["level"] as? String {
            self.level = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["pod"] as? String {
            self.pod = value
        }
        if let value = dict["showPod"] as? Int32 {
            self.showPod = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class ListAbnormalyEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Opts : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var status: String?

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
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["status"] as? String {
                        self.status = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public var label: String?

            public var result: ListAbnormalyEventsResponseBody.Data.Opts.Result?

            public var type: String?

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
                if self.label != nil {
                    map["label"] = self.label!
                }
                if self.result != nil {
                    map["result"] = self.result?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["label"] as? String {
                    self.label = value
                }
                if let value = dict["result"] as? [String: Any?] {
                    var model = ListAbnormalyEventsResponseBody.Data.Opts.Result()
                    model.fromMap(value)
                    self.result = model
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class RawMetrics : Tea.TeaModel {
            public var endTime: Double?

            public var metrics: [String]?

            public var startTime: Double?

            public override init() {
                super.init()
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
                    map["end_time"] = self.endTime!
                }
                if self.metrics != nil {
                    map["metrics"] = self.metrics!
                }
                if self.startTime != nil {
                    map["start_time"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["end_time"] as? Double {
                    self.endTime = value
                }
                if let value = dict["metrics"] as? [String] {
                    self.metrics = value
                }
                if let value = dict["start_time"] as? Double {
                    self.startTime = value
                }
            }
        }
        public var createdAt: Int64?

        public var description_: String?

        public var diagStatus: Int32?

        public var endAt: Int64?

        public var instance: String?

        public var item: String?

        public var level: String?

        public var namespace: String?

        public var opts: [ListAbnormalyEventsResponseBody.Data.Opts]?

        public var pod: String?

        public var rawMetrics: ListAbnormalyEventsResponseBody.Data.RawMetrics?

        public var regionId: String?

        public var type: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.rawMetrics?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.diagStatus != nil {
                map["diag_status"] = self.diagStatus!
            }
            if self.endAt != nil {
                map["end_at"] = self.endAt!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.item != nil {
                map["item"] = self.item!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.opts != nil {
                var tmp : [Any] = []
                for k in self.opts! {
                    tmp.append(k.toMap())
                }
                map["opts"] = tmp
            }
            if self.pod != nil {
                map["pod"] = self.pod!
            }
            if self.rawMetrics != nil {
                map["raw_metrics"] = self.rawMetrics?.toMap()
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.uuid != nil {
                map["uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created_at"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["diag_status"] as? Int32 {
                self.diagStatus = value
            }
            if let value = dict["end_at"] as? Int64 {
                self.endAt = value
            }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["item"] as? String {
                self.item = value
            }
            if let value = dict["level"] as? String {
                self.level = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["opts"] as? [Any?] {
                var tmp : [ListAbnormalyEventsResponseBody.Data.Opts] = []
                for v in value {
                    if v != nil {
                        var model = ListAbnormalyEventsResponseBody.Data.Opts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.opts = tmp
            }
            if let value = dict["pod"] as? String {
                self.pod = value
            }
            if let value = dict["raw_metrics"] as? [String: Any?] {
                var model = ListAbnormalyEventsResponseBody.Data.RawMetrics()
                model.fromMap(value)
                self.rawMetrics = model
            }
            if let value = dict["region_id"] as? String {
                self.regionId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var code: String?

    public var data: [ListAbnormalyEventsResponseBody.Data]?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAbnormalyEventsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAbnormalyEventsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAbnormalyEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAbnormalyEventsResponseBody?

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
            var model = ListAbnormalyEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentInstallRecordsRequest : Tea.TeaModel {
    public var current: Int64?

    public var instanceId: String?

    public var pageSize: Int64?

    public var pluginId: String?

    public var pluginVersion: String?

    public var region: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.instanceId != nil {
            map["instance_id"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginId != nil {
            map["plugin_id"] = self.pluginId!
        }
        if self.pluginVersion != nil {
            map["plugin_version"] = self.pluginVersion!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["instance_id"] as? String {
            self.instanceId = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["plugin_id"] as? String {
            self.pluginId = value
        }
        if let value = dict["plugin_version"] as? String {
            self.pluginVersion = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListAgentInstallRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var instanceId: String?

        public var pluginId: String?

        public var pluginVersion: String?

        public var status: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.instanceId != nil {
                map["instance_id"] = self.instanceId!
            }
            if self.pluginId != nil {
                map["plugin_id"] = self.pluginId!
            }
            if self.pluginVersion != nil {
                map["plugin_version"] = self.pluginVersion!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["instance_id"] as? String {
                self.instanceId = value
            }
            if let value = dict["plugin_id"] as? String {
                self.pluginId = value
            }
            if let value = dict["plugin_version"] as? String {
                self.pluginVersion = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListAgentInstallRecordsResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAgentInstallRecordsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAgentInstallRecordsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAgentInstallRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentInstallRecordsResponseBody?

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
            var model = ListAgentInstallRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentsRequest : Tea.TeaModel {
    public var current: Int64?

    public var name: String?

    public var pageSize: Int64?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListAgentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Versions : Tea.TeaModel {
            public var createdAt: String?

            public var installScript: String?

            public var uninstallScript: String?

            public var updatedAt: String?

            public var upgradeScript: String?

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
                if self.createdAt != nil {
                    map["created_at"] = self.createdAt!
                }
                if self.installScript != nil {
                    map["install_script"] = self.installScript!
                }
                if self.uninstallScript != nil {
                    map["uninstall_script"] = self.uninstallScript!
                }
                if self.updatedAt != nil {
                    map["updated_at"] = self.updatedAt!
                }
                if self.upgradeScript != nil {
                    map["upgrade_script"] = self.upgradeScript!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["created_at"] as? String {
                    self.createdAt = value
                }
                if let value = dict["install_script"] as? String {
                    self.installScript = value
                }
                if let value = dict["uninstall_script"] as? String {
                    self.uninstallScript = value
                }
                if let value = dict["updated_at"] as? String {
                    self.updatedAt = value
                }
                if let value = dict["upgrade_script"] as? String {
                    self.upgradeScript = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public var createdAt: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var supportArch: String?

        public var type: String?

        public var updatedAt: String?

        public var versions: [ListAgentsResponseBody.Data.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.supportArch != nil {
                map["support_arch"] = self.supportArch!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["support_arch"] as? String {
                self.supportArch = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
            if let value = dict["versions"] as? [Any?] {
                var tmp : [ListAgentsResponseBody.Data.Versions] = []
                for v in value {
                    if v != nil {
                        var model = ListAgentsResponseBody.Data.Versions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListAgentsResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAgentsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAgentsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentsResponseBody?

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
            var model = ListAgentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlertItemsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAlertItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertItemsResponseBody?

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
            var model = ListAlertItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlertStrategiesRequest : Tea.TeaModel {
    public var current: Int32?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int32 {
            self.current = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAlertStrategiesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Strategy : Tea.TeaModel {
            public var clusters: [String]?

            public var items: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusters != nil {
                    map["clusters"] = self.clusters!
                }
                if self.items != nil {
                    map["items"] = self.items!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clusters"] as? [String] {
                    self.clusters = value
                }
                if let value = dict["items"] as? [String] {
                    self.items = value
                }
            }
        }
        public var createdAt: String?

        public var enabled: Bool?

        public var id: Int64?

        public var k8sLabel: Bool?

        public var name: String?

        public var strategy: ListAlertStrategiesResponseBody.Data.Strategy?

        public var uid: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.strategy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.k8sLabel != nil {
                map["k8sLabel"] = self.k8sLabel!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.strategy != nil {
                map["strategy"] = self.strategy?.toMap()
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["k8sLabel"] as? Bool {
                self.k8sLabel = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["strategy"] as? [String: Any?] {
                var model = ListAlertStrategiesResponseBody.Data.Strategy()
                model.fromMap(value)
                self.strategy = model
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var code: String?

    public var data: [ListAlertStrategiesResponseBody.Data]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAlertStrategiesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAlertStrategiesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAlertStrategiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertStrategiesResponseBody?

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
            var model = ListAlertStrategiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAllInstancesRequest : Tea.TeaModel {
    public var current: String?

    public var filters: String?

    public var instanceType: String?

    public var managedType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageSize: String?

    public var pluginId: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.filters != nil {
            map["filters"] = self.filters!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.managedType != nil {
            map["managedType"] = self.managedType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginId != nil {
            map["pluginId"] = self.pluginId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? String {
            self.current = value
        }
        if let value = dict["filters"] as? String {
            self.filters = value
        }
        if let value = dict["instanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["managedType"] as? String {
            self.managedType = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["pluginId"] as? String {
            self.pluginId = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
    }
}

public class ListAllInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var infoKey: String?

            public var infoType: String?

            public var infoValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.infoKey != nil {
                    map["infoKey"] = self.infoKey!
                }
                if self.infoType != nil {
                    map["infoType"] = self.infoType!
                }
                if self.infoValue != nil {
                    map["infoValue"] = self.infoValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["infoKey"] as? String {
                    self.infoKey = value
                }
                if let value = dict["infoType"] as? String {
                    self.infoType = value
                }
                if let value = dict["infoValue"] as? String {
                    self.infoValue = value
                }
            }
        }
        public var agentConfigId: String?

        public var agentConfigName: String?

        public var attributes: [ListAllInstancesResponseBody.Data.Attributes]?

        public var clusterId: String?

        public var clusterName: String?

        public var imageId: String?

        public var installLevel: String?

        public var installType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceType: String?

        public var kernelVersion: String?

        public var manageLevel: String?

        public var manageType: String?

        public var osArch: String?

        public var osHealthScore: Int32?

        public var osName: String?

        public var privateIp: String?

        public var publicIp: String?

        public var resourceGroupId: String?

        public var resourceGroupName: String?

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
            if self.agentConfigId != nil {
                map["agentConfigId"] = self.agentConfigId!
            }
            if self.agentConfigName != nil {
                map["agentConfigName"] = self.agentConfigName!
            }
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["attributes"] = tmp
            }
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.imageId != nil {
                map["imageId"] = self.imageId!
            }
            if self.installLevel != nil {
                map["installLevel"] = self.installLevel!
            }
            if self.installType != nil {
                map["installType"] = self.installType!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["instanceName"] = self.instanceName!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.kernelVersion != nil {
                map["kernelVersion"] = self.kernelVersion!
            }
            if self.manageLevel != nil {
                map["manageLevel"] = self.manageLevel!
            }
            if self.manageType != nil {
                map["manageType"] = self.manageType!
            }
            if self.osArch != nil {
                map["osArch"] = self.osArch!
            }
            if self.osHealthScore != nil {
                map["osHealthScore"] = self.osHealthScore!
            }
            if self.osName != nil {
                map["osName"] = self.osName!
            }
            if self.privateIp != nil {
                map["privateIp"] = self.privateIp!
            }
            if self.publicIp != nil {
                map["publicIp"] = self.publicIp!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceGroupName != nil {
                map["resourceGroupName"] = self.resourceGroupName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentConfigId"] as? String {
                self.agentConfigId = value
            }
            if let value = dict["agentConfigName"] as? String {
                self.agentConfigName = value
            }
            if let value = dict["attributes"] as? [Any?] {
                var tmp : [ListAllInstancesResponseBody.Data.Attributes] = []
                for v in value {
                    if v != nil {
                        var model = ListAllInstancesResponseBody.Data.Attributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributes = tmp
            }
            if let value = dict["clusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["clusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["imageId"] as? String {
                self.imageId = value
            }
            if let value = dict["installLevel"] as? String {
                self.installLevel = value
            }
            if let value = dict["installType"] as? String {
                self.installType = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["instanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["kernelVersion"] as? String {
                self.kernelVersion = value
            }
            if let value = dict["manageLevel"] as? String {
                self.manageLevel = value
            }
            if let value = dict["manageType"] as? String {
                self.manageType = value
            }
            if let value = dict["osArch"] as? String {
                self.osArch = value
            }
            if let value = dict["osHealthScore"] as? Int32 {
                self.osHealthScore = value
            }
            if let value = dict["osName"] as? String {
                self.osName = value
            }
            if let value = dict["privateIp"] as? String {
                self.privateIp = value
            }
            if let value = dict["publicIp"] as? String {
                self.publicIp = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["resourceGroupName"] as? String {
                self.resourceGroupName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [ListAllInstancesResponseBody.Data]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAllInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAllInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAllInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAllInstancesResponseBody?

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
            var model = ListAllInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClusterAgentInstallRecordsRequest : Tea.TeaModel {
    public var agentConfigId: String?

    public var clusterId: String?

    public var current: Int64?

    public var pageSize: Int64?

    public var pluginId: String?

    public var pluginVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentConfigId != nil {
            map["agent_config_id"] = self.agentConfigId!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginId != nil {
            map["plugin_id"] = self.pluginId!
        }
        if self.pluginVersion != nil {
            map["plugin_version"] = self.pluginVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_config_id"] as? String {
            self.agentConfigId = value
        }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["plugin_id"] as? String {
            self.pluginId = value
        }
        if let value = dict["plugin_version"] as? String {
            self.pluginVersion = value
        }
    }
}

public class ListClusterAgentInstallRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentConfigId: String?

        public var agentConfigName: String?

        public var clusterId: String?

        public var createdAt: String?

        public var grayscaleConfig: String?

        public var pluginId: String?

        public var pluginVersion: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentConfigId != nil {
                map["agent_config_id"] = self.agentConfigId!
            }
            if self.agentConfigName != nil {
                map["agent_config_name"] = self.agentConfigName!
            }
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.grayscaleConfig != nil {
                map["grayscale_config"] = self.grayscaleConfig!
            }
            if self.pluginId != nil {
                map["plugin_id"] = self.pluginId!
            }
            if self.pluginVersion != nil {
                map["plugin_version"] = self.pluginVersion!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agent_config_id"] as? String {
                self.agentConfigId = value
            }
            if let value = dict["agent_config_name"] as? String {
                self.agentConfigName = value
            }
            if let value = dict["cluster_id"] as? String {
                self.clusterId = value
            }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["grayscale_config"] as? String {
                self.grayscaleConfig = value
            }
            if let value = dict["plugin_id"] as? String {
                self.pluginId = value
            }
            if let value = dict["plugin_version"] as? String {
                self.pluginVersion = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListClusterAgentInstallRecordsResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListClusterAgentInstallRecordsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListClusterAgentInstallRecordsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListClusterAgentInstallRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterAgentInstallRecordsResponseBody?

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
            var model = ListClusterAgentInstallRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterStatus: String?

    public var clusterType: String?

    public var current: Int64?

    public var id: String?

    public var name: String?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
        if self.clusterStatus != nil {
            map["cluster_status"] = self.clusterStatus!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
        if let value = dict["cluster_status"] as? String {
            self.clusterStatus = value
        }
        if let value = dict["cluster_type"] as? String {
            self.clusterType = value
        }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterId: String?

        public var clusterStatus: String?

        public var clusterType: String?

        public var createdAt: String?

        public var id: String?

        public var name: String?

        public var region: String?

        public var updatedAt: String?

        public override init() {
            super.init()
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
            if self.clusterStatus != nil {
                map["cluster_status"] = self.clusterStatus!
            }
            if self.clusterType != nil {
                map["cluster_type"] = self.clusterType!
            }
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cluster_id"] as? String {
                self.clusterId = value
            }
            if let value = dict["cluster_status"] as? String {
                self.clusterStatus = value
            }
            if let value = dict["cluster_type"] as? String {
                self.clusterType = value
            }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListClustersResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListClustersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListClustersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

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
            var model = ListClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDiagnosisRequest : Tea.TeaModel {
    public var current: Int64?

    public var pageSize: Int64?

    public var params: String?

    public var serviceName: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["service_name"] as? String {
            self.serviceName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListDiagnosisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int32?

        public var command: Any?

        public var createdAt: String?

        public var errMsg: String?

        public var params: Any?

        public var result: Any?

        public var serviceName: String?

        public var status: String?

        public var taskId: String?

        public var updatedAt: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.command != nil {
                map["command"] = self.command!
            }
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.errMsg != nil {
                map["err_msg"] = self.errMsg!
            }
            if self.params != nil {
                map["params"] = self.params!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.serviceName != nil {
                map["service_name"] = self.serviceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            if self.updatedAt != nil {
                map["updated_at"] = self.updatedAt!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? Int32 {
                self.code = value
            }
            if let value = dict["command"] as? Any {
                self.command = value
            }
            if let value = dict["created_at"] as? String {
                self.createdAt = value
            }
            if let value = dict["err_msg"] as? String {
                self.errMsg = value
            }
            if let value = dict["params"] as? Any {
                self.params = value
            }
            if let value = dict["result"] as? Any {
                self.result = value
            }
            if let value = dict["service_name"] as? String {
                self.serviceName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
            if let value = dict["updated_at"] as? String {
                self.updatedAt = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListDiagnosisResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDiagnosisResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDiagnosisResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDiagnosisResponseBody?

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
            var model = ListDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceHealthRequest : Tea.TeaModel {
    public var cluster: String?

    public var current: Int32?

    public var end: Double?

    public var instance: String?

    public var pageSize: Int32?

    public var start: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["current"] as? Int32 {
            self.current = value
        }
        if let value = dict["end"] as? Double {
            self.end = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["start"] as? Double {
            self.start = value
        }
    }
}

public class ListInstanceHealthResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var images: [String]?

        public var instance: String?

        public var namespace: String?

        public var pod: String?

        public var regionId: String?

        public var score: Double?

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
            if self.images != nil {
                map["images"] = self.images!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.pod != nil {
                map["pod"] = self.pod!
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.score != nil {
                map["score"] = self.score!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["images"] as? [String] {
                self.images = value
            }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["pod"] as? String {
                self.pod = value
            }
            if let value = dict["region_id"] as? String {
                self.regionId = value
            }
            if let value = dict["score"] as? Double {
                self.score = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [ListInstanceHealthResponseBody.Data]?

    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListInstanceHealthResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceHealthResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListInstanceHealthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceHealthResponseBody?

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
            var model = ListInstanceHealthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceStatusRequest : Tea.TeaModel {
    public var current: Int64?

    public var instance: String?

    public var pageSize: Int64?

    public var region: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListInstanceStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instance: String?

        public var region: String?

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
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListInstanceStatusResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListInstanceStatusResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceStatusResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceStatusResponseBody?

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
            var model = ListInstanceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var current: Int64?

    public var instance: String?

    public var pageSize: Int64?

    public var region: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterId: String?

        public var instance: String?

        public var kernelVersion: String?

        public var meta: Any?

        public var osArch: String?

        public var osHealthScore: String?

        public var osName: String?

        public var osNameId: String?

        public var osVersion: String?

        public var osVersionId: String?

        public var region: String?

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
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.kernelVersion != nil {
                map["kernel_version"] = self.kernelVersion!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.osArch != nil {
                map["os_arch"] = self.osArch!
            }
            if self.osHealthScore != nil {
                map["os_health_score"] = self.osHealthScore!
            }
            if self.osName != nil {
                map["os_name"] = self.osName!
            }
            if self.osNameId != nil {
                map["os_name_id"] = self.osNameId!
            }
            if self.osVersion != nil {
                map["os_version"] = self.osVersion!
            }
            if self.osVersionId != nil {
                map["os_version_id"] = self.osVersionId!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cluster_id"] as? String {
                self.clusterId = value
            }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["kernel_version"] as? String {
                self.kernelVersion = value
            }
            if let value = dict["meta"] as? Any {
                self.meta = value
            }
            if let value = dict["os_arch"] as? String {
                self.osArch = value
            }
            if let value = dict["os_health_score"] as? String {
                self.osHealthScore = value
            }
            if let value = dict["os_name"] as? String {
                self.osName = value
            }
            if let value = dict["os_name_id"] as? String {
                self.osNameId = value
            }
            if let value = dict["os_version"] as? String {
                self.osVersion = value
            }
            if let value = dict["os_version_id"] as? String {
                self.osVersionId = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [ListInstancesResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesEcsInfoListRequest : Tea.TeaModel {
    public var infoType: String?

    public var instanceId: String?

    public var managedType: String?

    public var pluginId: String?

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
        if self.infoType != nil {
            map["info_type"] = self.infoType!
        }
        if self.instanceId != nil {
            map["instance_id"] = self.instanceId!
        }
        if self.managedType != nil {
            map["managed_type"] = self.managedType!
        }
        if self.pluginId != nil {
            map["plugin_id"] = self.pluginId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["info_type"] as? String {
            self.infoType = value
        }
        if let value = dict["instance_id"] as? String {
            self.instanceId = value
        }
        if let value = dict["managed_type"] as? String {
            self.managedType = value
        }
        if let value = dict["plugin_id"] as? String {
            self.pluginId = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
    }
}

public class ListInstancesEcsInfoListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ip: String?

        public var tagKey: String?

        public var tagValue: String?

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
            if self.ip != nil {
                map["ip"] = self.ip!
            }
            if self.tagKey != nil {
                map["tag_key"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tag_value"] = self.tagValue!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ip"] as? String {
                self.ip = value
            }
            if let value = dict["tag_key"] as? String {
                self.tagKey = value
            }
            if let value = dict["tag_value"] as? String {
                self.tagValue = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var data: [ListInstancesEcsInfoListResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListInstancesEcsInfoListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesEcsInfoListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class ListInstancesEcsInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesEcsInfoListResponseBody?

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
            var model = ListInstancesEcsInfoListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesWithEcsInfoRequest : Tea.TeaModel {
    public class InstanceTag : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var current: Int32?

    public var healthStatus: String?

    public var instanceId: String?

    public var instanceIdName: String?

    public var instanceName: String?

    public var instanceTag: ListInstancesWithEcsInfoRequest.InstanceTag?

    public var isManaged: Int32?

    public var osName: String?

    public var pageSize: Int32?

    public var privateIp: String?

    public var publicIp: String?

    public var region: String?

    public var resourceGroupId: String?

    public var resourceGroupIdName: String?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.healthStatus != nil {
            map["health_status"] = self.healthStatus!
        }
        if self.instanceId != nil {
            map["instance_id"] = self.instanceId!
        }
        if self.instanceIdName != nil {
            map["instance_id_name"] = self.instanceIdName!
        }
        if self.instanceName != nil {
            map["instance_name"] = self.instanceName!
        }
        if self.instanceTag != nil {
            map["instance_tag"] = self.instanceTag?.toMap()
        }
        if self.isManaged != nil {
            map["is_managed"] = self.isManaged!
        }
        if self.osName != nil {
            map["os_name"] = self.osName!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.privateIp != nil {
            map["private_ip"] = self.privateIp!
        }
        if self.publicIp != nil {
            map["public_ip"] = self.publicIp!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["resource_group_id"] = self.resourceGroupId!
        }
        if self.resourceGroupIdName != nil {
            map["resource_group_id_name"] = self.resourceGroupIdName!
        }
        if self.resourceGroupName != nil {
            map["resource_group_name"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int32 {
            self.current = value
        }
        if let value = dict["health_status"] as? String {
            self.healthStatus = value
        }
        if let value = dict["instance_id"] as? String {
            self.instanceId = value
        }
        if let value = dict["instance_id_name"] as? String {
            self.instanceIdName = value
        }
        if let value = dict["instance_name"] as? String {
            self.instanceName = value
        }
        if let value = dict["instance_tag"] as? [String: Any?] {
            var model = ListInstancesWithEcsInfoRequest.InstanceTag()
            model.fromMap(value)
            self.instanceTag = model
        }
        if let value = dict["is_managed"] as? Int32 {
            self.isManaged = value
        }
        if let value = dict["os_name"] as? String {
            self.osName = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["private_ip"] as? String {
            self.privateIp = value
        }
        if let value = dict["public_ip"] as? String {
            self.publicIp = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["resource_group_id"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["resource_group_id_name"] as? String {
            self.resourceGroupIdName = value
        }
        if let value = dict["resource_group_name"] as? String {
            self.resourceGroupName = value
        }
    }
}

public class ListInstancesWithEcsInfoShrinkRequest : Tea.TeaModel {
    public var current: Int32?

    public var healthStatus: String?

    public var instanceId: String?

    public var instanceIdName: String?

    public var instanceName: String?

    public var instanceTagShrink: String?

    public var isManaged: Int32?

    public var osName: String?

    public var pageSize: Int32?

    public var privateIp: String?

    public var publicIp: String?

    public var region: String?

    public var resourceGroupId: String?

    public var resourceGroupIdName: String?

    public var resourceGroupName: String?

    public override init() {
        super.init()
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
        if self.healthStatus != nil {
            map["health_status"] = self.healthStatus!
        }
        if self.instanceId != nil {
            map["instance_id"] = self.instanceId!
        }
        if self.instanceIdName != nil {
            map["instance_id_name"] = self.instanceIdName!
        }
        if self.instanceName != nil {
            map["instance_name"] = self.instanceName!
        }
        if self.instanceTagShrink != nil {
            map["instance_tag"] = self.instanceTagShrink!
        }
        if self.isManaged != nil {
            map["is_managed"] = self.isManaged!
        }
        if self.osName != nil {
            map["os_name"] = self.osName!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.privateIp != nil {
            map["private_ip"] = self.privateIp!
        }
        if self.publicIp != nil {
            map["public_ip"] = self.publicIp!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["resource_group_id"] = self.resourceGroupId!
        }
        if self.resourceGroupIdName != nil {
            map["resource_group_id_name"] = self.resourceGroupIdName!
        }
        if self.resourceGroupName != nil {
            map["resource_group_name"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int32 {
            self.current = value
        }
        if let value = dict["health_status"] as? String {
            self.healthStatus = value
        }
        if let value = dict["instance_id"] as? String {
            self.instanceId = value
        }
        if let value = dict["instance_id_name"] as? String {
            self.instanceIdName = value
        }
        if let value = dict["instance_name"] as? String {
            self.instanceName = value
        }
        if let value = dict["instance_tag"] as? String {
            self.instanceTagShrink = value
        }
        if let value = dict["is_managed"] as? Int32 {
            self.isManaged = value
        }
        if let value = dict["os_name"] as? String {
            self.osName = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["private_ip"] as? String {
            self.privateIp = value
        }
        if let value = dict["public_ip"] as? String {
            self.publicIp = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["resource_group_id"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["resource_group_id_name"] as? String {
            self.resourceGroupIdName = value
        }
        if let value = dict["resource_group_name"] as? String {
            self.resourceGroupName = value
        }
    }
}

public class ListInstancesWithEcsInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceTag : Tea.TeaModel {
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
                if self.tagKey != nil {
                    map["tag_key"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tag_value"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tag_key"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tag_value"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var clusterId: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceTag: [ListInstancesWithEcsInfoResponseBody.Data.InstanceTag]?

        public var kernelVersion: String?

        public var osArch: String?

        public var osHealthScore: String?

        public var osName: String?

        public var privateIp: String?

        public var publicIp: String?

        public var resourceGroupId: String?

        public var resourceGroupName: String?

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
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.instanceId != nil {
                map["instance_id"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["instance_name"] = self.instanceName!
            }
            if self.instanceTag != nil {
                var tmp : [Any] = []
                for k in self.instanceTag! {
                    tmp.append(k.toMap())
                }
                map["instance_tag"] = tmp
            }
            if self.kernelVersion != nil {
                map["kernel_version"] = self.kernelVersion!
            }
            if self.osArch != nil {
                map["os_arch"] = self.osArch!
            }
            if self.osHealthScore != nil {
                map["os_health_score"] = self.osHealthScore!
            }
            if self.osName != nil {
                map["os_name"] = self.osName!
            }
            if self.privateIp != nil {
                map["private_ip"] = self.privateIp!
            }
            if self.publicIp != nil {
                map["public_ip"] = self.publicIp!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.resourceGroupName != nil {
                map["resource_group_name"] = self.resourceGroupName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cluster_id"] as? String {
                self.clusterId = value
            }
            if let value = dict["instance_id"] as? String {
                self.instanceId = value
            }
            if let value = dict["instance_name"] as? String {
                self.instanceName = value
            }
            if let value = dict["instance_tag"] as? [Any?] {
                var tmp : [ListInstancesWithEcsInfoResponseBody.Data.InstanceTag] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesWithEcsInfoResponseBody.Data.InstanceTag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceTag = tmp
            }
            if let value = dict["kernel_version"] as? String {
                self.kernelVersion = value
            }
            if let value = dict["os_arch"] as? String {
                self.osArch = value
            }
            if let value = dict["os_health_score"] as? String {
                self.osHealthScore = value
            }
            if let value = dict["os_name"] as? String {
                self.osName = value
            }
            if let value = dict["private_ip"] as? String {
                self.privateIp = value
            }
            if let value = dict["public_ip"] as? String {
                self.publicIp = value
            }
            if let value = dict["resource_group_id"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["resource_group_name"] as? String {
                self.resourceGroupName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [ListInstancesWithEcsInfoResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListInstancesWithEcsInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesWithEcsInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListInstancesWithEcsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesWithEcsInfoResponseBody?

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
            var model = ListInstancesWithEcsInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPluginsInstancesRequest : Tea.TeaModel {
    public var current: Int64?

    public var instanceIdName: String?

    public var instanceTag: String?

    public var operationType: String?

    public var pageSize: Int64?

    public var pluginId: String?

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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.instanceIdName != nil {
            map["instance_id_name"] = self.instanceIdName!
        }
        if self.instanceTag != nil {
            map["instance_tag"] = self.instanceTag!
        }
        if self.operationType != nil {
            map["operation_type"] = self.operationType!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.pluginId != nil {
            map["plugin_id"] = self.pluginId!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["instance_id_name"] as? String {
            self.instanceIdName = value
        }
        if let value = dict["instance_tag"] as? String {
            self.instanceTag = value
        }
        if let value = dict["operation_type"] as? String {
            self.operationType = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["plugin_id"] as? String {
            self.pluginId = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
    }
}

public class ListPluginsInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceTag : Tea.TeaModel {
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
                if self.tagKey != nil {
                    map["tag_key"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tag_value"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tag_key"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tag_value"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var instanceId: String?

        public var instanceName: String?

        public var instanceTag: [ListPluginsInstancesResponseBody.Data.InstanceTag]?

        public var osName: String?

        public var privateIp: String?

        public var publicIp: String?

        public var region: String?

        public var resourceGroupId: String?

        public var resourceGroupName: String?

        public override init() {
            super.init()
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
                map["instance_id"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["instance_name"] = self.instanceName!
            }
            if self.instanceTag != nil {
                var tmp : [Any] = []
                for k in self.instanceTag! {
                    tmp.append(k.toMap())
                }
                map["instance_tag"] = tmp
            }
            if self.osName != nil {
                map["os_name"] = self.osName!
            }
            if self.privateIp != nil {
                map["private_ip"] = self.privateIp!
            }
            if self.publicIp != nil {
                map["public_ip"] = self.publicIp!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.resourceGroupName != nil {
                map["resource_group_name"] = self.resourceGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance_id"] as? String {
                self.instanceId = value
            }
            if let value = dict["instance_name"] as? String {
                self.instanceName = value
            }
            if let value = dict["instance_tag"] as? [Any?] {
                var tmp : [ListPluginsInstancesResponseBody.Data.InstanceTag] = []
                for v in value {
                    if v != nil {
                        var model = ListPluginsInstancesResponseBody.Data.InstanceTag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceTag = tmp
            }
            if let value = dict["os_name"] as? String {
                self.osName = value
            }
            if let value = dict["private_ip"] as? String {
                self.privateIp = value
            }
            if let value = dict["public_ip"] as? String {
                self.publicIp = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["resource_group_id"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["resource_group_name"] as? String {
                self.resourceGroupName = value
            }
        }
    }
    public var code: String?

    public var data: [ListPluginsInstancesResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListPluginsInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListPluginsInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListPluginsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPluginsInstancesResponseBody?

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
            var model = ListPluginsInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPodsOfInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var current: Int64?

    public var instance: String?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["current"] = self.current!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
        if let value = dict["current"] as? Int64 {
            self.current = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListPodsOfInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var namespace: String?

        public var pod: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.pod != nil {
                map["pod"] = self.pod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["pod"] as? String {
                self.pod = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: [ListPodsOfInstanceResponseBody.Data]?

    public var message: String?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListPodsOfInstanceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListPodsOfInstanceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListPodsOfInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPodsOfInstanceResponseBody?

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
            var model = ListPodsOfInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var code: String?

    public var data: [String]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String] {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

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
            var model = ListRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartAIAnalysisRequest : Tea.TeaModel {
    public var analysisTool: String?

    public var analysisParams: [String]?

    public var channel: String?

    public var comms: String?

    public var createdBy: String?

    public var instance: String?

    public var instanceType: String?

    public var iterationFunc: String?

    public var iterationMod: String?

    public var iterationRange: [Int32]?

    public var pids: String?

    public var region: String?

    public var timeout: Int32?

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
        if self.analysisTool != nil {
            map["analysisTool"] = self.analysisTool!
        }
        if self.analysisParams != nil {
            map["analysis_params"] = self.analysisParams!
        }
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.comms != nil {
            map["comms"] = self.comms!
        }
        if self.createdBy != nil {
            map["created_by"] = self.createdBy!
        }
        if self.instance != nil {
            map["instance"] = self.instance!
        }
        if self.instanceType != nil {
            map["instance_type"] = self.instanceType!
        }
        if self.iterationFunc != nil {
            map["iteration_func"] = self.iterationFunc!
        }
        if self.iterationMod != nil {
            map["iteration_mod"] = self.iterationMod!
        }
        if self.iterationRange != nil {
            map["iteration_range"] = self.iterationRange!
        }
        if self.pids != nil {
            map["pids"] = self.pids!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisTool"] as? String {
            self.analysisTool = value
        }
        if let value = dict["analysis_params"] as? [String] {
            self.analysisParams = value
        }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["comms"] as? String {
            self.comms = value
        }
        if let value = dict["created_by"] as? String {
            self.createdBy = value
        }
        if let value = dict["instance"] as? String {
            self.instance = value
        }
        if let value = dict["instance_type"] as? String {
            self.instanceType = value
        }
        if let value = dict["iteration_func"] as? String {
            self.iterationFunc = value
        }
        if let value = dict["iteration_mod"] as? String {
            self.iterationMod = value
        }
        if let value = dict["iteration_range"] as? [Int32] {
            self.iterationRange = value
        }
        if let value = dict["pids"] as? String {
            self.pids = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class StartAIAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysisId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisId != nil {
                map["analysis_id"] = self.analysisId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysis_id"] as? String {
                self.analysisId = value
            }
        }
    }
    public var code: String?

    public var data: StartAIAnalysisResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = StartAIAnalysisResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartAIAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAIAnalysisResponseBody?

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
            var model = StartAIAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartAIDiffAnalysisRequest : Tea.TeaModel {
    public class Task1 : Tea.TeaModel {
        public var analysisId: String?

        public var pids: [String]?

        public var stepEnd: Double?

        public var stepStart: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisId != nil {
                map["analysisId"] = self.analysisId!
            }
            if self.pids != nil {
                map["pids"] = self.pids!
            }
            if self.stepEnd != nil {
                map["step_end"] = self.stepEnd!
            }
            if self.stepStart != nil {
                map["step_start"] = self.stepStart!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysisId"] as? String {
                self.analysisId = value
            }
            if let value = dict["pids"] as? [String] {
                self.pids = value
            }
            if let value = dict["step_end"] as? Double {
                self.stepEnd = value
            }
            if let value = dict["step_start"] as? Double {
                self.stepStart = value
            }
        }
    }
    public class Task2 : Tea.TeaModel {
        public var analysisId: String?

        public var pids: [String]?

        public var stepEnd: Double?

        public var stepStart: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisId != nil {
                map["analysisId"] = self.analysisId!
            }
            if self.pids != nil {
                map["pids"] = self.pids!
            }
            if self.stepEnd != nil {
                map["step_end"] = self.stepEnd!
            }
            if self.stepStart != nil {
                map["step_start"] = self.stepStart!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysisId"] as? String {
                self.analysisId = value
            }
            if let value = dict["pids"] as? [String] {
                self.pids = value
            }
            if let value = dict["step_end"] as? Double {
                self.stepEnd = value
            }
            if let value = dict["step_start"] as? Double {
                self.stepStart = value
            }
        }
    }
    public var task1: StartAIDiffAnalysisRequest.Task1?

    public var task2: StartAIDiffAnalysisRequest.Task2?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task1?.validate()
        try self.task2?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.task1 != nil {
            map["task1"] = self.task1?.toMap()
        }
        if self.task2 != nil {
            map["task2"] = self.task2?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task1"] as? [String: Any?] {
            var model = StartAIDiffAnalysisRequest.Task1()
            model.fromMap(value)
            self.task1 = model
        }
        if let value = dict["task2"] as? [String: Any?] {
            var model = StartAIDiffAnalysisRequest.Task2()
            model.fromMap(value)
            self.task2 = model
        }
    }
}

public class StartAIDiffAnalysisResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartAIDiffAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAIDiffAnalysisResponseBody?

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
            var model = StartAIDiffAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UninstallAgentRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instance: String?

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
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
        }
    }
    public var agentId: String?

    public var agentVersion: String?

    public var instances: [UninstallAgentRequest.Instances]?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["agent_version"] as? String {
            self.agentVersion = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [UninstallAgentRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = UninstallAgentRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
    }
}

public class UninstallAgentResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: UninstallAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UninstallAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class UninstallAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallAgentResponseBody?

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
            var model = UninstallAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UninstallAgentForClusterRequest : Tea.TeaModel {
    public var agentId: String?

    public var agentVersion: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["agent_version"] as? String {
            self.agentVersion = value
        }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
    }
}

public class UninstallAgentForClusterResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: UninstallAgentForClusterResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UninstallAgentForClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class UninstallAgentForClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallAgentForClusterResponseBody?

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
            var model = UninstallAgentForClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAlertEnabledRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class UpdateAlertEnabledResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAlertEnabledResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertEnabledResponseBody?

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
            var model = UpdateAlertEnabledResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAlertStrategyRequest : Tea.TeaModel {
    public class Strategy : Tea.TeaModel {
        public var clusters: [String]?

        public var items: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusters != nil {
                map["clusters"] = self.clusters!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["clusters"] as? [String] {
                self.clusters = value
            }
            if let value = dict["items"] as? [String] {
                self.items = value
            }
        }
    }
    public var enabled: Bool?

    public var id: Int64?

    public var k8sLabel: Bool?

    public var name: String?

    public var strategy: UpdateAlertStrategyRequest.Strategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.strategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.k8sLabel != nil {
            map["k8sLabel"] = self.k8sLabel!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.strategy != nil {
            map["strategy"] = self.strategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["k8sLabel"] as? Bool {
            self.k8sLabel = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["strategy"] as? [String: Any?] {
            var model = UpdateAlertStrategyRequest.Strategy()
            model.fromMap(value)
            self.strategy = model
        }
    }
}

public class UpdateAlertStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAlertStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertStrategyResponseBody?

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
            var model = UpdateAlertStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEventsAttentionRequest : Tea.TeaModel {
    public var mode: Int32?

    public var range: String?

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
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.range != nil {
            map["range"] = self.range!
        }
        if self.uuid != nil {
            map["uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mode"] as? Int32 {
            self.mode = value
        }
        if let value = dict["range"] as? String {
            self.range = value
        }
        if let value = dict["uuid"] as? String {
            self.uuid = value
        }
    }
}

public class UpdateEventsAttentionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mode: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mode"] as? Int32 {
                self.mode = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: UpdateEventsAttentionResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateEventsAttentionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class UpdateEventsAttentionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventsAttentionResponseBody?

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
            var model = UpdateEventsAttentionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFuncSwitchRecordRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public class Args : Tea.TeaModel {
            public var addCmd: String?

            public var cpu: String?

            public var duration: Int32?

            public var javaStorePath: String?

            public var locks: String?

            public var loop: Int32?

            public var mem: String?

            public var pid: Int32?

            public var systemProfiling: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addCmd != nil {
                    map["add_cmd"] = self.addCmd!
                }
                if self.cpu != nil {
                    map["cpu"] = self.cpu!
                }
                if self.duration != nil {
                    map["duration"] = self.duration!
                }
                if self.javaStorePath != nil {
                    map["java_store_path"] = self.javaStorePath!
                }
                if self.locks != nil {
                    map["locks"] = self.locks!
                }
                if self.loop != nil {
                    map["loop"] = self.loop!
                }
                if self.mem != nil {
                    map["mem"] = self.mem!
                }
                if self.pid != nil {
                    map["pid"] = self.pid!
                }
                if self.systemProfiling != nil {
                    map["system_profiling"] = self.systemProfiling!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["add_cmd"] as? String {
                    self.addCmd = value
                }
                if let value = dict["cpu"] as? String {
                    self.cpu = value
                }
                if let value = dict["duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["java_store_path"] as? String {
                    self.javaStorePath = value
                }
                if let value = dict["locks"] as? String {
                    self.locks = value
                }
                if let value = dict["loop"] as? Int32 {
                    self.loop = value
                }
                if let value = dict["mem"] as? String {
                    self.mem = value
                }
                if let value = dict["pid"] as? Int32 {
                    self.pid = value
                }
                if let value = dict["system_profiling"] as? String {
                    self.systemProfiling = value
                }
            }
        }
        public var args: UpdateFuncSwitchRecordRequest.Params.Args?

        public var functionName: String?

        public var instance: String?

        public var op: String?

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
            try self.args?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.args != nil {
                map["args"] = self.args?.toMap()
            }
            if self.functionName != nil {
                map["function_name"] = self.functionName!
            }
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.op != nil {
                map["op"] = self.op!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["args"] as? [String: Any?] {
                var model = UpdateFuncSwitchRecordRequest.Params.Args()
                model.fromMap(value)
                self.args = model
            }
            if let value = dict["function_name"] as? String {
                self.functionName = value
            }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["op"] as? String {
                self.op = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
        }
    }
    public var channel: String?

    public var params: UpdateFuncSwitchRecordRequest.Params?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.params?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.params != nil {
            map["params"] = self.params?.toMap()
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["params"] as? [String: Any?] {
            var model = UpdateFuncSwitchRecordRequest.Params()
            model.fromMap(value)
            self.params = model
        }
        if let value = dict["service_name"] as? String {
            self.serviceName = value
        }
    }
}

public class UpdateFuncSwitchRecordShrinkRequest : Tea.TeaModel {
    public var channel: String?

    public var paramsShrink: String?

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
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.paramsShrink != nil {
            map["params"] = self.paramsShrink!
        }
        if self.serviceName != nil {
            map["service_name"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["params"] as? String {
            self.paramsShrink = value
        }
        if let value = dict["service_name"] as? String {
            self.serviceName = value
        }
    }
}

public class UpdateFuncSwitchRecordResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateFuncSwitchRecordResponseBody.Data?

    public var message: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateFuncSwitchRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateFuncSwitchRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFuncSwitchRecordResponseBody?

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
            var model = UpdateFuncSwitchRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeAgentRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instance: String?

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
            if self.instance != nil {
                map["instance"] = self.instance!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instance"] as? String {
                self.instance = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
        }
    }
    public var agentId: String?

    public var agentVersion: String?

    public var instances: [UpgradeAgentRequest.Instances]?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["agent_version"] as? String {
            self.agentVersion = value
        }
        if let value = dict["instances"] as? [Any?] {
            var tmp : [UpgradeAgentRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = UpgradeAgentRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
    }
}

public class UpgradeAgentResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: UpgradeAgentResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpgradeAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class UpgradeAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeAgentResponseBody?

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
            var model = UpgradeAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeAgentForClusterRequest : Tea.TeaModel {
    public var agentId: String?

    public var agentVersion: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
            map["agent_id"] = self.agentId!
        }
        if self.agentVersion != nil {
            map["agent_version"] = self.agentVersion!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agent_id"] as? String {
            self.agentId = value
        }
        if let value = dict["agent_version"] as? String {
            self.agentVersion = value
        }
        if let value = dict["cluster_id"] as? String {
            self.clusterId = value
        }
    }
}

public class UpgradeAgentForClusterResponseBody : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: UpgradeAgentForClusterResponseBody.Data?

    public var message: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpgradeAgentForClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class UpgradeAgentForClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeAgentForClusterResponseBody?

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
            var model = UpgradeAgentForClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
