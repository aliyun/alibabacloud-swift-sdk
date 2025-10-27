import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateFlowRequest : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [CreateFlowRequest.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [CreateFlowRequest.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = CreateFlowRequest.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var definition: String?

    public var description_: String?

    public var environment: CreateFlowRequest.Environment?

    public var executionMode: String?

    public var externalStorageLocation: String?

    public var name: String?

    public var roleArn: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.externalStorageLocation != nil {
            map["ExternalStorageLocation"] = self.externalStorageLocation!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = CreateFlowRequest.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["ExternalStorageLocation"] as? String {
            self.externalStorageLocation = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateFlowShrinkRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var environmentShrink: String?

    public var executionMode: String?

    public var externalStorageLocation: String?

    public var name: String?

    public var roleArn: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environmentShrink != nil {
            map["Environment"] = self.environmentShrink!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.externalStorageLocation != nil {
            map["ExternalStorageLocation"] = self.externalStorageLocation!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environmentShrink = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["ExternalStorageLocation"] as? String {
            self.externalStorageLocation = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateFlowResponseBody : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [CreateFlowResponseBody.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [CreateFlowResponseBody.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = CreateFlowResponseBody.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var createdTime: String?

    public var definition: String?

    public var description_: String?

    public var environment: CreateFlowResponseBody.Environment?

    public var executionMode: String?

    public var id: String?

    public var lastModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = CreateFlowResponseBody.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowResponseBody?

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
            var model = CreateFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFlowAliasRequest : Tea.TeaModel {
    public class RoutingConfigurations : Tea.TeaModel {
        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var description_: String?

    public var flowName: String?

    public var name: String?

    public var routingConfigurations: [CreateFlowAliasRequest.RoutingConfigurations]?

    public override init() {
        super.init()
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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.routingConfigurations != nil {
            var tmp : [Any] = []
            for k in self.routingConfigurations! {
                tmp.append(k.toMap())
            }
            map["RoutingConfigurations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoutingConfigurations"] as? [Any?] {
            var tmp : [CreateFlowAliasRequest.RoutingConfigurations] = []
            for v in value {
                if v != nil {
                    var model = CreateFlowAliasRequest.RoutingConfigurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.routingConfigurations = tmp
        }
    }
}

public class CreateFlowAliasShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var flowName: String?

    public var name: String?

    public var routingConfigurationsShrink: String?

    public override init() {
        super.init()
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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.routingConfigurationsShrink != nil {
            map["RoutingConfigurations"] = self.routingConfigurationsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoutingConfigurations"] as? String {
            self.routingConfigurationsShrink = value
        }
    }
}

public class CreateFlowAliasResponseBody : Tea.TeaModel {
    public class RoutingConfigurations : Tea.TeaModel {
        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var createdTime: String?

    public var description_: String?

    public var flowName: String?

    public var name: String?

    public var requestId: String?

    public var routingConfigurations: [CreateFlowAliasResponseBody.RoutingConfigurations]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.routingConfigurations != nil {
            var tmp : [Any] = []
            for k in self.routingConfigurations! {
                tmp.append(k.toMap())
            }
            map["RoutingConfigurations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoutingConfigurations"] as? [Any?] {
            var tmp : [CreateFlowAliasResponseBody.RoutingConfigurations] = []
            for v in value {
                if v != nil {
                    var model = CreateFlowAliasResponseBody.RoutingConfigurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.routingConfigurations = tmp
        }
    }
}

public class CreateFlowAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowAliasResponseBody?

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
            var model = CreateFlowAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduleRequest : Tea.TeaModel {
    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var flowName: String?

    public var payload: String?

    public var scheduleName: String?

    public var signatureVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        if self.signatureVersion != nil {
            map["SignatureVersion"] = self.signatureVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
        if let value = dict["SignatureVersion"] as? String {
            self.signatureVersion = value
        }
    }
}

public class CreateScheduleResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var lastModifiedTime: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleId != nil {
            map["ScheduleId"] = self.scheduleId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["CronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
    }
}

public class CreateScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduleResponseBody?

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
            var model = CreateScheduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlowRequest : Tea.TeaModel {
    public var name: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteFlowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowResponseBody?

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
            var model = DeleteFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlowAliasRequest : Tea.TeaModel {
    public var flowName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteFlowAliasResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFlowAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowAliasResponseBody?

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
            var model = DeleteFlowAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlowVersionRequest : Tea.TeaModel {
    public var flowName: String?

    public var flowVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
    }
}

public class DeleteFlowVersionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowVersionResponseBody?

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
            var model = DeleteFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScheduleRequest : Tea.TeaModel {
    public var flowName: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
    }
}

public class DeleteScheduleResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduleResponseBody?

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
            var model = DeleteScheduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeExecutionRequest : Tea.TeaModel {
    public var executionName: String?

    public var flowName: String?

    public var waitTimeSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.waitTimeSeconds != nil {
            map["WaitTimeSeconds"] = self.waitTimeSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["WaitTimeSeconds"] as? Int32 {
            self.waitTimeSeconds = value
        }
    }
}

public class DescribeExecutionResponseBody : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [DescribeExecutionResponseBody.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [DescribeExecutionResponseBody.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = DescribeExecutionResponseBody.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var environment: DescribeExecutionResponseBody.Environment?

    public var flowDefinition: String?

    public var flowName: String?

    public var input: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.flowDefinition != nil {
            map["FlowDefinition"] = self.flowDefinition!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = DescribeExecutionResponseBody.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["FlowDefinition"] as? String {
            self.flowDefinition = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartedTime"] as? String {
            self.startedTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StoppedTime"] as? String {
            self.stoppedTime = value
        }
    }
}

public class DescribeExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExecutionResponseBody?

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
            var model = DescribeExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFlowRequest : Tea.TeaModel {
    public var flowVersion: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DescribeFlowResponseBody : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [DescribeFlowResponseBody.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [DescribeFlowResponseBody.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFlowResponseBody.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var createdTime: String?

    public var definition: String?

    public var description_: String?

    public var environment: DescribeFlowResponseBody.Environment?

    public var executionMode: String?

    public var id: String?

    public var lastModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = DescribeFlowResponseBody.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowResponseBody?

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
            var model = DescribeFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFlowAliasRequest : Tea.TeaModel {
    public var flowName: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DescribeFlowAliasResponseBody : Tea.TeaModel {
    public class Alias : Tea.TeaModel {
        public class RoutingConfigurations : Tea.TeaModel {
            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var createdTime: String?

        public var description_: String?

        public var name: String?

        public var routingConfigurations: [DescribeFlowAliasResponseBody.Alias.RoutingConfigurations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.routingConfigurations != nil {
                var tmp : [Any] = []
                for k in self.routingConfigurations! {
                    tmp.append(k.toMap())
                }
                map["RoutingConfigurations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RoutingConfigurations"] as? [Any?] {
                var tmp : [DescribeFlowAliasResponseBody.Alias.RoutingConfigurations] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFlowAliasResponseBody.Alias.RoutingConfigurations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routingConfigurations = tmp
            }
        }
    }
    public var alias: DescribeFlowAliasResponseBody.Alias?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alias?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? [String: Any?] {
            var model = DescribeFlowAliasResponseBody.Alias()
            model.fromMap(value)
            self.alias = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeFlowAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowAliasResponseBody?

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
            var model = DescribeFlowAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMapRunRequest : Tea.TeaModel {
    public var executionName: String?

    public var flowName: String?

    public var mapRunName: String?

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
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.mapRunName != nil {
            map["MapRunName"] = self.mapRunName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["MapRunName"] as? String {
            self.mapRunName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMapRunResponseBody : Tea.TeaModel {
    public class ItemCounts : Tea.TeaModel {
        public var aborted: Int64?

        public var failed: Int64?

        public var pending: Int64?

        public var running: Int64?

        public var succeed: Int64?

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
            if self.aborted != nil {
                map["Aborted"] = self.aborted!
            }
            if self.failed != nil {
                map["Failed"] = self.failed!
            }
            if self.pending != nil {
                map["Pending"] = self.pending!
            }
            if self.running != nil {
                map["Running"] = self.running!
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Aborted"] as? Int64 {
                self.aborted = value
            }
            if let value = dict["Failed"] as? Int64 {
                self.failed = value
            }
            if let value = dict["Pending"] as? Int64 {
                self.pending = value
            }
            if let value = dict["Running"] as? Int64 {
                self.running = value
            }
            if let value = dict["Succeed"] as? Int64 {
                self.succeed = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var concurrency: Int64?

    public var executionName: String?

    public var itemCounts: DescribeMapRunResponseBody.ItemCounts?

    public var mapRunName: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public var toleratedFailedCount: Int64?

    public var toleratedFailedPercentage: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.itemCounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.itemCounts != nil {
            map["ItemCounts"] = self.itemCounts?.toMap()
        }
        if self.mapRunName != nil {
            map["MapRunName"] = self.mapRunName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        if self.toleratedFailedCount != nil {
            map["ToleratedFailedCount"] = self.toleratedFailedCount!
        }
        if self.toleratedFailedPercentage != nil {
            map["ToleratedFailedPercentage"] = self.toleratedFailedPercentage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["ItemCounts"] as? [String: Any?] {
            var model = DescribeMapRunResponseBody.ItemCounts()
            model.fromMap(value)
            self.itemCounts = model
        }
        if let value = dict["MapRunName"] as? String {
            self.mapRunName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartedTime"] as? String {
            self.startedTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StoppedTime"] as? String {
            self.stoppedTime = value
        }
        if let value = dict["ToleratedFailedCount"] as? Int64 {
            self.toleratedFailedCount = value
        }
        if let value = dict["ToleratedFailedPercentage"] as? Double {
            self.toleratedFailedPercentage = value
        }
    }
}

public class DescribeMapRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMapRunResponseBody?

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
            var model = DescribeMapRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

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
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionEndpoint"] as? String {
                    self.regionEndpoint = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
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
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeScheduleRequest : Tea.TeaModel {
    public var flowName: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
    }
}

public class DescribeScheduleResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var lastModifiedTime: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleId != nil {
            map["ScheduleId"] = self.scheduleId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["CronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
    }
}

public class DescribeScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScheduleResponseBody?

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
            var model = DescribeScheduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExecutionHistoryRequest : Tea.TeaModel {
    public var executionName: String?

    public var flowName: String?

    public var limit: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetExecutionHistoryResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var eventDetail: String?

        public var eventId: Int64?

        public var scheduleEventId: Int64?

        public var stepName: String?

        public var time: String?

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
            if self.eventDetail != nil {
                map["EventDetail"] = self.eventDetail!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.scheduleEventId != nil {
                map["ScheduleEventId"] = self.scheduleEventId!
            }
            if self.stepName != nil {
                map["StepName"] = self.stepName!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventDetail"] as? String {
                self.eventDetail = value
            }
            if let value = dict["EventId"] as? Int64 {
                self.eventId = value
            }
            if let value = dict["ScheduleEventId"] as? Int64 {
                self.scheduleEventId = value
            }
            if let value = dict["StepName"] as? String {
                self.stepName = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var events: [GetExecutionHistoryResponseBody.Events]?

    public var nextToken: String?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [GetExecutionHistoryResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = GetExecutionHistoryResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetExecutionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExecutionHistoryResponseBody?

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
            var model = GetExecutionHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutionsRequest : Tea.TeaModel {
    public var executionNamePrefix: String?

    public var flowName: String?

    public var limit: Int32?

    public var mapRunName: String?

    public var metadataOnly: Bool?

    public var nextToken: String?

    public var qualifier: String?

    public var startedTimeBegin: String?

    public var startedTimeEnd: String?

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
        if self.executionNamePrefix != nil {
            map["ExecutionNamePrefix"] = self.executionNamePrefix!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.mapRunName != nil {
            map["MapRunName"] = self.mapRunName!
        }
        if self.metadataOnly != nil {
            map["MetadataOnly"] = self.metadataOnly!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.qualifier != nil {
            map["Qualifier"] = self.qualifier!
        }
        if self.startedTimeBegin != nil {
            map["StartedTimeBegin"] = self.startedTimeBegin!
        }
        if self.startedTimeEnd != nil {
            map["StartedTimeEnd"] = self.startedTimeEnd!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionNamePrefix"] as? String {
            self.executionNamePrefix = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["MapRunName"] as? String {
            self.mapRunName = value
        }
        if let value = dict["MetadataOnly"] as? Bool {
            self.metadataOnly = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Qualifier"] as? String {
            self.qualifier = value
        }
        if let value = dict["StartedTimeBegin"] as? String {
            self.startedTimeBegin = value
        }
        if let value = dict["StartedTimeEnd"] as? String {
            self.startedTimeEnd = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListExecutionsResponseBody : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class Variables : Tea.TeaModel {
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
            public var variables: [ListExecutionsResponseBody.Executions.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.variables != nil {
                    var tmp : [Any] = []
                    for k in self.variables! {
                        tmp.append(k.toMap())
                    }
                    map["Variables"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Variables"] as? [Any?] {
                    var tmp : [ListExecutionsResponseBody.Executions.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = ListExecutionsResponseBody.Executions.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public var environment: ListExecutionsResponseBody.Executions.Environment?

        public var flowDefinition: String?

        public var flowName: String?

        public var input: String?

        public var name: String?

        public var output: String?

        public var startedTime: String?

        public var status: String?

        public var stoppedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.environment != nil {
                map["Environment"] = self.environment?.toMap()
            }
            if self.flowDefinition != nil {
                map["FlowDefinition"] = self.flowDefinition!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.startedTime != nil {
                map["StartedTime"] = self.startedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stoppedTime != nil {
                map["StoppedTime"] = self.stoppedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Environment"] as? [String: Any?] {
                var model = ListExecutionsResponseBody.Executions.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["FlowDefinition"] as? String {
                self.flowDefinition = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
            if let value = dict["Input"] as? String {
                self.input = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["StartedTime"] as? String {
                self.startedTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StoppedTime"] as? String {
                self.stoppedTime = value
            }
        }
    }
    public var executions: [ListExecutionsResponseBody.Executions]?

    public var nextToken: String?

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
        if self.executions != nil {
            var tmp : [Any] = []
            for k in self.executions! {
                tmp.append(k.toMap())
            }
            map["Executions"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Executions"] as? [Any?] {
            var tmp : [ListExecutionsResponseBody.Executions] = []
            for v in value {
                if v != nil {
                    var model = ListExecutionsResponseBody.Executions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executions = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionsResponseBody?

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
            var model = ListExecutionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowAliasesRequest : Tea.TeaModel {
    public var flowName: String?

    public var limit: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListFlowAliasesResponseBody : Tea.TeaModel {
    public class Aliases : Tea.TeaModel {
        public class RoutingConfigurations : Tea.TeaModel {
            public var version: String?

            public var weight: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["Weight"] as? String {
                    self.weight = value
                }
            }
        }
        public var createdTime: String?

        public var description_: String?

        public var name: String?

        public var routingConfigurations: [ListFlowAliasesResponseBody.Aliases.RoutingConfigurations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.routingConfigurations != nil {
                var tmp : [Any] = []
                for k in self.routingConfigurations! {
                    tmp.append(k.toMap())
                }
                map["RoutingConfigurations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RoutingConfigurations"] as? [Any?] {
                var tmp : [ListFlowAliasesResponseBody.Aliases.RoutingConfigurations] = []
                for v in value {
                    if v != nil {
                        var model = ListFlowAliasesResponseBody.Aliases.RoutingConfigurations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routingConfigurations = tmp
            }
        }
    }
    public var aliases: [ListFlowAliasesResponseBody.Aliases]?

    public var nextToken: String?

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
        if self.aliases != nil {
            var tmp : [Any] = []
            for k in self.aliases! {
                tmp.append(k.toMap())
            }
            map["Aliases"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Aliases"] as? [Any?] {
            var tmp : [ListFlowAliasesResponseBody.Aliases] = []
            for v in value {
                if v != nil {
                    var model = ListFlowAliasesResponseBody.Aliases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aliases = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFlowAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowAliasesResponseBody?

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
            var model = ListFlowAliasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowVersionsRequest : Tea.TeaModel {
    public var flowName: String?

    public var limit: String?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Limit"] as? String {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListFlowVersionsResponseBody : Tea.TeaModel {
    public class FlowVersions : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var flowVersions: [ListFlowVersionsResponseBody.FlowVersions]?

    public var nextToken: String?

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
        if self.flowVersions != nil {
            var tmp : [Any] = []
            for k in self.flowVersions! {
                tmp.append(k.toMap())
            }
            map["FlowVersions"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowVersions"] as? [Any?] {
            var tmp : [ListFlowVersionsResponseBody.FlowVersions] = []
            for v in value {
                if v != nil {
                    var model = ListFlowVersionsResponseBody.FlowVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flowVersions = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFlowVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowVersionsResponseBody?

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
            var model = ListFlowVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListFlowsResponseBody : Tea.TeaModel {
    public class Flows : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class Variables : Tea.TeaModel {
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
            public var variables: [ListFlowsResponseBody.Flows.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.variables != nil {
                    var tmp : [Any] = []
                    for k in self.variables! {
                        tmp.append(k.toMap())
                    }
                    map["Variables"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Variables"] as? [Any?] {
                    var tmp : [ListFlowsResponseBody.Flows.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = ListFlowsResponseBody.Flows.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public var createdTime: String?

        public var definition: String?

        public var description_: String?

        public var environment: ListFlowsResponseBody.Flows.Environment?

        public var executionMode: String?

        public var id: String?

        public var lastModifiedTime: String?

        public var name: String?

        public var roleArn: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.definition != nil {
                map["Definition"] = self.definition!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.environment != nil {
                map["Environment"] = self.environment?.toMap()
            }
            if self.executionMode != nil {
                map["ExecutionMode"] = self.executionMode!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Definition"] as? String {
                self.definition = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Environment"] as? [String: Any?] {
                var model = ListFlowsResponseBody.Flows.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["ExecutionMode"] as? String {
                self.executionMode = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["LastModifiedTime"] as? String {
                self.lastModifiedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var flows: [ListFlowsResponseBody.Flows]?

    public var nextToken: String?

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
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Flows"] as? [Any?] {
            var tmp : [ListFlowsResponseBody.Flows] = []
            for v in value {
                if v != nil {
                    var model = ListFlowsResponseBody.Flows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flows = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFlowsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowsResponseBody?

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
            var model = ListFlowsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSchedulesRequest : Tea.TeaModel {
    public var flowName: String?

    public var limit: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListSchedulesResponseBody : Tea.TeaModel {
    public class Schedules : Tea.TeaModel {
        public var createdTime: String?

        public var cronExpression: String?

        public var description_: String?

        public var enable: Bool?

        public var lastModifiedTime: String?

        public var payload: String?

        public var scheduleId: String?

        public var scheduleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.scheduleId != nil {
                map["ScheduleId"] = self.scheduleId!
            }
            if self.scheduleName != nil {
                map["ScheduleName"] = self.scheduleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["CronExpression"] as? String {
                self.cronExpression = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["LastModifiedTime"] as? String {
                self.lastModifiedTime = value
            }
            if let value = dict["Payload"] as? String {
                self.payload = value
            }
            if let value = dict["ScheduleId"] as? String {
                self.scheduleId = value
            }
            if let value = dict["ScheduleName"] as? String {
                self.scheduleName = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var schedules: [ListSchedulesResponseBody.Schedules]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Schedules"] as? [Any?] {
            var tmp : [ListSchedulesResponseBody.Schedules] = []
            for v in value {
                if v != nil {
                    var model = ListSchedulesResponseBody.Schedules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schedules = tmp
        }
    }
}

public class ListSchedulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSchedulesResponseBody?

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
            var model = ListSchedulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishFlowVersionRequest : Tea.TeaModel {
    public var description_: String?

    public var flowName: String?

    public override init() {
        super.init()
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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
    }
}

public class PublishFlowVersionResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var flowName: String?

    public var requestId: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class PublishFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishFlowVersionResponseBody?

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
            var model = PublishFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReportTaskFailedRequest : Tea.TeaModel {
    public var cause: String?

    public var error: String?

    public var taskToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cause != nil {
            map["Cause"] = self.cause!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.taskToken != nil {
            map["TaskToken"] = self.taskToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cause"] as? String {
            self.cause = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["TaskToken"] as? String {
            self.taskToken = value
        }
    }
}

public class ReportTaskFailedResponseBody : Tea.TeaModel {
    public var eventId: Int64?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? Int64 {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReportTaskFailedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportTaskFailedResponseBody?

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
            var model = ReportTaskFailedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReportTaskSucceededRequest : Tea.TeaModel {
    public var output: String?

    public var taskToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.taskToken != nil {
            map["TaskToken"] = self.taskToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["TaskToken"] as? String {
            self.taskToken = value
        }
    }
}

public class ReportTaskSucceededResponseBody : Tea.TeaModel {
    public var eventId: Int64?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? Int64 {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReportTaskSucceededResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportTaskSucceededResponseBody?

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
            var model = ReportTaskSucceededResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartExecutionRequest : Tea.TeaModel {
    public var callbackFnFTaskToken: String?

    public var executionName: String?

    public var flowName: String?

    public var input: String?

    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackFnFTaskToken != nil {
            map["CallbackFnFTaskToken"] = self.callbackFnFTaskToken!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.qualifier != nil {
            map["Qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackFnFTaskToken"] as? String {
            self.callbackFnFTaskToken = value
        }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["Qualifier"] as? String {
            self.qualifier = value
        }
    }
}

public class StartExecutionResponseBody : Tea.TeaModel {
    public var flowDefinition: String?

    public var flowName: String?

    public var input: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowDefinition != nil {
            map["FlowDefinition"] = self.flowDefinition!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowDefinition"] as? String {
            self.flowDefinition = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartedTime"] as? String {
            self.startedTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StoppedTime"] as? String {
            self.stoppedTime = value
        }
    }
}

public class StartExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartExecutionResponseBody?

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
            var model = StartExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartSyncExecutionRequest : Tea.TeaModel {
    public var executionName: String?

    public var flowName: String?

    public var input: String?

    public var qualifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.qualifier != nil {
            map["Qualifier"] = self.qualifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["Qualifier"] as? String {
            self.qualifier = value
        }
    }
}

public class StartSyncExecutionResponseBody : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [StartSyncExecutionResponseBody.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [StartSyncExecutionResponseBody.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = StartSyncExecutionResponseBody.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var environment: StartSyncExecutionResponseBody.Environment?

    public var errorCode: String?

    public var errorMessage: String?

    public var flowName: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = StartSyncExecutionResponseBody.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartedTime"] as? String {
            self.startedTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StoppedTime"] as? String {
            self.stoppedTime = value
        }
    }
}

public class StartSyncExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSyncExecutionResponseBody?

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
            var model = StartSyncExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopExecutionRequest : Tea.TeaModel {
    public var cause: String?

    public var error: String?

    public var executionName: String?

    public var flowName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cause != nil {
            map["Cause"] = self.cause!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cause"] as? String {
            self.cause = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
    }
}

public class StopExecutionResponseBody : Tea.TeaModel {
    public var flowDefinition: String?

    public var flowName: String?

    public var input: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var roleArn: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowDefinition != nil {
            map["FlowDefinition"] = self.flowDefinition!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowDefinition"] as? String {
            self.flowDefinition = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Input"] as? String {
            self.input = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["StartedTime"] as? String {
            self.startedTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StoppedTime"] as? String {
            self.stoppedTime = value
        }
    }
}

public class StopExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopExecutionResponseBody?

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
            var model = StopExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFlowRequest : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [UpdateFlowRequest.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [UpdateFlowRequest.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = UpdateFlowRequest.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var definition: String?

    public var description_: String?

    public var environment: UpdateFlowRequest.Environment?

    public var name: String?

    public var roleArn: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = UpdateFlowRequest.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdateFlowShrinkRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var environmentShrink: String?

    public var name: String?

    public var roleArn: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environmentShrink != nil {
            map["Environment"] = self.environmentShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environmentShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdateFlowResponseBody : Tea.TeaModel {
    public class Environment : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
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
        public var variables: [UpdateFlowResponseBody.Environment.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [UpdateFlowResponseBody.Environment.Variables] = []
                for v in value {
                    if v != nil {
                        var model = UpdateFlowResponseBody.Environment.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var createdTime: String?

    public var definition: String?

    public var description_: String?

    public var environment: UpdateFlowResponseBody.Environment?

    public var externalStorageLocation: String?

    public var id: String?

    public var lastModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.environment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment?.toMap()
        }
        if self.externalStorageLocation != nil {
            map["ExternalStorageLocation"] = self.externalStorageLocation!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? [String: Any?] {
            var model = UpdateFlowResponseBody.Environment()
            model.fromMap(value)
            self.environment = model
        }
        if let value = dict["ExternalStorageLocation"] as? String {
            self.externalStorageLocation = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowResponseBody?

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
            var model = UpdateFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFlowAliasRequest : Tea.TeaModel {
    public class RoutingConfigurations : Tea.TeaModel {
        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var description_: String?

    public var flowName: String?

    public var name: String?

    public var routingConfigurations: [UpdateFlowAliasRequest.RoutingConfigurations]?

    public override init() {
        super.init()
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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.routingConfigurations != nil {
            var tmp : [Any] = []
            for k in self.routingConfigurations! {
                tmp.append(k.toMap())
            }
            map["RoutingConfigurations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoutingConfigurations"] as? [Any?] {
            var tmp : [UpdateFlowAliasRequest.RoutingConfigurations] = []
            for v in value {
                if v != nil {
                    var model = UpdateFlowAliasRequest.RoutingConfigurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.routingConfigurations = tmp
        }
    }
}

public class UpdateFlowAliasShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var flowName: String?

    public var name: String?

    public var routingConfigurationsShrink: String?

    public override init() {
        super.init()
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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.routingConfigurationsShrink != nil {
            map["RoutingConfigurations"] = self.routingConfigurationsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RoutingConfigurations"] as? String {
            self.routingConfigurationsShrink = value
        }
    }
}

public class UpdateFlowAliasResponseBody : Tea.TeaModel {
    public class Alias : Tea.TeaModel {
        public class RoutingConfigurations : Tea.TeaModel {
            public var version: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var createdTime: String?

        public var description_: String?

        public var name: String?

        public var routingConfigurations: [UpdateFlowAliasResponseBody.Alias.RoutingConfigurations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.routingConfigurations != nil {
                var tmp : [Any] = []
                for k in self.routingConfigurations! {
                    tmp.append(k.toMap())
                }
                map["RoutingConfigurations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RoutingConfigurations"] as? [Any?] {
                var tmp : [UpdateFlowAliasResponseBody.Alias.RoutingConfigurations] = []
                for v in value {
                    if v != nil {
                        var model = UpdateFlowAliasResponseBody.Alias.RoutingConfigurations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routingConfigurations = tmp
            }
        }
    }
    public var alias: UpdateFlowAliasResponseBody.Alias?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alias?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? [String: Any?] {
            var model = UpdateFlowAliasResponseBody.Alias()
            model.fromMap(value)
            self.alias = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateFlowAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowAliasResponseBody?

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
            var model = UpdateFlowAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMapRunRequest : Tea.TeaModel {
    public var concurrency: Int64?

    public var executionName: String?

    public var flowName: String?

    public var mapRunName: String?

    public var requestId: String?

    public var toleratedFailedCount: Int64?

    public var toleratedFailedPercentage: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.mapRunName != nil {
            map["MapRunName"] = self.mapRunName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toleratedFailedCount != nil {
            map["ToleratedFailedCount"] = self.toleratedFailedCount!
        }
        if self.toleratedFailedPercentage != nil {
            map["ToleratedFailedPercentage"] = self.toleratedFailedPercentage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["MapRunName"] as? String {
            self.mapRunName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ToleratedFailedCount"] as? Int64 {
            self.toleratedFailedCount = value
        }
        if let value = dict["ToleratedFailedPercentage"] as? Double {
            self.toleratedFailedPercentage = value
        }
    }
}

public class UpdateMapRunResponseBody : Tea.TeaModel {
    public var concurrency: Int64?

    public var executionName: String?

    public var flowName: String?

    public var mapRunName: String?

    public var requestId: String?

    public var toleratedFailedCount: Int64?

    public var toleratedFailedPercentage: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.mapRunName != nil {
            map["MapRunName"] = self.mapRunName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toleratedFailedCount != nil {
            map["ToleratedFailedCount"] = self.toleratedFailedCount!
        }
        if self.toleratedFailedPercentage != nil {
            map["ToleratedFailedPercentage"] = self.toleratedFailedPercentage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["ExecutionName"] as? String {
            self.executionName = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["MapRunName"] as? String {
            self.mapRunName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ToleratedFailedCount"] as? Int64 {
            self.toleratedFailedCount = value
        }
        if let value = dict["ToleratedFailedPercentage"] as? Double {
            self.toleratedFailedPercentage = value
        }
    }
}

public class UpdateMapRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMapRunResponseBody?

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
            var model = UpdateMapRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScheduleRequest : Tea.TeaModel {
    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var flowName: String?

    public var payload: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
    }
}

public class UpdateScheduleResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var lastModifiedTime: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleId != nil {
            map["ScheduleId"] = self.scheduleId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["CronExpression"] as? String {
            self.cronExpression = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["Payload"] as? String {
            self.payload = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScheduleId"] as? String {
            self.scheduleId = value
        }
        if let value = dict["ScheduleName"] as? String {
            self.scheduleName = value
        }
    }
}

public class UpdateScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScheduleResponseBody?

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
            var model = UpdateScheduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
