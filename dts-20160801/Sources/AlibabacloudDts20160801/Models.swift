import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConfigurationSynchronizationJobRequest : Tea.TeaModel {
    public class DestinationEndpoint : Tea.TeaModel {
        public var instanceID: String?

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
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                self.instanceID = dict["InstanceID"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
        }
    }
    public class Initialization : Tea.TeaModel {
        public var dataLoad: Bool?

        public var structureLoad: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataLoad != nil {
                map["DataLoad"] = self.dataLoad!
            }
            if self.structureLoad != nil {
                map["StructureLoad"] = self.structureLoad!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataLoad") && dict["DataLoad"] != nil {
                self.dataLoad = dict["DataLoad"] as! Bool
            }
            if dict.keys.contains("StructureLoad") && dict["StructureLoad"] != nil {
                self.structureLoad = dict["StructureLoad"] as! Bool
            }
        }
    }
    public class SourceEndpoint : Tea.TeaModel {
        public var instanceID: String?

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
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                self.instanceID = dict["InstanceID"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
        }
    }
    public var destinationEndpoint: ConfigurationSynchronizationJobRequest.DestinationEndpoint?

    public var initialization: ConfigurationSynchronizationJobRequest.Initialization?

    public var sourceEndpoint: ConfigurationSynchronizationJobRequest.SourceEndpoint?

    public var ownerId: String?

    public var synchronizationJobId: String?

    public var synchronizationJobName: String?

    public var synchronizationObject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationEndpoint?.validate()
        try self.initialization?.validate()
        try self.sourceEndpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationEndpoint != nil {
            map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
        }
        if self.initialization != nil {
            map["Initialization"] = self.initialization?.toMap()
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        if self.synchronizationJobName != nil {
            map["SynchronizationJobName"] = self.synchronizationJobName!
        }
        if self.synchronizationObject != nil {
            map["SynchronizationObject"] = self.synchronizationObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
            var model = ConfigurationSynchronizationJobRequest.DestinationEndpoint()
            model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
            self.destinationEndpoint = model
        }
        if dict.keys.contains("Initialization") && dict["Initialization"] != nil {
            var model = ConfigurationSynchronizationJobRequest.Initialization()
            model.fromMap(dict["Initialization"] as! [String: Any])
            self.initialization = model
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = ConfigurationSynchronizationJobRequest.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
        if dict.keys.contains("SynchronizationJobName") && dict["SynchronizationJobName"] != nil {
            self.synchronizationJobName = dict["SynchronizationJobName"] as! String
        }
        if dict.keys.contains("SynchronizationObject") && dict["SynchronizationObject"] != nil {
            self.synchronizationObject = dict["SynchronizationObject"] as! String
        }
    }
}

public class ConfigurationSynchronizationJobResponseBody : Tea.TeaModel {
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

public class ConfigurationSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigurationSynchronizationJobResponseBody?

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
            var model = ConfigurationSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigureMigrationJobRequest : Tea.TeaModel {
    public class DestinationEndpoint : Tea.TeaModel {
        public var dataBaseName: String?

        public var engineName: String?

        public var IP: String?

        public var instanceID: String?

        public var instanceType: String?

        public var password: String?

        public var port: String?

        public var region: String?

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
            if self.dataBaseName != nil {
                map["DataBaseName"] = self.dataBaseName!
            }
            if self.engineName != nil {
                map["EngineName"] = self.engineName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
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
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataBaseName") && dict["DataBaseName"] != nil {
                self.dataBaseName = dict["DataBaseName"] as! String
            }
            if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                self.engineName = dict["EngineName"] as! String
            }
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                self.instanceID = dict["InstanceID"] as! String
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
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class MigrationMode : Tea.TeaModel {
        public var dataIntialization: Bool?

        public var dataSynchronization: Bool?

        public var structureIntialization: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataIntialization != nil {
                map["DataIntialization"] = self.dataIntialization!
            }
            if self.dataSynchronization != nil {
                map["DataSynchronization"] = self.dataSynchronization!
            }
            if self.structureIntialization != nil {
                map["StructureIntialization"] = self.structureIntialization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataIntialization") && dict["DataIntialization"] != nil {
                self.dataIntialization = dict["DataIntialization"] as! Bool
            }
            if dict.keys.contains("DataSynchronization") && dict["DataSynchronization"] != nil {
                self.dataSynchronization = dict["DataSynchronization"] as! Bool
            }
            if dict.keys.contains("StructureIntialization") && dict["StructureIntialization"] != nil {
                self.structureIntialization = dict["StructureIntialization"] as! Bool
            }
        }
    }
    public class SourceEndpoint : Tea.TeaModel {
        public var databaseName: String?

        public var engineName: String?

        public var IP: String?

        public var instanceID: String?

        public var instanceType: String?

        public var oracleSID: String?

        public var ownerID: String?

        public var password: String?

        public var port: String?

        public var region: String?

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
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.engineName != nil {
                map["EngineName"] = self.engineName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.oracleSID != nil {
                map["OracleSID"] = self.oracleSID!
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
            if self.region != nil {
                map["Region"] = self.region!
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
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                self.engineName = dict["EngineName"] as! String
            }
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                self.instanceID = dict["InstanceID"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("OracleSID") && dict["OracleSID"] != nil {
                self.oracleSID = dict["OracleSID"] as! String
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
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var destinationEndpoint: ConfigureMigrationJobRequest.DestinationEndpoint?

    public var migrationMode: ConfigureMigrationJobRequest.MigrationMode?

    public var sourceEndpoint: ConfigureMigrationJobRequest.SourceEndpoint?

    public var checkpoint: String?

    public var migrationJobId: String?

    public var migrationJobName: String?

    public var migrationObject: String?

    public var migrationReserved: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationEndpoint?.validate()
        try self.migrationMode?.validate()
        try self.sourceEndpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationEndpoint != nil {
            map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
        }
        if self.migrationMode != nil {
            map["MigrationMode"] = self.migrationMode?.toMap()
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.checkpoint != nil {
            map["Checkpoint"] = self.checkpoint!
        }
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.migrationJobName != nil {
            map["MigrationJobName"] = self.migrationJobName!
        }
        if self.migrationObject != nil {
            map["MigrationObject"] = self.migrationObject!
        }
        if self.migrationReserved != nil {
            map["MigrationReserved"] = self.migrationReserved!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
            var model = ConfigureMigrationJobRequest.DestinationEndpoint()
            model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
            self.destinationEndpoint = model
        }
        if dict.keys.contains("MigrationMode") && dict["MigrationMode"] != nil {
            var model = ConfigureMigrationJobRequest.MigrationMode()
            model.fromMap(dict["MigrationMode"] as! [String: Any])
            self.migrationMode = model
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = ConfigureMigrationJobRequest.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("Checkpoint") && dict["Checkpoint"] != nil {
            self.checkpoint = dict["Checkpoint"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("MigrationJobName") && dict["MigrationJobName"] != nil {
            self.migrationJobName = dict["MigrationJobName"] as! String
        }
        if dict.keys.contains("MigrationObject") && dict["MigrationObject"] != nil {
            self.migrationObject = dict["MigrationObject"] as! String
        }
        if dict.keys.contains("MigrationReserved") && dict["MigrationReserved"] != nil {
            self.migrationReserved = dict["MigrationReserved"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class ConfigureMigrationJobResponseBody : Tea.TeaModel {
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

public class ConfigureMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureMigrationJobResponseBody?

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
            var model = ConfigureMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigureSubscriptionInstanceRequest : Tea.TeaModel {
    public class SourceEndpoint : Tea.TeaModel {
        public var instanceID: String?

        public var instanceType: String?

        public var ownerID: String?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ownerID != nil {
                map["OwnerID"] = self.ownerID!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                self.instanceID = dict["InstanceID"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("OwnerID") && dict["OwnerID"] != nil {
                self.ownerID = dict["OwnerID"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! String
            }
        }
    }
    public class SubscriptionDataType : Tea.TeaModel {
        public var DDL: Bool?

        public var DML: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DDL != nil {
                map["DDL"] = self.DDL!
            }
            if self.DML != nil {
                map["DML"] = self.DML!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DDL") && dict["DDL"] != nil {
                self.DDL = dict["DDL"] as! Bool
            }
            if dict.keys.contains("DML") && dict["DML"] != nil {
                self.DML = dict["DML"] as! Bool
            }
        }
    }
    public var sourceEndpoint: ConfigureSubscriptionInstanceRequest.SourceEndpoint?

    public var subscriptionDataType: ConfigureSubscriptionInstanceRequest.SubscriptionDataType?

    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public var subscriptionInstanceName: String?

    public var subscriptionObject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceEndpoint?.validate()
        try self.subscriptionDataType?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.subscriptionDataType != nil {
            map["SubscriptionDataType"] = self.subscriptionDataType?.toMap()
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
        }
        if self.subscriptionInstanceName != nil {
            map["SubscriptionInstanceName"] = self.subscriptionInstanceName!
        }
        if self.subscriptionObject != nil {
            map["SubscriptionObject"] = self.subscriptionObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = ConfigureSubscriptionInstanceRequest.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("SubscriptionDataType") && dict["SubscriptionDataType"] != nil {
            var model = ConfigureSubscriptionInstanceRequest.SubscriptionDataType()
            model.fromMap(dict["SubscriptionDataType"] as! [String: Any])
            self.subscriptionDataType = model
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceName") && dict["SubscriptionInstanceName"] != nil {
            self.subscriptionInstanceName = dict["SubscriptionInstanceName"] as! String
        }
        if dict.keys.contains("SubscriptionObject") && dict["SubscriptionObject"] != nil {
            self.subscriptionObject = dict["SubscriptionObject"] as! String
        }
    }
}

public class ConfigureSubscriptionInstanceResponseBody : Tea.TeaModel {
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

public class ConfigureSubscriptionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigureSubscriptionInstanceResponseBody?

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
            var model = ConfigureSubscriptionInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

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

public class CreateMigrationJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var migrationJobClass: String?

    public var ownerId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.migrationJobClass != nil {
            map["MigrationJobClass"] = self.migrationJobClass!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MigrationJobClass") && dict["MigrationJobClass"] != nil {
            self.migrationJobClass = dict["MigrationJobClass"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
    }
}

public class CreateMigrationJobResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var migrationJobId: String?

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
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
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
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMigrationJobResponseBody?

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
            var model = CreateMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSubscriptionInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var payType: String?

    public var period: String?

    public var region: String?

    public var usedTime: Int32?

    public override init() {
        super.init()
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
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
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
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("UsedTime") && dict["UsedTime"] != nil {
            self.usedTime = dict["UsedTime"] as! Int32
        }
    }
}

public class CreateSubscriptionInstanceResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

    public var requestId: String?

    public var subscriptionInstanceId: String?

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
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
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
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateSubscriptionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubscriptionInstanceResponseBody?

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
            var model = CreateSubscriptionInstanceResponseBody()
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

public class DeleteMigrationJobRequest : Tea.TeaModel {
    public var migrationJobId: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class DeleteMigrationJobResponseBody : Tea.TeaModel {
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

public class DeleteMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMigrationJobResponseBody?

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
            var model = DeleteMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSubscriptionInstanceRequest : Tea.TeaModel {
    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public override init() {
        super.init()
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
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
    }
}

public class DeleteSubscriptionInstanceResponseBody : Tea.TeaModel {
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

public class DeleteSubscriptionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSubscriptionInstanceResponseBody?

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
            var model = DeleteSubscriptionInstanceResponseBody()
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

public class DescirbeMigrationJobsRequest : Tea.TeaModel {
    public var migrationJobName: String?

    public var ownerId: String?

    public var pageNum: Int32?

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
        if self.migrationJobName != nil {
            map["MigrationJobName"] = self.migrationJobName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationJobName") && dict["MigrationJobName"] != nil {
            self.migrationJobName = dict["MigrationJobName"] as! String
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
    }
}

public class DescirbeMigrationJobsResponseBody : Tea.TeaModel {
    public class MigrationJobs : Tea.TeaModel {
        public class MigrationJob : Tea.TeaModel {
            public class DataInitialization : Tea.TeaModel {
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
                        map["status"] = self.status!
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
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public class DataSynchronization : Tea.TeaModel {
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
                        map["status"] = self.status!
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
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public class DestinationEndpoint : Tea.TeaModel {
                public var databaseName: String?

                public var engineName: String?

                public var IP: String?

                public var instanceID: String?

                public var instanceType: String?

                public var oracleSID: String?

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
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.engineName != nil {
                        map["EngineName"] = self.engineName!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.oracleSID != nil {
                        map["OracleSID"] = self.oracleSID!
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
                    if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                        self.engineName = dict["EngineName"] as! String
                    }
                    if dict.keys.contains("IP") && dict["IP"] != nil {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                    if dict.keys.contains("OracleSID") && dict["OracleSID"] != nil {
                        self.oracleSID = dict["OracleSID"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("UserName") && dict["UserName"] != nil {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public class MigrationMode : Tea.TeaModel {
                public var dataInitialization: Bool?

                public var dataSynchronization: Bool?

                public var structureInitialization: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataInitialization != nil {
                        map["DataInitialization"] = self.dataInitialization!
                    }
                    if self.dataSynchronization != nil {
                        map["DataSynchronization"] = self.dataSynchronization!
                    }
                    if self.structureInitialization != nil {
                        map["StructureInitialization"] = self.structureInitialization!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
                        self.dataInitialization = dict["DataInitialization"] as! Bool
                    }
                    if dict.keys.contains("DataSynchronization") && dict["DataSynchronization"] != nil {
                        self.dataSynchronization = dict["DataSynchronization"] as! Bool
                    }
                    if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
                        self.structureInitialization = dict["StructureInitialization"] as! Bool
                    }
                }
            }
            public class MigrationObject : Tea.TeaModel {
                public class SynchronousObject : Tea.TeaModel {
                    public class TableList : Tea.TeaModel {
                        public var table: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.table != nil {
                                map["Table"] = self.table!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Table") && dict["Table"] != nil {
                                self.table = dict["Table"] as! [String]
                            }
                        }
                    }
                    public var databaseName: String?

                    public var tableList: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject.TableList?

                    public var wholeDatabase: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.tableList?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.databaseName != nil {
                            map["DatabaseName"] = self.databaseName!
                        }
                        if self.tableList != nil {
                            map["TableList"] = self.tableList?.toMap()
                        }
                        if self.wholeDatabase != nil {
                            map["WholeDatabase"] = self.wholeDatabase!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                            self.databaseName = dict["DatabaseName"] as! String
                        }
                        if dict.keys.contains("TableList") && dict["TableList"] != nil {
                            var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject.TableList()
                            model.fromMap(dict["TableList"] as! [String: Any])
                            self.tableList = model
                        }
                        if dict.keys.contains("WholeDatabase") && dict["WholeDatabase"] != nil {
                            self.wholeDatabase = dict["WholeDatabase"] as! String
                        }
                    }
                }
                public var synchronousObject: [DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.synchronousObject != nil {
                        var tmp : [Any] = []
                        for k in self.synchronousObject! {
                            tmp.append(k.toMap())
                        }
                        map["SynchronousObject"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SynchronousObject") && dict["SynchronousObject"] != nil {
                        var tmp : [DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject] = []
                        for v in dict["SynchronousObject"] as! [Any] {
                            var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.synchronousObject = tmp
                    }
                }
            }
            public class Precheck : Tea.TeaModel {
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
                    if self.percent != nil {
                        map["Percent"] = self.percent!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Percent") && dict["Percent"] != nil {
                        self.percent = dict["Percent"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public class SourceEndpoint : Tea.TeaModel {
                public var databaseName: String?

                public var engineName: String?

                public var IP: String?

                public var instanceID: String?

                public var instanceType: String?

                public var oracleSID: String?

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
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.engineName != nil {
                        map["EngineName"] = self.engineName!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.oracleSID != nil {
                        map["OracleSID"] = self.oracleSID!
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
                    if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                        self.engineName = dict["EngineName"] as! String
                    }
                    if dict.keys.contains("IP") && dict["IP"] != nil {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                    if dict.keys.contains("OracleSID") && dict["OracleSID"] != nil {
                        self.oracleSID = dict["OracleSID"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("UserName") && dict["UserName"] != nil {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public class StructureInitialization : Tea.TeaModel {
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
                        map["status"] = self.status!
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
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public var dataInitialization: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataInitialization?

            public var dataSynchronization: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataSynchronization?

            public var destinationEndpoint: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DestinationEndpoint?

            public var migrationJobClass: String?

            public var migrationJobID: String?

            public var migrationJobName: String?

            public var migrationJobStatus: String?

            public var migrationMode: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationMode?

            public var migrationObject: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject?

            public var payType: String?

            public var precheck: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.Precheck?

            public var sourceEndpoint: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.SourceEndpoint?

            public var structureInitialization: DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.StructureInitialization?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataInitialization?.validate()
                try self.dataSynchronization?.validate()
                try self.destinationEndpoint?.validate()
                try self.migrationMode?.validate()
                try self.migrationObject?.validate()
                try self.precheck?.validate()
                try self.sourceEndpoint?.validate()
                try self.structureInitialization?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataInitialization != nil {
                    map["DataInitialization"] = self.dataInitialization?.toMap()
                }
                if self.dataSynchronization != nil {
                    map["DataSynchronization"] = self.dataSynchronization?.toMap()
                }
                if self.destinationEndpoint != nil {
                    map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
                }
                if self.migrationJobClass != nil {
                    map["MigrationJobClass"] = self.migrationJobClass!
                }
                if self.migrationJobID != nil {
                    map["MigrationJobID"] = self.migrationJobID!
                }
                if self.migrationJobName != nil {
                    map["MigrationJobName"] = self.migrationJobName!
                }
                if self.migrationJobStatus != nil {
                    map["MigrationJobStatus"] = self.migrationJobStatus!
                }
                if self.migrationMode != nil {
                    map["MigrationMode"] = self.migrationMode?.toMap()
                }
                if self.migrationObject != nil {
                    map["MigrationObject"] = self.migrationObject?.toMap()
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.precheck != nil {
                    map["Precheck"] = self.precheck?.toMap()
                }
                if self.sourceEndpoint != nil {
                    map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
                }
                if self.structureInitialization != nil {
                    map["StructureInitialization"] = self.structureInitialization?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataInitialization()
                    model.fromMap(dict["DataInitialization"] as! [String: Any])
                    self.dataInitialization = model
                }
                if dict.keys.contains("DataSynchronization") && dict["DataSynchronization"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataSynchronization()
                    model.fromMap(dict["DataSynchronization"] as! [String: Any])
                    self.dataSynchronization = model
                }
                if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DestinationEndpoint()
                    model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
                    self.destinationEndpoint = model
                }
                if dict.keys.contains("MigrationJobClass") && dict["MigrationJobClass"] != nil {
                    self.migrationJobClass = dict["MigrationJobClass"] as! String
                }
                if dict.keys.contains("MigrationJobID") && dict["MigrationJobID"] != nil {
                    self.migrationJobID = dict["MigrationJobID"] as! String
                }
                if dict.keys.contains("MigrationJobName") && dict["MigrationJobName"] != nil {
                    self.migrationJobName = dict["MigrationJobName"] as! String
                }
                if dict.keys.contains("MigrationJobStatus") && dict["MigrationJobStatus"] != nil {
                    self.migrationJobStatus = dict["MigrationJobStatus"] as! String
                }
                if dict.keys.contains("MigrationMode") && dict["MigrationMode"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationMode()
                    model.fromMap(dict["MigrationMode"] as! [String: Any])
                    self.migrationMode = model
                }
                if dict.keys.contains("MigrationObject") && dict["MigrationObject"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject()
                    model.fromMap(dict["MigrationObject"] as! [String: Any])
                    self.migrationObject = model
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Precheck") && dict["Precheck"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.Precheck()
                    model.fromMap(dict["Precheck"] as! [String: Any])
                    self.precheck = model
                }
                if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.SourceEndpoint()
                    model.fromMap(dict["SourceEndpoint"] as! [String: Any])
                    self.sourceEndpoint = model
                }
                if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob.StructureInitialization()
                    model.fromMap(dict["StructureInitialization"] as! [String: Any])
                    self.structureInitialization = model
                }
            }
        }
        public var migrationJob: [DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.migrationJob != nil {
                var tmp : [Any] = []
                for k in self.migrationJob! {
                    tmp.append(k.toMap())
                }
                map["MigrationJob"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MigrationJob") && dict["MigrationJob"] != nil {
                var tmp : [DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob] = []
                for v in dict["MigrationJob"] as! [Any] {
                    var model = DescirbeMigrationJobsResponseBody.MigrationJobs.MigrationJob()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.migrationJob = tmp
            }
        }
    }
    public var migrationJobs: DescirbeMigrationJobsResponseBody.MigrationJobs?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.migrationJobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.migrationJobs != nil {
            map["MigrationJobs"] = self.migrationJobs?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationJobs") && dict["MigrationJobs"] != nil {
            var model = DescirbeMigrationJobsResponseBody.MigrationJobs()
            model.fromMap(dict["MigrationJobs"] as! [String: Any])
            self.migrationJobs = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
        }
    }
}

public class DescirbeMigrationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescirbeMigrationJobsResponseBody?

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
            var model = DescirbeMigrationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInitializationStatusRequest : Tea.TeaModel {
    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SynchronizationJobId") && dict["SynchronizationJobId"] != nil {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class DescribeInitializationStatusResponseBody : Tea.TeaModel {
    public class DataInitializationDetails : Tea.TeaModel {
        public var destinationOwnerDBName: String?

        public var errorMessage: String?

        public var finishRowNum: String?

        public var sourceOwnerDBName: String?

        public var status: String?

        public var tableName: String?

        public var totalRowNum: String?

        public var usedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationOwnerDBName != nil {
                map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.finishRowNum != nil {
                map["FinishRowNum"] = self.finishRowNum!
            }
            if self.sourceOwnerDBName != nil {
                map["SourceOwnerDBName"] = self.sourceOwnerDBName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.totalRowNum != nil {
                map["TotalRowNum"] = self.totalRowNum!
            }
            if self.usedTime != nil {
                map["UsedTime"] = self.usedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("FinishRowNum") && dict["FinishRowNum"] != nil {
                self.finishRowNum = dict["FinishRowNum"] as! String
            }
            if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("TotalRowNum") && dict["TotalRowNum"] != nil {
                self.totalRowNum = dict["TotalRowNum"] as! String
            }
            if dict.keys.contains("UsedTime") && dict["UsedTime"] != nil {
                self.usedTime = dict["UsedTime"] as! String
            }
        }
    }
    public class DataSynchronizationDetails : Tea.TeaModel {
        public var destinationOwnerDBName: String?

        public var errorMessage: String?

        public var sourceOwnerDBName: String?

        public var status: String?

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
            if self.destinationOwnerDBName != nil {
                map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.sourceOwnerDBName != nil {
                map["SourceOwnerDBName"] = self.sourceOwnerDBName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
        }
    }
    public class StructureInitializationDetails : Tea.TeaModel {
        public class Constraints : Tea.TeaModel {
            public var destinationOwnerDBName: String?

            public var errorMessage: String?

            public var objectDefinition: String?

            public var objectName: String?

            public var objectType: String?

            public var sourceOwnerDBName: String?

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
                if self.destinationOwnerDBName != nil {
                    map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.objectDefinition != nil {
                    map["ObjectDefinition"] = self.objectDefinition!
                }
                if self.objectName != nil {
                    map["ObjectName"] = self.objectName!
                }
                if self.objectType != nil {
                    map["ObjectType"] = self.objectType!
                }
                if self.sourceOwnerDBName != nil {
                    map["SourceOwnerDBName"] = self.sourceOwnerDBName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                    self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ObjectDefinition") && dict["ObjectDefinition"] != nil {
                    self.objectDefinition = dict["ObjectDefinition"] as! String
                }
                if dict.keys.contains("ObjectName") && dict["ObjectName"] != nil {
                    self.objectName = dict["ObjectName"] as! String
                }
                if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
                    self.objectType = dict["ObjectType"] as! String
                }
                if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                    self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var constraints: [DescribeInitializationStatusResponseBody.StructureInitializationDetails.Constraints]?

        public var destinationOwnerDBName: String?

        public var errorMessage: String?

        public var objectDefinition: String?

        public var objectName: String?

        public var objectType: String?

        public var sourceOwnerDBName: String?

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
            if self.constraints != nil {
                var tmp : [Any] = []
                for k in self.constraints! {
                    tmp.append(k.toMap())
                }
                map["Constraints"] = tmp
            }
            if self.destinationOwnerDBName != nil {
                map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.objectDefinition != nil {
                map["ObjectDefinition"] = self.objectDefinition!
            }
            if self.objectName != nil {
                map["ObjectName"] = self.objectName!
            }
            if self.objectType != nil {
                map["ObjectType"] = self.objectType!
            }
            if self.sourceOwnerDBName != nil {
                map["SourceOwnerDBName"] = self.sourceOwnerDBName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") && dict["Constraints"] != nil {
                var tmp : [DescribeInitializationStatusResponseBody.StructureInitializationDetails.Constraints] = []
                for v in dict["Constraints"] as! [Any] {
                    var model = DescribeInitializationStatusResponseBody.StructureInitializationDetails.Constraints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constraints = tmp
            }
            if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("ObjectDefinition") && dict["ObjectDefinition"] != nil {
                self.objectDefinition = dict["ObjectDefinition"] as! String
            }
            if dict.keys.contains("ObjectName") && dict["ObjectName"] != nil {
                self.objectName = dict["ObjectName"] as! String
            }
            if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
                self.objectType = dict["ObjectType"] as! String
            }
            if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var dataInitializationDetails: [DescribeInitializationStatusResponseBody.DataInitializationDetails]?

    public var dataSynchronizationDetails: [DescribeInitializationStatusResponseBody.DataSynchronizationDetails]?

    public var structureInitializationDetails: [DescribeInitializationStatusResponseBody.StructureInitializationDetails]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInitializationDetails != nil {
            var tmp : [Any] = []
            for k in self.dataInitializationDetails! {
                tmp.append(k.toMap())
            }
            map["DataInitializationDetails"] = tmp
        }
        if self.dataSynchronizationDetails != nil {
            var tmp : [Any] = []
            for k in self.dataSynchronizationDetails! {
                tmp.append(k.toMap())
            }
            map["DataSynchronizationDetails"] = tmp
        }
        if self.structureInitializationDetails != nil {
            var tmp : [Any] = []
            for k in self.structureInitializationDetails! {
                tmp.append(k.toMap())
            }
            map["StructureInitializationDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInitializationDetails") && dict["DataInitializationDetails"] != nil {
            var tmp : [DescribeInitializationStatusResponseBody.DataInitializationDetails] = []
            for v in dict["DataInitializationDetails"] as! [Any] {
                var model = DescribeInitializationStatusResponseBody.DataInitializationDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataInitializationDetails = tmp
        }
        if dict.keys.contains("DataSynchronizationDetails") && dict["DataSynchronizationDetails"] != nil {
            var tmp : [DescribeInitializationStatusResponseBody.DataSynchronizationDetails] = []
            for v in dict["DataSynchronizationDetails"] as! [Any] {
                var model = DescribeInitializationStatusResponseBody.DataSynchronizationDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSynchronizationDetails = tmp
        }
        if dict.keys.contains("StructureInitializationDetails") && dict["StructureInitializationDetails"] != nil {
            var tmp : [DescribeInitializationStatusResponseBody.StructureInitializationDetails] = []
            for v in dict["StructureInitializationDetails"] as! [Any] {
                var model = DescribeInitializationStatusResponseBody.StructureInitializationDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.structureInitializationDetails = tmp
        }
    }
}

public class DescribeInitializationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInitializationStatusResponseBody?

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
            var model = DescribeInitializationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMigrationJobDetailRequest : Tea.TeaModel {
    public class MigrationMode : Tea.TeaModel {
        public var dataInitialization: Bool?

        public var dataSynchronization: Bool?

        public var structureInitialization: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInitialization != nil {
                map["DataInitialization"] = self.dataInitialization!
            }
            if self.dataSynchronization != nil {
                map["DataSynchronization"] = self.dataSynchronization!
            }
            if self.structureInitialization != nil {
                map["StructureInitialization"] = self.structureInitialization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
                self.dataInitialization = dict["DataInitialization"] as! Bool
            }
            if dict.keys.contains("DataSynchronization") && dict["DataSynchronization"] != nil {
                self.dataSynchronization = dict["DataSynchronization"] as! Bool
            }
            if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
                self.structureInitialization = dict["StructureInitialization"] as! Bool
            }
        }
    }
    public var migrationMode: DescribeMigrationJobDetailRequest.MigrationMode?

    public var clientToken: String?

    public var migrationJobId: String?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.migrationMode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.migrationMode != nil {
            map["MigrationMode"] = self.migrationMode?.toMap()
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationMode") && dict["MigrationMode"] != nil {
            var model = DescribeMigrationJobDetailRequest.MigrationMode()
            model.fromMap(dict["MigrationMode"] as! [String: Any])
            self.migrationMode = model
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
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
    }
}

public class DescribeMigrationJobDetailResponseBody : Tea.TeaModel {
    public class DataInitializationDetailList : Tea.TeaModel {
        public class DataInitializationDetail : Tea.TeaModel {
            public var destinationOwnerDBName: String?

            public var errorMessage: String?

            public var finishRowNum: String?

            public var migrationTime: String?

            public var sourceOwnerDBName: String?

            public var status: String?

            public var tableName: String?

            public var totalRowNum: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destinationOwnerDBName != nil {
                    map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.finishRowNum != nil {
                    map["FinishRowNum"] = self.finishRowNum!
                }
                if self.migrationTime != nil {
                    map["MigrationTime"] = self.migrationTime!
                }
                if self.sourceOwnerDBName != nil {
                    map["SourceOwnerDBName"] = self.sourceOwnerDBName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.totalRowNum != nil {
                    map["TotalRowNum"] = self.totalRowNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                    self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("FinishRowNum") && dict["FinishRowNum"] != nil {
                    self.finishRowNum = dict["FinishRowNum"] as! String
                }
                if dict.keys.contains("MigrationTime") && dict["MigrationTime"] != nil {
                    self.migrationTime = dict["MigrationTime"] as! String
                }
                if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                    self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("TotalRowNum") && dict["TotalRowNum"] != nil {
                    self.totalRowNum = dict["TotalRowNum"] as! String
                }
            }
        }
        public var dataInitializationDetail: [DescribeMigrationJobDetailResponseBody.DataInitializationDetailList.DataInitializationDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInitializationDetail != nil {
                var tmp : [Any] = []
                for k in self.dataInitializationDetail! {
                    tmp.append(k.toMap())
                }
                map["DataInitializationDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataInitializationDetail") && dict["DataInitializationDetail"] != nil {
                var tmp : [DescribeMigrationJobDetailResponseBody.DataInitializationDetailList.DataInitializationDetail] = []
                for v in dict["DataInitializationDetail"] as! [Any] {
                    var model = DescribeMigrationJobDetailResponseBody.DataInitializationDetailList.DataInitializationDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataInitializationDetail = tmp
            }
        }
    }
    public class DataSynchronizationDetailList : Tea.TeaModel {
        public class DataSynchronizationDetail : Tea.TeaModel {
            public var destinationOwnerDBName: String?

            public var errorMessage: String?

            public var sourceOwnerDBName: String?

            public var status: String?

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
                if self.destinationOwnerDBName != nil {
                    map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.sourceOwnerDBName != nil {
                    map["SourceOwnerDBName"] = self.sourceOwnerDBName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                    self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                    self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
            }
        }
        public var dataSynchronizationDetail: [DescribeMigrationJobDetailResponseBody.DataSynchronizationDetailList.DataSynchronizationDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSynchronizationDetail != nil {
                var tmp : [Any] = []
                for k in self.dataSynchronizationDetail! {
                    tmp.append(k.toMap())
                }
                map["DataSynchronizationDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSynchronizationDetail") && dict["DataSynchronizationDetail"] != nil {
                var tmp : [DescribeMigrationJobDetailResponseBody.DataSynchronizationDetailList.DataSynchronizationDetail] = []
                for v in dict["DataSynchronizationDetail"] as! [Any] {
                    var model = DescribeMigrationJobDetailResponseBody.DataSynchronizationDetailList.DataSynchronizationDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataSynchronizationDetail = tmp
            }
        }
    }
    public class StructureInitializationDetailList : Tea.TeaModel {
        public class StructureInitializationDetail : Tea.TeaModel {
            public class ConstraintList : Tea.TeaModel {
                public class StructureInitializationDetail : Tea.TeaModel {
                    public var destinationOwnerDBName: String?

                    public var errorMessage: String?

                    public var objectDefinition: String?

                    public var objectName: String?

                    public var objectType: String?

                    public var sourceOwnerDBName: String?

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
                        if self.destinationOwnerDBName != nil {
                            map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
                        }
                        if self.errorMessage != nil {
                            map["ErrorMessage"] = self.errorMessage!
                        }
                        if self.objectDefinition != nil {
                            map["ObjectDefinition"] = self.objectDefinition!
                        }
                        if self.objectName != nil {
                            map["ObjectName"] = self.objectName!
                        }
                        if self.objectType != nil {
                            map["ObjectType"] = self.objectType!
                        }
                        if self.sourceOwnerDBName != nil {
                            map["SourceOwnerDBName"] = self.sourceOwnerDBName!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                            self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
                        }
                        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                            self.errorMessage = dict["ErrorMessage"] as! String
                        }
                        if dict.keys.contains("ObjectDefinition") && dict["ObjectDefinition"] != nil {
                            self.objectDefinition = dict["ObjectDefinition"] as! String
                        }
                        if dict.keys.contains("ObjectName") && dict["ObjectName"] != nil {
                            self.objectName = dict["ObjectName"] as! String
                        }
                        if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
                            self.objectType = dict["ObjectType"] as! String
                        }
                        if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                            self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
                        }
                        if dict.keys.contains("Status") && dict["Status"] != nil {
                            self.status = dict["Status"] as! String
                        }
                    }
                }
                public var structureInitializationDetail: [DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail.ConstraintList.StructureInitializationDetail]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.structureInitializationDetail != nil {
                        var tmp : [Any] = []
                        for k in self.structureInitializationDetail! {
                            tmp.append(k.toMap())
                        }
                        map["StructureInitializationDetail"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("StructureInitializationDetail") && dict["StructureInitializationDetail"] != nil {
                        var tmp : [DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail.ConstraintList.StructureInitializationDetail] = []
                        for v in dict["StructureInitializationDetail"] as! [Any] {
                            var model = DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail.ConstraintList.StructureInitializationDetail()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.structureInitializationDetail = tmp
                    }
                }
            }
            public var constraintList: DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail.ConstraintList?

            public var destinationOwnerDBName: String?

            public var errorMessage: String?

            public var objectDefinition: String?

            public var objectName: String?

            public var objectType: String?

            public var sourceOwnerDBName: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.constraintList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constraintList != nil {
                    map["ConstraintList"] = self.constraintList?.toMap()
                }
                if self.destinationOwnerDBName != nil {
                    map["DestinationOwnerDBName"] = self.destinationOwnerDBName!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.objectDefinition != nil {
                    map["ObjectDefinition"] = self.objectDefinition!
                }
                if self.objectName != nil {
                    map["ObjectName"] = self.objectName!
                }
                if self.objectType != nil {
                    map["ObjectType"] = self.objectType!
                }
                if self.sourceOwnerDBName != nil {
                    map["SourceOwnerDBName"] = self.sourceOwnerDBName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstraintList") && dict["ConstraintList"] != nil {
                    var model = DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail.ConstraintList()
                    model.fromMap(dict["ConstraintList"] as! [String: Any])
                    self.constraintList = model
                }
                if dict.keys.contains("DestinationOwnerDBName") && dict["DestinationOwnerDBName"] != nil {
                    self.destinationOwnerDBName = dict["DestinationOwnerDBName"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ObjectDefinition") && dict["ObjectDefinition"] != nil {
                    self.objectDefinition = dict["ObjectDefinition"] as! String
                }
                if dict.keys.contains("ObjectName") && dict["ObjectName"] != nil {
                    self.objectName = dict["ObjectName"] as! String
                }
                if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
                    self.objectType = dict["ObjectType"] as! String
                }
                if dict.keys.contains("SourceOwnerDBName") && dict["SourceOwnerDBName"] != nil {
                    self.sourceOwnerDBName = dict["SourceOwnerDBName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var structureInitializationDetail: [DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.structureInitializationDetail != nil {
                var tmp : [Any] = []
                for k in self.structureInitializationDetail! {
                    tmp.append(k.toMap())
                }
                map["StructureInitializationDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StructureInitializationDetail") && dict["StructureInitializationDetail"] != nil {
                var tmp : [DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail] = []
                for v in dict["StructureInitializationDetail"] as! [Any] {
                    var model = DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList.StructureInitializationDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.structureInitializationDetail = tmp
            }
        }
    }
    public var dataInitializationDetailList: DescribeMigrationJobDetailResponseBody.DataInitializationDetailList?

    public var dataSynchronizationDetailList: DescribeMigrationJobDetailResponseBody.DataSynchronizationDetailList?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var structureInitializationDetailList: DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataInitializationDetailList?.validate()
        try self.dataSynchronizationDetailList?.validate()
        try self.structureInitializationDetailList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInitializationDetailList != nil {
            map["DataInitializationDetailList"] = self.dataInitializationDetailList?.toMap()
        }
        if self.dataSynchronizationDetailList != nil {
            map["DataSynchronizationDetailList"] = self.dataSynchronizationDetailList?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.structureInitializationDetailList != nil {
            map["StructureInitializationDetailList"] = self.structureInitializationDetailList?.toMap()
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInitializationDetailList") && dict["DataInitializationDetailList"] != nil {
            var model = DescribeMigrationJobDetailResponseBody.DataInitializationDetailList()
            model.fromMap(dict["DataInitializationDetailList"] as! [String: Any])
            self.dataInitializationDetailList = model
        }
        if dict.keys.contains("DataSynchronizationDetailList") && dict["DataSynchronizationDetailList"] != nil {
            var model = DescribeMigrationJobDetailResponseBody.DataSynchronizationDetailList()
            model.fromMap(dict["DataSynchronizationDetailList"] as! [String: Any])
            self.dataSynchronizationDetailList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("StructureInitializationDetailList") && dict["StructureInitializationDetailList"] != nil {
            var model = DescribeMigrationJobDetailResponseBody.StructureInitializationDetailList()
            model.fromMap(dict["StructureInitializationDetailList"] as! [String: Any])
            self.structureInitializationDetailList = model
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
        }
    }
}

public class DescribeMigrationJobDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMigrationJobDetailResponseBody?

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
            var model = DescribeMigrationJobDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMigrationJobStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var migrationJobId: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class DescribeMigrationJobStatusResponseBody : Tea.TeaModel {
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
        public var databaseName: String?

        public var engineName: String?

        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var port: String?

        public var userName: String?

        public var oracleSID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
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
            if self.oracleSID != nil {
                map["oracleSID"] = self.oracleSID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
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
            if dict.keys.contains("oracleSID") && dict["oracleSID"] != nil {
                self.oracleSID = dict["oracleSID"] as! String
            }
        }
    }
    public class MigrationMode : Tea.TeaModel {
        public var dataInitialization: Bool?

        public var dataSynchronization: Bool?

        public var structureInitialization: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataInitialization != nil {
                map["dataInitialization"] = self.dataInitialization!
            }
            if self.dataSynchronization != nil {
                map["dataSynchronization"] = self.dataSynchronization!
            }
            if self.structureInitialization != nil {
                map["structureInitialization"] = self.structureInitialization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dataInitialization") && dict["dataInitialization"] != nil {
                self.dataInitialization = dict["dataInitialization"] as! Bool
            }
            if dict.keys.contains("dataSynchronization") && dict["dataSynchronization"] != nil {
                self.dataSynchronization = dict["dataSynchronization"] as! Bool
            }
            if dict.keys.contains("structureInitialization") && dict["structureInitialization"] != nil {
                self.structureInitialization = dict["structureInitialization"] as! Bool
            }
        }
    }
    public class PrecheckStatus : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public class CheckItem : Tea.TeaModel {
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
            public var checkItem: [DescribeMigrationJobStatusResponseBody.PrecheckStatus.Detail.CheckItem]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkItem != nil {
                    var tmp : [Any] = []
                    for k in self.checkItem! {
                        tmp.append(k.toMap())
                    }
                    map["CheckItem"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckItem") && dict["CheckItem"] != nil {
                    var tmp : [DescribeMigrationJobStatusResponseBody.PrecheckStatus.Detail.CheckItem] = []
                    for v in dict["CheckItem"] as! [Any] {
                        var model = DescribeMigrationJobStatusResponseBody.PrecheckStatus.Detail.CheckItem()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.checkItem = tmp
                }
            }
        }
        public var detail: DescribeMigrationJobStatusResponseBody.PrecheckStatus.Detail?

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
            try self.detail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail?.toMap()
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
                var model = DescribeMigrationJobStatusResponseBody.PrecheckStatus.Detail()
                model.fromMap(dict["Detail"] as! [String: Any])
                self.detail = model
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
        public var databaseName: String?

        public var engineName: String?

        public var IP: String?

        public var instanceId: String?

        public var instanceType: String?

        public var port: String?

        public var userName: String?

        public var oracleSID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
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
            if self.oracleSID != nil {
                map["oracleSID"] = self.oracleSID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
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
            if dict.keys.contains("oracleSID") && dict["oracleSID"] != nil {
                self.oracleSID = dict["oracleSID"] as! String
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
    public var dataInitializationStatus: DescribeMigrationJobStatusResponseBody.DataInitializationStatus?

    public var dataSynchronizationStatus: DescribeMigrationJobStatusResponseBody.DataSynchronizationStatus?

    public var destinationEndpoint: DescribeMigrationJobStatusResponseBody.DestinationEndpoint?

    public var migrationJobClass: String?

    public var migrationJobId: String?

    public var migrationJobName: String?

    public var migrationJobStatus: String?

    public var migrationMode: DescribeMigrationJobStatusResponseBody.MigrationMode?

    public var migrationObject: String?

    public var payType: String?

    public var precheckStatus: DescribeMigrationJobStatusResponseBody.PrecheckStatus?

    public var sourceEndpoint: DescribeMigrationJobStatusResponseBody.SourceEndpoint?

    public var structureInitializationStatus: DescribeMigrationJobStatusResponseBody.StructureInitializationStatus?

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
        try self.migrationMode?.validate()
        try self.precheckStatus?.validate()
        try self.sourceEndpoint?.validate()
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
        if self.destinationEndpoint != nil {
            map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
        }
        if self.migrationJobClass != nil {
            map["MigrationJobClass"] = self.migrationJobClass!
        }
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.migrationJobName != nil {
            map["MigrationJobName"] = self.migrationJobName!
        }
        if self.migrationJobStatus != nil {
            map["MigrationJobStatus"] = self.migrationJobStatus!
        }
        if self.migrationMode != nil {
            map["MigrationMode"] = self.migrationMode?.toMap()
        }
        if self.migrationObject != nil {
            map["MigrationObject"] = self.migrationObject!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.precheckStatus != nil {
            map["PrecheckStatus"] = self.precheckStatus?.toMap()
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.structureInitializationStatus != nil {
            map["StructureInitializationStatus"] = self.structureInitializationStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInitializationStatus") && dict["DataInitializationStatus"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.DataInitializationStatus()
            model.fromMap(dict["DataInitializationStatus"] as! [String: Any])
            self.dataInitializationStatus = model
        }
        if dict.keys.contains("DataSynchronizationStatus") && dict["DataSynchronizationStatus"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.DataSynchronizationStatus()
            model.fromMap(dict["DataSynchronizationStatus"] as! [String: Any])
            self.dataSynchronizationStatus = model
        }
        if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.DestinationEndpoint()
            model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
            self.destinationEndpoint = model
        }
        if dict.keys.contains("MigrationJobClass") && dict["MigrationJobClass"] != nil {
            self.migrationJobClass = dict["MigrationJobClass"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("MigrationJobName") && dict["MigrationJobName"] != nil {
            self.migrationJobName = dict["MigrationJobName"] as! String
        }
        if dict.keys.contains("MigrationJobStatus") && dict["MigrationJobStatus"] != nil {
            self.migrationJobStatus = dict["MigrationJobStatus"] as! String
        }
        if dict.keys.contains("MigrationMode") && dict["MigrationMode"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.MigrationMode()
            model.fromMap(dict["MigrationMode"] as! [String: Any])
            self.migrationMode = model
        }
        if dict.keys.contains("MigrationObject") && dict["MigrationObject"] != nil {
            self.migrationObject = dict["MigrationObject"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PrecheckStatus") && dict["PrecheckStatus"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.PrecheckStatus()
            model.fromMap(dict["PrecheckStatus"] as! [String: Any])
            self.precheckStatus = model
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("StructureInitializationStatus") && dict["StructureInitializationStatus"] != nil {
            var model = DescribeMigrationJobStatusResponseBody.StructureInitializationStatus()
            model.fromMap(dict["StructureInitializationStatus"] as! [String: Any])
            self.structureInitializationStatus = model
        }
    }
}

public class DescribeMigrationJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMigrationJobStatusResponseBody?

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
            var model = DescribeMigrationJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMigrationJobsRequest : Tea.TeaModel {
    public var migrationJobName: String?

    public var ownerId: String?

    public var pageNum: Int32?

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
        if self.migrationJobName != nil {
            map["MigrationJobName"] = self.migrationJobName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationJobName") && dict["MigrationJobName"] != nil {
            self.migrationJobName = dict["MigrationJobName"] as! String
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
    }
}

public class DescribeMigrationJobsResponseBody : Tea.TeaModel {
    public class MigrationJobs : Tea.TeaModel {
        public class MigrationJob : Tea.TeaModel {
            public class DataInitialization : Tea.TeaModel {
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
                        map["status"] = self.status!
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
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public class DataSynchronization : Tea.TeaModel {
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
                        map["status"] = self.status!
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
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public class DestinationEndpoint : Tea.TeaModel {
                public var databaseName: String?

                public var engineName: String?

                public var IP: String?

                public var instanceID: String?

                public var instanceType: String?

                public var oracleSID: String?

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
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.engineName != nil {
                        map["EngineName"] = self.engineName!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.oracleSID != nil {
                        map["OracleSID"] = self.oracleSID!
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
                    if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                        self.engineName = dict["EngineName"] as! String
                    }
                    if dict.keys.contains("IP") && dict["IP"] != nil {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                    if dict.keys.contains("OracleSID") && dict["OracleSID"] != nil {
                        self.oracleSID = dict["OracleSID"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("UserName") && dict["UserName"] != nil {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public class MigrationMode : Tea.TeaModel {
                public var dataInitialization: Bool?

                public var dataSynchronization: Bool?

                public var structureInitialization: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataInitialization != nil {
                        map["DataInitialization"] = self.dataInitialization!
                    }
                    if self.dataSynchronization != nil {
                        map["DataSynchronization"] = self.dataSynchronization!
                    }
                    if self.structureInitialization != nil {
                        map["StructureInitialization"] = self.structureInitialization!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
                        self.dataInitialization = dict["DataInitialization"] as! Bool
                    }
                    if dict.keys.contains("DataSynchronization") && dict["DataSynchronization"] != nil {
                        self.dataSynchronization = dict["DataSynchronization"] as! Bool
                    }
                    if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
                        self.structureInitialization = dict["StructureInitialization"] as! Bool
                    }
                }
            }
            public class MigrationObject : Tea.TeaModel {
                public class SynchronousObject : Tea.TeaModel {
                    public class TableList : Tea.TeaModel {
                        public var table: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.table != nil {
                                map["Table"] = self.table!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Table") && dict["Table"] != nil {
                                self.table = dict["Table"] as! [String]
                            }
                        }
                    }
                    public var databaseName: String?

                    public var tableList: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject.TableList?

                    public var wholeDatabase: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.tableList?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.databaseName != nil {
                            map["DatabaseName"] = self.databaseName!
                        }
                        if self.tableList != nil {
                            map["TableList"] = self.tableList?.toMap()
                        }
                        if self.wholeDatabase != nil {
                            map["WholeDatabase"] = self.wholeDatabase!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                            self.databaseName = dict["DatabaseName"] as! String
                        }
                        if dict.keys.contains("TableList") && dict["TableList"] != nil {
                            var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject.TableList()
                            model.fromMap(dict["TableList"] as! [String: Any])
                            self.tableList = model
                        }
                        if dict.keys.contains("WholeDatabase") && dict["WholeDatabase"] != nil {
                            self.wholeDatabase = dict["WholeDatabase"] as! String
                        }
                    }
                }
                public var synchronousObject: [DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.synchronousObject != nil {
                        var tmp : [Any] = []
                        for k in self.synchronousObject! {
                            tmp.append(k.toMap())
                        }
                        map["SynchronousObject"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SynchronousObject") && dict["SynchronousObject"] != nil {
                        var tmp : [DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject] = []
                        for v in dict["SynchronousObject"] as! [Any] {
                            var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject.SynchronousObject()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.synchronousObject = tmp
                    }
                }
            }
            public class Precheck : Tea.TeaModel {
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
                    if self.percent != nil {
                        map["Percent"] = self.percent!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Percent") && dict["Percent"] != nil {
                        self.percent = dict["Percent"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public class SourceEndpoint : Tea.TeaModel {
                public var databaseName: String?

                public var engineName: String?

                public var IP: String?

                public var instanceID: String?

                public var instanceType: String?

                public var oracleSID: String?

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
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.engineName != nil {
                        map["EngineName"] = self.engineName!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.oracleSID != nil {
                        map["OracleSID"] = self.oracleSID!
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
                    if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("EngineName") && dict["EngineName"] != nil {
                        self.engineName = dict["EngineName"] as! String
                    }
                    if dict.keys.contains("IP") && dict["IP"] != nil {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                    if dict.keys.contains("OracleSID") && dict["OracleSID"] != nil {
                        self.oracleSID = dict["OracleSID"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("UserName") && dict["UserName"] != nil {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public class StructureInitialization : Tea.TeaModel {
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
                        map["status"] = self.status!
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
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public var dataInitialization: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataInitialization?

            public var dataSynchronization: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataSynchronization?

            public var destinationEndpoint: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DestinationEndpoint?

            public var migrationJobClass: String?

            public var migrationJobID: String?

            public var migrationJobName: String?

            public var migrationJobStatus: String?

            public var migrationMode: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationMode?

            public var migrationObject: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject?

            public var payType: String?

            public var precheck: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.Precheck?

            public var sourceEndpoint: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.SourceEndpoint?

            public var structureInitialization: DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.StructureInitialization?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataInitialization?.validate()
                try self.dataSynchronization?.validate()
                try self.destinationEndpoint?.validate()
                try self.migrationMode?.validate()
                try self.migrationObject?.validate()
                try self.precheck?.validate()
                try self.sourceEndpoint?.validate()
                try self.structureInitialization?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataInitialization != nil {
                    map["DataInitialization"] = self.dataInitialization?.toMap()
                }
                if self.dataSynchronization != nil {
                    map["DataSynchronization"] = self.dataSynchronization?.toMap()
                }
                if self.destinationEndpoint != nil {
                    map["DestinationEndpoint"] = self.destinationEndpoint?.toMap()
                }
                if self.migrationJobClass != nil {
                    map["MigrationJobClass"] = self.migrationJobClass!
                }
                if self.migrationJobID != nil {
                    map["MigrationJobID"] = self.migrationJobID!
                }
                if self.migrationJobName != nil {
                    map["MigrationJobName"] = self.migrationJobName!
                }
                if self.migrationJobStatus != nil {
                    map["MigrationJobStatus"] = self.migrationJobStatus!
                }
                if self.migrationMode != nil {
                    map["MigrationMode"] = self.migrationMode?.toMap()
                }
                if self.migrationObject != nil {
                    map["MigrationObject"] = self.migrationObject?.toMap()
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.precheck != nil {
                    map["Precheck"] = self.precheck?.toMap()
                }
                if self.sourceEndpoint != nil {
                    map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
                }
                if self.structureInitialization != nil {
                    map["StructureInitialization"] = self.structureInitialization?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataInitialization") && dict["DataInitialization"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataInitialization()
                    model.fromMap(dict["DataInitialization"] as! [String: Any])
                    self.dataInitialization = model
                }
                if dict.keys.contains("DataSynchronization") && dict["DataSynchronization"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DataSynchronization()
                    model.fromMap(dict["DataSynchronization"] as! [String: Any])
                    self.dataSynchronization = model
                }
                if dict.keys.contains("DestinationEndpoint") && dict["DestinationEndpoint"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.DestinationEndpoint()
                    model.fromMap(dict["DestinationEndpoint"] as! [String: Any])
                    self.destinationEndpoint = model
                }
                if dict.keys.contains("MigrationJobClass") && dict["MigrationJobClass"] != nil {
                    self.migrationJobClass = dict["MigrationJobClass"] as! String
                }
                if dict.keys.contains("MigrationJobID") && dict["MigrationJobID"] != nil {
                    self.migrationJobID = dict["MigrationJobID"] as! String
                }
                if dict.keys.contains("MigrationJobName") && dict["MigrationJobName"] != nil {
                    self.migrationJobName = dict["MigrationJobName"] as! String
                }
                if dict.keys.contains("MigrationJobStatus") && dict["MigrationJobStatus"] != nil {
                    self.migrationJobStatus = dict["MigrationJobStatus"] as! String
                }
                if dict.keys.contains("MigrationMode") && dict["MigrationMode"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationMode()
                    model.fromMap(dict["MigrationMode"] as! [String: Any])
                    self.migrationMode = model
                }
                if dict.keys.contains("MigrationObject") && dict["MigrationObject"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.MigrationObject()
                    model.fromMap(dict["MigrationObject"] as! [String: Any])
                    self.migrationObject = model
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Precheck") && dict["Precheck"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.Precheck()
                    model.fromMap(dict["Precheck"] as! [String: Any])
                    self.precheck = model
                }
                if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.SourceEndpoint()
                    model.fromMap(dict["SourceEndpoint"] as! [String: Any])
                    self.sourceEndpoint = model
                }
                if dict.keys.contains("StructureInitialization") && dict["StructureInitialization"] != nil {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob.StructureInitialization()
                    model.fromMap(dict["StructureInitialization"] as! [String: Any])
                    self.structureInitialization = model
                }
            }
        }
        public var migrationJob: [DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.migrationJob != nil {
                var tmp : [Any] = []
                for k in self.migrationJob! {
                    tmp.append(k.toMap())
                }
                map["MigrationJob"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MigrationJob") && dict["MigrationJob"] != nil {
                var tmp : [DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob] = []
                for v in dict["MigrationJob"] as! [Any] {
                    var model = DescribeMigrationJobsResponseBody.MigrationJobs.MigrationJob()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.migrationJob = tmp
            }
        }
    }
    public var migrationJobs: DescribeMigrationJobsResponseBody.MigrationJobs?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.migrationJobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.migrationJobs != nil {
            map["MigrationJobs"] = self.migrationJobs?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationJobs") && dict["MigrationJobs"] != nil {
            var model = DescribeMigrationJobsResponseBody.MigrationJobs()
            model.fromMap(dict["MigrationJobs"] as! [String: Any])
            self.migrationJobs = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
        }
    }
}

public class DescribeMigrationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMigrationJobsResponseBody?

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
            var model = DescribeMigrationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionInstanceStatusRequest : Tea.TeaModel {
    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public override init() {
        super.init()
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
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
    }
}

public class DescribeSubscriptionInstanceStatusResponseBody : Tea.TeaModel {
    public class SourceEndpoint : Tea.TeaModel {
        public var instanceID: String?

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
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                self.instanceID = dict["InstanceID"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
        }
    }
    public class SubscriptionDataType : Tea.TeaModel {
        public var DDL: Bool?

        public var DML: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DDL != nil {
                map["DDL"] = self.DDL!
            }
            if self.DML != nil {
                map["DML"] = self.DML!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DDL") && dict["DDL"] != nil {
                self.DDL = dict["DDL"] as! Bool
            }
            if dict.keys.contains("DML") && dict["DML"] != nil {
                self.DML = dict["DML"] as! Bool
            }
        }
    }
    public class SubscriptionObject : Tea.TeaModel {
        public class SynchronousObject : Tea.TeaModel {
            public class TableList : Tea.TeaModel {
                public var table: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.table != nil {
                        map["Table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Table") && dict["Table"] != nil {
                        self.table = dict["Table"] as! [String]
                    }
                }
            }
            public var databaseName: String?

            public var tableList: DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject.SynchronousObject.TableList?

            public var wholeDatabase: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tableList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databaseName != nil {
                    map["DatabaseName"] = self.databaseName!
                }
                if self.tableList != nil {
                    map["TableList"] = self.tableList?.toMap()
                }
                if self.wholeDatabase != nil {
                    map["WholeDatabase"] = self.wholeDatabase!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                    self.databaseName = dict["DatabaseName"] as! String
                }
                if dict.keys.contains("TableList") && dict["TableList"] != nil {
                    var model = DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject.SynchronousObject.TableList()
                    model.fromMap(dict["TableList"] as! [String: Any])
                    self.tableList = model
                }
                if dict.keys.contains("WholeDatabase") && dict["WholeDatabase"] != nil {
                    self.wholeDatabase = dict["WholeDatabase"] as! String
                }
            }
        }
        public var synchronousObject: [DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject.SynchronousObject]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.synchronousObject != nil {
                var tmp : [Any] = []
                for k in self.synchronousObject! {
                    tmp.append(k.toMap())
                }
                map["SynchronousObject"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SynchronousObject") && dict["SynchronousObject"] != nil {
                var tmp : [DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject.SynchronousObject] = []
                for v in dict["SynchronousObject"] as! [Any] {
                    var model = DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject.SynchronousObject()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.synchronousObject = tmp
            }
        }
    }
    public var beginTimestamp: String?

    public var consumptionCheckpoint: String?

    public var consumptionClient: String?

    public var endTimestamp: String?

    public var errorMessage: String?

    public var payType: String?

    public var sourceEndpoint: DescribeSubscriptionInstanceStatusResponseBody.SourceEndpoint?

    public var status: String?

    public var subscriptionDataType: DescribeSubscriptionInstanceStatusResponseBody.SubscriptionDataType?

    public var subscriptionInstanceID: String?

    public var subscriptionInstanceName: String?

    public var subscriptionObject: DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceEndpoint?.validate()
        try self.subscriptionDataType?.validate()
        try self.subscriptionObject?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTimestamp != nil {
            map["BeginTimestamp"] = self.beginTimestamp!
        }
        if self.consumptionCheckpoint != nil {
            map["ConsumptionCheckpoint"] = self.consumptionCheckpoint!
        }
        if self.consumptionClient != nil {
            map["ConsumptionClient"] = self.consumptionClient!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.sourceEndpoint != nil {
            map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subscriptionDataType != nil {
            map["SubscriptionDataType"] = self.subscriptionDataType?.toMap()
        }
        if self.subscriptionInstanceID != nil {
            map["SubscriptionInstanceID"] = self.subscriptionInstanceID!
        }
        if self.subscriptionInstanceName != nil {
            map["SubscriptionInstanceName"] = self.subscriptionInstanceName!
        }
        if self.subscriptionObject != nil {
            map["SubscriptionObject"] = self.subscriptionObject?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTimestamp") && dict["BeginTimestamp"] != nil {
            self.beginTimestamp = dict["BeginTimestamp"] as! String
        }
        if dict.keys.contains("ConsumptionCheckpoint") && dict["ConsumptionCheckpoint"] != nil {
            self.consumptionCheckpoint = dict["ConsumptionCheckpoint"] as! String
        }
        if dict.keys.contains("ConsumptionClient") && dict["ConsumptionClient"] != nil {
            self.consumptionClient = dict["ConsumptionClient"] as! String
        }
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
            var model = DescribeSubscriptionInstanceStatusResponseBody.SourceEndpoint()
            model.fromMap(dict["SourceEndpoint"] as! [String: Any])
            self.sourceEndpoint = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubscriptionDataType") && dict["SubscriptionDataType"] != nil {
            var model = DescribeSubscriptionInstanceStatusResponseBody.SubscriptionDataType()
            model.fromMap(dict["SubscriptionDataType"] as! [String: Any])
            self.subscriptionDataType = model
        }
        if dict.keys.contains("SubscriptionInstanceID") && dict["SubscriptionInstanceID"] != nil {
            self.subscriptionInstanceID = dict["SubscriptionInstanceID"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceName") && dict["SubscriptionInstanceName"] != nil {
            self.subscriptionInstanceName = dict["SubscriptionInstanceName"] as! String
        }
        if dict.keys.contains("SubscriptionObject") && dict["SubscriptionObject"] != nil {
            var model = DescribeSubscriptionInstanceStatusResponseBody.SubscriptionObject()
            model.fromMap(dict["SubscriptionObject"] as! [String: Any])
            self.subscriptionObject = model
        }
    }
}

public class DescribeSubscriptionInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionInstanceStatusResponseBody?

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
            var model = DescribeSubscriptionInstanceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var subscriptionInstanceName: String?

    public override init() {
        super.init()
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
        if self.subscriptionInstanceName != nil {
            map["SubscriptionInstanceName"] = self.subscriptionInstanceName!
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
        if dict.keys.contains("SubscriptionInstanceName") && dict["SubscriptionInstanceName"] != nil {
            self.subscriptionInstanceName = dict["SubscriptionInstanceName"] as! String
        }
    }
}

public class DescribeSubscriptionInstancesResponseBody : Tea.TeaModel {
    public class SubscriptionInstances : Tea.TeaModel {
        public class SubscriptionInstance : Tea.TeaModel {
            public class SourceEndpoint : Tea.TeaModel {
                public var instanceID: String?

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
                    if self.instanceID != nil {
                        map["InstanceID"] = self.instanceID!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceID") && dict["InstanceID"] != nil {
                        self.instanceID = dict["InstanceID"] as! String
                    }
                    if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public class SubscriptionDataType : Tea.TeaModel {
                public var DDL: Bool?

                public var DML: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.DDL != nil {
                        map["DDL"] = self.DDL!
                    }
                    if self.DML != nil {
                        map["DML"] = self.DML!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DDL") && dict["DDL"] != nil {
                        self.DDL = dict["DDL"] as! Bool
                    }
                    if dict.keys.contains("DML") && dict["DML"] != nil {
                        self.DML = dict["DML"] as! Bool
                    }
                }
            }
            public class SubscriptionObject : Tea.TeaModel {
                public class SynchronousObject : Tea.TeaModel {
                    public class TableList : Tea.TeaModel {
                        public var table: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.table != nil {
                                map["Table"] = self.table!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Table") && dict["Table"] != nil {
                                self.table = dict["Table"] as! [String]
                            }
                        }
                    }
                    public var databaseName: String?

                    public var tableList: DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject.SynchronousObject.TableList?

                    public var wholeDatabase: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.tableList?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.databaseName != nil {
                            map["DatabaseName"] = self.databaseName!
                        }
                        if self.tableList != nil {
                            map["TableList"] = self.tableList?.toMap()
                        }
                        if self.wholeDatabase != nil {
                            map["WholeDatabase"] = self.wholeDatabase!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                            self.databaseName = dict["DatabaseName"] as! String
                        }
                        if dict.keys.contains("TableList") && dict["TableList"] != nil {
                            var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject.SynchronousObject.TableList()
                            model.fromMap(dict["TableList"] as! [String: Any])
                            self.tableList = model
                        }
                        if dict.keys.contains("WholeDatabase") && dict["WholeDatabase"] != nil {
                            self.wholeDatabase = dict["WholeDatabase"] as! String
                        }
                    }
                }
                public var synchronousObject: [DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject.SynchronousObject]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.synchronousObject != nil {
                        var tmp : [Any] = []
                        for k in self.synchronousObject! {
                            tmp.append(k.toMap())
                        }
                        map["SynchronousObject"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SynchronousObject") && dict["SynchronousObject"] != nil {
                        var tmp : [DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject.SynchronousObject] = []
                        for v in dict["SynchronousObject"] as! [Any] {
                            var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject.SynchronousObject()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.synchronousObject = tmp
                    }
                }
            }
            public var beginTimestamp: String?

            public var consumptionCheckpoint: String?

            public var consumptionClient: String?

            public var endTimestamp: String?

            public var errorMessage: String?

            public var payType: String?

            public var sourceEndpoint: DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SourceEndpoint?

            public var status: String?

            public var subscriptionDataType: DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionDataType?

            public var subscriptionInstanceID: String?

            public var subscriptionInstanceName: String?

            public var subscriptionObject: DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.sourceEndpoint?.validate()
                try self.subscriptionDataType?.validate()
                try self.subscriptionObject?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginTimestamp != nil {
                    map["BeginTimestamp"] = self.beginTimestamp!
                }
                if self.consumptionCheckpoint != nil {
                    map["ConsumptionCheckpoint"] = self.consumptionCheckpoint!
                }
                if self.consumptionClient != nil {
                    map["ConsumptionClient"] = self.consumptionClient!
                }
                if self.endTimestamp != nil {
                    map["EndTimestamp"] = self.endTimestamp!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.sourceEndpoint != nil {
                    map["SourceEndpoint"] = self.sourceEndpoint?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subscriptionDataType != nil {
                    map["SubscriptionDataType"] = self.subscriptionDataType?.toMap()
                }
                if self.subscriptionInstanceID != nil {
                    map["SubscriptionInstanceID"] = self.subscriptionInstanceID!
                }
                if self.subscriptionInstanceName != nil {
                    map["SubscriptionInstanceName"] = self.subscriptionInstanceName!
                }
                if self.subscriptionObject != nil {
                    map["SubscriptionObject"] = self.subscriptionObject?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginTimestamp") && dict["BeginTimestamp"] != nil {
                    self.beginTimestamp = dict["BeginTimestamp"] as! String
                }
                if dict.keys.contains("ConsumptionCheckpoint") && dict["ConsumptionCheckpoint"] != nil {
                    self.consumptionCheckpoint = dict["ConsumptionCheckpoint"] as! String
                }
                if dict.keys.contains("ConsumptionClient") && dict["ConsumptionClient"] != nil {
                    self.consumptionClient = dict["ConsumptionClient"] as! String
                }
                if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
                    self.endTimestamp = dict["EndTimestamp"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("SourceEndpoint") && dict["SourceEndpoint"] != nil {
                    var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SourceEndpoint()
                    model.fromMap(dict["SourceEndpoint"] as! [String: Any])
                    self.sourceEndpoint = model
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubscriptionDataType") && dict["SubscriptionDataType"] != nil {
                    var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionDataType()
                    model.fromMap(dict["SubscriptionDataType"] as! [String: Any])
                    self.subscriptionDataType = model
                }
                if dict.keys.contains("SubscriptionInstanceID") && dict["SubscriptionInstanceID"] != nil {
                    self.subscriptionInstanceID = dict["SubscriptionInstanceID"] as! String
                }
                if dict.keys.contains("SubscriptionInstanceName") && dict["SubscriptionInstanceName"] != nil {
                    self.subscriptionInstanceName = dict["SubscriptionInstanceName"] as! String
                }
                if dict.keys.contains("SubscriptionObject") && dict["SubscriptionObject"] != nil {
                    var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance.SubscriptionObject()
                    model.fromMap(dict["SubscriptionObject"] as! [String: Any])
                    self.subscriptionObject = model
                }
            }
        }
        public var subscriptionInstance: [DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subscriptionInstance != nil {
                var tmp : [Any] = []
                for k in self.subscriptionInstance! {
                    tmp.append(k.toMap())
                }
                map["SubscriptionInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubscriptionInstance") && dict["SubscriptionInstance"] != nil {
                var tmp : [DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance] = []
                for v in dict["SubscriptionInstance"] as! [Any] {
                    var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances.SubscriptionInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subscriptionInstance = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var subscriptionInstances: DescribeSubscriptionInstancesResponseBody.SubscriptionInstances?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.subscriptionInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.subscriptionInstances != nil {
            map["SubscriptionInstances"] = self.subscriptionInstances?.toMap()
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
        if dict.keys.contains("SubscriptionInstances") && dict["SubscriptionInstances"] != nil {
            var model = DescribeSubscriptionInstancesResponseBody.SubscriptionInstances()
            model.fromMap(dict["SubscriptionInstances"] as! [String: Any])
            self.subscriptionInstances = model
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
        }
    }
}

public class DescribeSubscriptionInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionInstancesResponseBody?

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
            var model = DescribeSubscriptionInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionObjectModifyStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public override init() {
        super.init()
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
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
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
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
    }
}

public class DescribeSubscriptionObjectModifyStatusResponseBody : Tea.TeaModel {
    public class Detail : Tea.TeaModel {
        public class CheckItem : Tea.TeaModel {
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
        public var checkItem: [DescribeSubscriptionObjectModifyStatusResponseBody.Detail.CheckItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkItem != nil {
                var tmp : [Any] = []
                for k in self.checkItem! {
                    tmp.append(k.toMap())
                }
                map["CheckItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckItem") && dict["CheckItem"] != nil {
                var tmp : [DescribeSubscriptionObjectModifyStatusResponseBody.Detail.CheckItem] = []
                for v in dict["CheckItem"] as! [Any] {
                    var model = DescribeSubscriptionObjectModifyStatusResponseBody.Detail.CheckItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.checkItem = tmp
            }
        }
    }
    public var detail: DescribeSubscriptionObjectModifyStatusResponseBody.Detail?

    public var percent: String?

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
        try self.detail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detail != nil {
            map["Detail"] = self.detail?.toMap()
        }
        if self.percent != nil {
            map["Percent"] = self.percent!
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
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            var model = DescribeSubscriptionObjectModifyStatusResponseBody.Detail()
            model.fromMap(dict["Detail"] as! [String: Any])
            self.detail = model
        }
        if dict.keys.contains("Percent") && dict["Percent"] != nil {
            self.percent = dict["Percent"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeSubscriptionObjectModifyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionObjectModifyStatusResponseBody?

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
            var model = DescribeSubscriptionObjectModifyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSynchronizationJobStatusRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
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
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
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
            public var instanceId: String?

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
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
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
            public var instanceId: String?

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
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
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

public class ModifyConsumptionTimestampRequest : Tea.TeaModel {
    public var consumptionTimestamp: String?

    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumptionTimestamp != nil {
            map["ConsumptionTimestamp"] = self.consumptionTimestamp!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumptionTimestamp") && dict["ConsumptionTimestamp"] != nil {
            self.consumptionTimestamp = dict["ConsumptionTimestamp"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
    }
}

public class ModifyConsumptionTimestampResponseBody : Tea.TeaModel {
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

public class ModifyConsumptionTimestampResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyConsumptionTimestampResponseBody?

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
            var model = ModifyConsumptionTimestampResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMigrationObjectRequest : Tea.TeaModel {
    public var clientToken: String?

    public var migrationJobId: String?

    public var migrationObject: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.migrationObject != nil {
            map["MigrationObject"] = self.migrationObject!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("MigrationObject") && dict["MigrationObject"] != nil {
            self.migrationObject = dict["MigrationObject"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class ModifyMigrationObjectResponseBody : Tea.TeaModel {
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

public class ModifyMigrationObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMigrationObjectResponseBody?

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
            var model = ModifyMigrationObjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySubscriptionObjectRequest : Tea.TeaModel {
    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public var subscriptionObject: String?

    public override init() {
        super.init()
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
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
        }
        if self.subscriptionObject != nil {
            map["SubscriptionObject"] = self.subscriptionObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
        if dict.keys.contains("SubscriptionObject") && dict["SubscriptionObject"] != nil {
            self.subscriptionObject = dict["SubscriptionObject"] as! String
        }
    }
}

public class ModifySubscriptionObjectResponseBody : Tea.TeaModel {
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

public class ModifySubscriptionObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySubscriptionObjectResponseBody?

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
            var model = ModifySubscriptionObjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySynchronizationObjectRequest : Tea.TeaModel {
    public var ownerId: String?

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

public class StartMigrationJobRequest : Tea.TeaModel {
    public var migrationJobId: String?

    public var ownerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class StartMigrationJobResponseBody : Tea.TeaModel {
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

public class StartMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartMigrationJobResponseBody?

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
            var model = StartMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartSubscriptionInstanceRequest : Tea.TeaModel {
    public var ownerId: String?

    public var subscriptionInstanceId: String?

    public override init() {
        super.init()
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
        if self.subscriptionInstanceId != nil {
            map["SubscriptionInstanceId"] = self.subscriptionInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SubscriptionInstanceId") && dict["SubscriptionInstanceId"] != nil {
            self.subscriptionInstanceId = dict["SubscriptionInstanceId"] as! String
        }
    }
}

public class StartSubscriptionInstanceResponseBody : Tea.TeaModel {
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

public class StartSubscriptionInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSubscriptionInstanceResponseBody?

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
            var model = StartSubscriptionInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartSynchronizationJobRequest : Tea.TeaModel {
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

public class StopMigrationJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var migrationJobId: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class StopMigrationJobResponseBody : Tea.TeaModel {
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

public class StopMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMigrationJobResponseBody?

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
            var model = StopMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SuspendMigrationJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var migrationJobId: String?

    public var ownerId: String?

    public override init() {
        super.init()
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
        if self.migrationJobId != nil {
            map["MigrationJobId"] = self.migrationJobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("MigrationJobId") && dict["MigrationJobId"] != nil {
            self.migrationJobId = dict["MigrationJobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
    }
}

public class SuspendMigrationJobResponseBody : Tea.TeaModel {
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

public class SuspendMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuspendMigrationJobResponseBody?

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
            var model = SuspendMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SuspendSynchronizationJobRequest : Tea.TeaModel {
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
