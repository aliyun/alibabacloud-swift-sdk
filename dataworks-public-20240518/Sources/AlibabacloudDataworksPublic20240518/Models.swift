import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AbolishDeploymentRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class AbolishDeploymentResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AbolishDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbolishDeploymentResponseBody?

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
            var model = AbolishDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeploymentRequest : Tea.TeaModel {
    public var description_: String?

    public var objectIds: [String]?

    public var projectId: String?

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
        if self.objectIds != nil {
            map["ObjectIds"] = self.objectIds!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
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
        if dict.keys.contains("ObjectIds") {
            self.objectIds = dict["ObjectIds"] as! [String]
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateDeploymentShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var objectIdsShrink: String?

    public var projectId: String?

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
        if self.objectIdsShrink != nil {
            map["ObjectIds"] = self.objectIdsShrink!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
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
        if dict.keys.contains("ObjectIds") {
            self.objectIdsShrink = dict["ObjectIds"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateDeploymentResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeploymentResponseBody?

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
            var model = CreateDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFunctionRequest : Tea.TeaModel {
    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class CreateFunctionResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionResponseBody?

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
            var model = CreateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNodeRequest : Tea.TeaModel {
    public var containerId: String?

    public var projectId: String?

    public var scene: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerId != nil {
            map["ContainerId"] = self.containerId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerId") {
            self.containerId = dict["ContainerId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class CreateNodeResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNodeResponseBody?

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
            var model = CreateNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceRequest : Tea.TeaModel {
    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class CreateResourceResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceResponseBody?

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
            var model = CreateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkflowDefinitionRequest : Tea.TeaModel {
    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class CreateWorkflowDefinitionResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWorkflowDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkflowDefinitionResponseBody?

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
            var model = CreateWorkflowDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFunctionRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteFunctionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionResponseBody?

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
            var model = DeleteFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNodeRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteNodeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodeResponseBody?

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
            var model = DeleteNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteResourceResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceResponseBody?

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
            var model = DeleteResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkflowDefinitionRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteWorkflowDefinitionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteWorkflowDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkflowDefinitionResponseBody?

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
            var model = DeleteWorkflowDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecDeploymentStageRequest : Tea.TeaModel {
    public var code: String?

    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ExecDeploymentStageResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ExecDeploymentStageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDeploymentStageResponseBody?

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
            var model = ExecDeploymentStageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeploymentRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetDeploymentResponseBody : Tea.TeaModel {
    public class Pipeline : Tea.TeaModel {
        public class Stages : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var detail: [String: Any]?

            public var message: String?

            public var name: String?

            public var status: String?

            public var step: Int32?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.step != nil {
                    map["Step"] = self.step!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Detail") {
                    self.detail = dict["Detail"] as! [String: Any]
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Step") {
                    self.step = dict["Step"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var creator: String?

        public var id: String?

        public var message: String?

        public var modifyTime: Int64?

        public var projectId: String?

        public var stages: [GetDeploymentResponseBody.Pipeline.Stages]?

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
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.stages != nil {
                var tmp : [Any] = []
                for k in self.stages! {
                    tmp.append(k.toMap())
                }
                map["Stages"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Stages") {
                var tmp : [GetDeploymentResponseBody.Pipeline.Stages] = []
                for v in dict["Stages"] as! [Any] {
                    var model = GetDeploymentResponseBody.Pipeline.Stages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stages = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var pipeline: GetDeploymentResponseBody.Pipeline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pipeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pipeline != nil {
            map["Pipeline"] = self.pipeline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pipeline") {
            var model = GetDeploymentResponseBody.Pipeline()
            model.fromMap(dict["Pipeline"] as! [String: Any])
            self.pipeline = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeploymentResponseBody?

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
            var model = GetDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFunctionRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetFunctionResponseBody : Tea.TeaModel {
    public class Function : Tea.TeaModel {
        public var createTime: Int64?

        public var id: String?

        public var modifyTime: Int64?

        public var name: String?

        public var owner: String?

        public var projectId: String?

        public var spec: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
        }
    }
    public var function: GetFunctionResponseBody.Function?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.function != nil {
            map["Function"] = self.function?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Function") {
            var model = GetFunctionResponseBody.Function()
            model.fromMap(dict["Function"] as! [String: Any])
            self.function = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionResponseBody?

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
            var model = GetFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetNodeResponseBody : Tea.TeaModel {
    public class Node : Tea.TeaModel {
        public var createTime: Int64?

        public var id: String?

        public var modifyTime: Int64?

        public var name: String?

        public var owner: String?

        public var projectId: String?

        public var spec: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
        }
    }
    public var node: GetNodeResponseBody.Node?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.node?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.node != nil {
            map["Node"] = self.node?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Node") {
            var model = GetNodeResponseBody.Node()
            model.fromMap(dict["Node"] as! [String: Any])
            self.node = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeResponseBody?

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
            var model = GetNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetResourceResponseBody : Tea.TeaModel {
    public class Resource : Tea.TeaModel {
        public var createTime: Int64?

        public var id: String?

        public var modifyTime: Int64?

        public var name: String?

        public var owner: String?

        public var projectId: String?

        public var spec: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
        }
    }
    public var requestId: String?

    public var resource: GetResourceResponseBody.Resource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resource") {
            var model = GetResourceResponseBody.Resource()
            model.fromMap(dict["Resource"] as! [String: Any])
            self.resource = model
        }
    }
}

public class GetResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceResponseBody?

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
            var model = GetResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkflowDefinitionRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetWorkflowDefinitionResponseBody : Tea.TeaModel {
    public class WorkflowDefinition : Tea.TeaModel {
        public var createTime: Int64?

        public var id: String?

        public var modifyTime: Int64?

        public var name: String?

        public var owner: String?

        public var projectId: String?

        public var spec: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
        }
    }
    public var requestId: String?

    public var workflowDefinition: GetWorkflowDefinitionResponseBody.WorkflowDefinition?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workflowDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workflowDefinition != nil {
            map["WorkflowDefinition"] = self.workflowDefinition?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkflowDefinition") {
            var model = GetWorkflowDefinitionResponseBody.WorkflowDefinition()
            model.fromMap(dict["WorkflowDefinition"] as! [String: Any])
            self.workflowDefinition = model
        }
    }
}

public class GetWorkflowDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkflowDefinitionResponseBody?

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
            var model = GetWorkflowDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeploymentsRequest : Tea.TeaModel {
    public var creator: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

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
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListDeploymentsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class Deployments : Tea.TeaModel {
            public class Stages : Tea.TeaModel {
                public var code: String?

                public var description_: String?

                public var detail: [String: Any]?

                public var message: String?

                public var name: String?

                public var status: String?

                public var step: Int32?

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
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.detail != nil {
                        map["Detail"] = self.detail!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.step != nil {
                        map["Step"] = self.step!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Detail") {
                        self.detail = dict["Detail"] as! [String: Any]
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("Step") {
                        self.step = dict["Step"] as! Int32
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var createTime: Int64?

            public var creator: String?

            public var id: String?

            public var message: String?

            public var modifyTime: Int64?

            public var projectId: String?

            public var stages: [ListDeploymentsResponseBody.PagingInfo.Deployments.Stages]?

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
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.stages != nil {
                    var tmp : [Any] = []
                    for k in self.stages! {
                        tmp.append(k.toMap())
                    }
                    map["Stages"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Creator") {
                    self.creator = dict["Creator"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Stages") {
                    var tmp : [ListDeploymentsResponseBody.PagingInfo.Deployments.Stages] = []
                    for v in dict["Stages"] as! [Any] {
                        var model = ListDeploymentsResponseBody.PagingInfo.Deployments.Stages()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.stages = tmp
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var deployments: [ListDeploymentsResponseBody.PagingInfo.Deployments]?

        public var pageNumber: String?

        public var pageSize: String?

        public var totalCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployments != nil {
                var tmp : [Any] = []
                for k in self.deployments! {
                    tmp.append(k.toMap())
                }
                map["Deployments"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Deployments") {
                var tmp : [ListDeploymentsResponseBody.PagingInfo.Deployments] = []
                for v in dict["Deployments"] as! [Any] {
                    var model = ListDeploymentsResponseBody.PagingInfo.Deployments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deployments = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
            }
        }
    }
    public var pagingInfo: ListDeploymentsResponseBody.PagingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pagingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pagingInfo != nil {
            map["PagingInfo"] = self.pagingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PagingInfo") {
            var model = ListDeploymentsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeploymentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentsResponseBody?

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
            var model = ListDeploymentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionsRequest : Tea.TeaModel {
    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

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
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListFunctionsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class Functions : Tea.TeaModel {
            public class DataSource : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class RuntimeResource : Tea.TeaModel {
                public var resourceGroupId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resourceGroupId != nil {
                        map["ResourceGroupId"] = self.resourceGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ResourceGroupId") {
                        self.resourceGroupId = dict["ResourceGroupId"] as! String
                    }
                }
            }
            public class Script : Tea.TeaModel {
                public class Runtime : Tea.TeaModel {
                    public var command: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.command != nil {
                            map["Command"] = self.command!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Command") {
                            self.command = dict["Command"] as! String
                        }
                    }
                }
                public var id: String?

                public var path: String?

                public var runtime: ListFunctionsResponseBody.PagingInfo.Functions.Script.Runtime?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.runtime?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.runtime != nil {
                        map["Runtime"] = self.runtime?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Runtime") {
                        var model = ListFunctionsResponseBody.PagingInfo.Functions.Script.Runtime()
                        model.fromMap(dict["Runtime"] as! [String: Any])
                        self.runtime = model
                    }
                }
            }
            public var armResource: String?

            public var className: String?

            public var commandDescription: String?

            public var createTime: Int64?

            public var dataSource: ListFunctionsResponseBody.PagingInfo.Functions.DataSource?

            public var databaseName: String?

            public var description_: String?

            public var embeddedCode: String?

            public var embeddedCodeType: String?

            public var embeddedResourceType: String?

            public var exampleDescription: String?

            public var fileResource: String?

            public var id: String?

            public var modifyTime: Int64?

            public var name: String?

            public var owner: String?

            public var parameterDescription: String?

            public var projectId: String?

            public var returnValueDescription: String?

            public var runtimeResource: ListFunctionsResponseBody.PagingInfo.Functions.RuntimeResource?

            public var script: ListFunctionsResponseBody.PagingInfo.Functions.Script?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSource?.validate()
                try self.runtimeResource?.validate()
                try self.script?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.armResource != nil {
                    map["ArmResource"] = self.armResource!
                }
                if self.className != nil {
                    map["ClassName"] = self.className!
                }
                if self.commandDescription != nil {
                    map["CommandDescription"] = self.commandDescription!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource?.toMap()
                }
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.embeddedCode != nil {
                    map["EmbeddedCode"] = self.embeddedCode!
                }
                if self.embeddedCodeType != nil {
                    map["EmbeddedCodeType"] = self.embeddedCodeType!
                }
                if self.embeddedResourceType != nil {
                    map["EmbeddedResourceType"] = self.embeddedResourceType!
                }
                if self.exampleDescription != nil {
                    map["ExampleDescription"] = self.exampleDescription!
                }
                if self.fileResource != nil {
                    map["FileResource"] = self.fileResource!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.parameterDescription != nil {
                    map["ParameterDescription"] = self.parameterDescription!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.returnValueDescription != nil {
                    map["ReturnValueDescription"] = self.returnValueDescription!
                }
                if self.runtimeResource != nil {
                    map["RuntimeResource"] = self.runtimeResource?.toMap()
                }
                if self.script != nil {
                    map["Script"] = self.script?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArmResource") {
                    self.armResource = dict["ArmResource"] as! String
                }
                if dict.keys.contains("ClassName") {
                    self.className = dict["ClassName"] as! String
                }
                if dict.keys.contains("CommandDescription") {
                    self.commandDescription = dict["CommandDescription"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataSource") {
                    var model = ListFunctionsResponseBody.PagingInfo.Functions.DataSource()
                    model.fromMap(dict["DataSource"] as! [String: Any])
                    self.dataSource = model
                }
                if dict.keys.contains("DatabaseName") {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EmbeddedCode") {
                    self.embeddedCode = dict["EmbeddedCode"] as! String
                }
                if dict.keys.contains("EmbeddedCodeType") {
                    self.embeddedCodeType = dict["EmbeddedCodeType"] as! String
                }
                if dict.keys.contains("EmbeddedResourceType") {
                    self.embeddedResourceType = dict["EmbeddedResourceType"] as! String
                }
                if dict.keys.contains("ExampleDescription") {
                    self.exampleDescription = dict["ExampleDescription"] as! String
                }
                if dict.keys.contains("FileResource") {
                    self.fileResource = dict["FileResource"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("ParameterDescription") {
                    self.parameterDescription = dict["ParameterDescription"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("ReturnValueDescription") {
                    self.returnValueDescription = dict["ReturnValueDescription"] as! String
                }
                if dict.keys.contains("RuntimeResource") {
                    var model = ListFunctionsResponseBody.PagingInfo.Functions.RuntimeResource()
                    model.fromMap(dict["RuntimeResource"] as! [String: Any])
                    self.runtimeResource = model
                }
                if dict.keys.contains("Script") {
                    var model = ListFunctionsResponseBody.PagingInfo.Functions.Script()
                    model.fromMap(dict["Script"] as! [String: Any])
                    self.script = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var functions: [ListFunctionsResponseBody.PagingInfo.Functions]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.functions != nil {
                var tmp : [Any] = []
                for k in self.functions! {
                    tmp.append(k.toMap())
                }
                map["Functions"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Functions") {
                var tmp : [ListFunctionsResponseBody.PagingInfo.Functions] = []
                for v in dict["Functions"] as! [Any] {
                    var model = ListFunctionsResponseBody.PagingInfo.Functions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.functions = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pagingInfo: ListFunctionsResponseBody.PagingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pagingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pagingInfo != nil {
            map["PagingInfo"] = self.pagingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PagingInfo") {
            var model = ListFunctionsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionsResponseBody?

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
            var model = ListFunctionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeDependenciesRequest : Tea.TeaModel {
    public var id: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListNodeDependenciesResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public class DataSource : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Inputs : Tea.TeaModel {
                public class NodeOutputs : Tea.TeaModel {
                    public var data: String?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Data") {
                            self.data = dict["Data"] as! String
                        }
                    }
                }
                public class Tables : Tea.TeaModel {
                    public var guid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.guid != nil {
                            map["Guid"] = self.guid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Guid") {
                            self.guid = dict["Guid"] as! String
                        }
                    }
                }
                public class Variables : Tea.TeaModel {
                    public class Node : Tea.TeaModel {
                        public var output: String?

                        public override init() {
                            super.init()
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
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Output") {
                                self.output = dict["Output"] as! String
                            }
                        }
                    }
                    public var artifactType: String?

                    public var id: String?

                    public var name: String?

                    public var node: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Variables.Node?

                    public var scope: String?

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
                        try self.node?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.artifactType != nil {
                            map["ArtifactType"] = self.artifactType!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.node != nil {
                            map["Node"] = self.node?.toMap()
                        }
                        if self.scope != nil {
                            map["Scope"] = self.scope!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ArtifactType") {
                            self.artifactType = dict["ArtifactType"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Node") {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Variables.Node()
                            model.fromMap(dict["Node"] as! [String: Any])
                            self.node = model
                        }
                        if dict.keys.contains("Scope") {
                            self.scope = dict["Scope"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var nodeOutputs: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.NodeOutputs]?

                public var tables: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Tables]?

                public var variables: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Variables]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeOutputs != nil {
                        var tmp : [Any] = []
                        for k in self.nodeOutputs! {
                            tmp.append(k.toMap())
                        }
                        map["NodeOutputs"] = tmp
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.variables != nil {
                        var tmp : [Any] = []
                        for k in self.variables! {
                            tmp.append(k.toMap())
                        }
                        map["Variables"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeOutputs") {
                        var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.NodeOutputs] = []
                        for v in dict["NodeOutputs"] as! [Any] {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.NodeOutputs()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.nodeOutputs = tmp
                    }
                    if dict.keys.contains("Tables") {
                        var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Tables] = []
                        for v in dict["Tables"] as! [Any] {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Tables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tables = tmp
                    }
                    if dict.keys.contains("Variables") {
                        var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Variables] = []
                        for v in dict["Variables"] as! [Any] {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs.Variables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.variables = tmp
                    }
                }
            }
            public class Outputs : Tea.TeaModel {
                public class NodeOutputs : Tea.TeaModel {
                    public var data: String?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Data") {
                            self.data = dict["Data"] as! String
                        }
                    }
                }
                public class Tables : Tea.TeaModel {
                    public var guid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.guid != nil {
                            map["Guid"] = self.guid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Guid") {
                            self.guid = dict["Guid"] as! String
                        }
                    }
                }
                public class Variables : Tea.TeaModel {
                    public class Node : Tea.TeaModel {
                        public var output: String?

                        public override init() {
                            super.init()
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
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Output") {
                                self.output = dict["Output"] as! String
                            }
                        }
                    }
                    public var artifactType: String?

                    public var id: String?

                    public var name: String?

                    public var node: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Variables.Node?

                    public var scope: String?

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
                        try self.node?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.artifactType != nil {
                            map["ArtifactType"] = self.artifactType!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.node != nil {
                            map["Node"] = self.node?.toMap()
                        }
                        if self.scope != nil {
                            map["Scope"] = self.scope!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ArtifactType") {
                            self.artifactType = dict["ArtifactType"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Node") {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Variables.Node()
                            model.fromMap(dict["Node"] as! [String: Any])
                            self.node = model
                        }
                        if dict.keys.contains("Scope") {
                            self.scope = dict["Scope"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var nodeOutputs: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.NodeOutputs]?

                public var tables: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Tables]?

                public var variables: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Variables]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeOutputs != nil {
                        var tmp : [Any] = []
                        for k in self.nodeOutputs! {
                            tmp.append(k.toMap())
                        }
                        map["NodeOutputs"] = tmp
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.variables != nil {
                        var tmp : [Any] = []
                        for k in self.variables! {
                            tmp.append(k.toMap())
                        }
                        map["Variables"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeOutputs") {
                        var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.NodeOutputs] = []
                        for v in dict["NodeOutputs"] as! [Any] {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.NodeOutputs()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.nodeOutputs = tmp
                    }
                    if dict.keys.contains("Tables") {
                        var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Tables] = []
                        for v in dict["Tables"] as! [Any] {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Tables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tables = tmp
                    }
                    if dict.keys.contains("Variables") {
                        var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Variables] = []
                        for v in dict["Variables"] as! [Any] {
                            var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs.Variables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.variables = tmp
                    }
                }
            }
            public class RuntimeResource : Tea.TeaModel {
                public var resourceGroupId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resourceGroupId != nil {
                        map["ResourceGroupId"] = self.resourceGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ResourceGroupId") {
                        self.resourceGroupId = dict["ResourceGroupId"] as! String
                    }
                }
            }
            public class Script : Tea.TeaModel {
                public class Runtime : Tea.TeaModel {
                    public var command: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.command != nil {
                            map["Command"] = self.command!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Command") {
                            self.command = dict["Command"] as! String
                        }
                    }
                }
                public var id: String?

                public var path: String?

                public var runtime: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Script.Runtime?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.runtime?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.runtime != nil {
                        map["Runtime"] = self.runtime?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Runtime") {
                        var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Script.Runtime()
                        model.fromMap(dict["Runtime"] as! [String: Any])
                        self.runtime = model
                    }
                }
            }
            public class Strategy : Tea.TeaModel {
                public var instanceMode: String?

                public var rerunInterval: Int32?

                public var rerunMode: String?

                public var rerunTimes: Int32?

                public var timeout: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceMode != nil {
                        map["InstanceMode"] = self.instanceMode!
                    }
                    if self.rerunInterval != nil {
                        map["RerunInterval"] = self.rerunInterval!
                    }
                    if self.rerunMode != nil {
                        map["RerunMode"] = self.rerunMode!
                    }
                    if self.rerunTimes != nil {
                        map["RerunTimes"] = self.rerunTimes!
                    }
                    if self.timeout != nil {
                        map["Timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceMode") {
                        self.instanceMode = dict["InstanceMode"] as! String
                    }
                    if dict.keys.contains("RerunInterval") {
                        self.rerunInterval = dict["RerunInterval"] as! Int32
                    }
                    if dict.keys.contains("RerunMode") {
                        self.rerunMode = dict["RerunMode"] as! String
                    }
                    if dict.keys.contains("RerunTimes") {
                        self.rerunTimes = dict["RerunTimes"] as! Int32
                    }
                    if dict.keys.contains("Timeout") {
                        self.timeout = dict["Timeout"] as! Int32
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
            public class Trigger : Tea.TeaModel {
                public var cron: String?

                public var endTime: String?

                public var id: String?

                public var startTime: String?

                public var timezone: String?

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
                    if self.cron != nil {
                        map["Cron"] = self.cron!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timezone != nil {
                        map["Timezone"] = self.timezone!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cron") {
                        self.cron = dict["Cron"] as! String
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("Timezone") {
                        self.timezone = dict["Timezone"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var createTime: Int64?

            public var dataSource: ListNodeDependenciesResponseBody.PagingInfo.Nodes.DataSource?

            public var description_: String?

            public var id: String?

            public var inputs: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs?

            public var modifyTime: Int64?

            public var name: String?

            public var outputs: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs?

            public var owner: String?

            public var projectId: String?

            public var recurrence: String?

            public var runtimeResource: ListNodeDependenciesResponseBody.PagingInfo.Nodes.RuntimeResource?

            public var script: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Script?

            public var strategy: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Strategy?

            public var tags: [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Tags]?

            public var taskId: String?

            public var trigger: ListNodeDependenciesResponseBody.PagingInfo.Nodes.Trigger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSource?.validate()
                try self.inputs?.validate()
                try self.outputs?.validate()
                try self.runtimeResource?.validate()
                try self.script?.validate()
                try self.strategy?.validate()
                try self.trigger?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.inputs != nil {
                    map["Inputs"] = self.inputs?.toMap()
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.outputs != nil {
                    map["Outputs"] = self.outputs?.toMap()
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.recurrence != nil {
                    map["Recurrence"] = self.recurrence!
                }
                if self.runtimeResource != nil {
                    map["RuntimeResource"] = self.runtimeResource?.toMap()
                }
                if self.script != nil {
                    map["Script"] = self.script?.toMap()
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy?.toMap()
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.trigger != nil {
                    map["Trigger"] = self.trigger?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataSource") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.DataSource()
                    model.fromMap(dict["DataSource"] as! [String: Any])
                    self.dataSource = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Inputs") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Inputs()
                    model.fromMap(dict["Inputs"] as! [String: Any])
                    self.inputs = model
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Outputs") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Outputs()
                    model.fromMap(dict["Outputs"] as! [String: Any])
                    self.outputs = model
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Recurrence") {
                    self.recurrence = dict["Recurrence"] as! String
                }
                if dict.keys.contains("RuntimeResource") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.RuntimeResource()
                    model.fromMap(dict["RuntimeResource"] as! [String: Any])
                    self.runtimeResource = model
                }
                if dict.keys.contains("Script") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Script()
                    model.fromMap(dict["Script"] as! [String: Any])
                    self.script = model
                }
                if dict.keys.contains("Strategy") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Strategy()
                    model.fromMap(dict["Strategy"] as! [String: Any])
                    self.strategy = model
                }
                if dict.keys.contains("Tags") {
                    var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("Trigger") {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes.Trigger()
                    model.fromMap(dict["Trigger"] as! [String: Any])
                    self.trigger = model
                }
            }
        }
        public var nodes: [ListNodeDependenciesResponseBody.PagingInfo.Nodes]?

        public var pageNumber: String?

        public var pageSize: String?

        public var totalCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [ListNodeDependenciesResponseBody.PagingInfo.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = ListNodeDependenciesResponseBody.PagingInfo.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
            }
        }
    }
    public var pagingInfo: ListNodeDependenciesResponseBody.PagingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pagingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pagingInfo != nil {
            map["PagingInfo"] = self.pagingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PagingInfo") {
            var model = ListNodeDependenciesResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListNodeDependenciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeDependenciesResponseBody?

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
            var model = ListNodeDependenciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var containerId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var rerunMode: String?

    public var rerurrence: String?

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
        if self.containerId != nil {
            map["ContainerId"] = self.containerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.rerunMode != nil {
            map["RerunMode"] = self.rerunMode!
        }
        if self.rerurrence != nil {
            map["Rerurrence"] = self.rerurrence!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerId") {
            self.containerId = dict["ContainerId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RerunMode") {
            self.rerunMode = dict["RerunMode"] as! String
        }
        if dict.keys.contains("Rerurrence") {
            self.rerurrence = dict["Rerurrence"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public class DataSource : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Inputs : Tea.TeaModel {
                public class NodeOutputs : Tea.TeaModel {
                    public var data: String?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Data") {
                            self.data = dict["Data"] as! String
                        }
                    }
                }
                public class Tables : Tea.TeaModel {
                    public var guid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.guid != nil {
                            map["Guid"] = self.guid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Guid") {
                            self.guid = dict["Guid"] as! String
                        }
                    }
                }
                public class Variables : Tea.TeaModel {
                    public class Node : Tea.TeaModel {
                        public var output: String?

                        public override init() {
                            super.init()
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
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Output") {
                                self.output = dict["Output"] as! String
                            }
                        }
                    }
                    public var artifactType: String?

                    public var id: String?

                    public var name: String?

                    public var node: ListNodesResponseBody.PagingInfo.Nodes.Inputs.Variables.Node?

                    public var scope: String?

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
                        try self.node?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.artifactType != nil {
                            map["ArtifactType"] = self.artifactType!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.node != nil {
                            map["Node"] = self.node?.toMap()
                        }
                        if self.scope != nil {
                            map["Scope"] = self.scope!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ArtifactType") {
                            self.artifactType = dict["ArtifactType"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Node") {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Inputs.Variables.Node()
                            model.fromMap(dict["Node"] as! [String: Any])
                            self.node = model
                        }
                        if dict.keys.contains("Scope") {
                            self.scope = dict["Scope"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var nodeOutputs: [ListNodesResponseBody.PagingInfo.Nodes.Inputs.NodeOutputs]?

                public var tables: [ListNodesResponseBody.PagingInfo.Nodes.Inputs.Tables]?

                public var variables: [ListNodesResponseBody.PagingInfo.Nodes.Inputs.Variables]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeOutputs != nil {
                        var tmp : [Any] = []
                        for k in self.nodeOutputs! {
                            tmp.append(k.toMap())
                        }
                        map["NodeOutputs"] = tmp
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.variables != nil {
                        var tmp : [Any] = []
                        for k in self.variables! {
                            tmp.append(k.toMap())
                        }
                        map["Variables"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeOutputs") {
                        var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Inputs.NodeOutputs] = []
                        for v in dict["NodeOutputs"] as! [Any] {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Inputs.NodeOutputs()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.nodeOutputs = tmp
                    }
                    if dict.keys.contains("Tables") {
                        var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Inputs.Tables] = []
                        for v in dict["Tables"] as! [Any] {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Inputs.Tables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tables = tmp
                    }
                    if dict.keys.contains("Variables") {
                        var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Inputs.Variables] = []
                        for v in dict["Variables"] as! [Any] {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Inputs.Variables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.variables = tmp
                    }
                }
            }
            public class Outputs : Tea.TeaModel {
                public class NodeOutputs : Tea.TeaModel {
                    public var data: String?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Data") {
                            self.data = dict["Data"] as! String
                        }
                    }
                }
                public class Tables : Tea.TeaModel {
                    public var guid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.guid != nil {
                            map["Guid"] = self.guid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Guid") {
                            self.guid = dict["Guid"] as! String
                        }
                    }
                }
                public class Variables : Tea.TeaModel {
                    public class Node : Tea.TeaModel {
                        public var output: String?

                        public override init() {
                            super.init()
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
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Output") {
                                self.output = dict["Output"] as! String
                            }
                        }
                    }
                    public var artifactType: String?

                    public var id: String?

                    public var name: String?

                    public var node: ListNodesResponseBody.PagingInfo.Nodes.Outputs.Variables.Node?

                    public var scope: String?

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
                        try self.node?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.artifactType != nil {
                            map["ArtifactType"] = self.artifactType!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.node != nil {
                            map["Node"] = self.node?.toMap()
                        }
                        if self.scope != nil {
                            map["Scope"] = self.scope!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ArtifactType") {
                            self.artifactType = dict["ArtifactType"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Node") {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Outputs.Variables.Node()
                            model.fromMap(dict["Node"] as! [String: Any])
                            self.node = model
                        }
                        if dict.keys.contains("Scope") {
                            self.scope = dict["Scope"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var nodeOutputs: [ListNodesResponseBody.PagingInfo.Nodes.Outputs.NodeOutputs]?

                public var tables: [ListNodesResponseBody.PagingInfo.Nodes.Outputs.Tables]?

                public var variables: [ListNodesResponseBody.PagingInfo.Nodes.Outputs.Variables]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeOutputs != nil {
                        var tmp : [Any] = []
                        for k in self.nodeOutputs! {
                            tmp.append(k.toMap())
                        }
                        map["NodeOutputs"] = tmp
                    }
                    if self.tables != nil {
                        var tmp : [Any] = []
                        for k in self.tables! {
                            tmp.append(k.toMap())
                        }
                        map["Tables"] = tmp
                    }
                    if self.variables != nil {
                        var tmp : [Any] = []
                        for k in self.variables! {
                            tmp.append(k.toMap())
                        }
                        map["Variables"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeOutputs") {
                        var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Outputs.NodeOutputs] = []
                        for v in dict["NodeOutputs"] as! [Any] {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Outputs.NodeOutputs()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.nodeOutputs = tmp
                    }
                    if dict.keys.contains("Tables") {
                        var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Outputs.Tables] = []
                        for v in dict["Tables"] as! [Any] {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Outputs.Tables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tables = tmp
                    }
                    if dict.keys.contains("Variables") {
                        var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Outputs.Variables] = []
                        for v in dict["Variables"] as! [Any] {
                            var model = ListNodesResponseBody.PagingInfo.Nodes.Outputs.Variables()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.variables = tmp
                    }
                }
            }
            public class RuntimeResource : Tea.TeaModel {
                public var resourceGroupId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resourceGroupId != nil {
                        map["ResourceGroupId"] = self.resourceGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ResourceGroupId") {
                        self.resourceGroupId = dict["ResourceGroupId"] as! String
                    }
                }
            }
            public class Script : Tea.TeaModel {
                public class Runtime : Tea.TeaModel {
                    public var command: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.command != nil {
                            map["Command"] = self.command!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Command") {
                            self.command = dict["Command"] as! String
                        }
                    }
                }
                public var id: String?

                public var path: String?

                public var runtime: ListNodesResponseBody.PagingInfo.Nodes.Script.Runtime?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.runtime?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.runtime != nil {
                        map["Runtime"] = self.runtime?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Runtime") {
                        var model = ListNodesResponseBody.PagingInfo.Nodes.Script.Runtime()
                        model.fromMap(dict["Runtime"] as! [String: Any])
                        self.runtime = model
                    }
                }
            }
            public class Strategy : Tea.TeaModel {
                public var instanceMode: String?

                public var rerunInterval: Int32?

                public var rerunMode: String?

                public var rerunTimes: Int32?

                public var timeout: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceMode != nil {
                        map["InstanceMode"] = self.instanceMode!
                    }
                    if self.rerunInterval != nil {
                        map["RerunInterval"] = self.rerunInterval!
                    }
                    if self.rerunMode != nil {
                        map["RerunMode"] = self.rerunMode!
                    }
                    if self.rerunTimes != nil {
                        map["RerunTimes"] = self.rerunTimes!
                    }
                    if self.timeout != nil {
                        map["Timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceMode") {
                        self.instanceMode = dict["InstanceMode"] as! String
                    }
                    if dict.keys.contains("RerunInterval") {
                        self.rerunInterval = dict["RerunInterval"] as! Int32
                    }
                    if dict.keys.contains("RerunMode") {
                        self.rerunMode = dict["RerunMode"] as! String
                    }
                    if dict.keys.contains("RerunTimes") {
                        self.rerunTimes = dict["RerunTimes"] as! Int32
                    }
                    if dict.keys.contains("Timeout") {
                        self.timeout = dict["Timeout"] as! Int32
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
            public class Trigger : Tea.TeaModel {
                public var cron: String?

                public var endTime: String?

                public var id: String?

                public var startTime: String?

                public var timezone: String?

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
                    if self.cron != nil {
                        map["Cron"] = self.cron!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timezone != nil {
                        map["Timezone"] = self.timezone!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cron") {
                        self.cron = dict["Cron"] as! String
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("Timezone") {
                        self.timezone = dict["Timezone"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var createTime: Int64?

            public var dataSource: ListNodesResponseBody.PagingInfo.Nodes.DataSource?

            public var description_: String?

            public var id: String?

            public var inputs: ListNodesResponseBody.PagingInfo.Nodes.Inputs?

            public var modifyTime: Int64?

            public var name: String?

            public var outputs: ListNodesResponseBody.PagingInfo.Nodes.Outputs?

            public var owner: String?

            public var projectId: String?

            public var recurrence: String?

            public var runtimeResource: ListNodesResponseBody.PagingInfo.Nodes.RuntimeResource?

            public var script: ListNodesResponseBody.PagingInfo.Nodes.Script?

            public var strategy: ListNodesResponseBody.PagingInfo.Nodes.Strategy?

            public var tags: [ListNodesResponseBody.PagingInfo.Nodes.Tags]?

            public var taskId: String?

            public var trigger: ListNodesResponseBody.PagingInfo.Nodes.Trigger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSource?.validate()
                try self.inputs?.validate()
                try self.outputs?.validate()
                try self.runtimeResource?.validate()
                try self.script?.validate()
                try self.strategy?.validate()
                try self.trigger?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.inputs != nil {
                    map["Inputs"] = self.inputs?.toMap()
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.outputs != nil {
                    map["Outputs"] = self.outputs?.toMap()
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.recurrence != nil {
                    map["Recurrence"] = self.recurrence!
                }
                if self.runtimeResource != nil {
                    map["RuntimeResource"] = self.runtimeResource?.toMap()
                }
                if self.script != nil {
                    map["Script"] = self.script?.toMap()
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy?.toMap()
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.trigger != nil {
                    map["Trigger"] = self.trigger?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataSource") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.DataSource()
                    model.fromMap(dict["DataSource"] as! [String: Any])
                    self.dataSource = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Inputs") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.Inputs()
                    model.fromMap(dict["Inputs"] as! [String: Any])
                    self.inputs = model
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Outputs") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.Outputs()
                    model.fromMap(dict["Outputs"] as! [String: Any])
                    self.outputs = model
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Recurrence") {
                    self.recurrence = dict["Recurrence"] as! String
                }
                if dict.keys.contains("RuntimeResource") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.RuntimeResource()
                    model.fromMap(dict["RuntimeResource"] as! [String: Any])
                    self.runtimeResource = model
                }
                if dict.keys.contains("Script") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.Script()
                    model.fromMap(dict["Script"] as! [String: Any])
                    self.script = model
                }
                if dict.keys.contains("Strategy") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.Strategy()
                    model.fromMap(dict["Strategy"] as! [String: Any])
                    self.strategy = model
                }
                if dict.keys.contains("Tags") {
                    var tmp : [ListNodesResponseBody.PagingInfo.Nodes.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = ListNodesResponseBody.PagingInfo.Nodes.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("Trigger") {
                    var model = ListNodesResponseBody.PagingInfo.Nodes.Trigger()
                    model.fromMap(dict["Trigger"] as! [String: Any])
                    self.trigger = model
                }
            }
        }
        public var nodes: [ListNodesResponseBody.PagingInfo.Nodes]?

        public var pageNumber: String?

        public var pageSize: String?

        public var totalCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [ListNodesResponseBody.PagingInfo.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = ListNodesResponseBody.PagingInfo.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
            }
        }
    }
    public var pagingInfo: ListNodesResponseBody.PagingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pagingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pagingInfo != nil {
            map["PagingInfo"] = self.pagingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PagingInfo") {
            var model = ListNodesResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesResponseBody?

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
            var model = ListNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

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
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class Resources : Tea.TeaModel {
            public class DataSource : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Script : Tea.TeaModel {
                public class Runtime : Tea.TeaModel {
                    public var command: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.command != nil {
                            map["Command"] = self.command!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Command") {
                            self.command = dict["Command"] as! String
                        }
                    }
                }
                public var id: String?

                public var path: String?

                public var runtime: ListResourcesResponseBody.PagingInfo.Resources.Script.Runtime?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.runtime?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.runtime != nil {
                        map["Runtime"] = self.runtime?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Runtime") {
                        var model = ListResourcesResponseBody.PagingInfo.Resources.Script.Runtime()
                        model.fromMap(dict["Runtime"] as! [String: Any])
                        self.runtime = model
                    }
                }
            }
            public var createTime: Int64?

            public var dataSource: ListResourcesResponseBody.PagingInfo.Resources.DataSource?

            public var id: String?

            public var modifyTime: Int64?

            public var name: String?

            public var owner: String?

            public var projectId: String?

            public var script: ListResourcesResponseBody.PagingInfo.Resources.Script?

            public var sourcePath: String?

            public var sourceType: String?

            public var targetPath: String?

            public var targetType: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSource?.validate()
                try self.script?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource?.toMap()
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.script != nil {
                    map["Script"] = self.script?.toMap()
                }
                if self.sourcePath != nil {
                    map["SourcePath"] = self.sourcePath!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.targetPath != nil {
                    map["TargetPath"] = self.targetPath!
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DataSource") {
                    var model = ListResourcesResponseBody.PagingInfo.Resources.DataSource()
                    model.fromMap(dict["DataSource"] as! [String: Any])
                    self.dataSource = model
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Script") {
                    var model = ListResourcesResponseBody.PagingInfo.Resources.Script()
                    model.fromMap(dict["Script"] as! [String: Any])
                    self.script = model
                }
                if dict.keys.contains("SourcePath") {
                    self.sourcePath = dict["SourcePath"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("TargetPath") {
                    self.targetPath = dict["TargetPath"] as! String
                }
                if dict.keys.contains("TargetType") {
                    self.targetType = dict["TargetType"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var resources: [ListResourcesResponseBody.PagingInfo.Resources]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.resources != nil {
                var tmp : [Any] = []
                for k in self.resources! {
                    tmp.append(k.toMap())
                }
                map["Resources"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
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
            if dict.keys.contains("Resources") {
                var tmp : [ListResourcesResponseBody.PagingInfo.Resources] = []
                for v in dict["Resources"] as! [Any] {
                    var model = ListResourcesResponseBody.PagingInfo.Resources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resources = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pagingInfo: ListResourcesResponseBody.PagingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pagingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pagingInfo != nil {
            map["PagingInfo"] = self.pagingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PagingInfo") {
            var model = ListResourcesResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

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
            var model = ListResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkflowDefinitionsRequest : Tea.TeaModel {
    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

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
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListWorkflowDefinitionsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class WorkflowDefinitions : Tea.TeaModel {
            public class Script : Tea.TeaModel {
                public class Runtime : Tea.TeaModel {
                    public var command: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.command != nil {
                            map["Command"] = self.command!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Command") {
                            self.command = dict["Command"] as! String
                        }
                    }
                }
                public var id: String?

                public var path: String?

                public var runtime: ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions.Script.Runtime?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.runtime?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.runtime != nil {
                        map["Runtime"] = self.runtime?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Runtime") {
                        var model = ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions.Script.Runtime()
                        model.fromMap(dict["Runtime"] as! [String: Any])
                        self.runtime = model
                    }
                }
            }
            public var createTime: Int64?

            public var description_: String?

            public var id: String?

            public var modifyTime: Int64?

            public var name: String?

            public var owner: String?

            public var projectId: String?

            public var script: ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions.Script?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.script?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.script != nil {
                    map["Script"] = self.script?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
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
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("Script") {
                    var model = ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions.Script()
                    model.fromMap(dict["Script"] as! [String: Any])
                    self.script = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var workflowDefinitions: [ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.workflowDefinitions != nil {
                var tmp : [Any] = []
                for k in self.workflowDefinitions! {
                    tmp.append(k.toMap())
                }
                map["WorkflowDefinitions"] = tmp
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
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("WorkflowDefinitions") {
                var tmp : [ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions] = []
                for v in dict["WorkflowDefinitions"] as! [Any] {
                    var model = ListWorkflowDefinitionsResponseBody.PagingInfo.WorkflowDefinitions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.workflowDefinitions = tmp
            }
        }
    }
    public var pagingInfo: ListWorkflowDefinitionsResponseBody.PagingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pagingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pagingInfo != nil {
            map["PagingInfo"] = self.pagingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PagingInfo") {
            var model = ListWorkflowDefinitionsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListWorkflowDefinitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowDefinitionsResponseBody?

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
            var model = ListWorkflowDefinitionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveFunctionRequest : Tea.TeaModel {
    public var id: String?

    public var path: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class MoveFunctionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MoveFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveFunctionResponseBody?

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
            var model = MoveFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveNodeRequest : Tea.TeaModel {
    public var id: String?

    public var path: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class MoveNodeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MoveNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveNodeResponseBody?

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
            var model = MoveNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceRequest : Tea.TeaModel {
    public var id: String?

    public var path: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class MoveResourceResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MoveResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceResponseBody?

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
            var model = MoveResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveWorkflowDefinitionRequest : Tea.TeaModel {
    public var id: String?

    public var path: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class MoveWorkflowDefinitionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MoveWorkflowDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveWorkflowDefinitionResponseBody?

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
            var model = MoveWorkflowDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameFunctionRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class RenameFunctionResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class RenameFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameFunctionResponseBody?

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
            var model = RenameFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameNodeRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class RenameNodeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenameNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameNodeResponseBody?

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
            var model = RenameNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameResourceRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class RenameResourceResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenameResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameResourceResponseBody?

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
            var model = RenameResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameWorkflowDefinitionRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class RenameWorkflowDefinitionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenameWorkflowDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameWorkflowDefinitionResponseBody?

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
            var model = RenameWorkflowDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFunctionRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class UpdateFunctionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionResponseBody?

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
            var model = UpdateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNodeRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class UpdateNodeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNodeResponseBody?

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
            var model = UpdateNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class UpdateResourceResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceResponseBody?

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
            var model = UpdateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkflowDefinitionRequest : Tea.TeaModel {
    public var id: String?

    public var projectId: String?

    public var spec: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Spec") {
            self.spec = dict["Spec"] as! String
        }
    }
}

public class UpdateWorkflowDefinitionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateWorkflowDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkflowDefinitionResponseBody?

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
            var model = UpdateWorkflowDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
