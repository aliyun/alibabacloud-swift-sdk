import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeNsasSuspEventTypeRequest : Tea.TeaModel {
    public var containerFieldName: String?

    public var containerFieldValue: String?

    public var lang: String?

    public var name: String?

    public var remark: String?

    public var sourceIp: String?

    public var uuids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerFieldName != nil {
            map["ContainerFieldName"] = self.containerFieldName!
        }
        if self.containerFieldValue != nil {
            map["ContainerFieldValue"] = self.containerFieldValue!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerFieldName"] as? String {
            self.containerFieldName = value
        }
        if let value = dict["ContainerFieldValue"] as? String {
            self.containerFieldValue = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["Uuids"] as? String {
            self.uuids = value
        }
    }
}

public class DescribeNsasSuspEventTypeResponseBody : Tea.TeaModel {
    public class EventTypes : Tea.TeaModel {
        public var name: String?

        public var suspEventCount: Int32?

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
            if self.suspEventCount != nil {
                map["SuspEventCount"] = self.suspEventCount!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SuspEventCount"] as? Int32 {
                self.suspEventCount = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var eventTypes: [DescribeNsasSuspEventTypeResponseBody.EventTypes]?

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
        if self.eventTypes != nil {
            var tmp : [Any] = []
            for k in self.eventTypes! {
                tmp.append(k.toMap())
            }
            map["EventTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventTypes"] as? [Any?] {
            var tmp : [DescribeNsasSuspEventTypeResponseBody.EventTypes] = []
            for v in value {
                if v != nil {
                    var model = DescribeNsasSuspEventTypeResponseBody.EventTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eventTypes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNsasSuspEventTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNsasSuspEventTypeResponseBody?

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
            var model = DescribeNsasSuspEventTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityEventOperationsRequest : Tea.TeaModel {
    public var securityEventId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityEventId != nil {
            map["SecurityEventId"] = self.securityEventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityEventId"] as? Int64 {
            self.securityEventId = value
        }
    }
}

public class DescribeSecurityEventOperationsResponseBody : Tea.TeaModel {
    public class SecurityEventOperationsResponse : Tea.TeaModel {
        public class MappingMarkFields : Tea.TeaModel {
            public var description_: String?

            public var fillType: String?

            public var filterExpression: String?

            public var mappingName: String?

            public var maxLength: Int32?

            public var minLength: Int32?

            public var name: String?

            public var required_: Bool?

            public var showName: String?

            public var showValue: String?

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
                if self.fillType != nil {
                    map["FillType"] = self.fillType!
                }
                if self.filterExpression != nil {
                    map["FilterExpression"] = self.filterExpression!
                }
                if self.mappingName != nil {
                    map["MappingName"] = self.mappingName!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.showName != nil {
                    map["ShowName"] = self.showName!
                }
                if self.showValue != nil {
                    map["ShowValue"] = self.showValue!
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
                if let value = dict["FillType"] as? String {
                    self.fillType = value
                }
                if let value = dict["FilterExpression"] as? String {
                    self.filterExpression = value
                }
                if let value = dict["MappingName"] as? String {
                    self.mappingName = value
                }
                if let value = dict["MaxLength"] as? Int32 {
                    self.maxLength = value
                }
                if let value = dict["MinLength"] as? Int32 {
                    self.minLength = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Required"] as? Bool {
                    self.required_ = value
                }
                if let value = dict["ShowName"] as? String {
                    self.showName = value
                }
                if let value = dict["ShowValue"] as? String {
                    self.showValue = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class MarkField : Tea.TeaModel {
            public var defaultValue: String?

            public var filedAliasName: String?

            public var filedName: String?

            public var markMisType: String?

            public var markMisValue: String?

            public var supportedMisType: [String]?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.filedAliasName != nil {
                    map["FiledAliasName"] = self.filedAliasName!
                }
                if self.filedName != nil {
                    map["FiledName"] = self.filedName!
                }
                if self.markMisType != nil {
                    map["MarkMisType"] = self.markMisType!
                }
                if self.markMisValue != nil {
                    map["MarkMisValue"] = self.markMisValue!
                }
                if self.supportedMisType != nil {
                    map["SupportedMisType"] = self.supportedMisType!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FiledAliasName"] as? String {
                    self.filedAliasName = value
                }
                if let value = dict["FiledName"] as? String {
                    self.filedName = value
                }
                if let value = dict["MarkMisType"] as? String {
                    self.markMisType = value
                }
                if let value = dict["MarkMisValue"] as? String {
                    self.markMisValue = value
                }
                if let value = dict["SupportedMisType"] as? [String] {
                    self.supportedMisType = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public class MarkFieldsSource : Tea.TeaModel {
            public var defaultValue: String?

            public var filedAliasName: String?

            public var filedName: String?

            public var markMisValue: String?

            public var supportedMisType: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.filedAliasName != nil {
                    map["FiledAliasName"] = self.filedAliasName!
                }
                if self.filedName != nil {
                    map["FiledName"] = self.filedName!
                }
                if self.markMisValue != nil {
                    map["MarkMisValue"] = self.markMisValue!
                }
                if self.supportedMisType != nil {
                    map["SupportedMisType"] = self.supportedMisType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FiledAliasName"] as? String {
                    self.filedAliasName = value
                }
                if let value = dict["FiledName"] as? String {
                    self.filedName = value
                }
                if let value = dict["MarkMisValue"] as? String {
                    self.markMisValue = value
                }
                if let value = dict["SupportedMisType"] as? [String] {
                    self.supportedMisType = value
                }
            }
        }
        public var mappingMarkFields: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MappingMarkFields]?

        public var markField: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkField]?

        public var markFieldsSource: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkFieldsSource]?

        public var operationCode: String?

        public var operationParams: String?

        public var userCanOperate: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mappingMarkFields != nil {
                var tmp : [Any] = []
                for k in self.mappingMarkFields! {
                    tmp.append(k.toMap())
                }
                map["MappingMarkFields"] = tmp
            }
            if self.markField != nil {
                var tmp : [Any] = []
                for k in self.markField! {
                    tmp.append(k.toMap())
                }
                map["MarkField"] = tmp
            }
            if self.markFieldsSource != nil {
                var tmp : [Any] = []
                for k in self.markFieldsSource! {
                    tmp.append(k.toMap())
                }
                map["MarkFieldsSource"] = tmp
            }
            if self.operationCode != nil {
                map["OperationCode"] = self.operationCode!
            }
            if self.operationParams != nil {
                map["OperationParams"] = self.operationParams!
            }
            if self.userCanOperate != nil {
                map["UserCanOperate"] = self.userCanOperate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MappingMarkFields"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MappingMarkFields] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MappingMarkFields()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mappingMarkFields = tmp
            }
            if let value = dict["MarkField"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkField] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkField()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.markField = tmp
            }
            if let value = dict["MarkFieldsSource"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkFieldsSource] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkFieldsSource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.markFieldsSource = tmp
            }
            if let value = dict["OperationCode"] as? String {
                self.operationCode = value
            }
            if let value = dict["OperationParams"] as? String {
                self.operationParams = value
            }
            if let value = dict["UserCanOperate"] as? Bool {
                self.userCanOperate = value
            }
        }
    }
    public var requestId: String?

    public var securityEventOperationsResponse: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse]?

    public override init() {
        super.init()
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
        if self.securityEventOperationsResponse != nil {
            var tmp : [Any] = []
            for k in self.securityEventOperationsResponse! {
                tmp.append(k.toMap())
            }
            map["SecurityEventOperationsResponse"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEventOperationsResponse"] as? [Any?] {
            var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse] = []
            for v in value {
                if v != nil {
                    var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityEventOperationsResponse = tmp
        }
    }
}

public class DescribeSecurityEventOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityEventOperationsResponseBody?

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
            var model = DescribeSecurityEventOperationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSuspEventsRequest : Tea.TeaModel {
    public var alarmEventName: String?

    public var alarmUniqueInfo: String?

    public var assetsTypeList: [String]?

    public var clusterId: String?

    public var containerFieldName: String?

    public var containerFieldValue: String?

    public var currentPage: Int32?

    public var dealed: String?

    public var department: String?

    public var eventNames: String?

    public var groupId: Int64?

    public var hostName: String?

    public var id: Int64?

    public var innerIp: String?

    public var lang: String?

    public var levels: String?

    public var name: String?

    public var operateErrorCodeList: [String]?

    public var operateTimeEnd: String?

    public var operateTimeStart: String?

    public var pageSize: Int32?

    public var parentEventTypes: String?

    public var remark: String?

    public var sortColumn: String?

    public var sortType: String?

    public var source: String?

    public var sourceIp: String?

    public var srcIp: String?

    public var status: String?

    public var strictMode: String?

    public var tacticId: String?

    public var targetType: String?

    public var timeEnd: String?

    public var timeStart: String?

    public var uniqueInfo: String?

    public var userName: String?

    public var uuids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmEventName != nil {
            map["AlarmEventName"] = self.alarmEventName!
        }
        if self.alarmUniqueInfo != nil {
            map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
        }
        if self.assetsTypeList != nil {
            map["AssetsTypeList"] = self.assetsTypeList!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.containerFieldName != nil {
            map["ContainerFieldName"] = self.containerFieldName!
        }
        if self.containerFieldValue != nil {
            map["ContainerFieldValue"] = self.containerFieldValue!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.eventNames != nil {
            map["EventNames"] = self.eventNames!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.innerIp != nil {
            map["InnerIp"] = self.innerIp!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.levels != nil {
            map["Levels"] = self.levels!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operateErrorCodeList != nil {
            map["OperateErrorCodeList"] = self.operateErrorCodeList!
        }
        if self.operateTimeEnd != nil {
            map["OperateTimeEnd"] = self.operateTimeEnd!
        }
        if self.operateTimeStart != nil {
            map["OperateTimeStart"] = self.operateTimeStart!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentEventTypes != nil {
            map["ParentEventTypes"] = self.parentEventTypes!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.srcIp != nil {
            map["SrcIp"] = self.srcIp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strictMode != nil {
            map["StrictMode"] = self.strictMode!
        }
        if self.tacticId != nil {
            map["TacticId"] = self.tacticId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.timeEnd != nil {
            map["TimeEnd"] = self.timeEnd!
        }
        if self.timeStart != nil {
            map["TimeStart"] = self.timeStart!
        }
        if self.uniqueInfo != nil {
            map["UniqueInfo"] = self.uniqueInfo!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmEventName"] as? String {
            self.alarmEventName = value
        }
        if let value = dict["AlarmUniqueInfo"] as? String {
            self.alarmUniqueInfo = value
        }
        if let value = dict["AssetsTypeList"] as? [String] {
            self.assetsTypeList = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ContainerFieldName"] as? String {
            self.containerFieldName = value
        }
        if let value = dict["ContainerFieldValue"] as? String {
            self.containerFieldValue = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Dealed"] as? String {
            self.dealed = value
        }
        if let value = dict["Department"] as? String {
            self.department = value
        }
        if let value = dict["EventNames"] as? String {
            self.eventNames = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InnerIp"] as? String {
            self.innerIp = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Levels"] as? String {
            self.levels = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperateErrorCodeList"] as? [String] {
            self.operateErrorCodeList = value
        }
        if let value = dict["OperateTimeEnd"] as? String {
            self.operateTimeEnd = value
        }
        if let value = dict["OperateTimeStart"] as? String {
            self.operateTimeStart = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentEventTypes"] as? String {
            self.parentEventTypes = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SortColumn"] as? String {
            self.sortColumn = value
        }
        if let value = dict["SortType"] as? String {
            self.sortType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SrcIp"] as? String {
            self.srcIp = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StrictMode"] as? String {
            self.strictMode = value
        }
        if let value = dict["TacticId"] as? String {
            self.tacticId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["TimeEnd"] as? String {
            self.timeEnd = value
        }
        if let value = dict["TimeStart"] as? String {
            self.timeStart = value
        }
        if let value = dict["UniqueInfo"] as? String {
            self.uniqueInfo = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["Uuids"] as? String {
            self.uuids = value
        }
    }
}

public class DescribeSuspEventsResponseBody : Tea.TeaModel {
    public class SuspEvents : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var nameDisplay: String?

            public var type: String?

            public var value: String?

            public var valueDisplay: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nameDisplay != nil {
                    map["NameDisplay"] = self.nameDisplay!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueDisplay != nil {
                    map["ValueDisplay"] = self.valueDisplay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NameDisplay"] as? String {
                    self.nameDisplay = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueDisplay"] as? String {
                    self.valueDisplay = value
                }
            }
        }
        public class EventNotes : Tea.TeaModel {
            public var note: String?

            public var noteId: Int64?

            public var noteTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.noteId != nil {
                    map["NoteId"] = self.noteId!
                }
                if self.noteTime != nil {
                    map["NoteTime"] = self.noteTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Note"] as? String {
                    self.note = value
                }
                if let value = dict["NoteId"] as? Int64 {
                    self.noteId = value
                }
                if let value = dict["NoteTime"] as? String {
                    self.noteTime = value
                }
            }
        }
        public class TacticItems : Tea.TeaModel {
            public var tacticDisplayName: String?

            public var tacticId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tacticDisplayName != nil {
                    map["TacticDisplayName"] = self.tacticDisplayName!
                }
                if self.tacticId != nil {
                    map["TacticId"] = self.tacticId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TacticDisplayName"] as? String {
                    self.tacticDisplayName = value
                }
                if let value = dict["TacticId"] as? String {
                    self.tacticId = value
                }
            }
        }
        public var advanced: Bool?

        public var alarmEventName: String?

        public var alarmEventNameDisplay: String?

        public var alarmEventType: String?

        public var alarmEventTypeDisplay: String?

        public var alarmUniqueInfo: String?

        public var appName: String?

        public var autoBreaking: Bool?

        public var canBeDealOnLine: Bool?

        public var canCancelFault: Bool?

        public var clusterId: String?

        public var containHwMode: Bool?

        public var containerId: String?

        public var containerImageId: String?

        public var containerImageName: String?

        public var dataSource: String?

        public var department: String?

        public var desc: String?

        public var details: [DescribeSuspEventsResponseBody.SuspEvents.Details]?

        public var devTag: String?

        public var devType: String?

        public var displaySandboxResult: Bool?

        public var eventNotes: [DescribeSuspEventsResponseBody.SuspEvents.EventNotes]?

        public var eventStatus: Int32?

        public var eventSubType: String?

        public var hasTraceInfo: Bool?

        public var hostName: String?

        public var id: Int64?

        public var imageUuid: String?

        public var instanceId: String?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var k8sClusterId: String?

        public var k8sClusterName: String?

        public var k8sNamespace: String?

        public var k8sNodeId: String?

        public var k8sNodeName: String?

        public var k8sPodName: String?

        public var largeModel: Bool?

        public var lastTime: String?

        public var lastTimeStamp: Int64?

        public var level: String?

        public var mac: String?

        public var maliciousRuleStatus: String?

        public var markList: [String]?

        public var markMisRules: String?

        public var name: String?

        public var occurrenceTime: String?

        public var occurrenceTimeStamp: Int64?

        public var operateErrorCode: String?

        public var operateMsg: String?

        public var operateTime: Int64?

        public var saleVersion: String?

        public var securityEventIds: String?

        public var srcIp: String?

        public var stages: String?

        public var tacticItems: [DescribeSuspEventsResponseBody.SuspEvents.TacticItems]?

        public var uniqueInfo: String?

        public var userName: String?

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
            if self.advanced != nil {
                map["Advanced"] = self.advanced!
            }
            if self.alarmEventName != nil {
                map["AlarmEventName"] = self.alarmEventName!
            }
            if self.alarmEventNameDisplay != nil {
                map["AlarmEventNameDisplay"] = self.alarmEventNameDisplay!
            }
            if self.alarmEventType != nil {
                map["AlarmEventType"] = self.alarmEventType!
            }
            if self.alarmEventTypeDisplay != nil {
                map["AlarmEventTypeDisplay"] = self.alarmEventTypeDisplay!
            }
            if self.alarmUniqueInfo != nil {
                map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.autoBreaking != nil {
                map["AutoBreaking"] = self.autoBreaking!
            }
            if self.canBeDealOnLine != nil {
                map["CanBeDealOnLine"] = self.canBeDealOnLine!
            }
            if self.canCancelFault != nil {
                map["CanCancelFault"] = self.canCancelFault!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.containHwMode != nil {
                map["ContainHwMode"] = self.containHwMode!
            }
            if self.containerId != nil {
                map["ContainerId"] = self.containerId!
            }
            if self.containerImageId != nil {
                map["ContainerImageId"] = self.containerImageId!
            }
            if self.containerImageName != nil {
                map["ContainerImageName"] = self.containerImageName!
            }
            if self.dataSource != nil {
                map["DataSource"] = self.dataSource!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.devTag != nil {
                map["DevTag"] = self.devTag!
            }
            if self.devType != nil {
                map["DevType"] = self.devType!
            }
            if self.displaySandboxResult != nil {
                map["DisplaySandboxResult"] = self.displaySandboxResult!
            }
            if self.eventNotes != nil {
                var tmp : [Any] = []
                for k in self.eventNotes! {
                    tmp.append(k.toMap())
                }
                map["EventNotes"] = tmp
            }
            if self.eventStatus != nil {
                map["EventStatus"] = self.eventStatus!
            }
            if self.eventSubType != nil {
                map["EventSubType"] = self.eventSubType!
            }
            if self.hasTraceInfo != nil {
                map["HasTraceInfo"] = self.hasTraceInfo!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageUuid != nil {
                map["ImageUuid"] = self.imageUuid!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.k8sClusterId != nil {
                map["K8sClusterId"] = self.k8sClusterId!
            }
            if self.k8sClusterName != nil {
                map["K8sClusterName"] = self.k8sClusterName!
            }
            if self.k8sNamespace != nil {
                map["K8sNamespace"] = self.k8sNamespace!
            }
            if self.k8sNodeId != nil {
                map["K8sNodeId"] = self.k8sNodeId!
            }
            if self.k8sNodeName != nil {
                map["K8sNodeName"] = self.k8sNodeName!
            }
            if self.k8sPodName != nil {
                map["K8sPodName"] = self.k8sPodName!
            }
            if self.largeModel != nil {
                map["LargeModel"] = self.largeModel!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.lastTimeStamp != nil {
                map["LastTimeStamp"] = self.lastTimeStamp!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.maliciousRuleStatus != nil {
                map["MaliciousRuleStatus"] = self.maliciousRuleStatus!
            }
            if self.markList != nil {
                map["MarkList"] = self.markList!
            }
            if self.markMisRules != nil {
                map["MarkMisRules"] = self.markMisRules!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.occurrenceTime != nil {
                map["OccurrenceTime"] = self.occurrenceTime!
            }
            if self.occurrenceTimeStamp != nil {
                map["OccurrenceTimeStamp"] = self.occurrenceTimeStamp!
            }
            if self.operateErrorCode != nil {
                map["OperateErrorCode"] = self.operateErrorCode!
            }
            if self.operateMsg != nil {
                map["OperateMsg"] = self.operateMsg!
            }
            if self.operateTime != nil {
                map["OperateTime"] = self.operateTime!
            }
            if self.saleVersion != nil {
                map["SaleVersion"] = self.saleVersion!
            }
            if self.securityEventIds != nil {
                map["SecurityEventIds"] = self.securityEventIds!
            }
            if self.srcIp != nil {
                map["SrcIp"] = self.srcIp!
            }
            if self.stages != nil {
                map["Stages"] = self.stages!
            }
            if self.tacticItems != nil {
                var tmp : [Any] = []
                for k in self.tacticItems! {
                    tmp.append(k.toMap())
                }
                map["TacticItems"] = tmp
            }
            if self.uniqueInfo != nil {
                map["UniqueInfo"] = self.uniqueInfo!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Advanced"] as? Bool {
                self.advanced = value
            }
            if let value = dict["AlarmEventName"] as? String {
                self.alarmEventName = value
            }
            if let value = dict["AlarmEventNameDisplay"] as? String {
                self.alarmEventNameDisplay = value
            }
            if let value = dict["AlarmEventType"] as? String {
                self.alarmEventType = value
            }
            if let value = dict["AlarmEventTypeDisplay"] as? String {
                self.alarmEventTypeDisplay = value
            }
            if let value = dict["AlarmUniqueInfo"] as? String {
                self.alarmUniqueInfo = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AutoBreaking"] as? Bool {
                self.autoBreaking = value
            }
            if let value = dict["CanBeDealOnLine"] as? Bool {
                self.canBeDealOnLine = value
            }
            if let value = dict["CanCancelFault"] as? Bool {
                self.canCancelFault = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ContainHwMode"] as? Bool {
                self.containHwMode = value
            }
            if let value = dict["ContainerId"] as? String {
                self.containerId = value
            }
            if let value = dict["ContainerImageId"] as? String {
                self.containerImageId = value
            }
            if let value = dict["ContainerImageName"] as? String {
                self.containerImageName = value
            }
            if let value = dict["DataSource"] as? String {
                self.dataSource = value
            }
            if let value = dict["Department"] as? String {
                self.department = value
            }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["Details"] as? [Any?] {
                var tmp : [DescribeSuspEventsResponseBody.SuspEvents.Details] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSuspEventsResponseBody.SuspEvents.Details()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.details = tmp
            }
            if let value = dict["DevTag"] as? String {
                self.devTag = value
            }
            if let value = dict["DevType"] as? String {
                self.devType = value
            }
            if let value = dict["DisplaySandboxResult"] as? Bool {
                self.displaySandboxResult = value
            }
            if let value = dict["EventNotes"] as? [Any?] {
                var tmp : [DescribeSuspEventsResponseBody.SuspEvents.EventNotes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSuspEventsResponseBody.SuspEvents.EventNotes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eventNotes = tmp
            }
            if let value = dict["EventStatus"] as? Int32 {
                self.eventStatus = value
            }
            if let value = dict["EventSubType"] as? String {
                self.eventSubType = value
            }
            if let value = dict["HasTraceInfo"] as? Bool {
                self.hasTraceInfo = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ImageUuid"] as? String {
                self.imageUuid = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["K8sClusterId"] as? String {
                self.k8sClusterId = value
            }
            if let value = dict["K8sClusterName"] as? String {
                self.k8sClusterName = value
            }
            if let value = dict["K8sNamespace"] as? String {
                self.k8sNamespace = value
            }
            if let value = dict["K8sNodeId"] as? String {
                self.k8sNodeId = value
            }
            if let value = dict["K8sNodeName"] as? String {
                self.k8sNodeName = value
            }
            if let value = dict["K8sPodName"] as? String {
                self.k8sPodName = value
            }
            if let value = dict["LargeModel"] as? Bool {
                self.largeModel = value
            }
            if let value = dict["LastTime"] as? String {
                self.lastTime = value
            }
            if let value = dict["LastTimeStamp"] as? Int64 {
                self.lastTimeStamp = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Mac"] as? String {
                self.mac = value
            }
            if let value = dict["MaliciousRuleStatus"] as? String {
                self.maliciousRuleStatus = value
            }
            if let value = dict["MarkList"] as? [String] {
                self.markList = value
            }
            if let value = dict["MarkMisRules"] as? String {
                self.markMisRules = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OccurrenceTime"] as? String {
                self.occurrenceTime = value
            }
            if let value = dict["OccurrenceTimeStamp"] as? Int64 {
                self.occurrenceTimeStamp = value
            }
            if let value = dict["OperateErrorCode"] as? String {
                self.operateErrorCode = value
            }
            if let value = dict["OperateMsg"] as? String {
                self.operateMsg = value
            }
            if let value = dict["OperateTime"] as? Int64 {
                self.operateTime = value
            }
            if let value = dict["SaleVersion"] as? String {
                self.saleVersion = value
            }
            if let value = dict["SecurityEventIds"] as? String {
                self.securityEventIds = value
            }
            if let value = dict["SrcIp"] as? String {
                self.srcIp = value
            }
            if let value = dict["Stages"] as? String {
                self.stages = value
            }
            if let value = dict["TacticItems"] as? [Any?] {
                var tmp : [DescribeSuspEventsResponseBody.SuspEvents.TacticItems] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSuspEventsResponseBody.SuspEvents.TacticItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tacticItems = tmp
            }
            if let value = dict["UniqueInfo"] as? String {
                self.uniqueInfo = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var count: Int32?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var suspEvents: [DescribeSuspEventsResponseBody.SuspEvents]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.suspEvents != nil {
            var tmp : [Any] = []
            for k in self.suspEvents! {
                tmp.append(k.toMap())
            }
            map["SuspEvents"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuspEvents"] as? [Any?] {
            var tmp : [DescribeSuspEventsResponseBody.SuspEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeSuspEventsResponseBody.SuspEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.suspEvents = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeSuspEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSuspEventsResponseBody?

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
            var model = DescribeSuspEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HandleSecurityEventsRequest : Tea.TeaModel {
    public var markBatch: Bool?

    public var markMissParam: String?

    public var operationCode: String?

    public var operationParams: String?

    public var remark: String?

    public var securityEventIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.markBatch != nil {
            map["MarkBatch"] = self.markBatch!
        }
        if self.markMissParam != nil {
            map["MarkMissParam"] = self.markMissParam!
        }
        if self.operationCode != nil {
            map["OperationCode"] = self.operationCode!
        }
        if self.operationParams != nil {
            map["OperationParams"] = self.operationParams!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityEventIds != nil {
            map["SecurityEventIds"] = self.securityEventIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MarkBatch"] as? Bool {
            self.markBatch = value
        }
        if let value = dict["MarkMissParam"] as? String {
            self.markMissParam = value
        }
        if let value = dict["OperationCode"] as? String {
            self.operationCode = value
        }
        if let value = dict["OperationParams"] as? String {
            self.operationParams = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityEventIds"] as? [Int64] {
            self.securityEventIds = value
        }
    }
}

public class HandleSecurityEventsResponseBody : Tea.TeaModel {
    public class HandleSecurityEventsResponse : Tea.TeaModel {
        public var taskId: Int64?

        public override init() {
            super.init()
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
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var handleSecurityEventsResponse: HandleSecurityEventsResponseBody.HandleSecurityEventsResponse?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handleSecurityEventsResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handleSecurityEventsResponse != nil {
            map["HandleSecurityEventsResponse"] = self.handleSecurityEventsResponse?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HandleSecurityEventsResponse"] as? [String: Any?] {
            var model = HandleSecurityEventsResponseBody.HandleSecurityEventsResponse()
            model.fromMap(value)
            self.handleSecurityEventsResponse = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class HandleSecurityEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HandleSecurityEventsResponseBody?

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
            var model = HandleSecurityEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
