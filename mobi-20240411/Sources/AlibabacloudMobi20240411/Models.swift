import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAppFromTemplateRequest : Tea.TeaModel {
    public var actualParameters: String?

    public var agentId: String?

    public var connectionsContent: String?

    public var databasesContent: String?

    public var description_: String?

    public var from: String?

    public var icon: String?

    public var name: String?

    public var templateId: String?

    public var type: String?

    public var variablesContent: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actualParameters != nil {
            map["ActualParameters"] = self.actualParameters!
        }
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.connectionsContent != nil {
            map["ConnectionsContent"] = self.connectionsContent!
        }
        if self.databasesContent != nil {
            map["DatabasesContent"] = self.databasesContent!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.icon != nil {
            map["Icon"] = self.icon!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.variablesContent != nil {
            map["VariablesContent"] = self.variablesContent!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActualParameters"] as? String {
            self.actualParameters = value
        }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["ConnectionsContent"] as? String {
            self.connectionsContent = value
        }
        if let value = dict["DatabasesContent"] as? String {
            self.databasesContent = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["Icon"] as? String {
            self.icon = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VariablesContent"] as? String {
            self.variablesContent = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateAppFromTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var icon: String?

        public var name: String?

        public var workspaceId: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Icon"] as? String {
                self.icon = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var data: CreateAppFromTemplateResponseBody.Data?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAppFromTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAppFromTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppFromTemplateResponseBody?

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
            var model = CreateAppFromTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
