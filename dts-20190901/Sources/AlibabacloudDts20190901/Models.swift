import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConfigureSynchronizationJobRequest : Tea.TeaModel {
    public class DestinationEndpoint : Tea.TeaModel {
        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var password: String?

        public var port: String?

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
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class PartitionKey : Tea.TeaModel {
        public var modifyTimeDay: Bool?

        public var modifyTimeHour: Bool?

        public var modifyTimeMinute: Bool?

        public var modifyTimeMonth: Bool?

        public var modifyTimeYear: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modifyTimeDay != nil {
                map["ModifyTime_Day"] = self.modifyTimeDay!
            }
            if self.modifyTimeHour != nil {
                map["ModifyTime_Hour"] = self.modifyTimeHour!
            }
            if self.modifyTimeMinute != nil {
                map["ModifyTime_Minute"] = self.modifyTimeMinute!
            }
            if self.modifyTimeMonth != nil {
                map["ModifyTime_Month"] = self.modifyTimeMonth!
            }
            if self.modifyTimeYear != nil {
                map["ModifyTime_Year"] = self.modifyTimeYear!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModifyTime_Day") && dict["ModifyTime_Day"] != nil {
                self.modifyTimeDay = dict["ModifyTime_Day"] as! Bool
            }
            if dict.keys.contains("ModifyTime_Hour") && dict["ModifyTime_Hour"] != nil {
                self.modifyTimeHour = dict["ModifyTime_Hour"] as! Bool
            }
            if dict.keys.contains("ModifyTime_Minute") && dict["ModifyTime_Minute"] != nil {
                self.modifyTimeMinute = dict["ModifyTime_Minute"] as! Bool
            }
            if dict.keys.contains("ModifyTime_Month") && dict["ModifyTime_Month"] != nil {
                self.modifyTimeMonth = dict["ModifyTime_Month"] as! Bool
            }
            if dict.keys.contains("ModifyTime_Year") && dict["ModifyTime_Year"] != nil {
                self.modifyTimeYear = dict["ModifyTime_Year"] as! Bool
            }
        }
    }
    public class SourceEndpoint : Tea.TeaModel {
        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var ownerID: String?

        public var password: String?

        public var port: String?

        public var role: String?

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
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ownerID != nil {
                map["OwnerID"] = self.ownerID!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("OwnerID") && dict["OwnerID"] != nil {
                self.ownerID = dict["OwnerID"] as! String
            }
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var destinationEndpoint: ConfigureSynchronizationJobRequest.DestinationEndpoint?

    public var partitionKey: ConfigureSynchronizationJobRequest.PartitionKey?

    public var sourceEndpoint: ConfigureSynchronizationJobRequest.SourceEndpoint?

    public var checkpoint: String?

    public var dataInitialization: Bool?

    public var migrationReserved: String?

    public var ownerId: String?

    public var structureInitialization: Bool?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public var synchronizationJobName: String?

    public var synchronizationObjects: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationEndpoint?.validate()
        try self.partitionKey?.validate()
        try self.sourceEndpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationEndpoint != nil {
            map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
        }
        if self.partitionKey != nil {
            map["PartitionKey"] = self.partitionKey?.toMap()
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.checkpoint != nil {
            map["Checkpoint"] = self.checkpoint!
        }
        if self.dataInitialization != nil {
            map["DataInitialization"] = self.dataInitialization!
        }
        if self.migrationReserved != nil {
            map["MigrationReserved"] = self.migrationReserved!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.structureInitialization != nil {
            map["StructureInitialization"] = self.structureInitialization!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        if self.synchronizationJobName != nil {
            map["SynchronizationJobName"] = self.synchronizationJobName!
        }
        if self.synchronizationObjects != nil {
            map["SynchronizationObjects"] = self.synchronizationObjects!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
            var model = ConfigureSynchronizationJobRequest.DestinationEndpoint()
            model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
            self.destinationEndpoint = model
        }
        if dict.keys.contains("PartitionKey") && dict["PartitionKey"] != nil {
            var model = ConfigureSynchronizationJobRequest.PartitionKey()
            model.fromMap(dict["PartitionKey"] as! [String: Any])
            self.partitionKey = model
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = ConfigureSynchronizationJobRequest.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
            self.checkpoint = dict["Checkpoint"] as! String
        }
        if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
            self.dataInitialization = dict["DataInitialization"] as! Bool
        }
        if dict.keys.contains("MigrationReserved") && dict["MigrationReserved"] != nil {
            self.migrationReserved = dict["MigrationReserved"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
            self.structureInitialization = dict["StructureInitialization"] as! Bool
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
        if dict.keys.contains("SynchronizationJobName") && dict["SynchronizationJobName"] != nil {
            self.synchronizationJobName = dict["SynchronizationJobName"] as! String
        }
        if dict.keys.contains("SynchronizationObjects") && dict["SynchronizationObjects"] != nil {
            self.synchronizationObjects = dict["SynchronizationObjects"] as! String
        }
    }
}

public class ConfigureSynchronizationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class ConfigureSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureSynchronizationJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConfigureSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigureSynchronizationJobAlertRequest : Tea.TeaModel {
    public var delayAlertPhone: String?

    public var delayAlertStatus: String?

    public var delayOverSeconds: String?

    public var errorAlertPhone: String?

    public var errorAlertStatus: String?

    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delayAlertPhone != nil {
            map["DelayAlertPhone"] = self.delayAlertPhone!
        }
        if self.delayAlertStatus != nil {
            map["DelayAlertStatus"] = self.delayAlertStatus!
        }
        if self.delayOverSeconds != nil {
            map["DelayOverSeconds"] = self.delayOverSeconds!
        }
        if self.errorAlertPhone != nil {
            map["ErrorAlertPhone"] = self.errorAlertPhone!
        }
        if self.errorAlertStatus != nil {
            map["ErrorAlertStatus"] = self.errorAlertStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelayAlertPhone") && dict["DelayAlertPhone"] != nil {
            self.delayAlertPhone = dict["DelayAlertPhone"] as! String
        }
        if dict.keys.contains("DelayAlertStatus") && dict["DelayAlertStatus"] != nil {
            self.delayAlertStatus = dict["DelayAlertStatus"] as! String
        }
        if dict.keys.contains("DelayOverSeconds") && dict["DelayOverSeconds"] != nil {
            self.delayOverSeconds = dict["DelayOverSeconds"] as! String
        }
        if dict.keys.contains("ErrorAlertPhone") && dict["ErrorAlertPhone"] != nil {
            self.errorAlertPhone = dict["ErrorAlertPhone"] as! String
        }
        if dict.keys.contains("ErrorAlertStatus") && dict["ErrorAlertStatus"] != nil {
            self.errorAlertStatus = dict["ErrorAlertStatus"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class ConfigureSynchronizationJobAlertResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class ConfigureSynchronizationJobAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureSynchronizationJobAlertResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConfigureSynchronizationJobAlertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSynchronizationJobRequest : Tea.TeaModel {
    public class DestinationEndpoint : Tea.TeaModel {
        public var instanceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
        }
    }
    public class SourceEndpoint : Tea.TeaModel {
        public var instanceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
        }
    }
    public var destinationEndpoint: CreateSynchronizationJobRequest.DestinationEndpoint?

    public var sourceEndpoint: CreateSynchronizationJobRequest.SourceEndpoint?

    public var clientToken: String?

    public var destRegion: String?

    public var ownerId: String?

    public var payType: String?

    public var period: String?

    public var sourceRegion: String?

    public var synchronizationJobClass: String?

    public var topology: String?

    public var usedTime: Int32?

    public var networkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationEndpoint?.validate()
        try self.sourceEndpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationEndpoint != nil {
            map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.destRegion != nil {
            map["DestRegion"] = self.destRegion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.sourceRegion != nil {
            map["SourceRegion"] = self.sourceRegion!
        }
        if self.synchronizationJobClass != nil {
            map["SynchronizationJobClass"] = self.synchronizationJobClass!
        }
        if self.topology != nil {
            map["Topology"] = self.topology!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.networkType != nil {
            map["networkType"] = self.networkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
            var model = CreateSynchronizationJobRequest.DestinationEndpoint()
            model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
            self.destinationEndpoint = model
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = CreateSynchronizationJobRequest.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DestRegion") && dict["DestRegion"] != nil {
            self.destRegion = dict["DestRegion"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("SourceRegion") && dict["SourceRegion"] != nil {
            self.sourceRegion = dict["SourceRegion"] as! String
        }
        if dict.keys.contains("SynchronizationJobClass") && dict["SynchronizationJobClass"] != nil {
            self.synchronizationJobClass = dict["SynchronizationJobClass"] as! String
        }
        if dict.keys.contains("Topology") && dict["Topology"] != nil {
            self.topology = dict["Topology"] as! String
        }
        if dict.keys.contains("UsedTime") && dict["UsedTime"] != nil {
            self.usedTime = dict["UsedTime"] as! Int32
        }
        if dict.keys.contains("networkType") && dict["networkType"] != nil {
            self.networkType = dict["networkType"] as! String
        }
    }
}

public class CreateSynchronizationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var success: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class CreateSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSynchronizationJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSynchronizationJobRequest : Tea.TeaModel {
    public var ownerId: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class DeleteSynchronizationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeleteSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSynchronizationJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEndpointSwitchStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeEndpointSwitchStatusResponseBody : Tea.TeaModel {
    public var errorMessage: String?

    public var requestId: String?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeEndpointSwitchStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndpointSwitchStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeEndpointSwitchStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSynchronizationJobAlertRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class DescribeSynchronizationJobAlertResponseBody : Tea.TeaModel {
    public var delayAlertPhone: String?

    public var delayAlertStatus: String?

    public var delayOverSeconds: String?

    public var errCode: String?

    public var errMessage: String?

    public var errorAlertPhone: String?

    public var errorAlertStatus: String?

    public var requestId: String?

    public var success: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public var synchronizationJobName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delayAlertPhone != nil {
            map["DelayAlertPhone"] = self.delayAlertPhone!
        }
        if self.delayAlertStatus != nil {
            map["DelayAlertStatus"] = self.delayAlertStatus!
        }
        if self.delayOverSeconds != nil {
            map["DelayOverSeconds"] = self.delayOverSeconds!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorAlertPhone != nil {
            map["ErrorAlertPhone"] = self.errorAlertPhone!
        }
        if self.errorAlertStatus != nil {
            map["ErrorAlertStatus"] = self.errorAlertStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        if self.synchronizationJobName != nil {
            map["SynchronizationJobName"] = self.synchronizationJobName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelayAlertPhone") && dict["DelayAlertPhone"] != nil {
            self.delayAlertPhone = dict["DelayAlertPhone"] as! String
        }
        if dict.keys.contains("DelayAlertStatus") && dict["DelayAlertStatus"] != nil {
            self.delayAlertStatus = dict["DelayAlertStatus"] as! String
        }
        if dict.keys.contains("DelayOverSeconds") && dict["DelayOverSeconds"] != nil {
            self.delayOverSeconds = dict["DelayOverSeconds"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ErrorAlertPhone") && dict["ErrorAlertPhone"] != nil {
            self.errorAlertPhone = dict["ErrorAlertPhone"] as! String
        }
        if dict.keys.contains("ErrorAlertStatus") && dict["ErrorAlertStatus"] != nil {
            self.errorAlertStatus = dict["ErrorAlertStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
        if dict.keys.contains("SynchronizationJobName") && dict["SynchronizationJobName"] != nil {
            self.synchronizationJobName = dict["SynchronizationJobName"] as! String
        }
    }
}

public class DescribeSynchronizationJobAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSynchronizationJobAlertResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSynchronizationJobAlertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSynchronizationJobStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class DescribeSynchronizationJobStatusResponseBody : Tea.TeaModel {
    public class DataInitializationStatus : Tea.TeaModel {
        public var errorMessage: String?

        public var percent: String?

        public var progress: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class DataSynchronizationStatus : Tea.TeaModel {
        public var checkpoint: String?

        public var delay: String?

        public var errorMessage: String?

        public var percent: String?

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
            if self.checkpoint != nil {
                map["Checkpoint"] = self.checkpoint!
            }
            if self.delay != nil {
                map["Delay"] = self.delay!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
                self.checkpoint = dict["Checkpoint"] as! String
            }
            if dict.keys.contains("Delay") && dict["Delay"] != nil {
                self.delay = dict["Delay"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class DestinationEndpoint : Tea.TeaModel {
        public var engineName: String?

        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var port: String?

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
            if self.engineName != nil {
                map["EngineName"] = self.engineName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                self.engineName = dict["EngineName"] as! String
            }
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class Performance : Tea.TeaModel {
        public var FLOW: String?

        public var RPS: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.FLOW != nil {
                map["FLOW"] = self.FLOW!
            }
            if self.RPS != nil {
                map["RPS"] = self.RPS!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FLOW") && dict["FLOW"] != nil {
                self.FLOW = dict["FLOW"] as! String
            }
            if dict.keys.contains("RPS") && dict["RPS"] != nil {
                self.RPS = dict["RPS"] as! String
            }
        }
    }
    public class PrecheckStatus : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var checkStatus: String?

            public var errorMessage: String?

            public var itemName: String?

            public var repairMethod: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.repairMethod != nil {
                    map["RepairMethod"] = self.repairMethod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                    self.checkStatus = dict["CheckStatus"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ItemName") && dict["ItemName"] != nil {
                    self.itemName = dict["ItemName"] as! String
                }
                if dict.keys.contains("RepairMethod") && dict["RepairMethod"] != nil {
                    self.repairMethod = dict["RepairMethod"] as! String
                }
            }
        }
        public var detail: [DescribeSynchronizationJobStatusResponseBody.PrecheckStatus.Detail]?

        public var percent: String?

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
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["Detail"] = tmp
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                var tmp : [DescribeSynchronizationJobStatusResponseBody.PrecheckStatus.Detail] = []
                for v in dict["Detail"] as! [Any] {
                    var model = DescribeSynchronizationJobStatusResponseBody.PrecheckStatus.Detail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.detail = tmp
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class SourceEndpoint : Tea.TeaModel {
        public var engineName: String?

        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var port: String?

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
            if self.engineName != nil {
                map["EngineName"] = self.engineName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                self.engineName = dict["EngineName"] as! String
            }
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class StructureInitializationStatus : Tea.TeaModel {
        public var errorMessage: String?

        public var percent: String?

        public var progress: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class SynchronizationObjects : Tea.TeaModel {
        public class TableExcludes : Tea.TeaModel {
            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public class TableIncludes : Tea.TeaModel {
            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var newSchemaName: String?

        public var schemaName: String?

        public var tableExcludes: [DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects.TableExcludes]?

        public var tableIncludes: [DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects.TableIncludes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newSchemaName != nil {
                map["NewSchemaName"] = self.newSchemaName!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.tableExcludes != nil {
                var tmp : [Any] = []
                for k in self.tableExcludes! {
                    tmp.append(k.toMap())
                }
                map["TableExcludes"] = tmp
            }
            if self.tableIncludes != nil {
                var tmp : [Any] = []
                for k in self.tableIncludes! {
                    tmp.append(k.toMap())
                }
                map["TableIncludes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NewSchemaName") && dict["NewSchemaName"] != nil {
                self.newSchemaName = dict["NewSchemaName"] as! String
            }
            if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("TableExcludes") && dict["TableExcludes"] != nil {
                var tmp : [DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects.TableExcludes] = []
                for v in dict["TableExcludes"] as! [Any] {
                    var model = DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects.TableExcludes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tableExcludes = tmp
            }
            if dict.keys.contains("TableIncludes") && dict["TableIncludes"] != nil {
                var tmp : [DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects.TableIncludes] = []
                for v in dict["TableIncludes"] as! [Any] {
                    var model = DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects.TableIncludes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tableIncludes = tmp
            }
        }
    }
    public var checkpoint: String?

    public var dataInitialization: String?

    public var dataInitializationStatus: DescribeSynchronizationJobStatusResponseBody.DataInitializationStatus?

    public var dataSynchronizationStatus: DescribeSynchronizationJobStatusResponseBody.DataSynchronizationStatus?

    public var delay: String?

    public var destinationEndpoint: DescribeSynchronizationJobStatusResponseBody.DestinationEndpoint?

    public var errorMessage: String?

    public var expireTime: String?

    public var payType: String?

    public var performance: DescribeSynchronizationJobStatusResponseBody.Performance?

    public var precheckStatus: DescribeSynchronizationJobStatusResponseBody.PrecheckStatus?

    public var requestId: String?

    public var sourceEndpoint: DescribeSynchronizationJobStatusResponseBody.SourceEndpoint?

    public var status: String?

    public var structureInitialization: String?

    public var structureInitializationStatus: DescribeSynchronizationJobStatusResponseBody.StructureInitializationStatus?

    public var synchronizationDirection: String?

    public var synchronizationJobClass: String?

    public var synchronizationJobId: String?

    public var synchronizationJobName: String?

    public var synchronizationObjects: [DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataInitializationStatus?.validate()
        try self.dataSynchronizationStatus?.validate()
        try self.destinationEndpoint?.validate()
        try self.performance?.validate()
        try self.precheckStatus?.validate()
        try self.sourceEndpoint?.validate()
        try self.structureInitializationStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkpoint != nil {
            map["Checkpoint"] = self.checkpoint!
        }
        if self.dataInitialization != nil {
            map["DataInitialization"] = self.dataInitialization!
        }
        if self.dataInitializationStatus != nil {
            map["DataInitializationStatus"] = self.dataInitializationStatus?.toMap()
        }
        if self.dataSynchronizationStatus != nil {
            map["DataSynchronizationStatus"] = self.dataSynchronizationStatus?.toMap()
        }
        if self.delay != nil {
            map["Delay"] = self.delay!
        }
        if self.destinationEndpoint != nil {
            map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.performance != nil {
            map["Performance"] = self.performance?.toMap()
        }
        if self.precheckStatus != nil {
            map["PrecheckStatus"] = self.precheckStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.structureInitialization != nil {
            map["StructureInitialization"] = self.structureInitialization!
        }
        if self.structureInitializationStatus != nil {
            map["StructureInitializationStatus"] = self.structureInitializationStatus?.toMap()
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobClass != nil {
            map["SynchronizationJobClass"] = self.synchronizationJobClass!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        if self.synchronizationJobName != nil {
            map["SynchronizationJobName"] = self.synchronizationJobName!
        }
        if self.synchronizationObjects != nil {
            var tmp : [Any] = []
            for k in self.synchronizationObjects! {
                tmp.append(k.toMap())
            }
            map["SynchronizationObjects"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
            self.checkpoint = dict["Checkpoint"] as! String
        }
        if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
            self.dataInitialization = dict["DataInitialization"] as! String
        }
        if dict.keys.contains("DataInitializationStatus") && dict["DataInitializationStatus"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.DataInitializationStatus()
            model.fromMap(dict["DataInitializationStatus"] as! [String: Any])
            self.dataInitializationStatus = model
        }
        if dict.keys.contains("DataSynchronizationStatus") && dict["DataSynchronizationStatus"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.DataSynchronizationStatus()
            model.fromMap(dict["DataSynchronizationStatus"] as! [String: Any])
            self.dataSynchronizationStatus = model
        }
        if dict.keys.contains("Delay") && dict["Delay"] != nil {
            self.delay = dict["Delay"] as! String
        }
        if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.DestinationEndpoint()
            model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
            self.destinationEndpoint = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Performance") && dict["Performance"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.Performance()
            model.fromMap(dict["Performance"] as! [String: Any])
            self.performance = model
        }
        if dict.keys.contains("PrecheckStatus") && dict["PrecheckStatus"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.PrecheckStatus()
            model.fromMap(dict["PrecheckStatus"] as! [String: Any])
            self.precheckStatus = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
            self.structureInitialization = dict["StructureInitialization"] as! String
        }
        if dict.keys.contains("StructureInitializationStatus") && dict["StructureInitializationStatus"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody.StructureInitializationStatus()
            model.fromMap(dict["StructureInitializationStatus"] as! [String: Any])
            self.structureInitializationStatus = model
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobClass") && dict["SynchronizationJobClass"] != nil {
            self.synchronizationJobClass = dict["SynchronizationJobClass"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
        if dict.keys.contains("SynchronizationJobName") && dict["SynchronizationJobName"] != nil {
            self.synchronizationJobName = dict["SynchronizationJobName"] as! String
        }
        if dict.keys.contains("SynchronizationObjects") && dict["SynchronizationObjects"] != nil {
            var tmp : [DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects] = []
            for v in dict["SynchronizationObjects"] as! [Any] {
                var model = DescribeSynchronizationJobStatusResponseBody.SynchronizationObjects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.synchronizationObjects = tmp
        }
    }
}

public class DescribeSynchronizationJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSynchronizationJobStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSynchronizationJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSynchronizationJobsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var synchronizationJobName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.synchronizationJobName != nil {
            map["SynchronizationJobName"] = self.synchronizationJobName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SynchronizationJobName") && dict["SynchronizationJobName"] != nil {
            self.synchronizationJobName = dict["SynchronizationJobName"] as! String
        }
    }
}

public class DescribeSynchronizationJobsResponseBody : Tea.TeaModel {
    public class SynchronizationInstances : Tea.TeaModel {
        public class DataInitializationStatus : Tea.TeaModel {
            public var errorMessage: String?

            public var percent: String?

            public var progress: String?

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
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.percent != nil {
                    map["Percent"] = self.percent!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Percent") && dict["Percent"] != nil {
                    self.percent = dict["Percent"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class DataSynchronizationStatus : Tea.TeaModel {
            public var delay: String?

            public var errorMessage: String?

            public var percent: String?

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
                if self.delay != nil {
                    map["Delay"] = self.delay!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.percent != nil {
                    map["Percent"] = self.percent!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Delay") && dict["Delay"] != nil {
                    self.delay = dict["Delay"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Percent") && dict["Percent"] != nil {
                    self.percent = dict["Percent"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class DestinationEndpoint : Tea.TeaModel {
            public var engineName: String?

            public var IP: String?

            public var instanceId: String?

            public var instanceType: String?

            public var port: String?

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
                if self.engineName != nil {
                    map["EngineName"] = self.engineName!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                    self.engineName = dict["EngineName"] as! String
                }
                if dict.keys.contains("IP") && dict["IP"] != nil {
                    self.IP = dict["IP"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public class Performance : Tea.TeaModel {
            public var FLOW: String?

            public var RPS: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.FLOW != nil {
                    map["FLOW"] = self.FLOW!
                }
                if self.RPS != nil {
                    map["RPS"] = self.RPS!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FLOW") && dict["FLOW"] != nil {
                    self.FLOW = dict["FLOW"] as! String
                }
                if dict.keys.contains("RPS") && dict["RPS"] != nil {
                    self.RPS = dict["RPS"] as! String
                }
            }
        }
        public class PrecheckStatus : Tea.TeaModel {
            public class Detail : Tea.TeaModel {
                public var checkStatus: String?

                public var errorMessage: String?

                public var itemName: String?

                public var repairMethod: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.itemName != nil {
                        map["ItemName"] = self.itemName!
                    }
                    if self.repairMethod != nil {
                        map["RepairMethod"] = self.repairMethod!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("ItemName") && dict["ItemName"] != nil {
                        self.itemName = dict["ItemName"] as! String
                    }
                    if dict.keys.contains("RepairMethod") && dict["RepairMethod"] != nil {
                        self.repairMethod = dict["RepairMethod"] as! String
                    }
                }
            }
            public var detail: [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.PrecheckStatus.Detail]?

            public var percent: String?

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
                if self.detail != nil {
                    var tmp : [Any] = []
                    for k in self.detail! {
                        tmp.append(k.toMap())
                    }
                    map["Detail"] = tmp
                }
                if self.percent != nil {
                    map["Percent"] = self.percent!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Detail") && dict["Detail"] != nil {
                    var tmp : [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.PrecheckStatus.Detail] = []
                    for v in dict["Detail"] as! [Any] {
                        var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.PrecheckStatus.Detail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.detail = tmp
                }
                if dict.keys.contains("Percent") && dict["Percent"] != nil {
                    self.percent = dict["Percent"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class SourceEndpoint : Tea.TeaModel {
            public var engineName: String?

            public var IP: String?

            public var instanceId: String?

            public var instanceType: String?

            public var port: String?

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
                if self.engineName != nil {
                    map["EngineName"] = self.engineName!
                }
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                    self.engineName = dict["EngineName"] as! String
                }
                if dict.keys.contains("IP") && dict["IP"] != nil {
                    self.IP = dict["IP"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public class StructureInitializationStatus : Tea.TeaModel {
            public var errorMessage: String?

            public var percent: String?

            public var progress: String?

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
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.percent != nil {
                    map["Percent"] = self.percent!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Percent") && dict["Percent"] != nil {
                    self.percent = dict["Percent"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class SynchronizationObjects : Tea.TeaModel {
            public class TableExcludes : Tea.TeaModel {
                public var tableName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tableName != nil {
                        map["TableName"] = self.tableName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TableName") && dict["TableName"] != nil {
                        self.tableName = dict["TableName"] as! String
                    }
                }
            }
            public class TableIncludes : Tea.TeaModel {
                public var tableName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tableName != nil {
                        map["TableName"] = self.tableName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TableName") && dict["TableName"] != nil {
                        self.tableName = dict["TableName"] as! String
                    }
                }
            }
            public var newSchemaName: String?

            public var schemaName: String?

            public var tableExcludes: [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects.TableExcludes]?

            public var tableIncludes: [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects.TableIncludes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.newSchemaName != nil {
                    map["NewSchemaName"] = self.newSchemaName!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableExcludes != nil {
                    var tmp : [Any] = []
                    for k in self.tableExcludes! {
                        tmp.append(k.toMap())
                    }
                    map["TableExcludes"] = tmp
                }
                if self.tableIncludes != nil {
                    var tmp : [Any] = []
                    for k in self.tableIncludes! {
                        tmp.append(k.toMap())
                    }
                    map["TableIncludes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NewSchemaName") && dict["NewSchemaName"] != nil {
                    self.newSchemaName = dict["NewSchemaName"] as! String
                }
                if dict.keys.contains("SchemaName") && dict["SchemaName"] != nil {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("TableExcludes") && dict["TableExcludes"] != nil {
                    var tmp : [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects.TableExcludes] = []
                    for v in dict["TableExcludes"] as! [Any] {
                        var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects.TableExcludes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tableExcludes = tmp
                }
                if dict.keys.contains("TableIncludes") && dict["TableIncludes"] != nil {
                    var tmp : [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects.TableIncludes] = []
                    for v in dict["TableIncludes"] as! [Any] {
                        var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects.TableIncludes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tableIncludes = tmp
                }
            }
        }
        public var dataInitialization: String?

        public var dataInitializationStatus: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.DataInitializationStatus?

        public var dataSynchronizationStatus: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.DataSynchronizationStatus?

        public var delay: String?

        public var destinationEndpoint: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.DestinationEndpoint?

        public var errorMessage: String?

        public var expireTime: String?

        public var payType: String?

        public var performance: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.Performance?

        public var precheckStatus: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.PrecheckStatus?

        public var sourceEndpoint: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SourceEndpoint?

        public var status: String?

        public var structureInitialization: String?

        public var structureInitializationStatus: DescribeSynchronizationJobsResponseBody.SynchronizationInstances.StructureInitializationStatus?

        public var synchronizationDirection: String?

        public var synchronizationJobClass: String?

        public var synchronizationJobId: String?

        public var synchronizationJobName: String?

        public var synchronizationObjects: [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataInitializationStatus?.validate()
            try self.dataSynchronizationStatus?.validate()
            try self.destinationEndpoint?.validate()
            try self.performance?.validate()
            try self.precheckStatus?.validate()
            try self.sourceEndpoint?.validate()
            try self.structureInitializationStatus?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInitialization != nil {
                map["DataInitialization"] = self.dataInitialization!
            }
            if self.dataInitializationStatus != nil {
                map["DataInitializationStatus"] = self.dataInitializationStatus?.toMap()
            }
            if self.dataSynchronizationStatus != nil {
                map["DataSynchronizationStatus"] = self.dataSynchronizationStatus?.toMap()
            }
            if self.delay != nil {
                map["Delay"] = self.delay!
            }
            if self.destinationEndpoint != nil {
                map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.performance != nil {
                map["Performance"] = self.performance?.toMap()
            }
            if self.precheckStatus != nil {
                map["PrecheckStatus"] = self.precheckStatus?.toMap()
            }
            if self.sourceEndpoint != nil {
                map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.structureInitialization != nil {
                map["StructureInitialization"] = self.structureInitialization!
            }
            if self.structureInitializationStatus != nil {
                map["StructureInitializationStatus"] = self.structureInitializationStatus?.toMap()
            }
            if self.synchronizationDirection != nil {
                map["SynchronizationDirection"] = self.synchronizationDirection!
            }
            if self.synchronizationJobClass != nil {
                map["SynchronizationJobClass"] = self.synchronizationJobClass!
            }
            if self.synchronizationJobId != nil {
                map["SynchronizationJobId"] = self.synchronizationJobId!
            }
            if self.synchronizationJobName != nil {
                map["SynchronizationJobName"] = self.synchronizationJobName!
            }
            if self.synchronizationObjects != nil {
                var tmp : [Any] = []
                for k in self.synchronizationObjects! {
                    tmp.append(k.toMap())
                }
                map["SynchronizationObjects"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
                self.dataInitialization = dict["DataInitialization"] as! String
            }
            if dict.keys.contains("DataInitializationStatus") && dict["DataInitializationStatus"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.DataInitializationStatus()
                model.fromMap(dict["DataInitializationStatus"] as! [String: Any])
                self.dataInitializationStatus = model
            }
            if dict.keys.contains("DataSynchronizationStatus") && dict["DataSynchronizationStatus"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.DataSynchronizationStatus()
                model.fromMap(dict["DataSynchronizationStatus"] as! [String: Any])
                self.dataSynchronizationStatus = model
            }
            if dict.keys.contains("Delay") && dict["Delay"] != nil {
                self.delay = dict["Delay"] as! String
            }
            if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.DestinationEndpoint()
                model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
                self.destinationEndpoint = model
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Performance") && dict["Performance"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.Performance()
                model.fromMap(dict["Performance"] as! [String: Any])
                self.performance = model
            }
            if dict.keys.contains("PrecheckStatus") && dict["PrecheckStatus"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.PrecheckStatus()
                model.fromMap(dict["PrecheckStatus"] as! [String: Any])
                self.precheckStatus = model
            }
            if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SourceEndpoint()
                model.fromMap(dict["SourceEndpoint"] as! [String: Any])
                self.sourceEndpoint = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
                self.structureInitialization = dict["StructureInitialization"] as! String
            }
            if dict.keys.contains("StructureInitializationStatus") && dict["StructureInitializationStatus"] != nil {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.StructureInitializationStatus()
                model.fromMap(dict["StructureInitializationStatus"] as! [String: Any])
                self.structureInitializationStatus = model
            }
            if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
                self.synchronizationDirection = dict["SynchronizationDirection"] as! String
            }
            if dict.keys.contains("SynchronizationJobClass") && dict["SynchronizationJobClass"] != nil {
                self.synchronizationJobClass = dict["SynchronizationJobClass"] as! String
            }
            if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
                self.synchronizationJobId = dict["SynchronizationJobId"] as! String
            }
            if dict.keys.contains("SynchronizationJobName") && dict["SynchronizationJobName"] != nil {
                self.synchronizationJobName = dict["SynchronizationJobName"] as! String
            }
            if dict.keys.contains("SynchronizationObjects") && dict["SynchronizationObjects"] != nil {
                var tmp : [DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects] = []
                for v in dict["SynchronizationObjects"] as! [Any] {
                    var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances.SynchronizationObjects()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.synchronizationObjects = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var synchronizationInstances: [DescribeSynchronizationJobsResponseBody.SynchronizationInstances]?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
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
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synchronizationInstances != nil {
            var tmp : [Any] = []
            for k in self.synchronizationInstances! {
                tmp.append(k.toMap())
            }
            map["SynchronizationInstances"] = tmp
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SynchronizationInstances") && dict["SynchronizationInstances"] != nil {
            var tmp : [DescribeSynchronizationJobsResponseBody.SynchronizationInstances] = []
            for v in dict["SynchronizationInstances"] as! [Any] {
                var model = DescribeSynchronizationJobsResponseBody.SynchronizationInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.synchronizationInstances = tmp
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
        }
    }
}

public class DescribeSynchronizationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSynchronizationJobsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSynchronizationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSynchronizationObjectModifyStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeSynchronizationObjectModifyStatusResponseBody : Tea.TeaModel {
    public class DataInitializationStatus : Tea.TeaModel {
        public var errorMessage: String?

        public var percent: String?

        public var progress: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class DataSynchronizationStatus : Tea.TeaModel {
        public var delay: String?

        public var errorMessage: String?

        public var percent: String?

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
            if self.delay != nil {
                map["Delay"] = self.delay!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Delay") && dict["Delay"] != nil {
                self.delay = dict["Delay"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class PrecheckStatus : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var checkStatus: String?

            public var errorMessage: String?

            public var itemName: String?

            public var repairMethod: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.repairMethod != nil {
                    map["RepairMethod"] = self.repairMethod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                    self.checkStatus = dict["CheckStatus"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ItemName") && dict["ItemName"] != nil {
                    self.itemName = dict["ItemName"] as! String
                }
                if dict.keys.contains("RepairMethod") && dict["RepairMethod"] != nil {
                    self.repairMethod = dict["RepairMethod"] as! String
                }
            }
        }
        public var detail: [DescribeSynchronizationObjectModifyStatusResponseBody.PrecheckStatus.Detail]?

        public var percent: String?

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
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["Detail"] = tmp
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                var tmp : [DescribeSynchronizationObjectModifyStatusResponseBody.PrecheckStatus.Detail] = []
                for v in dict["Detail"] as! [Any] {
                    var model = DescribeSynchronizationObjectModifyStatusResponseBody.PrecheckStatus.Detail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.detail = tmp
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class StructureInitializationStatus : Tea.TeaModel {
        public var errorMessage: String?

        public var percent: String?

        public var progress: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Percent") && dict["Percent"] != nil {
                self.percent = dict["Percent"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var dataInitializationStatus: DescribeSynchronizationObjectModifyStatusResponseBody.DataInitializationStatus?

    public var dataSynchronizationStatus: DescribeSynchronizationObjectModifyStatusResponseBody.DataSynchronizationStatus?

    public var errorMessage: String?

    public var precheckStatus: DescribeSynchronizationObjectModifyStatusResponseBody.PrecheckStatus?

    public var requestId: String?

    public var status: String?

    public var structureInitializationStatus: DescribeSynchronizationObjectModifyStatusResponseBody.StructureInitializationStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataInitializationStatus?.validate()
        try self.dataSynchronizationStatus?.validate()
        try self.precheckStatus?.validate()
        try self.structureInitializationStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInitializationStatus != nil {
            map["DataInitializationStatus"] = self.dataInitializationStatus?.toMap()
        }
        if self.dataSynchronizationStatus != nil {
            map["DataSynchronizationStatus"] = self.dataSynchronizationStatus?.toMap()
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.precheckStatus != nil {
            map["PrecheckStatus"] = self.precheckStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.structureInitializationStatus != nil {
            map["StructureInitializationStatus"] = self.structureInitializationStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInitializationStatus") && dict["DataInitializationStatus"] != nil {
            var model = DescribeSynchronizationObjectModifyStatusResponseBody.DataInitializationStatus()
            model.fromMap(dict["DataInitializationStatus"] as! [String: Any])
            self.dataInitializationStatus = model
        }
        if dict.keys.contains("DataSynchronizationStatus") && dict["DataSynchronizationStatus"] != nil {
            var model = DescribeSynchronizationObjectModifyStatusResponseBody.DataSynchronizationStatus()
            model.fromMap(dict["DataSynchronizationStatus"] as! [String: Any])
            self.dataSynchronizationStatus = model
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("PrecheckStatus") && dict["PrecheckStatus"] != nil {
            var model = DescribeSynchronizationObjectModifyStatusResponseBody.PrecheckStatus()
            model.fromMap(dict["PrecheckStatus"] as! [String: Any])
            self.precheckStatus = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StructureInitializationStatus") && dict["StructureInitializationStatus"] != nil {
            var model = DescribeSynchronizationObjectModifyStatusResponseBody.StructureInitializationStatus()
            model.fromMap(dict["StructureInitializationStatus"] as! [String: Any])
            self.structureInitializationStatus = model
        }
    }
}

public class DescribeSynchronizationObjectModifyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSynchronizationObjectModifyStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSynchronizationObjectModifyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySynchronizationObjectRequest : Tea.TeaModel {
    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public var synchronizationObjects: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        if self.synchronizationObjects != nil {
            map["SynchronizationObjects"] = self.synchronizationObjects!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
        if dict.keys.contains("SynchronizationObjects") && dict["SynchronizationObjects"] != nil {
            self.synchronizationObjects = dict["SynchronizationObjects"] as! String
        }
    }
}

public class ModifySynchronizationObjectResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var success: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModifySynchronizationObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySynchronizationObjectResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifySynchronizationObjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetSynchronizationJobRequest : Tea.TeaModel {
    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class ResetSynchronizationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class ResetSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetSynchronizationJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartSynchronizationJobRequest : Tea.TeaModel {
    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class StartSynchronizationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class StartSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSynchronizationJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SuspendSynchronizationJobRequest : Tea.TeaModel {
    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class SuspendSynchronizationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class SuspendSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuspendSynchronizationJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SuspendSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchSynchronizationEndpointRequest : Tea.TeaModel {
    public class Endpoint : Tea.TeaModel {
        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var port: String?

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
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var endpoint: SwitchSynchronizationEndpointRequest.Endpoint?

    public var ownerId: String?

    public var synchronizationDirection: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.endpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint?.toMap()
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationDirection != nil {
            map["SynchronizationDirection"] = self.synchronizationDirection!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
            var model = SwitchSynchronizationEndpointRequest.Endpoint()
            model.fromMap(dict["Endpoint"] as! [String: Any])
            self.endpoint = model
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationDirection") && dict["SynchronizationDirection"] != nil {
            self.synchronizationDirection = dict["SynchronizationDirection"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class SwitchSynchronizationEndpointResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var success: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SwitchSynchronizationEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchSynchronizationEndpointResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchSynchronizationEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
