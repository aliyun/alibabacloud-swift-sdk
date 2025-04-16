import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CalMcpToolRequest : Tea.TeaModel {
    public var args: String?

    public var authorization: String?

    public var externalUserId: String?

    public var name: String?

    public var server: String?

    public var sessionId: String?

    public var tool: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.server != nil {
            map["Server"] = self.server!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tool != nil {
            map["Tool"] = self.tool!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Args") {
            self.args = dict["Args"] as! String
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
        if dict.keys.contains("ExternalUserId") {
            self.externalUserId = dict["ExternalUserId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Server") {
            self.server = dict["Server"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Tool") {
            self.tool = dict["Tool"] as! String
        }
    }
}

public class CalMcpToolResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
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
            self.data = dict["Data"] as! Any
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

public class CalMcpToolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CalMcpToolResponseBody?

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
            var model = CalMcpToolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMcpSessionRequest : Tea.TeaModel {
    public var authorization: String?

    public var externalUserId: String?

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
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
        if dict.keys.contains("ExternalUserId") {
            self.externalUserId = dict["ExternalUserId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class CreateMcpSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appInstanceId: String?

        public var errMsg: String?

        public var resourceId: String?

        public var resourceUrl: String?

        public var sessionId: String?

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
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.errMsg != nil {
                map["ErrMsg"] = self.errMsg!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceUrl != nil {
                map["ResourceUrl"] = self.resourceUrl!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceId") {
                self.appInstanceId = dict["AppInstanceId"] as! String
            }
            if dict.keys.contains("ErrMsg") {
                self.errMsg = dict["ErrMsg"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceUrl") {
                self.resourceUrl = dict["ResourceUrl"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: CreateMcpSessionResponseBody.Data?

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
            var model = CreateMcpSessionResponseBody.Data()
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

public class CreateMcpSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcpSessionResponseBody?

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
            var model = CreateMcpSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDesktopsRequest : Tea.TeaModel {
    public var desktopId: [String]?

    public var desktopName: String?

    public var desktopStatus: String?

    public var directoryId: String?

    public var groupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.desktopStatus != nil {
            map["DesktopStatus"] = self.desktopStatus!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("DesktopStatus") {
            self.desktopStatus = dict["DesktopStatus"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DescribeDesktopsResponseBody : Tea.TeaModel {
    public class Desktops : Tea.TeaModel {
        public class Disks : Tea.TeaModel {
            public var diskId: String?

            public var diskSize: Int32?

            public var diskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskId") {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
            }
        }
        public var connectionStatus: String?

        public var cpu: Int32?

        public var creationTime: String?

        public var dataDiskCategory: String?

        public var dataDiskSize: String?

        public var desktopId: String?

        public var desktopName: String?

        public var desktopStatus: String?

        public var desktopType: String?

        public var directoryId: String?

        public var disks: [DescribeDesktopsResponseBody.Desktops.Disks]?

        public var endUserIds: [String]?

        public var imageId: String?

        public var lastStartTime: String?

        public var memory: Int64?

        public var networkInterfaceId: String?

        public var officeSiteId: String?

        public var policyGroupId: String?

        public var systemDiskCategory: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.desktopStatus != nil {
                map["DesktopStatus"] = self.desktopStatus!
            }
            if self.desktopType != nil {
                map["DesktopType"] = self.desktopType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.endUserIds != nil {
                map["EndUserIds"] = self.endUserIds!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.lastStartTime != nil {
                map["LastStartTime"] = self.lastStartTime!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionStatus") {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("DataDiskCategory") {
                self.dataDiskCategory = dict["DataDiskCategory"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DesktopStatus") {
                self.desktopStatus = dict["DesktopStatus"] as! String
            }
            if dict.keys.contains("DesktopType") {
                self.desktopType = dict["DesktopType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("Disks") {
                var tmp : [DescribeDesktopsResponseBody.Desktops.Disks] = []
                for v in dict["Disks"] as! [Any] {
                    var model = DescribeDesktopsResponseBody.Desktops.Disks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.disks = tmp
            }
            if dict.keys.contains("EndUserIds") {
                self.endUserIds = dict["EndUserIds"] as! [String]
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("LastStartTime") {
                self.lastStartTime = dict["LastStartTime"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("NetworkInterfaceId") {
                self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("SystemDiskCategory") {
                self.systemDiskCategory = dict["SystemDiskCategory"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
        }
    }
    public var desktops: [DescribeDesktopsResponseBody.Desktops]?

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
        if self.desktops != nil {
            var tmp : [Any] = []
            for k in self.desktops! {
                tmp.append(k.toMap())
            }
            map["Desktops"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desktops") {
            var tmp : [DescribeDesktopsResponseBody.Desktops] = []
            for v in dict["Desktops"] as! [Any] {
                var model = DescribeDesktopsResponseBody.Desktops()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.desktops = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDesktopsResponseBody?

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
            var model = DescribeDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDirectoriesRequest : Tea.TeaModel {
    public var directoryId: [String]?

    public var directoryType: String?

    public var maxResults: Int32?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.directoryType != nil {
            map["DirectoryType"] = self.directoryType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! [String]
        }
        if dict.keys.contains("DirectoryType") {
            self.directoryType = dict["DirectoryType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class DescribeDirectoriesResponseBody : Tea.TeaModel {
    public class Directories : Tea.TeaModel {
        public class ADConnectors : Tea.TeaModel {
            public var ADConnectorAddress: String?

            public var connectorStatus: String?

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
                if self.ADConnectorAddress != nil {
                    map["ADConnectorAddress"] = self.ADConnectorAddress!
                }
                if self.connectorStatus != nil {
                    map["ConnectorStatus"] = self.connectorStatus!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ADConnectorAddress") {
                    self.ADConnectorAddress = dict["ADConnectorAddress"] as! String
                }
                if dict.keys.contains("ConnectorStatus") {
                    self.connectorStatus = dict["ConnectorStatus"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public var ADConnectors: [DescribeDirectoriesResponseBody.Directories.ADConnectors]?

        public var creationTime: String?

        public var customSecurityGroupId: String?

        public var directoryId: String?

        public var directoryType: String?

        public var dnsAddress: [String]?

        public var dnsUserName: String?

        public var domainName: String?

        public var domainPassword: String?

        public var domainUserName: String?

        public var enableInternetAccess: Bool?

        public var name: String?

        public var status: String?

        public var trustPassword: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ADConnectors != nil {
                var tmp : [Any] = []
                for k in self.ADConnectors! {
                    tmp.append(k.toMap())
                }
                map["ADConnectors"] = tmp
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.customSecurityGroupId != nil {
                map["CustomSecurityGroupId"] = self.customSecurityGroupId!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryType != nil {
                map["DirectoryType"] = self.directoryType!
            }
            if self.dnsAddress != nil {
                map["DnsAddress"] = self.dnsAddress!
            }
            if self.dnsUserName != nil {
                map["DnsUserName"] = self.dnsUserName!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainPassword != nil {
                map["DomainPassword"] = self.domainPassword!
            }
            if self.domainUserName != nil {
                map["DomainUserName"] = self.domainUserName!
            }
            if self.enableInternetAccess != nil {
                map["EnableInternetAccess"] = self.enableInternetAccess!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trustPassword != nil {
                map["TrustPassword"] = self.trustPassword!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ADConnectors") {
                var tmp : [DescribeDirectoriesResponseBody.Directories.ADConnectors] = []
                for v in dict["ADConnectors"] as! [Any] {
                    var model = DescribeDirectoriesResponseBody.Directories.ADConnectors()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ADConnectors = tmp
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("CustomSecurityGroupId") {
                self.customSecurityGroupId = dict["CustomSecurityGroupId"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryType") {
                self.directoryType = dict["DirectoryType"] as! String
            }
            if dict.keys.contains("DnsAddress") {
                self.dnsAddress = dict["DnsAddress"] as! [String]
            }
            if dict.keys.contains("DnsUserName") {
                self.dnsUserName = dict["DnsUserName"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainPassword") {
                self.domainPassword = dict["DomainPassword"] as! String
            }
            if dict.keys.contains("DomainUserName") {
                self.domainUserName = dict["DomainUserName"] as! String
            }
            if dict.keys.contains("EnableInternetAccess") {
                self.enableInternetAccess = dict["EnableInternetAccess"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TrustPassword") {
                self.trustPassword = dict["TrustPassword"] as! String
            }
        }
    }
    public var directories: [DescribeDirectoriesResponseBody.Directories]?

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
        if self.directories != nil {
            var tmp : [Any] = []
            for k in self.directories! {
                tmp.append(k.toMap())
            }
            map["Directories"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directories") {
            var tmp : [DescribeDirectoriesResponseBody.Directories] = []
            for v in dict["Directories"] as! [Any] {
                var model = DescribeDirectoriesResponseBody.Directories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.directories = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDirectoriesResponseBody?

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
            var model = DescribeDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var clientOS: String?

    public var clientVersion: String?

    public var desktopId: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var password: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public var taskStatus: String?

    public var ticket: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class GetConnectionTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionTicketResponseBody?

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
            var model = GetConnectionTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMcpResourceRequest : Tea.TeaModel {
    public var authorization: String?

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
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class GetMcpResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resourceUrl: String?

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
            if self.resourceUrl != nil {
                map["ResourceUrl"] = self.resourceUrl!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceUrl") {
                self.resourceUrl = dict["ResourceUrl"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMcpResourceResponseBody.Data?

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
            var model = GetMcpResourceResponseBody.Data()
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

public class GetMcpResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcpResourceResponseBody?

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
            var model = GetMcpResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMcpToolsRequest : Tea.TeaModel {
    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class ListMcpToolsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
            self.data = dict["Data"] as! String
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

public class ListMcpToolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcpToolsResponseBody?

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
            var model = ListMcpToolsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebootDesktopsRequest : Tea.TeaModel {
    public var clientOS: String?

    public var clientVersion: String?

    public var desktopId: [String]?

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
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RebootDesktopsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RebootDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootDesktopsResponseBody?

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
            var model = RebootDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseMcpSessionRequest : Tea.TeaModel {
    public var authorization: String?

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
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class ReleaseMcpSessionResponseBody : Tea.TeaModel {
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

public class ReleaseMcpSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseMcpSessionResponseBody?

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
            var model = ReleaseMcpSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDesktopsRequest : Tea.TeaModel {
    public var clientOS: String?

    public var clientVersion: String?

    public var desktopId: [String]?

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
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartDesktopsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDesktopsResponseBody?

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
            var model = StartDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDesktopsRequest : Tea.TeaModel {
    public var clientOS: String?

    public var clientVersion: String?

    public var desktopId: [String]?

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
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopDesktopsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDesktopsResponseBody?

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
            var model = StopDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
