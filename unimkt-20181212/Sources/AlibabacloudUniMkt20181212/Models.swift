import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateProxyBrandUserRequest : Tea.TeaModel {
    public var brandUserNick: String?

    public var channelId: String?

    public var clientToken: String?

    public var company: String?

    public var contactName: String?

    public var contactPhone: String?

    public var industry: String?

    public var proxyUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandUserNick != nil {
            map["BrandUserNick"] = self.brandUserNick!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.company != nil {
            map["Company"] = self.company!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPhone != nil {
            map["ContactPhone"] = self.contactPhone!
        }
        if self.industry != nil {
            map["Industry"] = self.industry!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrandUserNick"] as? String {
            self.brandUserNick = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Company"] as? String {
            self.company = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["ContactPhone"] as? String {
            self.contactPhone = value
        }
        if let value = dict["Industry"] as? String {
            self.industry = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
    }
}

public class CreateProxyBrandUserResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateProxyBrandUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProxyBrandUserResponseBody?

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
            var model = CreateProxyBrandUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUnionTaskRequest : Tea.TeaModel {
    public var anchorId: String?

    public var brandUserId: Int64?

    public var brandUserNick: String?

    public var channel: String?

    public var channelId: String?

    public var chargePloy: Int64?

    public var chargeType: Int64?

    public var clientToken: String?

    public var contentId: Int64?

    public var contentUrl: String?

    public var customCreativeType: String?

    public var endTime: String?

    public var industryLabelBagId: Int32?

    public var mediaIdBlackList: [String]?

    public var mediaIdWhiteList: [String]?

    public var mediaIndustry: String?

    public var name: String?

    public var optimizationSwitch: Int64?

    public var proxyUserId: Int64?

    public var quota: Int64?

    public var quotaDay: Int64?

    public var startTime: String?

    public var taskBizType: String?

    public var taskRuleType: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.brandUserId != nil {
            map["BrandUserId"] = self.brandUserId!
        }
        if self.brandUserNick != nil {
            map["BrandUserNick"] = self.brandUserNick!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.chargePloy != nil {
            map["ChargePloy"] = self.chargePloy!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        if self.contentUrl != nil {
            map["ContentUrl"] = self.contentUrl!
        }
        if self.customCreativeType != nil {
            map["CustomCreativeType"] = self.customCreativeType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.industryLabelBagId != nil {
            map["IndustryLabelBagId"] = self.industryLabelBagId!
        }
        if self.mediaIdBlackList != nil {
            map["MediaIdBlackList"] = self.mediaIdBlackList!
        }
        if self.mediaIdWhiteList != nil {
            map["MediaIdWhiteList"] = self.mediaIdWhiteList!
        }
        if self.mediaIndustry != nil {
            map["MediaIndustry"] = self.mediaIndustry!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.optimizationSwitch != nil {
            map["OptimizationSwitch"] = self.optimizationSwitch!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.quotaDay != nil {
            map["QuotaDay"] = self.quotaDay!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskBizType != nil {
            map["TaskBizType"] = self.taskBizType!
        }
        if self.taskRuleType != nil {
            map["TaskRuleType"] = self.taskRuleType!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnchorId"] as? String {
            self.anchorId = value
        }
        if let value = dict["BrandUserId"] as? Int64 {
            self.brandUserId = value
        }
        if let value = dict["BrandUserNick"] as? String {
            self.brandUserNick = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ChargePloy"] as? Int64 {
            self.chargePloy = value
        }
        if let value = dict["ChargeType"] as? Int64 {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContentId"] as? Int64 {
            self.contentId = value
        }
        if let value = dict["ContentUrl"] as? String {
            self.contentUrl = value
        }
        if let value = dict["CustomCreativeType"] as? String {
            self.customCreativeType = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IndustryLabelBagId"] as? Int32 {
            self.industryLabelBagId = value
        }
        if let value = dict["MediaIdBlackList"] as? [String] {
            self.mediaIdBlackList = value
        }
        if let value = dict["MediaIdWhiteList"] as? [String] {
            self.mediaIdWhiteList = value
        }
        if let value = dict["MediaIndustry"] as? String {
            self.mediaIndustry = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OptimizationSwitch"] as? Int64 {
            self.optimizationSwitch = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["Quota"] as? Int64 {
            self.quota = value
        }
        if let value = dict["QuotaDay"] as? Int64 {
            self.quotaDay = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskBizType"] as? String {
            self.taskBizType = value
        }
        if let value = dict["TaskRuleType"] as? String {
            self.taskRuleType = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class CreateUnionTaskShrinkRequest : Tea.TeaModel {
    public var anchorId: String?

    public var brandUserId: Int64?

    public var brandUserNick: String?

    public var channel: String?

    public var channelId: String?

    public var chargePloy: Int64?

    public var chargeType: Int64?

    public var clientToken: String?

    public var contentId: Int64?

    public var contentUrl: String?

    public var customCreativeType: String?

    public var endTime: String?

    public var industryLabelBagId: Int32?

    public var mediaIdBlackListShrink: String?

    public var mediaIdWhiteListShrink: String?

    public var mediaIndustry: String?

    public var name: String?

    public var optimizationSwitch: Int64?

    public var proxyUserId: Int64?

    public var quota: Int64?

    public var quotaDay: Int64?

    public var startTime: String?

    public var taskBizType: String?

    public var taskRuleType: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anchorId != nil {
            map["AnchorId"] = self.anchorId!
        }
        if self.brandUserId != nil {
            map["BrandUserId"] = self.brandUserId!
        }
        if self.brandUserNick != nil {
            map["BrandUserNick"] = self.brandUserNick!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.chargePloy != nil {
            map["ChargePloy"] = self.chargePloy!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        if self.contentUrl != nil {
            map["ContentUrl"] = self.contentUrl!
        }
        if self.customCreativeType != nil {
            map["CustomCreativeType"] = self.customCreativeType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.industryLabelBagId != nil {
            map["IndustryLabelBagId"] = self.industryLabelBagId!
        }
        if self.mediaIdBlackListShrink != nil {
            map["MediaIdBlackList"] = self.mediaIdBlackListShrink!
        }
        if self.mediaIdWhiteListShrink != nil {
            map["MediaIdWhiteList"] = self.mediaIdWhiteListShrink!
        }
        if self.mediaIndustry != nil {
            map["MediaIndustry"] = self.mediaIndustry!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.optimizationSwitch != nil {
            map["OptimizationSwitch"] = self.optimizationSwitch!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.quotaDay != nil {
            map["QuotaDay"] = self.quotaDay!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskBizType != nil {
            map["TaskBizType"] = self.taskBizType!
        }
        if self.taskRuleType != nil {
            map["TaskRuleType"] = self.taskRuleType!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnchorId"] as? String {
            self.anchorId = value
        }
        if let value = dict["BrandUserId"] as? Int64 {
            self.brandUserId = value
        }
        if let value = dict["BrandUserNick"] as? String {
            self.brandUserNick = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ChargePloy"] as? Int64 {
            self.chargePloy = value
        }
        if let value = dict["ChargeType"] as? Int64 {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContentId"] as? Int64 {
            self.contentId = value
        }
        if let value = dict["ContentUrl"] as? String {
            self.contentUrl = value
        }
        if let value = dict["CustomCreativeType"] as? String {
            self.customCreativeType = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IndustryLabelBagId"] as? Int32 {
            self.industryLabelBagId = value
        }
        if let value = dict["MediaIdBlackList"] as? String {
            self.mediaIdBlackListShrink = value
        }
        if let value = dict["MediaIdWhiteList"] as? String {
            self.mediaIdWhiteListShrink = value
        }
        if let value = dict["MediaIndustry"] as? String {
            self.mediaIndustry = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OptimizationSwitch"] as? Int64 {
            self.optimizationSwitch = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["Quota"] as? Int64 {
            self.quota = value
        }
        if let value = dict["QuotaDay"] as? Int64 {
            self.quotaDay = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskBizType"] as? String {
            self.taskBizType = value
        }
        if let value = dict["TaskRuleType"] as? String {
            self.taskRuleType = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class CreateUnionTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int64?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateUnionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUnionTaskResponseBody?

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
            var model = CreateUnionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUnionBrandRequest : Tea.TeaModel {
    public var brandMainId: Int64?

    public var channelId: String?

    public var proxyUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandMainId != nil {
            map["BrandMainId"] = self.brandMainId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrandMainId"] as? Int64 {
            self.brandMainId = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
    }
}

public class DeleteUnionBrandResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var errorMsg: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DeleteUnionBrandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUnionBrandResponseBody?

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
            var model = DeleteUnionBrandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EndUnionTaskRequest : Tea.TeaModel {
    public var channelId: String?

    public var proxyUserId: Int64?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class EndUnionTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EndUnionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EndUnionTaskResponseBody?

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
            var model = EndUnionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUnionMediaIndustryRequest : Tea.TeaModel {
    public var channelId: String?

    public var proxyUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
    }
}

public class ListUnionMediaIndustryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var industryCode: String?

        public var industryName: String?

        public var level: String?

        public var parentIndustryCode: String?

        public var usedFlag: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.industryCode != nil {
                map["IndustryCode"] = self.industryCode!
            }
            if self.industryName != nil {
                map["IndustryName"] = self.industryName!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.parentIndustryCode != nil {
                map["ParentIndustryCode"] = self.parentIndustryCode!
            }
            if self.usedFlag != nil {
                map["UsedFlag"] = self.usedFlag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IndustryCode"] as? String {
                self.industryCode = value
            }
            if let value = dict["IndustryName"] as? String {
                self.industryName = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["ParentIndustryCode"] as? String {
                self.parentIndustryCode = value
            }
            if let value = dict["UsedFlag"] as? Bool {
                self.usedFlag = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListUnionMediaIndustryResponseBody.Data]?

    public var errorMsg: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListUnionMediaIndustryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListUnionMediaIndustryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListUnionMediaIndustryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUnionMediaIndustryResponseBody?

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
            var model = ListUnionMediaIndustryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAvailableBalanceRequest : Tea.TeaModel {
    public var channelId: String?

    public var proxyUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
    }
}

public class QueryAvailableBalanceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int64?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAvailableBalanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvailableBalanceResponseBody?

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
            var model = QueryAvailableBalanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryContentListRequest : Tea.TeaModel {
    public var brandUserId: Int64?

    public var brandUserNick: String?

    public var channelId: String?

    public var proxyUserId: Int64?

    public var taskBizType: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandUserId != nil {
            map["BrandUserId"] = self.brandUserId!
        }
        if self.brandUserNick != nil {
            map["BrandUserNick"] = self.brandUserNick!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.taskBizType != nil {
            map["TaskBizType"] = self.taskBizType!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrandUserId"] as? Int64 {
            self.brandUserId = value
        }
        if let value = dict["BrandUserNick"] as? String {
            self.brandUserNick = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["TaskBizType"] as? String {
            self.taskBizType = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class QueryContentListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [[String: Any]]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryContentListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryContentListResponseBody?

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
            var model = QueryContentListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryIndustryLabelBagRequest : Tea.TeaModel {
    public var channelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
    }
}

public class QueryIndustryLabelBagResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [[String: Any]]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryIndustryLabelBagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryIndustryLabelBagResponseBody?

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
            var model = QueryIndustryLabelBagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskBizTypeRequest : Tea.TeaModel {
    public var channelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
    }
}

public class QueryTaskBizTypeResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [[String: Any]]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryTaskBizTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskBizTypeResponseBody?

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
            var model = QueryTaskBizTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskRuleLimitRequest : Tea.TeaModel {
    public var channelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
    }
}

public class QueryTaskRuleLimitResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [[String: Any]]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryTaskRuleLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskRuleLimitResponseBody?

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
            var model = QueryTaskRuleLimitResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUnionChannelRequest : Tea.TeaModel {
    public var channelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
    }
}

public class QueryUnionChannelResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String: Any]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUnionChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUnionChannelResponseBody?

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
            var model = QueryUnionChannelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUnionContentInfoRequest : Tea.TeaModel {
    public var channelId: String?

    public var contentId: String?

    public var proxyUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ContentId"] as? String {
            self.contentId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
    }
}

public class QueryUnionContentInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String: Any]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUnionContentInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUnionContentInfoResponseBody?

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
            var model = QueryUnionContentInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUnionTaskInfoRequest : Tea.TeaModel {
    public var channelId: String?

    public var proxyUserId: Int64?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class QueryUnionTaskInfoResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String: Any]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUnionTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUnionTaskInfoResponseBody?

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
            var model = QueryUnionTaskInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUnionTaskListRequest : Tea.TeaModel {
    public var brandUserId: Int64?

    public var brandUserNick: String?

    public var channelId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var proxyUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brandUserId != nil {
            map["BrandUserId"] = self.brandUserId!
        }
        if self.brandUserNick != nil {
            map["BrandUserNick"] = self.brandUserNick!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrandUserId"] as? Int64 {
            self.brandUserId = value
        }
        if let value = dict["BrandUserNick"] as? String {
            self.brandUserNick = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
    }
}

public class QueryUnionTaskListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String: Any]?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUnionTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUnionTaskListResponseBody?

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
            var model = QueryUnionTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartUnionTaskRequest : Tea.TeaModel {
    public var channelId: String?

    public var proxyUserId: Int64?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class StartUnionTaskResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Bool?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StartUnionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartUnionTaskResponseBody?

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
            var model = StartUnionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopUnionTaskRequest : Tea.TeaModel {
    public var channelId: String?

    public var proxyUserId: Int64?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class StopUnionTaskResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Bool?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StopUnionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopUnionTaskResponseBody?

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
            var model = StopUnionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUnionTaskRequest : Tea.TeaModel {
    public var channelId: String?

    public var chargePloy: Int32?

    public var endTime: String?

    public var optimizationSwitch: Int32?

    public var proxyUserId: Int64?

    public var quota: Int32?

    public var quotaDay: Int32?

    public var startTime: String?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.chargePloy != nil {
            map["ChargePloy"] = self.chargePloy!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.optimizationSwitch != nil {
            map["OptimizationSwitch"] = self.optimizationSwitch!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.quotaDay != nil {
            map["QuotaDay"] = self.quotaDay!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["ChargePloy"] as? Int32 {
            self.chargePloy = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["OptimizationSwitch"] as? Int32 {
            self.optimizationSwitch = value
        }
        if let value = dict["ProxyUserId"] as? Int64 {
            self.proxyUserId = value
        }
        if let value = dict["Quota"] as? Int32 {
            self.quota = value
        }
        if let value = dict["QuotaDay"] as? Int32 {
            self.quotaDay = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class UpdateUnionTaskResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: Int64?

    public var errorMsg: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateUnionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUnionTaskResponseBody?

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
            var model = UpdateUnionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
