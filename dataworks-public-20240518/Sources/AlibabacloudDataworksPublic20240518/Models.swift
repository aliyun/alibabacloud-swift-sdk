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

public class CloneDataSourceRequest : Tea.TeaModel {
    public var cloneDataSourceName: String?

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
        if self.cloneDataSourceName != nil {
            map["CloneDataSourceName"] = self.cloneDataSourceName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloneDataSourceName") {
            self.cloneDataSourceName = dict["CloneDataSourceName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class CloneDataSourceResponseBody : Tea.TeaModel {
    public var id: Int64?

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
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CloneDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneDataSourceResponseBody?

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
            var model = CloneDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDIJobRequest : Tea.TeaModel {
    public class DestinationDataSourceSettings : Tea.TeaModel {
        public var dataSourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSourceName != nil {
                map["DataSourceName"] = self.dataSourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSourceName") {
                self.dataSourceName = dict["DataSourceName"] as! String
            }
        }
    }
    public class JobSettings : Tea.TeaModel {
        public class ColumnDataTypeSettings : Tea.TeaModel {
            public var destinationDataType: String?

            public var sourceDataType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destinationDataType != nil {
                    map["DestinationDataType"] = self.destinationDataType!
                }
                if self.sourceDataType != nil {
                    map["SourceDataType"] = self.sourceDataType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DestinationDataType") {
                    self.destinationDataType = dict["DestinationDataType"] as! String
                }
                if dict.keys.contains("SourceDataType") {
                    self.sourceDataType = dict["SourceDataType"] as! String
                }
            }
        }
        public class CycleScheduleSettings : Tea.TeaModel {
            public var cycleMigrationType: String?

            public var scheduleParameters: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cycleMigrationType != nil {
                    map["CycleMigrationType"] = self.cycleMigrationType!
                }
                if self.scheduleParameters != nil {
                    map["ScheduleParameters"] = self.scheduleParameters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CycleMigrationType") {
                    self.cycleMigrationType = dict["CycleMigrationType"] as! String
                }
                if dict.keys.contains("ScheduleParameters") {
                    self.scheduleParameters = dict["ScheduleParameters"] as! String
                }
            }
        }
        public class DdlHandlingSettings : Tea.TeaModel {
            public var action: String?

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
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class RuntimeSettings : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var channelSettings: String?

        public var columnDataTypeSettings: [CreateDIJobRequest.JobSettings.ColumnDataTypeSettings]?

        public var cycleScheduleSettings: CreateDIJobRequest.JobSettings.CycleScheduleSettings?

        public var ddlHandlingSettings: [CreateDIJobRequest.JobSettings.DdlHandlingSettings]?

        public var runtimeSettings: [CreateDIJobRequest.JobSettings.RuntimeSettings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cycleScheduleSettings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelSettings != nil {
                map["ChannelSettings"] = self.channelSettings!
            }
            if self.columnDataTypeSettings != nil {
                var tmp : [Any] = []
                for k in self.columnDataTypeSettings! {
                    tmp.append(k.toMap())
                }
                map["ColumnDataTypeSettings"] = tmp
            }
            if self.cycleScheduleSettings != nil {
                map["CycleScheduleSettings"] = self.cycleScheduleSettings?.toMap()
            }
            if self.ddlHandlingSettings != nil {
                var tmp : [Any] = []
                for k in self.ddlHandlingSettings! {
                    tmp.append(k.toMap())
                }
                map["DdlHandlingSettings"] = tmp
            }
            if self.runtimeSettings != nil {
                var tmp : [Any] = []
                for k in self.runtimeSettings! {
                    tmp.append(k.toMap())
                }
                map["RuntimeSettings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelSettings") {
                self.channelSettings = dict["ChannelSettings"] as! String
            }
            if dict.keys.contains("ColumnDataTypeSettings") {
                var tmp : [CreateDIJobRequest.JobSettings.ColumnDataTypeSettings] = []
                for v in dict["ColumnDataTypeSettings"] as! [Any] {
                    var model = CreateDIJobRequest.JobSettings.ColumnDataTypeSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.columnDataTypeSettings = tmp
            }
            if dict.keys.contains("CycleScheduleSettings") {
                var model = CreateDIJobRequest.JobSettings.CycleScheduleSettings()
                model.fromMap(dict["CycleScheduleSettings"] as! [String: Any])
                self.cycleScheduleSettings = model
            }
            if dict.keys.contains("DdlHandlingSettings") {
                var tmp : [CreateDIJobRequest.JobSettings.DdlHandlingSettings] = []
                for v in dict["DdlHandlingSettings"] as! [Any] {
                    var model = CreateDIJobRequest.JobSettings.DdlHandlingSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ddlHandlingSettings = tmp
            }
            if dict.keys.contains("RuntimeSettings") {
                var tmp : [CreateDIJobRequest.JobSettings.RuntimeSettings] = []
                for v in dict["RuntimeSettings"] as! [Any] {
                    var model = CreateDIJobRequest.JobSettings.RuntimeSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.runtimeSettings = tmp
            }
        }
    }
    public class ResourceSettings : Tea.TeaModel {
        public class OfflineResourceSettings : Tea.TeaModel {
            public var requestedCu: Double?

            public var resourceGroupIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestedCu != nil {
                    map["RequestedCu"] = self.requestedCu!
                }
                if self.resourceGroupIdentifier != nil {
                    map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestedCu") {
                    self.requestedCu = dict["RequestedCu"] as! Double
                }
                if dict.keys.contains("ResourceGroupIdentifier") {
                    self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                }
            }
        }
        public class RealtimeResourceSettings : Tea.TeaModel {
            public var requestedCu: Double?

            public var resourceGroupIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestedCu != nil {
                    map["RequestedCu"] = self.requestedCu!
                }
                if self.resourceGroupIdentifier != nil {
                    map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestedCu") {
                    self.requestedCu = dict["RequestedCu"] as! Double
                }
                if dict.keys.contains("ResourceGroupIdentifier") {
                    self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                }
            }
        }
        public class ScheduleResourceSettings : Tea.TeaModel {
            public var requestedCu: Double?

            public var resourceGroupIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestedCu != nil {
                    map["RequestedCu"] = self.requestedCu!
                }
                if self.resourceGroupIdentifier != nil {
                    map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestedCu") {
                    self.requestedCu = dict["RequestedCu"] as! Double
                }
                if dict.keys.contains("ResourceGroupIdentifier") {
                    self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                }
            }
        }
        public var offlineResourceSettings: CreateDIJobRequest.ResourceSettings.OfflineResourceSettings?

        public var realtimeResourceSettings: CreateDIJobRequest.ResourceSettings.RealtimeResourceSettings?

        public var scheduleResourceSettings: CreateDIJobRequest.ResourceSettings.ScheduleResourceSettings?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.offlineResourceSettings?.validate()
            try self.realtimeResourceSettings?.validate()
            try self.scheduleResourceSettings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.offlineResourceSettings != nil {
                map["OfflineResourceSettings"] = self.offlineResourceSettings?.toMap()
            }
            if self.realtimeResourceSettings != nil {
                map["RealtimeResourceSettings"] = self.realtimeResourceSettings?.toMap()
            }
            if self.scheduleResourceSettings != nil {
                map["ScheduleResourceSettings"] = self.scheduleResourceSettings?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OfflineResourceSettings") {
                var model = CreateDIJobRequest.ResourceSettings.OfflineResourceSettings()
                model.fromMap(dict["OfflineResourceSettings"] as! [String: Any])
                self.offlineResourceSettings = model
            }
            if dict.keys.contains("RealtimeResourceSettings") {
                var model = CreateDIJobRequest.ResourceSettings.RealtimeResourceSettings()
                model.fromMap(dict["RealtimeResourceSettings"] as! [String: Any])
                self.realtimeResourceSettings = model
            }
            if dict.keys.contains("ScheduleResourceSettings") {
                var model = CreateDIJobRequest.ResourceSettings.ScheduleResourceSettings()
                model.fromMap(dict["ScheduleResourceSettings"] as! [String: Any])
                self.scheduleResourceSettings = model
            }
        }
    }
    public class SourceDataSourceSettings : Tea.TeaModel {
        public class DataSourceProperties : Tea.TeaModel {
            public var encoding: String?

            public var timezone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.encoding != nil {
                    map["Encoding"] = self.encoding!
                }
                if self.timezone != nil {
                    map["Timezone"] = self.timezone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Encoding") {
                    self.encoding = dict["Encoding"] as! String
                }
                if dict.keys.contains("Timezone") {
                    self.timezone = dict["Timezone"] as! String
                }
            }
        }
        public var dataSourceName: String?

        public var dataSourceProperties: CreateDIJobRequest.SourceDataSourceSettings.DataSourceProperties?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSourceProperties?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSourceName != nil {
                map["DataSourceName"] = self.dataSourceName!
            }
            if self.dataSourceProperties != nil {
                map["DataSourceProperties"] = self.dataSourceProperties?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSourceName") {
                self.dataSourceName = dict["DataSourceName"] as! String
            }
            if dict.keys.contains("DataSourceProperties") {
                var model = CreateDIJobRequest.SourceDataSourceSettings.DataSourceProperties()
                model.fromMap(dict["DataSourceProperties"] as! [String: Any])
                self.dataSourceProperties = model
            }
        }
    }
    public class TableMappings : Tea.TeaModel {
        public class SourceObjectSelectionRules : Tea.TeaModel {
            public var action: String?

            public var expression: String?

            public var expressionType: String?

            public var objectType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.expressionType != nil {
                    map["ExpressionType"] = self.expressionType!
                }
                if self.objectType != nil {
                    map["ObjectType"] = self.objectType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Expression") {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("ExpressionType") {
                    self.expressionType = dict["ExpressionType"] as! String
                }
                if dict.keys.contains("ObjectType") {
                    self.objectType = dict["ObjectType"] as! String
                }
            }
        }
        public class TransformationRules : Tea.TeaModel {
            public var ruleActionType: String?

            public var ruleName: String?

            public var ruleTargetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleActionType != nil {
                    map["RuleActionType"] = self.ruleActionType!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleTargetType != nil {
                    map["RuleTargetType"] = self.ruleTargetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleActionType") {
                    self.ruleActionType = dict["RuleActionType"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleTargetType") {
                    self.ruleTargetType = dict["RuleTargetType"] as! String
                }
            }
        }
        public var sourceObjectSelectionRules: [CreateDIJobRequest.TableMappings.SourceObjectSelectionRules]?

        public var transformationRules: [CreateDIJobRequest.TableMappings.TransformationRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceObjectSelectionRules != nil {
                var tmp : [Any] = []
                for k in self.sourceObjectSelectionRules! {
                    tmp.append(k.toMap())
                }
                map["SourceObjectSelectionRules"] = tmp
            }
            if self.transformationRules != nil {
                var tmp : [Any] = []
                for k in self.transformationRules! {
                    tmp.append(k.toMap())
                }
                map["TransformationRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SourceObjectSelectionRules") {
                var tmp : [CreateDIJobRequest.TableMappings.SourceObjectSelectionRules] = []
                for v in dict["SourceObjectSelectionRules"] as! [Any] {
                    var model = CreateDIJobRequest.TableMappings.SourceObjectSelectionRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceObjectSelectionRules = tmp
            }
            if dict.keys.contains("TransformationRules") {
                var tmp : [CreateDIJobRequest.TableMappings.TransformationRules] = []
                for v in dict["TransformationRules"] as! [Any] {
                    var model = CreateDIJobRequest.TableMappings.TransformationRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.transformationRules = tmp
            }
        }
    }
    public class TransformationRules : Tea.TeaModel {
        public var ruleActionType: String?

        public var ruleExpression: String?

        public var ruleName: String?

        public var ruleTargetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleActionType != nil {
                map["RuleActionType"] = self.ruleActionType!
            }
            if self.ruleExpression != nil {
                map["RuleExpression"] = self.ruleExpression!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleTargetType != nil {
                map["RuleTargetType"] = self.ruleTargetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleActionType") {
                self.ruleActionType = dict["RuleActionType"] as! String
            }
            if dict.keys.contains("RuleExpression") {
                self.ruleExpression = dict["RuleExpression"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleTargetType") {
                self.ruleTargetType = dict["RuleTargetType"] as! String
            }
        }
    }
    public var description_: String?

    public var destinationDataSourceSettings: [CreateDIJobRequest.DestinationDataSourceSettings]?

    public var destinationDataSourceType: String?

    public var jobName: String?

    public var jobSettings: CreateDIJobRequest.JobSettings?

    public var migrationType: String?

    public var projectId: Int64?

    public var resourceSettings: CreateDIJobRequest.ResourceSettings?

    public var sourceDataSourceSettings: [CreateDIJobRequest.SourceDataSourceSettings]?

    public var sourceDataSourceType: String?

    public var tableMappings: [CreateDIJobRequest.TableMappings]?

    public var transformationRules: [CreateDIJobRequest.TransformationRules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobSettings?.validate()
        try self.resourceSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationDataSourceSettings != nil {
            var tmp : [Any] = []
            for k in self.destinationDataSourceSettings! {
                tmp.append(k.toMap())
            }
            map["DestinationDataSourceSettings"] = tmp
        }
        if self.destinationDataSourceType != nil {
            map["DestinationDataSourceType"] = self.destinationDataSourceType!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobSettings != nil {
            map["JobSettings"] = self.jobSettings?.toMap()
        }
        if self.migrationType != nil {
            map["MigrationType"] = self.migrationType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.resourceSettings != nil {
            map["ResourceSettings"] = self.resourceSettings?.toMap()
        }
        if self.sourceDataSourceSettings != nil {
            var tmp : [Any] = []
            for k in self.sourceDataSourceSettings! {
                tmp.append(k.toMap())
            }
            map["SourceDataSourceSettings"] = tmp
        }
        if self.sourceDataSourceType != nil {
            map["SourceDataSourceType"] = self.sourceDataSourceType!
        }
        if self.tableMappings != nil {
            var tmp : [Any] = []
            for k in self.tableMappings! {
                tmp.append(k.toMap())
            }
            map["TableMappings"] = tmp
        }
        if self.transformationRules != nil {
            var tmp : [Any] = []
            for k in self.transformationRules! {
                tmp.append(k.toMap())
            }
            map["TransformationRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationDataSourceSettings") {
            var tmp : [CreateDIJobRequest.DestinationDataSourceSettings] = []
            for v in dict["DestinationDataSourceSettings"] as! [Any] {
                var model = CreateDIJobRequest.DestinationDataSourceSettings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.destinationDataSourceSettings = tmp
        }
        if dict.keys.contains("DestinationDataSourceType") {
            self.destinationDataSourceType = dict["DestinationDataSourceType"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("JobSettings") {
            var model = CreateDIJobRequest.JobSettings()
            model.fromMap(dict["JobSettings"] as! [String: Any])
            self.jobSettings = model
        }
        if dict.keys.contains("MigrationType") {
            self.migrationType = dict["MigrationType"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("ResourceSettings") {
            var model = CreateDIJobRequest.ResourceSettings()
            model.fromMap(dict["ResourceSettings"] as! [String: Any])
            self.resourceSettings = model
        }
        if dict.keys.contains("SourceDataSourceSettings") {
            var tmp : [CreateDIJobRequest.SourceDataSourceSettings] = []
            for v in dict["SourceDataSourceSettings"] as! [Any] {
                var model = CreateDIJobRequest.SourceDataSourceSettings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sourceDataSourceSettings = tmp
        }
        if dict.keys.contains("SourceDataSourceType") {
            self.sourceDataSourceType = dict["SourceDataSourceType"] as! String
        }
        if dict.keys.contains("TableMappings") {
            var tmp : [CreateDIJobRequest.TableMappings] = []
            for v in dict["TableMappings"] as! [Any] {
                var model = CreateDIJobRequest.TableMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tableMappings = tmp
        }
        if dict.keys.contains("TransformationRules") {
            var tmp : [CreateDIJobRequest.TransformationRules] = []
            for v in dict["TransformationRules"] as! [Any] {
                var model = CreateDIJobRequest.TransformationRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.transformationRules = tmp
        }
    }
}

public class CreateDIJobShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var destinationDataSourceSettingsShrink: String?

    public var destinationDataSourceType: String?

    public var jobName: String?

    public var jobSettingsShrink: String?

    public var migrationType: String?

    public var projectId: Int64?

    public var resourceSettingsShrink: String?

    public var sourceDataSourceSettingsShrink: String?

    public var sourceDataSourceType: String?

    public var tableMappingsShrink: String?

    public var transformationRulesShrink: String?

    public override init() {
        super.init()
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
        if self.destinationDataSourceSettingsShrink != nil {
            map["DestinationDataSourceSettings"] = self.destinationDataSourceSettingsShrink!
        }
        if self.destinationDataSourceType != nil {
            map["DestinationDataSourceType"] = self.destinationDataSourceType!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobSettingsShrink != nil {
            map["JobSettings"] = self.jobSettingsShrink!
        }
        if self.migrationType != nil {
            map["MigrationType"] = self.migrationType!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.resourceSettingsShrink != nil {
            map["ResourceSettings"] = self.resourceSettingsShrink!
        }
        if self.sourceDataSourceSettingsShrink != nil {
            map["SourceDataSourceSettings"] = self.sourceDataSourceSettingsShrink!
        }
        if self.sourceDataSourceType != nil {
            map["SourceDataSourceType"] = self.sourceDataSourceType!
        }
        if self.tableMappingsShrink != nil {
            map["TableMappings"] = self.tableMappingsShrink!
        }
        if self.transformationRulesShrink != nil {
            map["TransformationRules"] = self.transformationRulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationDataSourceSettings") {
            self.destinationDataSourceSettingsShrink = dict["DestinationDataSourceSettings"] as! String
        }
        if dict.keys.contains("DestinationDataSourceType") {
            self.destinationDataSourceType = dict["DestinationDataSourceType"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("JobSettings") {
            self.jobSettingsShrink = dict["JobSettings"] as! String
        }
        if dict.keys.contains("MigrationType") {
            self.migrationType = dict["MigrationType"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("ResourceSettings") {
            self.resourceSettingsShrink = dict["ResourceSettings"] as! String
        }
        if dict.keys.contains("SourceDataSourceSettings") {
            self.sourceDataSourceSettingsShrink = dict["SourceDataSourceSettings"] as! String
        }
        if dict.keys.contains("SourceDataSourceType") {
            self.sourceDataSourceType = dict["SourceDataSourceType"] as! String
        }
        if dict.keys.contains("TableMappings") {
            self.tableMappingsShrink = dict["TableMappings"] as! String
        }
        if dict.keys.contains("TransformationRules") {
            self.transformationRulesShrink = dict["TransformationRules"] as! String
        }
    }
}

public class CreateDIJobResponseBody : Tea.TeaModel {
    public var DIJobId: Int64?

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
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDIJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDIJobResponseBody?

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
            var model = CreateDIJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataSourceRequest : Tea.TeaModel {
    public var connectionProperties: String?

    public var connectionPropertiesMode: String?

    public var description_: String?

    public var name: String?

    public var projectId: Int64?

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
        if self.connectionProperties != nil {
            map["ConnectionProperties"] = self.connectionProperties!
        }
        if self.connectionPropertiesMode != nil {
            map["ConnectionPropertiesMode"] = self.connectionPropertiesMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("ConnectionProperties") {
            self.connectionProperties = dict["ConnectionProperties"] as! String
        }
        if dict.keys.contains("ConnectionPropertiesMode") {
            self.connectionPropertiesMode = dict["ConnectionPropertiesMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateDataSourceResponseBody : Tea.TeaModel {
    public var id: Int64?

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
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSourceResponseBody?

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
            var model = CreateDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataSourceSharedRuleRequest : Tea.TeaModel {
    public var dataSourceId: Int64?

    public var envType: String?

    public var sharedUser: String?

    public var targetProjectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.envType != nil {
            map["EnvType"] = self.envType!
        }
        if self.sharedUser != nil {
            map["SharedUser"] = self.sharedUser!
        }
        if self.targetProjectId != nil {
            map["TargetProjectId"] = self.targetProjectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! Int64
        }
        if dict.keys.contains("EnvType") {
            self.envType = dict["EnvType"] as! String
        }
        if dict.keys.contains("SharedUser") {
            self.sharedUser = dict["SharedUser"] as! String
        }
        if dict.keys.contains("TargetProjectId") {
            self.targetProjectId = dict["TargetProjectId"] as! Int64
        }
    }
}

public class CreateDataSourceSharedRuleResponseBody : Tea.TeaModel {
    public var id: Int64?

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
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDataSourceSharedRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSourceSharedRuleResponseBody?

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
            var model = CreateDataSourceSharedRuleResponseBody()
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

public class CreateProjectRequest : Tea.TeaModel {
    public class AliyunResourceTags : Tea.TeaModel {
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
    public var aliyunResourceGroupId: String?

    public var aliyunResourceTags: [CreateProjectRequest.AliyunResourceTags]?

    public var description_: String?

    public var devEnvironmentEnabled: Bool?

    public var devRoleDisabled: Bool?

    public var displayName: String?

    public var name: String?

    public var paiTaskEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunResourceGroupId != nil {
            map["AliyunResourceGroupId"] = self.aliyunResourceGroupId!
        }
        if self.aliyunResourceTags != nil {
            var tmp : [Any] = []
            for k in self.aliyunResourceTags! {
                tmp.append(k.toMap())
            }
            map["AliyunResourceTags"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.devEnvironmentEnabled != nil {
            map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
        }
        if self.devRoleDisabled != nil {
            map["DevRoleDisabled"] = self.devRoleDisabled!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paiTaskEnabled != nil {
            map["PaiTaskEnabled"] = self.paiTaskEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunResourceGroupId") {
            self.aliyunResourceGroupId = dict["AliyunResourceGroupId"] as! String
        }
        if dict.keys.contains("AliyunResourceTags") {
            var tmp : [CreateProjectRequest.AliyunResourceTags] = []
            for v in dict["AliyunResourceTags"] as! [Any] {
                var model = CreateProjectRequest.AliyunResourceTags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aliyunResourceTags = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DevEnvironmentEnabled") {
            self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
        }
        if dict.keys.contains("DevRoleDisabled") {
            self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PaiTaskEnabled") {
            self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
        }
    }
}

public class CreateProjectShrinkRequest : Tea.TeaModel {
    public var aliyunResourceGroupId: String?

    public var aliyunResourceTagsShrink: String?

    public var description_: String?

    public var devEnvironmentEnabled: Bool?

    public var devRoleDisabled: Bool?

    public var displayName: String?

    public var name: String?

    public var paiTaskEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunResourceGroupId != nil {
            map["AliyunResourceGroupId"] = self.aliyunResourceGroupId!
        }
        if self.aliyunResourceTagsShrink != nil {
            map["AliyunResourceTags"] = self.aliyunResourceTagsShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.devEnvironmentEnabled != nil {
            map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
        }
        if self.devRoleDisabled != nil {
            map["DevRoleDisabled"] = self.devRoleDisabled!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paiTaskEnabled != nil {
            map["PaiTaskEnabled"] = self.paiTaskEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunResourceGroupId") {
            self.aliyunResourceGroupId = dict["AliyunResourceGroupId"] as! String
        }
        if dict.keys.contains("AliyunResourceTags") {
            self.aliyunResourceTagsShrink = dict["AliyunResourceTags"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DevEnvironmentEnabled") {
            self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
        }
        if dict.keys.contains("DevRoleDisabled") {
            self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PaiTaskEnabled") {
            self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var projectId: Int64?

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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
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

public class DeleteDIJobRequest : Tea.TeaModel {
    public var DIJobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! Int64
        }
    }
}

public class DeleteDIJobResponseBody : Tea.TeaModel {
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

public class DeleteDIJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDIJobResponseBody?

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
            var model = DeleteDIJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataSourceRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteDataSourceResponseBody : Tea.TeaModel {
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

public class DeleteDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceResponseBody?

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
            var model = DeleteDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataSourceSharedRuleRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteDataSourceSharedRuleResponseBody : Tea.TeaModel {
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

public class DeleteDataSourceSharedRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceSharedRuleResponseBody?

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
            var model = DeleteDataSourceSharedRuleResponseBody()
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

public class DeleteProjectRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
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

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

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
            var model = DeleteProjectResponseBody()
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

public class GetDIJobRequest : Tea.TeaModel {
    public var DIJobId: String?

    public var withDetails: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.withDetails != nil {
            map["WithDetails"] = self.withDetails!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! String
        }
        if dict.keys.contains("WithDetails") {
            self.withDetails = dict["WithDetails"] as! Bool
        }
    }
}

public class GetDIJobResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class DestinationDataSourceSettings : Tea.TeaModel {
            public var dataSourceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSourceName != nil {
                    map["DataSourceName"] = self.dataSourceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSourceName") {
                    self.dataSourceName = dict["DataSourceName"] as! String
                }
            }
        }
        public class JobSettings : Tea.TeaModel {
            public class ColumnDataTypeSettings : Tea.TeaModel {
                public var destinationDataType: String?

                public var sourceDataType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destinationDataType != nil {
                        map["DestinationDataType"] = self.destinationDataType!
                    }
                    if self.sourceDataType != nil {
                        map["SourceDataType"] = self.sourceDataType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DestinationDataType") {
                        self.destinationDataType = dict["DestinationDataType"] as! String
                    }
                    if dict.keys.contains("SourceDataType") {
                        self.sourceDataType = dict["SourceDataType"] as! String
                    }
                }
            }
            public class CycleScheduleSettings : Tea.TeaModel {
                public var cycleMigrationType: String?

                public var scheduleParameters: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cycleMigrationType != nil {
                        map["CycleMigrationType"] = self.cycleMigrationType!
                    }
                    if self.scheduleParameters != nil {
                        map["ScheduleParameters"] = self.scheduleParameters!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CycleMigrationType") {
                        self.cycleMigrationType = dict["CycleMigrationType"] as! String
                    }
                    if dict.keys.contains("ScheduleParameters") {
                        self.scheduleParameters = dict["ScheduleParameters"] as! String
                    }
                }
            }
            public class DdlHandlingSettings : Tea.TeaModel {
                public var action: String?

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
                    if self.action != nil {
                        map["Action"] = self.action!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Action") {
                        self.action = dict["Action"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class RuntimeSettings : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var channelSettings: String?

            public var columnDataTypeSettings: [GetDIJobResponseBody.PagingInfo.JobSettings.ColumnDataTypeSettings]?

            public var cycleScheduleSettings: GetDIJobResponseBody.PagingInfo.JobSettings.CycleScheduleSettings?

            public var ddlHandlingSettings: [GetDIJobResponseBody.PagingInfo.JobSettings.DdlHandlingSettings]?

            public var runtimeSettings: [GetDIJobResponseBody.PagingInfo.JobSettings.RuntimeSettings]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cycleScheduleSettings?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelSettings != nil {
                    map["ChannelSettings"] = self.channelSettings!
                }
                if self.columnDataTypeSettings != nil {
                    var tmp : [Any] = []
                    for k in self.columnDataTypeSettings! {
                        tmp.append(k.toMap())
                    }
                    map["ColumnDataTypeSettings"] = tmp
                }
                if self.cycleScheduleSettings != nil {
                    map["CycleScheduleSettings"] = self.cycleScheduleSettings?.toMap()
                }
                if self.ddlHandlingSettings != nil {
                    var tmp : [Any] = []
                    for k in self.ddlHandlingSettings! {
                        tmp.append(k.toMap())
                    }
                    map["DdlHandlingSettings"] = tmp
                }
                if self.runtimeSettings != nil {
                    var tmp : [Any] = []
                    for k in self.runtimeSettings! {
                        tmp.append(k.toMap())
                    }
                    map["RuntimeSettings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChannelSettings") {
                    self.channelSettings = dict["ChannelSettings"] as! String
                }
                if dict.keys.contains("ColumnDataTypeSettings") {
                    var tmp : [GetDIJobResponseBody.PagingInfo.JobSettings.ColumnDataTypeSettings] = []
                    for v in dict["ColumnDataTypeSettings"] as! [Any] {
                        var model = GetDIJobResponseBody.PagingInfo.JobSettings.ColumnDataTypeSettings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.columnDataTypeSettings = tmp
                }
                if dict.keys.contains("CycleScheduleSettings") {
                    var model = GetDIJobResponseBody.PagingInfo.JobSettings.CycleScheduleSettings()
                    model.fromMap(dict["CycleScheduleSettings"] as! [String: Any])
                    self.cycleScheduleSettings = model
                }
                if dict.keys.contains("DdlHandlingSettings") {
                    var tmp : [GetDIJobResponseBody.PagingInfo.JobSettings.DdlHandlingSettings] = []
                    for v in dict["DdlHandlingSettings"] as! [Any] {
                        var model = GetDIJobResponseBody.PagingInfo.JobSettings.DdlHandlingSettings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ddlHandlingSettings = tmp
                }
                if dict.keys.contains("RuntimeSettings") {
                    var tmp : [GetDIJobResponseBody.PagingInfo.JobSettings.RuntimeSettings] = []
                    for v in dict["RuntimeSettings"] as! [Any] {
                        var model = GetDIJobResponseBody.PagingInfo.JobSettings.RuntimeSettings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.runtimeSettings = tmp
                }
            }
        }
        public class ResourceSettings : Tea.TeaModel {
            public class OfflineResourceSettings : Tea.TeaModel {
                public var requestedCu: Double?

                public var resourceGroupIdentifier: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.requestedCu != nil {
                        map["RequestedCu"] = self.requestedCu!
                    }
                    if self.resourceGroupIdentifier != nil {
                        map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RequestedCu") {
                        self.requestedCu = dict["RequestedCu"] as! Double
                    }
                    if dict.keys.contains("ResourceGroupIdentifier") {
                        self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                    }
                }
            }
            public class RealtimeResourceSettings : Tea.TeaModel {
                public var requestedCu: Double?

                public var resourceGroupIdentifier: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.requestedCu != nil {
                        map["RequestedCu"] = self.requestedCu!
                    }
                    if self.resourceGroupIdentifier != nil {
                        map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RequestedCu") {
                        self.requestedCu = dict["RequestedCu"] as! Double
                    }
                    if dict.keys.contains("ResourceGroupIdentifier") {
                        self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                    }
                }
            }
            public class ScheduleResourceSettings : Tea.TeaModel {
                public var requestedCu: Double?

                public var resourceGroupIdentifier: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.requestedCu != nil {
                        map["RequestedCu"] = self.requestedCu!
                    }
                    if self.resourceGroupIdentifier != nil {
                        map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RequestedCu") {
                        self.requestedCu = dict["RequestedCu"] as! Double
                    }
                    if dict.keys.contains("ResourceGroupIdentifier") {
                        self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                    }
                }
            }
            public var offlineResourceSettings: GetDIJobResponseBody.PagingInfo.ResourceSettings.OfflineResourceSettings?

            public var realtimeResourceSettings: GetDIJobResponseBody.PagingInfo.ResourceSettings.RealtimeResourceSettings?

            public var scheduleResourceSettings: GetDIJobResponseBody.PagingInfo.ResourceSettings.ScheduleResourceSettings?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.offlineResourceSettings?.validate()
                try self.realtimeResourceSettings?.validate()
                try self.scheduleResourceSettings?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.offlineResourceSettings != nil {
                    map["OfflineResourceSettings"] = self.offlineResourceSettings?.toMap()
                }
                if self.realtimeResourceSettings != nil {
                    map["RealtimeResourceSettings"] = self.realtimeResourceSettings?.toMap()
                }
                if self.scheduleResourceSettings != nil {
                    map["ScheduleResourceSettings"] = self.scheduleResourceSettings?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OfflineResourceSettings") {
                    var model = GetDIJobResponseBody.PagingInfo.ResourceSettings.OfflineResourceSettings()
                    model.fromMap(dict["OfflineResourceSettings"] as! [String: Any])
                    self.offlineResourceSettings = model
                }
                if dict.keys.contains("RealtimeResourceSettings") {
                    var model = GetDIJobResponseBody.PagingInfo.ResourceSettings.RealtimeResourceSettings()
                    model.fromMap(dict["RealtimeResourceSettings"] as! [String: Any])
                    self.realtimeResourceSettings = model
                }
                if dict.keys.contains("ScheduleResourceSettings") {
                    var model = GetDIJobResponseBody.PagingInfo.ResourceSettings.ScheduleResourceSettings()
                    model.fromMap(dict["ScheduleResourceSettings"] as! [String: Any])
                    self.scheduleResourceSettings = model
                }
            }
        }
        public class SourceDataSourceSettings : Tea.TeaModel {
            public class DataSourceProperties : Tea.TeaModel {
                public var encoding: String?

                public var timezone: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.encoding != nil {
                        map["Encoding"] = self.encoding!
                    }
                    if self.timezone != nil {
                        map["Timezone"] = self.timezone!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Encoding") {
                        self.encoding = dict["Encoding"] as! String
                    }
                    if dict.keys.contains("Timezone") {
                        self.timezone = dict["Timezone"] as! String
                    }
                }
            }
            public var dataSourceName: String?

            public var dataSourceProperties: GetDIJobResponseBody.PagingInfo.SourceDataSourceSettings.DataSourceProperties?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSourceProperties?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSourceName != nil {
                    map["DataSourceName"] = self.dataSourceName!
                }
                if self.dataSourceProperties != nil {
                    map["DataSourceProperties"] = self.dataSourceProperties?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSourceName") {
                    self.dataSourceName = dict["DataSourceName"] as! String
                }
                if dict.keys.contains("DataSourceProperties") {
                    var model = GetDIJobResponseBody.PagingInfo.SourceDataSourceSettings.DataSourceProperties()
                    model.fromMap(dict["DataSourceProperties"] as! [String: Any])
                    self.dataSourceProperties = model
                }
            }
        }
        public class TableMappings : Tea.TeaModel {
            public class SourceObjectSelectionRules : Tea.TeaModel {
                public var action: String?

                public var expression: String?

                public var expressionType: String?

                public var objectType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.action != nil {
                        map["Action"] = self.action!
                    }
                    if self.expression != nil {
                        map["Expression"] = self.expression!
                    }
                    if self.expressionType != nil {
                        map["ExpressionType"] = self.expressionType!
                    }
                    if self.objectType != nil {
                        map["ObjectType"] = self.objectType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Action") {
                        self.action = dict["Action"] as! String
                    }
                    if dict.keys.contains("Expression") {
                        self.expression = dict["Expression"] as! String
                    }
                    if dict.keys.contains("ExpressionType") {
                        self.expressionType = dict["ExpressionType"] as! String
                    }
                    if dict.keys.contains("ObjectType") {
                        self.objectType = dict["ObjectType"] as! String
                    }
                }
            }
            public class TransformationRules : Tea.TeaModel {
                public var ruleActionType: String?

                public var ruleName: String?

                public var ruleTargetType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleActionType != nil {
                        map["RuleActionType"] = self.ruleActionType!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    if self.ruleTargetType != nil {
                        map["RuleTargetType"] = self.ruleTargetType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RuleActionType") {
                        self.ruleActionType = dict["RuleActionType"] as! String
                    }
                    if dict.keys.contains("RuleName") {
                        self.ruleName = dict["RuleName"] as! String
                    }
                    if dict.keys.contains("RuleTargetType") {
                        self.ruleTargetType = dict["RuleTargetType"] as! String
                    }
                }
            }
            public var sourceObjectSelectionRules: [GetDIJobResponseBody.PagingInfo.TableMappings.SourceObjectSelectionRules]?

            public var transformationRules: [GetDIJobResponseBody.PagingInfo.TableMappings.TransformationRules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sourceObjectSelectionRules != nil {
                    var tmp : [Any] = []
                    for k in self.sourceObjectSelectionRules! {
                        tmp.append(k.toMap())
                    }
                    map["SourceObjectSelectionRules"] = tmp
                }
                if self.transformationRules != nil {
                    var tmp : [Any] = []
                    for k in self.transformationRules! {
                        tmp.append(k.toMap())
                    }
                    map["TransformationRules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SourceObjectSelectionRules") {
                    var tmp : [GetDIJobResponseBody.PagingInfo.TableMappings.SourceObjectSelectionRules] = []
                    for v in dict["SourceObjectSelectionRules"] as! [Any] {
                        var model = GetDIJobResponseBody.PagingInfo.TableMappings.SourceObjectSelectionRules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sourceObjectSelectionRules = tmp
                }
                if dict.keys.contains("TransformationRules") {
                    var tmp : [GetDIJobResponseBody.PagingInfo.TableMappings.TransformationRules] = []
                    for v in dict["TransformationRules"] as! [Any] {
                        var model = GetDIJobResponseBody.PagingInfo.TableMappings.TransformationRules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.transformationRules = tmp
                }
            }
        }
        public class TransformationRules : Tea.TeaModel {
            public var ruleActionType: String?

            public var ruleExpression: String?

            public var ruleName: String?

            public var ruleTargetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleActionType != nil {
                    map["RuleActionType"] = self.ruleActionType!
                }
                if self.ruleExpression != nil {
                    map["RuleExpression"] = self.ruleExpression!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleTargetType != nil {
                    map["RuleTargetType"] = self.ruleTargetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleActionType") {
                    self.ruleActionType = dict["RuleActionType"] as! String
                }
                if dict.keys.contains("RuleExpression") {
                    self.ruleExpression = dict["RuleExpression"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleTargetType") {
                    self.ruleTargetType = dict["RuleTargetType"] as! String
                }
            }
        }
        public var DIJobId: String?

        public var description_: String?

        public var destinationDataSourceSettings: [GetDIJobResponseBody.PagingInfo.DestinationDataSourceSettings]?

        public var destinationDataSourceType: String?

        public var jobName: String?

        public var jobSettings: GetDIJobResponseBody.PagingInfo.JobSettings?

        public var migrationType: String?

        public var projectId: Int64?

        public var resourceSettings: GetDIJobResponseBody.PagingInfo.ResourceSettings?

        public var sourceDataSourceSettings: [GetDIJobResponseBody.PagingInfo.SourceDataSourceSettings]?

        public var sourceDataSourceType: String?

        public var tableMappings: [GetDIJobResponseBody.PagingInfo.TableMappings]?

        public var transformationRules: [GetDIJobResponseBody.PagingInfo.TransformationRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobSettings?.validate()
            try self.resourceSettings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DIJobId != nil {
                map["DIJobId"] = self.DIJobId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationDataSourceSettings != nil {
                var tmp : [Any] = []
                for k in self.destinationDataSourceSettings! {
                    tmp.append(k.toMap())
                }
                map["DestinationDataSourceSettings"] = tmp
            }
            if self.destinationDataSourceType != nil {
                map["DestinationDataSourceType"] = self.destinationDataSourceType!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.jobSettings != nil {
                map["JobSettings"] = self.jobSettings?.toMap()
            }
            if self.migrationType != nil {
                map["MigrationType"] = self.migrationType!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.resourceSettings != nil {
                map["ResourceSettings"] = self.resourceSettings?.toMap()
            }
            if self.sourceDataSourceSettings != nil {
                var tmp : [Any] = []
                for k in self.sourceDataSourceSettings! {
                    tmp.append(k.toMap())
                }
                map["SourceDataSourceSettings"] = tmp
            }
            if self.sourceDataSourceType != nil {
                map["SourceDataSourceType"] = self.sourceDataSourceType!
            }
            if self.tableMappings != nil {
                var tmp : [Any] = []
                for k in self.tableMappings! {
                    tmp.append(k.toMap())
                }
                map["TableMappings"] = tmp
            }
            if self.transformationRules != nil {
                var tmp : [Any] = []
                for k in self.transformationRules! {
                    tmp.append(k.toMap())
                }
                map["TransformationRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DIJobId") {
                self.DIJobId = dict["DIJobId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationDataSourceSettings") {
                var tmp : [GetDIJobResponseBody.PagingInfo.DestinationDataSourceSettings] = []
                for v in dict["DestinationDataSourceSettings"] as! [Any] {
                    var model = GetDIJobResponseBody.PagingInfo.DestinationDataSourceSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.destinationDataSourceSettings = tmp
            }
            if dict.keys.contains("DestinationDataSourceType") {
                self.destinationDataSourceType = dict["DestinationDataSourceType"] as! String
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("JobSettings") {
                var model = GetDIJobResponseBody.PagingInfo.JobSettings()
                model.fromMap(dict["JobSettings"] as! [String: Any])
                self.jobSettings = model
            }
            if dict.keys.contains("MigrationType") {
                self.migrationType = dict["MigrationType"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("ResourceSettings") {
                var model = GetDIJobResponseBody.PagingInfo.ResourceSettings()
                model.fromMap(dict["ResourceSettings"] as! [String: Any])
                self.resourceSettings = model
            }
            if dict.keys.contains("SourceDataSourceSettings") {
                var tmp : [GetDIJobResponseBody.PagingInfo.SourceDataSourceSettings] = []
                for v in dict["SourceDataSourceSettings"] as! [Any] {
                    var model = GetDIJobResponseBody.PagingInfo.SourceDataSourceSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceDataSourceSettings = tmp
            }
            if dict.keys.contains("SourceDataSourceType") {
                self.sourceDataSourceType = dict["SourceDataSourceType"] as! String
            }
            if dict.keys.contains("TableMappings") {
                var tmp : [GetDIJobResponseBody.PagingInfo.TableMappings] = []
                for v in dict["TableMappings"] as! [Any] {
                    var model = GetDIJobResponseBody.PagingInfo.TableMappings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tableMappings = tmp
            }
            if dict.keys.contains("TransformationRules") {
                var tmp : [GetDIJobResponseBody.PagingInfo.TransformationRules] = []
                for v in dict["TransformationRules"] as! [Any] {
                    var model = GetDIJobResponseBody.PagingInfo.TransformationRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.transformationRules = tmp
            }
        }
    }
    public var pagingInfo: GetDIJobResponseBody.PagingInfo?

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
            var model = GetDIJobResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDIJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDIJobResponseBody?

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
            var model = GetDIJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDIJobLogRequest : Tea.TeaModel {
    public var DIJobId: Int64?

    public var failoverId: Int64?

    public var instanceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.failoverId != nil {
            map["FailoverId"] = self.failoverId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! Int64
        }
        if dict.keys.contains("FailoverId") {
            self.failoverId = dict["FailoverId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! Int64
        }
    }
}

public class GetDIJobLogResponseBody : Tea.TeaModel {
    public var log: String?

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
        if self.log != nil {
            map["Log"] = self.log!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Log") {
            self.log = dict["Log"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDIJobLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDIJobLogResponseBody?

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
            var model = GetDIJobLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetDataSourceResponseBody : Tea.TeaModel {
    public class DataSource : Tea.TeaModel {
        public var connectionProperties: Any?

        public var connectionPropertiesMode: String?

        public var createTime: Int64?

        public var createUser: String?

        public var description_: String?

        public var id: Int64?

        public var modifyTime: Int64?

        public var modifyUser: String?

        public var name: String?

        public var projectId: Int64?

        public var qualifiedName: String?

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
            if self.connectionProperties != nil {
                map["ConnectionProperties"] = self.connectionProperties!
            }
            if self.connectionPropertiesMode != nil {
                map["ConnectionPropertiesMode"] = self.connectionPropertiesMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
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
            if self.modifyUser != nil {
                map["ModifyUser"] = self.modifyUser!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.qualifiedName != nil {
                map["QualifiedName"] = self.qualifiedName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionProperties") {
                self.connectionProperties = dict["ConnectionProperties"] as! Any
            }
            if dict.keys.contains("ConnectionPropertiesMode") {
                self.connectionPropertiesMode = dict["ConnectionPropertiesMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("ModifyUser") {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("QualifiedName") {
                self.qualifiedName = dict["QualifiedName"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var dataSource: GetDataSourceResponseBody.DataSource?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSource") {
            var model = GetDataSourceResponseBody.DataSource()
            model.fromMap(dict["DataSource"] as! [String: Any])
            self.dataSource = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceResponseBody?

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
            var model = GetDataSourceResponseBody()
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

public class GetProjectRequest : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public class AliyunResourceTags : Tea.TeaModel {
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
        public var aliyunResourceGroupId: String?

        public var aliyunResourceTags: [GetProjectResponseBody.Project.AliyunResourceTags]?

        public var description_: String?

        public var devEnvironmentEnabled: Bool?

        public var devRoleDisabled: Bool?

        public var displayName: String?

        public var id: Int64?

        public var name: String?

        public var owner: String?

        public var paiTaskEnabled: Bool?

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
            if self.aliyunResourceGroupId != nil {
                map["AliyunResourceGroupId"] = self.aliyunResourceGroupId!
            }
            if self.aliyunResourceTags != nil {
                var tmp : [Any] = []
                for k in self.aliyunResourceTags! {
                    tmp.append(k.toMap())
                }
                map["AliyunResourceTags"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.devEnvironmentEnabled != nil {
                map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
            }
            if self.devRoleDisabled != nil {
                map["DevRoleDisabled"] = self.devRoleDisabled!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.paiTaskEnabled != nil {
                map["PaiTaskEnabled"] = self.paiTaskEnabled!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunResourceGroupId") {
                self.aliyunResourceGroupId = dict["AliyunResourceGroupId"] as! String
            }
            if dict.keys.contains("AliyunResourceTags") {
                var tmp : [GetProjectResponseBody.Project.AliyunResourceTags] = []
                for v in dict["AliyunResourceTags"] as! [Any] {
                    var model = GetProjectResponseBody.Project.AliyunResourceTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.aliyunResourceTags = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DevEnvironmentEnabled") {
                self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
            }
            if dict.keys.contains("DevRoleDisabled") {
                self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("PaiTaskEnabled") {
                self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var project: GetProjectResponseBody.Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            var model = GetProjectResponseBody.Project()
            model.fromMap(dict["Project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

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
            var model = GetProjectResponseBody()
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

public class ListDIJobEventsRequest : Tea.TeaModel {
    public var DIJobId: String?

    public var endTime: Int64?

    public var eventType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListDIJobEventsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class DIJobEvent : Tea.TeaModel {
            public var action: String?

            public var channels: String?

            public var createTime: String?

            public var detail: String?

            public var dstSql: String?

            public var dstTable: String?

            public var failoverMessage: String?

            public var id: String?

            public var severity: String?

            public var srcSql: String?

            public var srcTable: String?

            public var status: String?

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
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.channels != nil {
                    map["Channels"] = self.channels!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.dstSql != nil {
                    map["DstSql"] = self.dstSql!
                }
                if self.dstTable != nil {
                    map["DstTable"] = self.dstTable!
                }
                if self.failoverMessage != nil {
                    map["FailoverMessage"] = self.failoverMessage!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                if self.srcSql != nil {
                    map["SrcSql"] = self.srcSql!
                }
                if self.srcTable != nil {
                    map["SrcTable"] = self.srcTable!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Channels") {
                    self.channels = dict["Channels"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Detail") {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("DstSql") {
                    self.dstSql = dict["DstSql"] as! String
                }
                if dict.keys.contains("DstTable") {
                    self.dstTable = dict["DstTable"] as! String
                }
                if dict.keys.contains("FailoverMessage") {
                    self.failoverMessage = dict["FailoverMessage"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Severity") {
                    self.severity = dict["Severity"] as! String
                }
                if dict.keys.contains("SrcSql") {
                    self.srcSql = dict["SrcSql"] as! String
                }
                if dict.keys.contains("SrcTable") {
                    self.srcTable = dict["SrcTable"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var DIJobEvent: [ListDIJobEventsResponseBody.PagingInfo.DIJobEvent]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.DIJobEvent != nil {
                var tmp : [Any] = []
                for k in self.DIJobEvent! {
                    tmp.append(k.toMap())
                }
                map["DIJobEvent"] = tmp
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
            if dict.keys.contains("DIJobEvent") {
                var tmp : [ListDIJobEventsResponseBody.PagingInfo.DIJobEvent] = []
                for v in dict["DIJobEvent"] as! [Any] {
                    var model = ListDIJobEventsResponseBody.PagingInfo.DIJobEvent()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DIJobEvent = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var pagingInfo: ListDIJobEventsResponseBody.PagingInfo?

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
            var model = ListDIJobEventsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDIJobEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDIJobEventsResponseBody?

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
            var model = ListDIJobEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDIJobMetricsRequest : Tea.TeaModel {
    public var DIJobId: String?

    public var endTime: Int64?

    public var metricName: [String]?

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
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! [String]
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListDIJobMetricsShrinkRequest : Tea.TeaModel {
    public var DIJobId: String?

    public var endTime: Int64?

    public var metricNameShrink: String?

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
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.metricNameShrink != nil {
            map["MetricName"] = self.metricNameShrink!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MetricName") {
            self.metricNameShrink = dict["MetricName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListDIJobMetricsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class JobMetrics : Tea.TeaModel {
            public class SeriesList : Tea.TeaModel {
                public var time: Int64?

                public var value: Double?

                public override init() {
                    super.init()
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
                        map["Time"] = self.time!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Time") {
                        self.time = dict["Time"] as! Int64
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! Double
                    }
                }
            }
            public var name: String?

            public var seriesList: [ListDIJobMetricsResponseBody.PagingInfo.JobMetrics.SeriesList]?

            public override init() {
                super.init()
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
                if self.seriesList != nil {
                    var tmp : [Any] = []
                    for k in self.seriesList! {
                        tmp.append(k.toMap())
                    }
                    map["SeriesList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SeriesList") {
                    var tmp : [ListDIJobMetricsResponseBody.PagingInfo.JobMetrics.SeriesList] = []
                    for v in dict["SeriesList"] as! [Any] {
                        var model = ListDIJobMetricsResponseBody.PagingInfo.JobMetrics.SeriesList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.seriesList = tmp
                }
            }
        }
        public var jobMetrics: [ListDIJobMetricsResponseBody.PagingInfo.JobMetrics]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobMetrics != nil {
                var tmp : [Any] = []
                for k in self.jobMetrics! {
                    tmp.append(k.toMap())
                }
                map["JobMetrics"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobMetrics") {
                var tmp : [ListDIJobMetricsResponseBody.PagingInfo.JobMetrics] = []
                for v in dict["JobMetrics"] as! [Any] {
                    var model = ListDIJobMetricsResponseBody.PagingInfo.JobMetrics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobMetrics = tmp
            }
        }
    }
    public var pagingInfo: ListDIJobMetricsResponseBody.PagingInfo?

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
            var model = ListDIJobMetricsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDIJobMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDIJobMetricsResponseBody?

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
            var model = ListDIJobMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDIJobsRequest : Tea.TeaModel {
    public var destinationDataSourceType: String?

    public var migrationType: String?

    public var name: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectId: Int64?

    public var sourceDataSourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationDataSourceType != nil {
            map["DestinationDataSourceType"] = self.destinationDataSourceType!
        }
        if self.migrationType != nil {
            map["MigrationType"] = self.migrationType!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.sourceDataSourceType != nil {
            map["SourceDataSourceType"] = self.sourceDataSourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationDataSourceType") {
            self.destinationDataSourceType = dict["DestinationDataSourceType"] as! String
        }
        if dict.keys.contains("MigrationType") {
            self.migrationType = dict["MigrationType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("SourceDataSourceType") {
            self.sourceDataSourceType = dict["SourceDataSourceType"] as! String
        }
    }
}

public class ListDIJobsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class DIJobs : Tea.TeaModel {
            public var DIJobId: Int64?

            public var destinationDataSourceType: String?

            public var jobName: String?

            public var jobStatus: String?

            public var migrationType: String?

            public var projectId: Int64?

            public var sourceDataSourceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DIJobId != nil {
                    map["DIJobId"] = self.DIJobId!
                }
                if self.destinationDataSourceType != nil {
                    map["DestinationDataSourceType"] = self.destinationDataSourceType!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.jobStatus != nil {
                    map["JobStatus"] = self.jobStatus!
                }
                if self.migrationType != nil {
                    map["MigrationType"] = self.migrationType!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.sourceDataSourceType != nil {
                    map["SourceDataSourceType"] = self.sourceDataSourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DIJobId") {
                    self.DIJobId = dict["DIJobId"] as! Int64
                }
                if dict.keys.contains("DestinationDataSourceType") {
                    self.destinationDataSourceType = dict["DestinationDataSourceType"] as! String
                }
                if dict.keys.contains("JobName") {
                    self.jobName = dict["JobName"] as! String
                }
                if dict.keys.contains("JobStatus") {
                    self.jobStatus = dict["JobStatus"] as! String
                }
                if dict.keys.contains("MigrationType") {
                    self.migrationType = dict["MigrationType"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! Int64
                }
                if dict.keys.contains("SourceDataSourceType") {
                    self.sourceDataSourceType = dict["SourceDataSourceType"] as! String
                }
            }
        }
        public var DIJobs: [ListDIJobsResponseBody.PagingInfo.DIJobs]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.DIJobs != nil {
                var tmp : [Any] = []
                for k in self.DIJobs! {
                    tmp.append(k.toMap())
                }
                map["DIJobs"] = tmp
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
            if dict.keys.contains("DIJobs") {
                var tmp : [ListDIJobsResponseBody.PagingInfo.DIJobs] = []
                for v in dict["DIJobs"] as! [Any] {
                    var model = ListDIJobsResponseBody.PagingInfo.DIJobs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DIJobs = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var pagingInfo: ListDIJobsResponseBody.PagingInfo?

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
            var model = ListDIJobsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDIJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDIJobsResponseBody?

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
            var model = ListDIJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourceSharedRulesRequest : Tea.TeaModel {
    public var dataSourceId: Int64?

    public var targetProjectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.targetProjectId != nil {
            map["TargetProjectId"] = self.targetProjectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! Int64
        }
        if dict.keys.contains("TargetProjectId") {
            self.targetProjectId = dict["TargetProjectId"] as! Int64
        }
    }
}

public class ListDataSourceSharedRulesResponseBody : Tea.TeaModel {
    public class DataSourceSharedRules : Tea.TeaModel {
        public var createTime: Int64?

        public var createUser: String?

        public var dataSourceId: Int64?

        public var envType: String?

        public var id: Int64?

        public var sharedDataSourceName: String?

        public var sharedUser: String?

        public var sourceProjectId: Int64?

        public var targetProjectId: Int64?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.envType != nil {
                map["EnvType"] = self.envType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.sharedDataSourceName != nil {
                map["SharedDataSourceName"] = self.sharedDataSourceName!
            }
            if self.sharedUser != nil {
                map["SharedUser"] = self.sharedUser!
            }
            if self.sourceProjectId != nil {
                map["SourceProjectId"] = self.sourceProjectId!
            }
            if self.targetProjectId != nil {
                map["TargetProjectId"] = self.targetProjectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DataSourceId") {
                self.dataSourceId = dict["DataSourceId"] as! Int64
            }
            if dict.keys.contains("EnvType") {
                self.envType = dict["EnvType"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("SharedDataSourceName") {
                self.sharedDataSourceName = dict["SharedDataSourceName"] as! String
            }
            if dict.keys.contains("SharedUser") {
                self.sharedUser = dict["SharedUser"] as! String
            }
            if dict.keys.contains("SourceProjectId") {
                self.sourceProjectId = dict["SourceProjectId"] as! Int64
            }
            if dict.keys.contains("TargetProjectId") {
                self.targetProjectId = dict["TargetProjectId"] as! Int64
            }
        }
    }
    public var dataSourceSharedRules: [ListDataSourceSharedRulesResponseBody.DataSourceSharedRules]?

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
        if self.dataSourceSharedRules != nil {
            var tmp : [Any] = []
            for k in self.dataSourceSharedRules! {
                tmp.append(k.toMap())
            }
            map["DataSourceSharedRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceSharedRules") {
            var tmp : [ListDataSourceSharedRulesResponseBody.DataSourceSharedRules] = []
            for v in dict["DataSourceSharedRules"] as! [Any] {
                var model = ListDataSourceSharedRulesResponseBody.DataSourceSharedRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSourceSharedRules = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDataSourceSharedRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceSharedRulesResponseBody?

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
            var model = ListDataSourceSharedRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourcesRequest : Tea.TeaModel {
    public var envType: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: Int64?

    public var sortBy: String?

    public var tags: String?

    public var types: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envType != nil {
            map["EnvType"] = self.envType!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvType") {
            self.envType = dict["EnvType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("Types") {
            self.types = dict["Types"] as! [String]
        }
    }
}

public class ListDataSourcesShrinkRequest : Tea.TeaModel {
    public var envType: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: Int64?

    public var sortBy: String?

    public var tags: String?

    public var typesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envType != nil {
            map["EnvType"] = self.envType!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.typesShrink != nil {
            map["Types"] = self.typesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvType") {
            self.envType = dict["EnvType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("Types") {
            self.typesShrink = dict["Types"] as! String
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class DataSources : Tea.TeaModel {
            public class DataSource : Tea.TeaModel {
                public var connectionProperties: Any?

                public var connectionPropertiesMode: String?

                public var createTime: Int64?

                public var createUser: String?

                public var description_: String?

                public var id: Int64?

                public var modifyTime: Int64?

                public var modifyUser: String?

                public var qualifiedName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connectionProperties != nil {
                        map["ConnectionProperties"] = self.connectionProperties!
                    }
                    if self.connectionPropertiesMode != nil {
                        map["ConnectionPropertiesMode"] = self.connectionPropertiesMode!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.createUser != nil {
                        map["CreateUser"] = self.createUser!
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
                    if self.modifyUser != nil {
                        map["ModifyUser"] = self.modifyUser!
                    }
                    if self.qualifiedName != nil {
                        map["QualifiedName"] = self.qualifiedName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectionProperties") {
                        self.connectionProperties = dict["ConnectionProperties"] as! Any
                    }
                    if dict.keys.contains("ConnectionPropertiesMode") {
                        self.connectionPropertiesMode = dict["ConnectionPropertiesMode"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! Int64
                    }
                    if dict.keys.contains("CreateUser") {
                        self.createUser = dict["CreateUser"] as! String
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifyTime") {
                        self.modifyTime = dict["ModifyTime"] as! Int64
                    }
                    if dict.keys.contains("ModifyUser") {
                        self.modifyUser = dict["ModifyUser"] as! String
                    }
                    if dict.keys.contains("QualifiedName") {
                        self.qualifiedName = dict["QualifiedName"] as! String
                    }
                }
            }
            public var dataSource: [ListDataSourcesResponseBody.PagingInfo.DataSources.DataSource]?

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
                if self.dataSource != nil {
                    var tmp : [Any] = []
                    for k in self.dataSource! {
                        tmp.append(k.toMap())
                    }
                    map["DataSource"] = tmp
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
                if dict.keys.contains("DataSource") {
                    var tmp : [ListDataSourcesResponseBody.PagingInfo.DataSources.DataSource] = []
                    for v in dict["DataSource"] as! [Any] {
                        var model = ListDataSourcesResponseBody.PagingInfo.DataSources.DataSource()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.dataSource = tmp
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var dataSources: [ListDataSourcesResponseBody.PagingInfo.DataSources]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.dataSources != nil {
                var tmp : [Any] = []
                for k in self.dataSources! {
                    tmp.append(k.toMap())
                }
                map["DataSources"] = tmp
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
            if dict.keys.contains("DataSources") {
                var tmp : [ListDataSourcesResponseBody.PagingInfo.DataSources] = []
                for v in dict["DataSources"] as! [Any] {
                    var model = ListDataSourcesResponseBody.PagingInfo.DataSources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataSources = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var pagingInfo: ListDataSourcesResponseBody.PagingInfo?

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
            var model = ListDataSourcesResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

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
            var model = ListDataSourcesResponseBody()
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

public class ListProjectsRequest : Tea.TeaModel {
    public class AliyunResourceTags : Tea.TeaModel {
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
    public var aliyunResourceGroupId: String?

    public var aliyunResourceTags: [ListProjectsRequest.AliyunResourceTags]?

    public var devEnvironmentEnabled: Bool?

    public var devRoleDisabled: Bool?

    public var ids: [Int64]?

    public var names: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paiTaskEnabled: Bool?

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
        if self.aliyunResourceGroupId != nil {
            map["AliyunResourceGroupId"] = self.aliyunResourceGroupId!
        }
        if self.aliyunResourceTags != nil {
            var tmp : [Any] = []
            for k in self.aliyunResourceTags! {
                tmp.append(k.toMap())
            }
            map["AliyunResourceTags"] = tmp
        }
        if self.devEnvironmentEnabled != nil {
            map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
        }
        if self.devRoleDisabled != nil {
            map["DevRoleDisabled"] = self.devRoleDisabled!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paiTaskEnabled != nil {
            map["PaiTaskEnabled"] = self.paiTaskEnabled!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunResourceGroupId") {
            self.aliyunResourceGroupId = dict["AliyunResourceGroupId"] as! String
        }
        if dict.keys.contains("AliyunResourceTags") {
            var tmp : [ListProjectsRequest.AliyunResourceTags] = []
            for v in dict["AliyunResourceTags"] as! [Any] {
                var model = ListProjectsRequest.AliyunResourceTags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aliyunResourceTags = tmp
        }
        if dict.keys.contains("DevEnvironmentEnabled") {
            self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
        }
        if dict.keys.contains("DevRoleDisabled") {
            self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
        }
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! [Int64]
        }
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PaiTaskEnabled") {
            self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListProjectsShrinkRequest : Tea.TeaModel {
    public var aliyunResourceGroupId: String?

    public var aliyunResourceTagsShrink: String?

    public var devEnvironmentEnabled: Bool?

    public var devRoleDisabled: Bool?

    public var idsShrink: String?

    public var namesShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paiTaskEnabled: Bool?

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
        if self.aliyunResourceGroupId != nil {
            map["AliyunResourceGroupId"] = self.aliyunResourceGroupId!
        }
        if self.aliyunResourceTagsShrink != nil {
            map["AliyunResourceTags"] = self.aliyunResourceTagsShrink!
        }
        if self.devEnvironmentEnabled != nil {
            map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
        }
        if self.devRoleDisabled != nil {
            map["DevRoleDisabled"] = self.devRoleDisabled!
        }
        if self.idsShrink != nil {
            map["Ids"] = self.idsShrink!
        }
        if self.namesShrink != nil {
            map["Names"] = self.namesShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paiTaskEnabled != nil {
            map["PaiTaskEnabled"] = self.paiTaskEnabled!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunResourceGroupId") {
            self.aliyunResourceGroupId = dict["AliyunResourceGroupId"] as! String
        }
        if dict.keys.contains("AliyunResourceTags") {
            self.aliyunResourceTagsShrink = dict["AliyunResourceTags"] as! String
        }
        if dict.keys.contains("DevEnvironmentEnabled") {
            self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
        }
        if dict.keys.contains("DevRoleDisabled") {
            self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
        }
        if dict.keys.contains("Ids") {
            self.idsShrink = dict["Ids"] as! String
        }
        if dict.keys.contains("Names") {
            self.namesShrink = dict["Names"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PaiTaskEnabled") {
            self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class PagingInfo : Tea.TeaModel {
        public class Projects : Tea.TeaModel {
            public class AliyunResourceTags : Tea.TeaModel {
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
            public var aliyunResourceGroupId: String?

            public var aliyunResourceTags: [ListProjectsResponseBody.PagingInfo.Projects.AliyunResourceTags]?

            public var description_: String?

            public var devEnvironmentEnabled: Bool?

            public var devRoleDisabled: Bool?

            public var displayName: String?

            public var id: Int64?

            public var name: String?

            public var owner: String?

            public var paiTaskEnabled: Bool?

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
                if self.aliyunResourceGroupId != nil {
                    map["AliyunResourceGroupId"] = self.aliyunResourceGroupId!
                }
                if self.aliyunResourceTags != nil {
                    var tmp : [Any] = []
                    for k in self.aliyunResourceTags! {
                        tmp.append(k.toMap())
                    }
                    map["AliyunResourceTags"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.devEnvironmentEnabled != nil {
                    map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
                }
                if self.devRoleDisabled != nil {
                    map["DevRoleDisabled"] = self.devRoleDisabled!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.paiTaskEnabled != nil {
                    map["PaiTaskEnabled"] = self.paiTaskEnabled!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliyunResourceGroupId") {
                    self.aliyunResourceGroupId = dict["AliyunResourceGroupId"] as! String
                }
                if dict.keys.contains("AliyunResourceTags") {
                    var tmp : [ListProjectsResponseBody.PagingInfo.Projects.AliyunResourceTags] = []
                    for v in dict["AliyunResourceTags"] as! [Any] {
                        var model = ListProjectsResponseBody.PagingInfo.Projects.AliyunResourceTags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.aliyunResourceTags = tmp
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DevEnvironmentEnabled") {
                    self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
                }
                if dict.keys.contains("DevRoleDisabled") {
                    self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("PaiTaskEnabled") {
                    self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var projects: [ListProjectsResponseBody.PagingInfo.Projects]?

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
            if self.projects != nil {
                var tmp : [Any] = []
                for k in self.projects! {
                    tmp.append(k.toMap())
                }
                map["Projects"] = tmp
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
            if dict.keys.contains("Projects") {
                var tmp : [ListProjectsResponseBody.PagingInfo.Projects] = []
                for v in dict["Projects"] as! [Any] {
                    var model = ListProjectsResponseBody.PagingInfo.Projects()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.projects = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pagingInfo: ListProjectsResponseBody.PagingInfo?

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
            var model = ListProjectsResponseBody.PagingInfo()
            model.fromMap(dict["PagingInfo"] as! [String: Any])
            self.pagingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

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
            var model = ListProjectsResponseBody()
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

public class StartDIJobRequest : Tea.TeaModel {
    public class RealtimeStartSettings : Tea.TeaModel {
        public class FailoverSettings : Tea.TeaModel {
            public var interval: Int64?

            public var upperLimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.upperLimit != nil {
                    map["UpperLimit"] = self.upperLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Interval") {
                    self.interval = dict["Interval"] as! Int64
                }
                if dict.keys.contains("UpperLimit") {
                    self.upperLimit = dict["UpperLimit"] as! Int64
                }
            }
        }
        public var failoverSettings: StartDIJobRequest.RealtimeStartSettings.FailoverSettings?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.failoverSettings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failoverSettings != nil {
                map["FailoverSettings"] = self.failoverSettings?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailoverSettings") {
                var model = StartDIJobRequest.RealtimeStartSettings.FailoverSettings()
                model.fromMap(dict["FailoverSettings"] as! [String: Any])
                self.failoverSettings = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var DIJobId: String?

    public var forceToRerun: Bool?

    public var realtimeStartSettings: StartDIJobRequest.RealtimeStartSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.realtimeStartSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.forceToRerun != nil {
            map["ForceToRerun"] = self.forceToRerun!
        }
        if self.realtimeStartSettings != nil {
            map["RealtimeStartSettings"] = self.realtimeStartSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! String
        }
        if dict.keys.contains("ForceToRerun") {
            self.forceToRerun = dict["ForceToRerun"] as! Bool
        }
        if dict.keys.contains("RealtimeStartSettings") {
            var model = StartDIJobRequest.RealtimeStartSettings()
            model.fromMap(dict["RealtimeStartSettings"] as! [String: Any])
            self.realtimeStartSettings = model
        }
    }
}

public class StartDIJobShrinkRequest : Tea.TeaModel {
    public var DIJobId: String?

    public var forceToRerun: Bool?

    public var realtimeStartSettingsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.forceToRerun != nil {
            map["ForceToRerun"] = self.forceToRerun!
        }
        if self.realtimeStartSettingsShrink != nil {
            map["RealtimeStartSettings"] = self.realtimeStartSettingsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! String
        }
        if dict.keys.contains("ForceToRerun") {
            self.forceToRerun = dict["ForceToRerun"] as! Bool
        }
        if dict.keys.contains("RealtimeStartSettings") {
            self.realtimeStartSettingsShrink = dict["RealtimeStartSettings"] as! String
        }
    }
}

public class StartDIJobResponseBody : Tea.TeaModel {
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

public class StartDIJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDIJobResponseBody?

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
            var model = StartDIJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDIJobRequest : Tea.TeaModel {
    public class JobSettings : Tea.TeaModel {
        public class ColumnDataTypeSettings : Tea.TeaModel {
            public var destinationDataType: String?

            public var sourceDataType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destinationDataType != nil {
                    map["DestinationDataType"] = self.destinationDataType!
                }
                if self.sourceDataType != nil {
                    map["SourceDataType"] = self.sourceDataType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DestinationDataType") {
                    self.destinationDataType = dict["DestinationDataType"] as! String
                }
                if dict.keys.contains("SourceDataType") {
                    self.sourceDataType = dict["SourceDataType"] as! String
                }
            }
        }
        public class CycleScheduleSettings : Tea.TeaModel {
            public var scheduleParameters: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.scheduleParameters != nil {
                    map["ScheduleParameters"] = self.scheduleParameters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ScheduleParameters") {
                    self.scheduleParameters = dict["ScheduleParameters"] as! String
                }
            }
        }
        public class DdlHandlingSettings : Tea.TeaModel {
            public var action: String?

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
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class RuntimeSettings : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var channelSettings: String?

        public var columnDataTypeSettings: [UpdateDIJobRequest.JobSettings.ColumnDataTypeSettings]?

        public var cycleScheduleSettings: UpdateDIJobRequest.JobSettings.CycleScheduleSettings?

        public var ddlHandlingSettings: [UpdateDIJobRequest.JobSettings.DdlHandlingSettings]?

        public var runtimeSettings: [UpdateDIJobRequest.JobSettings.RuntimeSettings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cycleScheduleSettings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelSettings != nil {
                map["ChannelSettings"] = self.channelSettings!
            }
            if self.columnDataTypeSettings != nil {
                var tmp : [Any] = []
                for k in self.columnDataTypeSettings! {
                    tmp.append(k.toMap())
                }
                map["ColumnDataTypeSettings"] = tmp
            }
            if self.cycleScheduleSettings != nil {
                map["CycleScheduleSettings"] = self.cycleScheduleSettings?.toMap()
            }
            if self.ddlHandlingSettings != nil {
                var tmp : [Any] = []
                for k in self.ddlHandlingSettings! {
                    tmp.append(k.toMap())
                }
                map["DdlHandlingSettings"] = tmp
            }
            if self.runtimeSettings != nil {
                var tmp : [Any] = []
                for k in self.runtimeSettings! {
                    tmp.append(k.toMap())
                }
                map["RuntimeSettings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelSettings") {
                self.channelSettings = dict["ChannelSettings"] as! String
            }
            if dict.keys.contains("ColumnDataTypeSettings") {
                var tmp : [UpdateDIJobRequest.JobSettings.ColumnDataTypeSettings] = []
                for v in dict["ColumnDataTypeSettings"] as! [Any] {
                    var model = UpdateDIJobRequest.JobSettings.ColumnDataTypeSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.columnDataTypeSettings = tmp
            }
            if dict.keys.contains("CycleScheduleSettings") {
                var model = UpdateDIJobRequest.JobSettings.CycleScheduleSettings()
                model.fromMap(dict["CycleScheduleSettings"] as! [String: Any])
                self.cycleScheduleSettings = model
            }
            if dict.keys.contains("DdlHandlingSettings") {
                var tmp : [UpdateDIJobRequest.JobSettings.DdlHandlingSettings] = []
                for v in dict["DdlHandlingSettings"] as! [Any] {
                    var model = UpdateDIJobRequest.JobSettings.DdlHandlingSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ddlHandlingSettings = tmp
            }
            if dict.keys.contains("RuntimeSettings") {
                var tmp : [UpdateDIJobRequest.JobSettings.RuntimeSettings] = []
                for v in dict["RuntimeSettings"] as! [Any] {
                    var model = UpdateDIJobRequest.JobSettings.RuntimeSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.runtimeSettings = tmp
            }
        }
    }
    public class ResourceSettings : Tea.TeaModel {
        public class OfflineResourceSettings : Tea.TeaModel {
            public var requestedCu: Int64?

            public var resourceGroupIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestedCu != nil {
                    map["RequestedCu"] = self.requestedCu!
                }
                if self.resourceGroupIdentifier != nil {
                    map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestedCu") {
                    self.requestedCu = dict["RequestedCu"] as! Int64
                }
                if dict.keys.contains("ResourceGroupIdentifier") {
                    self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                }
            }
        }
        public class RealtimeResourceSettings : Tea.TeaModel {
            public var requestedCu: Int64?

            public var resourceGroupIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestedCu != nil {
                    map["RequestedCu"] = self.requestedCu!
                }
                if self.resourceGroupIdentifier != nil {
                    map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestedCu") {
                    self.requestedCu = dict["RequestedCu"] as! Int64
                }
                if dict.keys.contains("ResourceGroupIdentifier") {
                    self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                }
            }
        }
        public class ScheduleResourceSettings : Tea.TeaModel {
            public var requestedCu: Int64?

            public var resourceGroupIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestedCu != nil {
                    map["RequestedCu"] = self.requestedCu!
                }
                if self.resourceGroupIdentifier != nil {
                    map["ResourceGroupIdentifier"] = self.resourceGroupIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestedCu") {
                    self.requestedCu = dict["RequestedCu"] as! Int64
                }
                if dict.keys.contains("ResourceGroupIdentifier") {
                    self.resourceGroupIdentifier = dict["ResourceGroupIdentifier"] as! String
                }
            }
        }
        public var offlineResourceSettings: UpdateDIJobRequest.ResourceSettings.OfflineResourceSettings?

        public var realtimeResourceSettings: UpdateDIJobRequest.ResourceSettings.RealtimeResourceSettings?

        public var scheduleResourceSettings: UpdateDIJobRequest.ResourceSettings.ScheduleResourceSettings?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.offlineResourceSettings?.validate()
            try self.realtimeResourceSettings?.validate()
            try self.scheduleResourceSettings?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.offlineResourceSettings != nil {
                map["OfflineResourceSettings"] = self.offlineResourceSettings?.toMap()
            }
            if self.realtimeResourceSettings != nil {
                map["RealtimeResourceSettings"] = self.realtimeResourceSettings?.toMap()
            }
            if self.scheduleResourceSettings != nil {
                map["ScheduleResourceSettings"] = self.scheduleResourceSettings?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OfflineResourceSettings") {
                var model = UpdateDIJobRequest.ResourceSettings.OfflineResourceSettings()
                model.fromMap(dict["OfflineResourceSettings"] as! [String: Any])
                self.offlineResourceSettings = model
            }
            if dict.keys.contains("RealtimeResourceSettings") {
                var model = UpdateDIJobRequest.ResourceSettings.RealtimeResourceSettings()
                model.fromMap(dict["RealtimeResourceSettings"] as! [String: Any])
                self.realtimeResourceSettings = model
            }
            if dict.keys.contains("ScheduleResourceSettings") {
                var model = UpdateDIJobRequest.ResourceSettings.ScheduleResourceSettings()
                model.fromMap(dict["ScheduleResourceSettings"] as! [String: Any])
                self.scheduleResourceSettings = model
            }
        }
    }
    public class TableMappings : Tea.TeaModel {
        public class SourceObjectSelectionRules : Tea.TeaModel {
            public var action: String?

            public var expression: String?

            public var expressionType: String?

            public var objectType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.expressionType != nil {
                    map["ExpressionType"] = self.expressionType!
                }
                if self.objectType != nil {
                    map["ObjectType"] = self.objectType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Expression") {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("ExpressionType") {
                    self.expressionType = dict["ExpressionType"] as! String
                }
                if dict.keys.contains("ObjectType") {
                    self.objectType = dict["ObjectType"] as! String
                }
            }
        }
        public class TransformationRules : Tea.TeaModel {
            public var ruleActionType: String?

            public var ruleName: String?

            public var ruleTargetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleActionType != nil {
                    map["RuleActionType"] = self.ruleActionType!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleTargetType != nil {
                    map["RuleTargetType"] = self.ruleTargetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleActionType") {
                    self.ruleActionType = dict["RuleActionType"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleTargetType") {
                    self.ruleTargetType = dict["RuleTargetType"] as! String
                }
            }
        }
        public var sourceObjectSelectionRules: [UpdateDIJobRequest.TableMappings.SourceObjectSelectionRules]?

        public var transformationRules: [UpdateDIJobRequest.TableMappings.TransformationRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceObjectSelectionRules != nil {
                var tmp : [Any] = []
                for k in self.sourceObjectSelectionRules! {
                    tmp.append(k.toMap())
                }
                map["SourceObjectSelectionRules"] = tmp
            }
            if self.transformationRules != nil {
                var tmp : [Any] = []
                for k in self.transformationRules! {
                    tmp.append(k.toMap())
                }
                map["TransformationRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SourceObjectSelectionRules") {
                var tmp : [UpdateDIJobRequest.TableMappings.SourceObjectSelectionRules] = []
                for v in dict["SourceObjectSelectionRules"] as! [Any] {
                    var model = UpdateDIJobRequest.TableMappings.SourceObjectSelectionRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceObjectSelectionRules = tmp
            }
            if dict.keys.contains("TransformationRules") {
                var tmp : [UpdateDIJobRequest.TableMappings.TransformationRules] = []
                for v in dict["TransformationRules"] as! [Any] {
                    var model = UpdateDIJobRequest.TableMappings.TransformationRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.transformationRules = tmp
            }
        }
    }
    public class TransformationRules : Tea.TeaModel {
        public var ruleActionType: String?

        public var ruleExpression: String?

        public var ruleName: String?

        public var ruleTargetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleActionType != nil {
                map["RuleActionType"] = self.ruleActionType!
            }
            if self.ruleExpression != nil {
                map["RuleExpression"] = self.ruleExpression!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleTargetType != nil {
                map["RuleTargetType"] = self.ruleTargetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleActionType") {
                self.ruleActionType = dict["RuleActionType"] as! String
            }
            if dict.keys.contains("RuleExpression") {
                self.ruleExpression = dict["RuleExpression"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleTargetType") {
                self.ruleTargetType = dict["RuleTargetType"] as! String
            }
        }
    }
    public var DIJobId: Int64?

    public var description_: String?

    public var jobSettings: UpdateDIJobRequest.JobSettings?

    public var resourceSettings: UpdateDIJobRequest.ResourceSettings?

    public var tableMappings: [UpdateDIJobRequest.TableMappings]?

    public var transformationRules: [UpdateDIJobRequest.TransformationRules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobSettings?.validate()
        try self.resourceSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jobSettings != nil {
            map["JobSettings"] = self.jobSettings?.toMap()
        }
        if self.resourceSettings != nil {
            map["ResourceSettings"] = self.resourceSettings?.toMap()
        }
        if self.tableMappings != nil {
            var tmp : [Any] = []
            for k in self.tableMappings! {
                tmp.append(k.toMap())
            }
            map["TableMappings"] = tmp
        }
        if self.transformationRules != nil {
            var tmp : [Any] = []
            for k in self.transformationRules! {
                tmp.append(k.toMap())
            }
            map["TransformationRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("JobSettings") {
            var model = UpdateDIJobRequest.JobSettings()
            model.fromMap(dict["JobSettings"] as! [String: Any])
            self.jobSettings = model
        }
        if dict.keys.contains("ResourceSettings") {
            var model = UpdateDIJobRequest.ResourceSettings()
            model.fromMap(dict["ResourceSettings"] as! [String: Any])
            self.resourceSettings = model
        }
        if dict.keys.contains("TableMappings") {
            var tmp : [UpdateDIJobRequest.TableMappings] = []
            for v in dict["TableMappings"] as! [Any] {
                var model = UpdateDIJobRequest.TableMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tableMappings = tmp
        }
        if dict.keys.contains("TransformationRules") {
            var tmp : [UpdateDIJobRequest.TransformationRules] = []
            for v in dict["TransformationRules"] as! [Any] {
                var model = UpdateDIJobRequest.TransformationRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.transformationRules = tmp
        }
    }
}

public class UpdateDIJobShrinkRequest : Tea.TeaModel {
    public var DIJobId: Int64?

    public var description_: String?

    public var jobSettingsShrink: String?

    public var resourceSettingsShrink: String?

    public var tableMappingsShrink: String?

    public var transformationRulesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DIJobId != nil {
            map["DIJobId"] = self.DIJobId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jobSettingsShrink != nil {
            map["JobSettings"] = self.jobSettingsShrink!
        }
        if self.resourceSettingsShrink != nil {
            map["ResourceSettings"] = self.resourceSettingsShrink!
        }
        if self.tableMappingsShrink != nil {
            map["TableMappings"] = self.tableMappingsShrink!
        }
        if self.transformationRulesShrink != nil {
            map["TransformationRules"] = self.transformationRulesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DIJobId") {
            self.DIJobId = dict["DIJobId"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("JobSettings") {
            self.jobSettingsShrink = dict["JobSettings"] as! String
        }
        if dict.keys.contains("ResourceSettings") {
            self.resourceSettingsShrink = dict["ResourceSettings"] as! String
        }
        if dict.keys.contains("TableMappings") {
            self.tableMappingsShrink = dict["TableMappings"] as! String
        }
        if dict.keys.contains("TransformationRules") {
            self.transformationRulesShrink = dict["TransformationRules"] as! String
        }
    }
}

public class UpdateDIJobResponseBody : Tea.TeaModel {
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

public class UpdateDIJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDIJobResponseBody?

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
            var model = UpdateDIJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDataSourceRequest : Tea.TeaModel {
    public var connectionProperties: String?

    public var connectionPropertiesMode: String?

    public var description_: String?

    public var id: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionProperties != nil {
            map["ConnectionProperties"] = self.connectionProperties!
        }
        if self.connectionPropertiesMode != nil {
            map["ConnectionPropertiesMode"] = self.connectionPropertiesMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if dict.keys.contains("ConnectionProperties") {
            self.connectionProperties = dict["ConnectionProperties"] as! String
        }
        if dict.keys.contains("ConnectionPropertiesMode") {
            self.connectionPropertiesMode = dict["ConnectionPropertiesMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class UpdateDataSourceResponseBody : Tea.TeaModel {
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

public class UpdateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSourceResponseBody?

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
            var model = UpdateDataSourceResponseBody()
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

public class UpdateProjectRequest : Tea.TeaModel {
    public var description_: String?

    public var devEnvironmentEnabled: Bool?

    public var devRoleDisabled: Bool?

    public var displayName: String?

    public var id: Int64?

    public var paiTaskEnabled: Bool?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.devEnvironmentEnabled != nil {
            map["DevEnvironmentEnabled"] = self.devEnvironmentEnabled!
        }
        if self.devRoleDisabled != nil {
            map["DevRoleDisabled"] = self.devRoleDisabled!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.paiTaskEnabled != nil {
            map["PaiTaskEnabled"] = self.paiTaskEnabled!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DevEnvironmentEnabled") {
            self.devEnvironmentEnabled = dict["DevEnvironmentEnabled"] as! Bool
        }
        if dict.keys.contains("DevRoleDisabled") {
            self.devRoleDisabled = dict["DevRoleDisabled"] as! Bool
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PaiTaskEnabled") {
            self.paiTaskEnabled = dict["PaiTaskEnabled"] as! Bool
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
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

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
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