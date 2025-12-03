import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConsoleBody : Tea.TeaModel {
    public var appCode: String?

    public var interfaceName: String?

    public var paramJson: String?

    public var requestId: String?

    public var teamHashId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["appCode"] = self.appCode!
        }
        if self.interfaceName != nil {
            map["interfaceName"] = self.interfaceName!
        }
        if self.paramJson != nil {
            map["paramJson"] = self.paramJson!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.teamHashId != nil {
            map["teamHashId"] = self.teamHashId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appCode"] as? String {
            self.appCode = value
        }
        if let value = dict["interfaceName"] as? String {
            self.interfaceName = value
        }
        if let value = dict["paramJson"] as? String {
            self.paramJson = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["teamHashId"] as? String {
            self.teamHashId = value
        }
    }
}

public class FieldCondition : Tea.TeaModel {
    public var fieldName: String?

    public var nestFieldPath: String?

    public var nestFieldValue: [Int64]?

    public var operateType: String?

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
        if self.fieldName != nil {
            map["fieldName"] = self.fieldName!
        }
        if self.nestFieldPath != nil {
            map["nestFieldPath"] = self.nestFieldPath!
        }
        if self.nestFieldValue != nil {
            map["nestFieldValue"] = self.nestFieldValue!
        }
        if self.operateType != nil {
            map["operateType"] = self.operateType!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fieldName"] as? String {
            self.fieldName = value
        }
        if let value = dict["nestFieldPath"] as? String {
            self.nestFieldPath = value
        }
        if let value = dict["nestFieldValue"] as? [Int64] {
            self.nestFieldValue = value
        }
        if let value = dict["operateType"] as? String {
            self.operateType = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class ProductInstance : Tea.TeaModel {
    public var appCode: String?

    public var buyerName: String?

    public var buyerUid: String?

    public var channel: String?

    public var config: String?

    public var end: Int64?

    public var instanceId: String?

    public var orderNo: String?

    public var productCode: String?

    public var productSpecCode: String?

    public var start: Int64?

    public var tenantName: String?

    public var tenantUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["appCode"] = self.appCode!
        }
        if self.buyerName != nil {
            map["buyerName"] = self.buyerName!
        }
        if self.buyerUid != nil {
            map["buyerUid"] = self.buyerUid!
        }
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.orderNo != nil {
            map["orderNo"] = self.orderNo!
        }
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.productSpecCode != nil {
            map["productSpecCode"] = self.productSpecCode!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        if self.tenantName != nil {
            map["tenantName"] = self.tenantName!
        }
        if self.tenantUid != nil {
            map["tenantUid"] = self.tenantUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appCode"] as? String {
            self.appCode = value
        }
        if let value = dict["buyerName"] as? String {
            self.buyerName = value
        }
        if let value = dict["buyerUid"] as? String {
            self.buyerUid = value
        }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["end"] as? Int64 {
            self.end = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["orderNo"] as? String {
            self.orderNo = value
        }
        if let value = dict["productCode"] as? String {
            self.productCode = value
        }
        if let value = dict["productSpecCode"] as? String {
            self.productSpecCode = value
        }
        if let value = dict["start"] as? Int64 {
            self.start = value
        }
        if let value = dict["tenantName"] as? String {
            self.tenantName = value
        }
        if let value = dict["tenantUid"] as? String {
            self.tenantUid = value
        }
    }
}

public class SearchCondition : Tea.TeaModel {
    public var assKeywordList: [String]?

    public var atAuthorNameList: [String]?

    public var authorNameList: [String]?

    public var commentsLevel: Int32?

    public var contentLenLevel: Int32?

    public var createTimeEnd: Int64?

    public var createTimeStart: Int64?

    public var docContentSign: String?

    public var docIdList: [String]?

    public var duplicateRemoval: Bool?

    public var emotionType: Int32?

    public var enableKeywordHighlight: Bool?

    public var excludeAtAuthorNameList: [String]?

    public var excludeAuthorNameList: [String]?

    public var excludeHostNameList: [String]?

    public var excludeKeywordList: [String]?

    public var excludeKeywordListInTitle: [String]?

    public var excludeKeywordTagIds: [Int64]?

    public var excludeMaterialTagList: [String]?

    public var excludeMediaLibraryIdList: [String]?

    public var excludeMediaNameList: [String]?

    public var excludeMediaTypeList: [String]?

    public var excludeMessageTypeList: [String]?

    public var fieldConditions: [FieldCondition]?

    public var filterId: Int64?

    public var hasAudio: Bool?

    public var hasImage: Bool?

    public var hasMultiModeContent: Bool?

    public var hasVideo: Bool?

    public var hostNameList: [String]?

    public var influenceLevel: Int64?

    public var keywordTagIds: [Int64]?

    public var likesLevel: Int32?

    public var materialTagList: [String]?

    public var mediaLibraryIdList: [String]?

    public var mediaNameList: [String]?

    public var mediaTypeList: [String]?

    public var messageTypeList: [String]?

    public var pageNow: Int32?

    public var pageSize: Int32?

    public var parentDocId: String?

    public var posKeywordList: [String]?

    public var posKeywordListInTitle: [String]?

    public var projectId: Int64?

    public var propagationLevel: Int64?

    public var publishTimeEnd: Int64?

    public var publishTimeStart: Int64?

    public var readsLevel: Int32?

    public var relevanceLevel: Int32?

    public var repostLevel: Int32?

    public var sortBy: String?

    public var sortByDirection: String?

    public var topicList: [String]?

    public var updateTimeEnd: Int64?

    public var updateTimeStart: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assKeywordList != nil {
            map["assKeywordList"] = self.assKeywordList!
        }
        if self.atAuthorNameList != nil {
            map["atAuthorNameList"] = self.atAuthorNameList!
        }
        if self.authorNameList != nil {
            map["authorNameList"] = self.authorNameList!
        }
        if self.commentsLevel != nil {
            map["commentsLevel"] = self.commentsLevel!
        }
        if self.contentLenLevel != nil {
            map["contentLenLevel"] = self.contentLenLevel!
        }
        if self.createTimeEnd != nil {
            map["createTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["createTimeStart"] = self.createTimeStart!
        }
        if self.docContentSign != nil {
            map["docContentSign"] = self.docContentSign!
        }
        if self.docIdList != nil {
            map["docIdList"] = self.docIdList!
        }
        if self.duplicateRemoval != nil {
            map["duplicateRemoval"] = self.duplicateRemoval!
        }
        if self.emotionType != nil {
            map["emotionType"] = self.emotionType!
        }
        if self.enableKeywordHighlight != nil {
            map["enableKeywordHighlight"] = self.enableKeywordHighlight!
        }
        if self.excludeAtAuthorNameList != nil {
            map["excludeAtAuthorNameList"] = self.excludeAtAuthorNameList!
        }
        if self.excludeAuthorNameList != nil {
            map["excludeAuthorNameList"] = self.excludeAuthorNameList!
        }
        if self.excludeHostNameList != nil {
            map["excludeHostNameList"] = self.excludeHostNameList!
        }
        if self.excludeKeywordList != nil {
            map["excludeKeywordList"] = self.excludeKeywordList!
        }
        if self.excludeKeywordListInTitle != nil {
            map["excludeKeywordListInTitle"] = self.excludeKeywordListInTitle!
        }
        if self.excludeKeywordTagIds != nil {
            map["excludeKeywordTagIds"] = self.excludeKeywordTagIds!
        }
        if self.excludeMaterialTagList != nil {
            map["excludeMaterialTagList"] = self.excludeMaterialTagList!
        }
        if self.excludeMediaLibraryIdList != nil {
            map["excludeMediaLibraryIdList"] = self.excludeMediaLibraryIdList!
        }
        if self.excludeMediaNameList != nil {
            map["excludeMediaNameList"] = self.excludeMediaNameList!
        }
        if self.excludeMediaTypeList != nil {
            map["excludeMediaTypeList"] = self.excludeMediaTypeList!
        }
        if self.excludeMessageTypeList != nil {
            map["excludeMessageTypeList"] = self.excludeMessageTypeList!
        }
        if self.fieldConditions != nil {
            var tmp : [Any] = []
            for k in self.fieldConditions! {
                tmp.append(k.toMap())
            }
            map["fieldConditions"] = tmp
        }
        if self.filterId != nil {
            map["filterId"] = self.filterId!
        }
        if self.hasAudio != nil {
            map["hasAudio"] = self.hasAudio!
        }
        if self.hasImage != nil {
            map["hasImage"] = self.hasImage!
        }
        if self.hasMultiModeContent != nil {
            map["hasMultiModeContent"] = self.hasMultiModeContent!
        }
        if self.hasVideo != nil {
            map["hasVideo"] = self.hasVideo!
        }
        if self.hostNameList != nil {
            map["hostNameList"] = self.hostNameList!
        }
        if self.influenceLevel != nil {
            map["influenceLevel"] = self.influenceLevel!
        }
        if self.keywordTagIds != nil {
            map["keywordTagIds"] = self.keywordTagIds!
        }
        if self.likesLevel != nil {
            map["likesLevel"] = self.likesLevel!
        }
        if self.materialTagList != nil {
            map["materialTagList"] = self.materialTagList!
        }
        if self.mediaLibraryIdList != nil {
            map["mediaLibraryIdList"] = self.mediaLibraryIdList!
        }
        if self.mediaNameList != nil {
            map["mediaNameList"] = self.mediaNameList!
        }
        if self.mediaTypeList != nil {
            map["mediaTypeList"] = self.mediaTypeList!
        }
        if self.messageTypeList != nil {
            map["messageTypeList"] = self.messageTypeList!
        }
        if self.pageNow != nil {
            map["pageNow"] = self.pageNow!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.parentDocId != nil {
            map["parentDocId"] = self.parentDocId!
        }
        if self.posKeywordList != nil {
            map["posKeywordList"] = self.posKeywordList!
        }
        if self.posKeywordListInTitle != nil {
            map["posKeywordListInTitle"] = self.posKeywordListInTitle!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.propagationLevel != nil {
            map["propagationLevel"] = self.propagationLevel!
        }
        if self.publishTimeEnd != nil {
            map["publishTimeEnd"] = self.publishTimeEnd!
        }
        if self.publishTimeStart != nil {
            map["publishTimeStart"] = self.publishTimeStart!
        }
        if self.readsLevel != nil {
            map["readsLevel"] = self.readsLevel!
        }
        if self.relevanceLevel != nil {
            map["relevanceLevel"] = self.relevanceLevel!
        }
        if self.repostLevel != nil {
            map["repostLevel"] = self.repostLevel!
        }
        if self.sortBy != nil {
            map["sortBy"] = self.sortBy!
        }
        if self.sortByDirection != nil {
            map["sortByDirection"] = self.sortByDirection!
        }
        if self.topicList != nil {
            map["topicList"] = self.topicList!
        }
        if self.updateTimeEnd != nil {
            map["updateTimeEnd"] = self.updateTimeEnd!
        }
        if self.updateTimeStart != nil {
            map["updateTimeStart"] = self.updateTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["assKeywordList"] as? [String] {
            self.assKeywordList = value
        }
        if let value = dict["atAuthorNameList"] as? [String] {
            self.atAuthorNameList = value
        }
        if let value = dict["authorNameList"] as? [String] {
            self.authorNameList = value
        }
        if let value = dict["commentsLevel"] as? Int32 {
            self.commentsLevel = value
        }
        if let value = dict["contentLenLevel"] as? Int32 {
            self.contentLenLevel = value
        }
        if let value = dict["createTimeEnd"] as? Int64 {
            self.createTimeEnd = value
        }
        if let value = dict["createTimeStart"] as? Int64 {
            self.createTimeStart = value
        }
        if let value = dict["docContentSign"] as? String {
            self.docContentSign = value
        }
        if let value = dict["docIdList"] as? [String] {
            self.docIdList = value
        }
        if let value = dict["duplicateRemoval"] as? Bool {
            self.duplicateRemoval = value
        }
        if let value = dict["emotionType"] as? Int32 {
            self.emotionType = value
        }
        if let value = dict["enableKeywordHighlight"] as? Bool {
            self.enableKeywordHighlight = value
        }
        if let value = dict["excludeAtAuthorNameList"] as? [String] {
            self.excludeAtAuthorNameList = value
        }
        if let value = dict["excludeAuthorNameList"] as? [String] {
            self.excludeAuthorNameList = value
        }
        if let value = dict["excludeHostNameList"] as? [String] {
            self.excludeHostNameList = value
        }
        if let value = dict["excludeKeywordList"] as? [String] {
            self.excludeKeywordList = value
        }
        if let value = dict["excludeKeywordListInTitle"] as? [String] {
            self.excludeKeywordListInTitle = value
        }
        if let value = dict["excludeKeywordTagIds"] as? [Int64] {
            self.excludeKeywordTagIds = value
        }
        if let value = dict["excludeMaterialTagList"] as? [String] {
            self.excludeMaterialTagList = value
        }
        if let value = dict["excludeMediaLibraryIdList"] as? [String] {
            self.excludeMediaLibraryIdList = value
        }
        if let value = dict["excludeMediaNameList"] as? [String] {
            self.excludeMediaNameList = value
        }
        if let value = dict["excludeMediaTypeList"] as? [String] {
            self.excludeMediaTypeList = value
        }
        if let value = dict["excludeMessageTypeList"] as? [String] {
            self.excludeMessageTypeList = value
        }
        if let value = dict["fieldConditions"] as? [Any?] {
            var tmp : [FieldCondition] = []
            for v in value {
                if v != nil {
                    var model = FieldCondition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fieldConditions = tmp
        }
        if let value = dict["filterId"] as? Int64 {
            self.filterId = value
        }
        if let value = dict["hasAudio"] as? Bool {
            self.hasAudio = value
        }
        if let value = dict["hasImage"] as? Bool {
            self.hasImage = value
        }
        if let value = dict["hasMultiModeContent"] as? Bool {
            self.hasMultiModeContent = value
        }
        if let value = dict["hasVideo"] as? Bool {
            self.hasVideo = value
        }
        if let value = dict["hostNameList"] as? [String] {
            self.hostNameList = value
        }
        if let value = dict["influenceLevel"] as? Int64 {
            self.influenceLevel = value
        }
        if let value = dict["keywordTagIds"] as? [Int64] {
            self.keywordTagIds = value
        }
        if let value = dict["likesLevel"] as? Int32 {
            self.likesLevel = value
        }
        if let value = dict["materialTagList"] as? [String] {
            self.materialTagList = value
        }
        if let value = dict["mediaLibraryIdList"] as? [String] {
            self.mediaLibraryIdList = value
        }
        if let value = dict["mediaNameList"] as? [String] {
            self.mediaNameList = value
        }
        if let value = dict["mediaTypeList"] as? [String] {
            self.mediaTypeList = value
        }
        if let value = dict["messageTypeList"] as? [String] {
            self.messageTypeList = value
        }
        if let value = dict["pageNow"] as? Int32 {
            self.pageNow = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["parentDocId"] as? String {
            self.parentDocId = value
        }
        if let value = dict["posKeywordList"] as? [String] {
            self.posKeywordList = value
        }
        if let value = dict["posKeywordListInTitle"] as? [String] {
            self.posKeywordListInTitle = value
        }
        if let value = dict["projectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["propagationLevel"] as? Int64 {
            self.propagationLevel = value
        }
        if let value = dict["publishTimeEnd"] as? Int64 {
            self.publishTimeEnd = value
        }
        if let value = dict["publishTimeStart"] as? Int64 {
            self.publishTimeStart = value
        }
        if let value = dict["readsLevel"] as? Int32 {
            self.readsLevel = value
        }
        if let value = dict["relevanceLevel"] as? Int32 {
            self.relevanceLevel = value
        }
        if let value = dict["repostLevel"] as? Int32 {
            self.repostLevel = value
        }
        if let value = dict["sortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["sortByDirection"] as? String {
            self.sortByDirection = value
        }
        if let value = dict["topicList"] as? [String] {
            self.topicList = value
        }
        if let value = dict["updateTimeEnd"] as? Int64 {
            self.updateTimeEnd = value
        }
        if let value = dict["updateTimeStart"] as? Int64 {
            self.updateTimeStart = value
        }
    }
}

public class YuqingFinanceEvent : Tea.TeaModel {
    public var comprehensiveRisk: Double?

    public var entityArea: String?

    public var entityCrn: String?

    public var entityEmotionScore: Double?

    public var entityId: Int64?

    public var entityName: String?

    public var entityRelevanceScore: Double?

    public var entityShowName: String?

    public var entitySummary: String?

    public var entityType: String?

    public var eventId: String?

    public var eventLevel3Code: Int64?

    public var eventLevel3Name: String?

    public var eventTags: String?

    public var eventTime: Int64?

    public var securityAbbreviation: String?

    public var securityCategoryCodes: [String]?

    public var securityCodes: [String]?

    public var securityMarketsCodes: [String]?

    public var spamScore: Double?

    public var userSubscribeEntityTags: [String]?

    public var userSubscribeEventTags: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comprehensiveRisk != nil {
            map["comprehensiveRisk"] = self.comprehensiveRisk!
        }
        if self.entityArea != nil {
            map["entityArea"] = self.entityArea!
        }
        if self.entityCrn != nil {
            map["entityCrn"] = self.entityCrn!
        }
        if self.entityEmotionScore != nil {
            map["entityEmotionScore"] = self.entityEmotionScore!
        }
        if self.entityId != nil {
            map["entityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["entityName"] = self.entityName!
        }
        if self.entityRelevanceScore != nil {
            map["entityRelevanceScore"] = self.entityRelevanceScore!
        }
        if self.entityShowName != nil {
            map["entityShowName"] = self.entityShowName!
        }
        if self.entitySummary != nil {
            map["entitySummary"] = self.entitySummary!
        }
        if self.entityType != nil {
            map["entityType"] = self.entityType!
        }
        if self.eventId != nil {
            map["eventId"] = self.eventId!
        }
        if self.eventLevel3Code != nil {
            map["eventLevel3Code"] = self.eventLevel3Code!
        }
        if self.eventLevel3Name != nil {
            map["eventLevel3Name"] = self.eventLevel3Name!
        }
        if self.eventTags != nil {
            map["eventTags"] = self.eventTags!
        }
        if self.eventTime != nil {
            map["eventTime"] = self.eventTime!
        }
        if self.securityAbbreviation != nil {
            map["securityAbbreviation"] = self.securityAbbreviation!
        }
        if self.securityCategoryCodes != nil {
            map["securityCategoryCodes"] = self.securityCategoryCodes!
        }
        if self.securityCodes != nil {
            map["securityCodes"] = self.securityCodes!
        }
        if self.securityMarketsCodes != nil {
            map["securityMarketsCodes"] = self.securityMarketsCodes!
        }
        if self.spamScore != nil {
            map["spamScore"] = self.spamScore!
        }
        if self.userSubscribeEntityTags != nil {
            map["userSubscribeEntityTags"] = self.userSubscribeEntityTags!
        }
        if self.userSubscribeEventTags != nil {
            map["userSubscribeEventTags"] = self.userSubscribeEventTags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comprehensiveRisk"] as? Double {
            self.comprehensiveRisk = value
        }
        if let value = dict["entityArea"] as? String {
            self.entityArea = value
        }
        if let value = dict["entityCrn"] as? String {
            self.entityCrn = value
        }
        if let value = dict["entityEmotionScore"] as? Double {
            self.entityEmotionScore = value
        }
        if let value = dict["entityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["entityName"] as? String {
            self.entityName = value
        }
        if let value = dict["entityRelevanceScore"] as? Double {
            self.entityRelevanceScore = value
        }
        if let value = dict["entityShowName"] as? String {
            self.entityShowName = value
        }
        if let value = dict["entitySummary"] as? String {
            self.entitySummary = value
        }
        if let value = dict["entityType"] as? String {
            self.entityType = value
        }
        if let value = dict["eventId"] as? String {
            self.eventId = value
        }
        if let value = dict["eventLevel3Code"] as? Int64 {
            self.eventLevel3Code = value
        }
        if let value = dict["eventLevel3Name"] as? String {
            self.eventLevel3Name = value
        }
        if let value = dict["eventTags"] as? String {
            self.eventTags = value
        }
        if let value = dict["eventTime"] as? Int64 {
            self.eventTime = value
        }
        if let value = dict["securityAbbreviation"] as? String {
            self.securityAbbreviation = value
        }
        if let value = dict["securityCategoryCodes"] as? [String] {
            self.securityCategoryCodes = value
        }
        if let value = dict["securityCodes"] as? [String] {
            self.securityCodes = value
        }
        if let value = dict["securityMarketsCodes"] as? [String] {
            self.securityMarketsCodes = value
        }
        if let value = dict["spamScore"] as? Double {
            self.spamScore = value
        }
        if let value = dict["userSubscribeEntityTags"] as? [String] {
            self.userSubscribeEntityTags = value
        }
        if let value = dict["userSubscribeEventTags"] as? [Int64] {
            self.userSubscribeEventTags = value
        }
    }
}

public class YuqingMessage : Tea.TeaModel {
    public var appName: String?

    public var appScore: Int64?

    public var appStoreName: String?

    public var atAuthorNames: [String]?

    public var audioCount: Int32?

    public var authorAvatarUrl: String?

    public var authorFollowersCount: Int64?

    public var authorFriendsCount: Int64?

    public var authorGender: String?

    public var authorId: String?

    public var authorLikesCount: Int64?

    public var authorName: String?

    public var authorProfileUrl: String?

    public var authorStatusesCount: Int64?

    public var authorVerified: Bool?

    public var authorVerifyType: Int32?

    public var contentAudioText: String?

    public var contentAudioUrls: String?

    public var contentImageText: String?

    public var contentImageUrls: String?

    public var contentLang: String?

    public var contentLen: Int64?

    public var contentVideoText: String?

    public var contentVideoUrls: String?

    public var createTime: Int64?

    public var docAnswersCount: Int64?

    public var docAreas: [String]?

    public var docCoinCount: Int64?

    public var docCommentsCount: Int64?

    public var docContent: String?

    public var docContentBrief: String?

    public var docContentSign: String?

    public var docId: String?

    public var docLikesCount: Int64?

    public var docPlayCount: Int64?

    public var docReadingCount: Int64?

    public var docReadsCount: Int64?

    public var docRepostsCount: Int64?

    public var docReprintName: String?

    public var docSelfContentSign: String?

    public var docTitle: String?

    public var docUrl: String?

    public var emotionScore: Double?

    public var emotionType: Int32?

    public var extInfo: [String: String]?

    public var finEventCount: Int32?

    public var financeEventList: [YuqingFinanceEvent]?

    public var highlightKeywords: [String]?

    public var imageCount: Int32?

    public var influenceScore: Double?

    public var mediaHosts: [String]?

    public var mediaInfluenceLevel: Int32?

    public var mediaName: String?

    public var mediaPropagationLevel: Int32?

    public var mediaType: String?

    public var messageType: String?

    public var parentDocId: String?

    public var propagationScore: Double?

    public var publishTime: Int64?

    public var relevanceScore: Double?

    public var reportMaterialTags: [String]?

    public var repostList: [String]?

    public var similarNumber: Int32?

    public var topics: [String]?

    public var videoCount: Int32?

    public var weiboCommentId: String?

    public var weiboMid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["appName"] = self.appName!
        }
        if self.appScore != nil {
            map["appScore"] = self.appScore!
        }
        if self.appStoreName != nil {
            map["appStoreName"] = self.appStoreName!
        }
        if self.atAuthorNames != nil {
            map["atAuthorNames"] = self.atAuthorNames!
        }
        if self.audioCount != nil {
            map["audioCount"] = self.audioCount!
        }
        if self.authorAvatarUrl != nil {
            map["authorAvatarUrl"] = self.authorAvatarUrl!
        }
        if self.authorFollowersCount != nil {
            map["authorFollowersCount"] = self.authorFollowersCount!
        }
        if self.authorFriendsCount != nil {
            map["authorFriendsCount"] = self.authorFriendsCount!
        }
        if self.authorGender != nil {
            map["authorGender"] = self.authorGender!
        }
        if self.authorId != nil {
            map["authorId"] = self.authorId!
        }
        if self.authorLikesCount != nil {
            map["authorLikesCount"] = self.authorLikesCount!
        }
        if self.authorName != nil {
            map["authorName"] = self.authorName!
        }
        if self.authorProfileUrl != nil {
            map["authorProfileUrl"] = self.authorProfileUrl!
        }
        if self.authorStatusesCount != nil {
            map["authorStatusesCount"] = self.authorStatusesCount!
        }
        if self.authorVerified != nil {
            map["authorVerified"] = self.authorVerified!
        }
        if self.authorVerifyType != nil {
            map["authorVerifyType"] = self.authorVerifyType!
        }
        if self.contentAudioText != nil {
            map["contentAudioText"] = self.contentAudioText!
        }
        if self.contentAudioUrls != nil {
            map["contentAudioUrls"] = self.contentAudioUrls!
        }
        if self.contentImageText != nil {
            map["contentImageText"] = self.contentImageText!
        }
        if self.contentImageUrls != nil {
            map["contentImageUrls"] = self.contentImageUrls!
        }
        if self.contentLang != nil {
            map["contentLang"] = self.contentLang!
        }
        if self.contentLen != nil {
            map["contentLen"] = self.contentLen!
        }
        if self.contentVideoText != nil {
            map["contentVideoText"] = self.contentVideoText!
        }
        if self.contentVideoUrls != nil {
            map["contentVideoUrls"] = self.contentVideoUrls!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.docAnswersCount != nil {
            map["docAnswersCount"] = self.docAnswersCount!
        }
        if self.docAreas != nil {
            map["docAreas"] = self.docAreas!
        }
        if self.docCoinCount != nil {
            map["docCoinCount"] = self.docCoinCount!
        }
        if self.docCommentsCount != nil {
            map["docCommentsCount"] = self.docCommentsCount!
        }
        if self.docContent != nil {
            map["docContent"] = self.docContent!
        }
        if self.docContentBrief != nil {
            map["docContentBrief"] = self.docContentBrief!
        }
        if self.docContentSign != nil {
            map["docContentSign"] = self.docContentSign!
        }
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.docLikesCount != nil {
            map["docLikesCount"] = self.docLikesCount!
        }
        if self.docPlayCount != nil {
            map["docPlayCount"] = self.docPlayCount!
        }
        if self.docReadingCount != nil {
            map["docReadingCount"] = self.docReadingCount!
        }
        if self.docReadsCount != nil {
            map["docReadsCount"] = self.docReadsCount!
        }
        if self.docRepostsCount != nil {
            map["docRepostsCount"] = self.docRepostsCount!
        }
        if self.docReprintName != nil {
            map["docReprintName"] = self.docReprintName!
        }
        if self.docSelfContentSign != nil {
            map["docSelfContentSign"] = self.docSelfContentSign!
        }
        if self.docTitle != nil {
            map["docTitle"] = self.docTitle!
        }
        if self.docUrl != nil {
            map["docUrl"] = self.docUrl!
        }
        if self.emotionScore != nil {
            map["emotionScore"] = self.emotionScore!
        }
        if self.emotionType != nil {
            map["emotionType"] = self.emotionType!
        }
        if self.extInfo != nil {
            map["extInfo"] = self.extInfo!
        }
        if self.finEventCount != nil {
            map["finEventCount"] = self.finEventCount!
        }
        if self.financeEventList != nil {
            var tmp : [Any] = []
            for k in self.financeEventList! {
                tmp.append(k.toMap())
            }
            map["financeEventList"] = tmp
        }
        if self.highlightKeywords != nil {
            map["highlightKeywords"] = self.highlightKeywords!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.influenceScore != nil {
            map["influenceScore"] = self.influenceScore!
        }
        if self.mediaHosts != nil {
            map["mediaHosts"] = self.mediaHosts!
        }
        if self.mediaInfluenceLevel != nil {
            map["mediaInfluenceLevel"] = self.mediaInfluenceLevel!
        }
        if self.mediaName != nil {
            map["mediaName"] = self.mediaName!
        }
        if self.mediaPropagationLevel != nil {
            map["mediaPropagationLevel"] = self.mediaPropagationLevel!
        }
        if self.mediaType != nil {
            map["mediaType"] = self.mediaType!
        }
        if self.messageType != nil {
            map["messageType"] = self.messageType!
        }
        if self.parentDocId != nil {
            map["parentDocId"] = self.parentDocId!
        }
        if self.propagationScore != nil {
            map["propagationScore"] = self.propagationScore!
        }
        if self.publishTime != nil {
            map["publishTime"] = self.publishTime!
        }
        if self.relevanceScore != nil {
            map["relevanceScore"] = self.relevanceScore!
        }
        if self.reportMaterialTags != nil {
            map["reportMaterialTags"] = self.reportMaterialTags!
        }
        if self.repostList != nil {
            map["repostList"] = self.repostList!
        }
        if self.similarNumber != nil {
            map["similarNumber"] = self.similarNumber!
        }
        if self.topics != nil {
            map["topics"] = self.topics!
        }
        if self.videoCount != nil {
            map["videoCount"] = self.videoCount!
        }
        if self.weiboCommentId != nil {
            map["weiboCommentId"] = self.weiboCommentId!
        }
        if self.weiboMid != nil {
            map["weiboMid"] = self.weiboMid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appName"] as? String {
            self.appName = value
        }
        if let value = dict["appScore"] as? Int64 {
            self.appScore = value
        }
        if let value = dict["appStoreName"] as? String {
            self.appStoreName = value
        }
        if let value = dict["atAuthorNames"] as? [String] {
            self.atAuthorNames = value
        }
        if let value = dict["audioCount"] as? Int32 {
            self.audioCount = value
        }
        if let value = dict["authorAvatarUrl"] as? String {
            self.authorAvatarUrl = value
        }
        if let value = dict["authorFollowersCount"] as? Int64 {
            self.authorFollowersCount = value
        }
        if let value = dict["authorFriendsCount"] as? Int64 {
            self.authorFriendsCount = value
        }
        if let value = dict["authorGender"] as? String {
            self.authorGender = value
        }
        if let value = dict["authorId"] as? String {
            self.authorId = value
        }
        if let value = dict["authorLikesCount"] as? Int64 {
            self.authorLikesCount = value
        }
        if let value = dict["authorName"] as? String {
            self.authorName = value
        }
        if let value = dict["authorProfileUrl"] as? String {
            self.authorProfileUrl = value
        }
        if let value = dict["authorStatusesCount"] as? Int64 {
            self.authorStatusesCount = value
        }
        if let value = dict["authorVerified"] as? Bool {
            self.authorVerified = value
        }
        if let value = dict["authorVerifyType"] as? Int32 {
            self.authorVerifyType = value
        }
        if let value = dict["contentAudioText"] as? String {
            self.contentAudioText = value
        }
        if let value = dict["contentAudioUrls"] as? String {
            self.contentAudioUrls = value
        }
        if let value = dict["contentImageText"] as? String {
            self.contentImageText = value
        }
        if let value = dict["contentImageUrls"] as? String {
            self.contentImageUrls = value
        }
        if let value = dict["contentLang"] as? String {
            self.contentLang = value
        }
        if let value = dict["contentLen"] as? Int64 {
            self.contentLen = value
        }
        if let value = dict["contentVideoText"] as? String {
            self.contentVideoText = value
        }
        if let value = dict["contentVideoUrls"] as? String {
            self.contentVideoUrls = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["docAnswersCount"] as? Int64 {
            self.docAnswersCount = value
        }
        if let value = dict["docAreas"] as? [String] {
            self.docAreas = value
        }
        if let value = dict["docCoinCount"] as? Int64 {
            self.docCoinCount = value
        }
        if let value = dict["docCommentsCount"] as? Int64 {
            self.docCommentsCount = value
        }
        if let value = dict["docContent"] as? String {
            self.docContent = value
        }
        if let value = dict["docContentBrief"] as? String {
            self.docContentBrief = value
        }
        if let value = dict["docContentSign"] as? String {
            self.docContentSign = value
        }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["docLikesCount"] as? Int64 {
            self.docLikesCount = value
        }
        if let value = dict["docPlayCount"] as? Int64 {
            self.docPlayCount = value
        }
        if let value = dict["docReadingCount"] as? Int64 {
            self.docReadingCount = value
        }
        if let value = dict["docReadsCount"] as? Int64 {
            self.docReadsCount = value
        }
        if let value = dict["docRepostsCount"] as? Int64 {
            self.docRepostsCount = value
        }
        if let value = dict["docReprintName"] as? String {
            self.docReprintName = value
        }
        if let value = dict["docSelfContentSign"] as? String {
            self.docSelfContentSign = value
        }
        if let value = dict["docTitle"] as? String {
            self.docTitle = value
        }
        if let value = dict["docUrl"] as? String {
            self.docUrl = value
        }
        if let value = dict["emotionScore"] as? Double {
            self.emotionScore = value
        }
        if let value = dict["emotionType"] as? Int32 {
            self.emotionType = value
        }
        if let value = dict["extInfo"] as? [String: String] {
            self.extInfo = value
        }
        if let value = dict["finEventCount"] as? Int32 {
            self.finEventCount = value
        }
        if let value = dict["financeEventList"] as? [Any?] {
            var tmp : [YuqingFinanceEvent] = []
            for v in value {
                if v != nil {
                    var model = YuqingFinanceEvent()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.financeEventList = tmp
        }
        if let value = dict["highlightKeywords"] as? [String] {
            self.highlightKeywords = value
        }
        if let value = dict["imageCount"] as? Int32 {
            self.imageCount = value
        }
        if let value = dict["influenceScore"] as? Double {
            self.influenceScore = value
        }
        if let value = dict["mediaHosts"] as? [String] {
            self.mediaHosts = value
        }
        if let value = dict["mediaInfluenceLevel"] as? Int32 {
            self.mediaInfluenceLevel = value
        }
        if let value = dict["mediaName"] as? String {
            self.mediaName = value
        }
        if let value = dict["mediaPropagationLevel"] as? Int32 {
            self.mediaPropagationLevel = value
        }
        if let value = dict["mediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["messageType"] as? String {
            self.messageType = value
        }
        if let value = dict["parentDocId"] as? String {
            self.parentDocId = value
        }
        if let value = dict["propagationScore"] as? Double {
            self.propagationScore = value
        }
        if let value = dict["publishTime"] as? Int64 {
            self.publishTime = value
        }
        if let value = dict["relevanceScore"] as? Double {
            self.relevanceScore = value
        }
        if let value = dict["reportMaterialTags"] as? [String] {
            self.reportMaterialTags = value
        }
        if let value = dict["repostList"] as? [String] {
            self.repostList = value
        }
        if let value = dict["similarNumber"] as? Int32 {
            self.similarNumber = value
        }
        if let value = dict["topics"] as? [String] {
            self.topics = value
        }
        if let value = dict["videoCount"] as? Int32 {
            self.videoCount = value
        }
        if let value = dict["weiboCommentId"] as? String {
            self.weiboCommentId = value
        }
        if let value = dict["weiboMid"] as? String {
            self.weiboMid = value
        }
    }
}

public class CloseProductRequest : Tea.TeaModel {
    public var productInstance: ProductInstance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productInstance != nil {
            map["productInstance"] = self.productInstance?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["productInstance"] as? [String: Any?] {
            var model = ProductInstance()
            model.fromMap(value)
            self.productInstance = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloseProductResponseBody : Tea.TeaModel {
    public var data: Int64?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloseProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseProductResponseBody?

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
            var model = CloseProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConsoleApiProxyRequest : Tea.TeaModel {
    public var body: ConsoleBody?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConsoleBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConsoleApiProxyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultJson: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.resultJson != nil {
            map["resultJson"] = self.resultJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resultJson"] as? String {
            self.resultJson = value
        }
    }
}

public class ConsoleApiProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConsoleApiProxyResponseBody?

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
            var model = ConsoleApiProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConsoleProxyRequest : Tea.TeaModel {
    public var appCode: String?

    public var interfaceName: String?

    public var paramJson: String?

    public var requestId: String?

    public var teamHashId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["appCode"] = self.appCode!
        }
        if self.interfaceName != nil {
            map["interfaceName"] = self.interfaceName!
        }
        if self.paramJson != nil {
            map["paramJson"] = self.paramJson!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.teamHashId != nil {
            map["teamHashId"] = self.teamHashId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appCode"] as? String {
            self.appCode = value
        }
        if let value = dict["interfaceName"] as? String {
            self.interfaceName = value
        }
        if let value = dict["paramJson"] as? String {
            self.paramJson = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["teamHashId"] as? String {
            self.teamHashId = value
        }
    }
}

public class ConsoleProxyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultJson: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.resultJson != nil {
            map["resultJson"] = self.resultJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resultJson"] as? String {
            self.resultJson = value
        }
    }
}

public class ConsoleProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConsoleProxyResponseBody?

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
            var model = ConsoleProxyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAnalysisTaskResultRequest : Tea.TeaModel {
    public var analysisId: Int64?

    public var requestId: String?

    public var teamHashId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisId != nil {
            map["analysisId"] = self.analysisId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.teamHashId != nil {
            map["teamHashId"] = self.teamHashId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisId"] as? Int64 {
            self.analysisId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["teamHashId"] as? String {
            self.teamHashId = value
        }
    }
}

public class GetAnalysisTaskResultResponseBody : Tea.TeaModel {
    public var analysisId: Int64?

    public var requestId: String?

    public var resultJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisId != nil {
            map["analysisId"] = self.analysisId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resultJson != nil {
            map["resultJson"] = self.resultJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisId"] as? Int64 {
            self.analysisId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resultJson"] as? String {
            self.resultJson = value
        }
    }
}

public class GetAnalysisTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAnalysisTaskResultResponseBody?

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
            var model = GetAnalysisTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenProductRequest : Tea.TeaModel {
    public var clientToken: String?

    public var productInstance: ProductInstance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.productInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.productInstance != nil {
            map["productInstance"] = self.productInstance?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["productInstance"] as? [String: Any?] {
            var model = ProductInstance()
            model.fromMap(value)
            self.productInstance = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenProductResponseBody : Tea.TeaModel {
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
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenProductResponseBody?

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
            var model = OpenProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProductInstanceListRequest : Tea.TeaModel {
    public var appCode: String?

    public var fromTime: Int64?

    public var requestId: String?

    public var tenantUid: String?

    public var toTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["appCode"] = self.appCode!
        }
        if self.fromTime != nil {
            map["fromTime"] = self.fromTime!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tenantUid != nil {
            map["tenantUid"] = self.tenantUid!
        }
        if self.toTime != nil {
            map["toTime"] = self.toTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appCode"] as? String {
            self.appCode = value
        }
        if let value = dict["fromTime"] as? Int64 {
            self.fromTime = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tenantUid"] as? String {
            self.tenantUid = value
        }
        if let value = dict["toTime"] as? Int64 {
            self.toTime = value
        }
    }
}

public class QueryProductInstanceListResponseBody : Tea.TeaModel {
    public var instanceList: [ProductInstance]?

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
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["instanceList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceList"] as? [Any?] {
            var tmp : [ProductInstance] = []
            for v in value {
                if v != nil {
                    var model = ProductInstance()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryProductInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProductInstanceListResponseBody?

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
            var model = QueryProductInstanceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryYuqingMessageRequest : Tea.TeaModel {
    public var requestId: String?

    public var searchCondition: SearchCondition?

    public var teamHashId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.searchCondition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.searchCondition != nil {
            map["searchCondition"] = self.searchCondition?.toMap()
        }
        if self.teamHashId != nil {
            map["teamHashId"] = self.teamHashId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["searchCondition"] as? [String: Any?] {
            var model = SearchCondition()
            model.fromMap(value)
            self.searchCondition = model
        }
        if let value = dict["teamHashId"] as? String {
            self.teamHashId = value
        }
    }
}

public class QueryYuqingMessageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int64?

    public var yuqingMessages: [YuqingMessage]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.yuqingMessages != nil {
            var tmp : [Any] = []
            for k in self.yuqingMessages! {
                tmp.append(k.toMap())
            }
            map["yuqingMessages"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["yuqingMessages"] as? [Any?] {
            var tmp : [YuqingMessage] = []
            for v in value {
                if v != nil {
                    var model = YuqingMessage()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.yuqingMessages = tmp
        }
    }
}

public class QueryYuqingMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryYuqingMessageResponseBody?

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
            var model = QueryYuqingMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitAnalysisTaskRequest : Tea.TeaModel {
    public var analyseType: String?

    public var requestId: String?

    public var searchCondition: SearchCondition?

    public var teamHashId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.searchCondition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analyseType != nil {
            map["analyseType"] = self.analyseType!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.searchCondition != nil {
            map["searchCondition"] = self.searchCondition?.toMap()
        }
        if self.teamHashId != nil {
            map["teamHashId"] = self.teamHashId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analyseType"] as? String {
            self.analyseType = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["searchCondition"] as? [String: Any?] {
            var model = SearchCondition()
            model.fromMap(value)
            self.searchCondition = model
        }
        if let value = dict["teamHashId"] as? String {
            self.teamHashId = value
        }
    }
}

public class SubmitAnalysisTaskResponseBody : Tea.TeaModel {
    public var analysisId: Int64?

    public var requestId: String?

    public var resultJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisId != nil {
            map["analysisId"] = self.analysisId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resultJson != nil {
            map["resultJson"] = self.resultJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisId"] as? Int64 {
            self.analysisId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resultJson"] as? String {
            self.resultJson = value
        }
    }
}

public class SubmitAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAnalysisTaskResponseBody?

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
            var model = SubmitAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
