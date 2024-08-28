import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BillingApplicationRequest : Tea.TeaModel {
    public var month: Int32?

    public var resourceGroupId: String?

    public var year: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.month != nil {
            map["Month"] = self.month!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.year != nil {
            map["Year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Month") {
            self.month = dict["Month"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Year") {
            self.year = dict["Year"] as! Int32
        }
    }
}

public class BillingApplicationResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BillingApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BillingApplicationResponseBody?

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
            var model = BillingApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeployDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var maxResults: Int64?

    public var nextToken: Int64?

    public var refId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.refId != nil {
            map["RefId"] = self.refId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! Int64
        }
        if dict.keys.contains("RefId") {
            self.refId = dict["RefId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class GetDeployDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResourceList : Tea.TeaModel {
            public class Operation : Tea.TeaModel {
                public var name: String?

                public var operations: [String: Any]?

                public override init() {
                    super.init()
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
                    if self.operations != nil {
                        map["Operations"] = self.operations!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Operations") {
                        self.operations = dict["Operations"] as! [String: Any]
                    }
                }
            }
            public class ResourceTimeList : Tea.TeaModel {
                public var bizId: String?

                public var creationEndTime: Int64?

                public var creationStartTime: Int64?

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
                    if self.bizId != nil {
                        map["BizId"] = self.bizId!
                    }
                    if self.creationEndTime != nil {
                        map["CreationEndTime"] = self.creationEndTime!
                    }
                    if self.creationStartTime != nil {
                        map["CreationStartTime"] = self.creationStartTime!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BizId") {
                        self.bizId = dict["BizId"] as! String
                    }
                    if dict.keys.contains("CreationEndTime") {
                        self.creationEndTime = dict["CreationEndTime"] as! Int64
                    }
                    if dict.keys.contains("CreationStartTime") {
                        self.creationStartTime = dict["CreationStartTime"] as! Int64
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                }
            }
            public var buyDuration: String?

            public var chargeType: String?

            public var executionStrategy: String?

            public var modifiedTime: Int64?

            public var monitorURL: String?

            public var nodeName: String?

            public var operation: GetDeployDetailResponseBody.Data.ResourceList.Operation?

            public var refId: Int64?

            public var remark: String?

            public var resourceCode: String?

            public var resourceId: String?

            public var resourceTimeList: [GetDeployDetailResponseBody.Data.ResourceList.ResourceTimeList]?

            public var resourceType: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.operation?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buyDuration != nil {
                    map["BuyDuration"] = self.buyDuration!
                }
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.executionStrategy != nil {
                    map["ExecutionStrategy"] = self.executionStrategy!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.monitorURL != nil {
                    map["MonitorURL"] = self.monitorURL!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.operation != nil {
                    map["Operation"] = self.operation?.toMap()
                }
                if self.refId != nil {
                    map["RefId"] = self.refId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resourceCode != nil {
                    map["ResourceCode"] = self.resourceCode!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceTimeList != nil {
                    var tmp : [Any] = []
                    for k in self.resourceTimeList! {
                        tmp.append(k.toMap())
                    }
                    map["ResourceTimeList"] = tmp
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuyDuration") {
                    self.buyDuration = dict["BuyDuration"] as! String
                }
                if dict.keys.contains("ChargeType") {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("ExecutionStrategy") {
                    self.executionStrategy = dict["ExecutionStrategy"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! Int64
                }
                if dict.keys.contains("MonitorURL") {
                    self.monitorURL = dict["MonitorURL"] as! String
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("Operation") {
                    var model = GetDeployDetailResponseBody.Data.ResourceList.Operation()
                    model.fromMap(dict["Operation"] as! [String: Any])
                    self.operation = model
                }
                if dict.keys.contains("RefId") {
                    self.refId = dict["RefId"] as! Int64
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("ResourceCode") {
                    self.resourceCode = dict["ResourceCode"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceTimeList") {
                    var tmp : [GetDeployDetailResponseBody.Data.ResourceList.ResourceTimeList] = []
                    for v in dict["ResourceTimeList"] as! [Any] {
                        var model = GetDeployDetailResponseBody.Data.ResourceList.ResourceTimeList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceTimeList = tmp
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var appId: String?

        public var createTime: Int64?

        public var currentProcess: String?

        public var deletingNodeList: [[String: Any]]?

        public var deployPercent: Double?

        public var deployedNodeList: [[String: Any]]?

        public var deployingNodeList: [[String: Any]]?

        public var error: String?

        public var executionTime: Int32?

        public var failStatus: Int32?

        public var orderIdList: [String]?

        public var pdfUrl: String?

        public var resourceGroupId: String?

        public var resourceList: [GetDeployDetailResponseBody.Data.ResourceList]?

        public var status: String?

        public var terraformScriptUrl: String?

        public override init() {
            super.init()
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
            if self.currentProcess != nil {
                map["CurrentProcess"] = self.currentProcess!
            }
            if self.deletingNodeList != nil {
                map["DeletingNodeList"] = self.deletingNodeList!
            }
            if self.deployPercent != nil {
                map["DeployPercent"] = self.deployPercent!
            }
            if self.deployedNodeList != nil {
                map["DeployedNodeList"] = self.deployedNodeList!
            }
            if self.deployingNodeList != nil {
                map["DeployingNodeList"] = self.deployingNodeList!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
            }
            if self.failStatus != nil {
                map["FailStatus"] = self.failStatus!
            }
            if self.orderIdList != nil {
                map["OrderIdList"] = self.orderIdList!
            }
            if self.pdfUrl != nil {
                map["PdfUrl"] = self.pdfUrl!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceList != nil {
                var tmp : [Any] = []
                for k in self.resourceList! {
                    tmp.append(k.toMap())
                }
                map["ResourceList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.terraformScriptUrl != nil {
                map["TerraformScriptUrl"] = self.terraformScriptUrl!
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
            if dict.keys.contains("CurrentProcess") {
                self.currentProcess = dict["CurrentProcess"] as! String
            }
            if dict.keys.contains("DeletingNodeList") {
                self.deletingNodeList = dict["DeletingNodeList"] as! [[String: Any]]
            }
            if dict.keys.contains("DeployPercent") {
                self.deployPercent = dict["DeployPercent"] as! Double
            }
            if dict.keys.contains("DeployedNodeList") {
                self.deployedNodeList = dict["DeployedNodeList"] as! [[String: Any]]
            }
            if dict.keys.contains("DeployingNodeList") {
                self.deployingNodeList = dict["DeployingNodeList"] as! [[String: Any]]
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("ExecutionTime") {
                self.executionTime = dict["ExecutionTime"] as! Int32
            }
            if dict.keys.contains("FailStatus") {
                self.failStatus = dict["FailStatus"] as! Int32
            }
            if dict.keys.contains("OrderIdList") {
                self.orderIdList = dict["OrderIdList"] as! [String]
            }
            if dict.keys.contains("PdfUrl") {
                self.pdfUrl = dict["PdfUrl"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceList") {
                var tmp : [GetDeployDetailResponseBody.Data.ResourceList] = []
                for v in dict["ResourceList"] as! [Any] {
                    var model = GetDeployDetailResponseBody.Data.ResourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceList = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TerraformScriptUrl") {
                self.terraformScriptUrl = dict["TerraformScriptUrl"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [GetDeployDetailResponseBody.Data]?

    public var message: String?

    public var nextToken: Int64?

    public var requestId: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [GetDeployDetailResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetDeployDetailResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetDeployDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeployDetailResponseBody?

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
            var model = GetDeployDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
