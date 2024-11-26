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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appCode") {
            self.appCode = dict["appCode"] as! String
        }
        if dict.keys.contains("interfaceName") {
            self.interfaceName = dict["interfaceName"] as! String
        }
        if dict.keys.contains("paramJson") {
            self.paramJson = dict["paramJson"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("teamHashId") {
            self.teamHashId = dict["teamHashId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fieldName") {
            self.fieldName = dict["fieldName"] as! String
        }
        if dict.keys.contains("nestFieldPath") {
            self.nestFieldPath = dict["nestFieldPath"] as! String
        }
        if dict.keys.contains("nestFieldValue") {
            self.nestFieldValue = dict["nestFieldValue"] as! [Int64]
        }
        if dict.keys.contains("operateType") {
            self.operateType = dict["operateType"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appCode") {
            self.appCode = dict["appCode"] as! String
        }
        if dict.keys.contains("buyerName") {
            self.buyerName = dict["buyerName"] as! String
        }
        if dict.keys.contains("buyerUid") {
            self.buyerUid = dict["buyerUid"] as! String
        }
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Int64
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("orderNo") {
            self.orderNo = dict["orderNo"] as! String
        }
        if dict.keys.contains("productCode") {
            self.productCode = dict["productCode"] as! String
        }
        if dict.keys.contains("productSpecCode") {
            self.productSpecCode = dict["productSpecCode"] as! String
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! Int64
        }
        if dict.keys.contains("tenantName") {
            self.tenantName = dict["tenantName"] as! String
        }
        if dict.keys.contains("tenantUid") {
            self.tenantUid = dict["tenantUid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("assKeywordList") {
            self.assKeywordList = dict["assKeywordList"] as! [String]
        }
        if dict.keys.contains("atAuthorNameList") {
            self.atAuthorNameList = dict["atAuthorNameList"] as! [String]
        }
        if dict.keys.contains("authorNameList") {
            self.authorNameList = dict["authorNameList"] as! [String]
        }
        if dict.keys.contains("commentsLevel") {
            self.commentsLevel = dict["commentsLevel"] as! Int32
        }
        if dict.keys.contains("contentLenLevel") {
            self.contentLenLevel = dict["contentLenLevel"] as! Int32
        }
        if dict.keys.contains("createTimeEnd") {
            self.createTimeEnd = dict["createTimeEnd"] as! Int64
        }
        if dict.keys.contains("createTimeStart") {
            self.createTimeStart = dict["createTimeStart"] as! Int64
        }
        if dict.keys.contains("docContentSign") {
            self.docContentSign = dict["docContentSign"] as! String
        }
        if dict.keys.contains("docIdList") {
            self.docIdList = dict["docIdList"] as! [String]
        }
        if dict.keys.contains("duplicateRemoval") {
            self.duplicateRemoval = dict["duplicateRemoval"] as! Bool
        }
        if dict.keys.contains("emotionType") {
            self.emotionType = dict["emotionType"] as! Int32
        }
        if dict.keys.contains("enableKeywordHighlight") {
            self.enableKeywordHighlight = dict["enableKeywordHighlight"] as! Bool
        }
        if dict.keys.contains("excludeAtAuthorNameList") {
            self.excludeAtAuthorNameList = dict["excludeAtAuthorNameList"] as! [String]
        }
        if dict.keys.contains("excludeAuthorNameList") {
            self.excludeAuthorNameList = dict["excludeAuthorNameList"] as! [String]
        }
        if dict.keys.contains("excludeHostNameList") {
            self.excludeHostNameList = dict["excludeHostNameList"] as! [String]
        }
        if dict.keys.contains("excludeKeywordList") {
            self.excludeKeywordList = dict["excludeKeywordList"] as! [String]
        }
        if dict.keys.contains("excludeKeywordListInTitle") {
            self.excludeKeywordListInTitle = dict["excludeKeywordListInTitle"] as! [String]
        }
        if dict.keys.contains("excludeKeywordTagIds") {
            self.excludeKeywordTagIds = dict["excludeKeywordTagIds"] as! [Int64]
        }
        if dict.keys.contains("excludeMaterialTagList") {
            self.excludeMaterialTagList = dict["excludeMaterialTagList"] as! [String]
        }
        if dict.keys.contains("excludeMediaLibraryIdList") {
            self.excludeMediaLibraryIdList = dict["excludeMediaLibraryIdList"] as! [String]
        }
        if dict.keys.contains("excludeMediaNameList") {
            self.excludeMediaNameList = dict["excludeMediaNameList"] as! [String]
        }
        if dict.keys.contains("excludeMediaTypeList") {
            self.excludeMediaTypeList = dict["excludeMediaTypeList"] as! [String]
        }
        if dict.keys.contains("excludeMessageTypeList") {
            self.excludeMessageTypeList = dict["excludeMessageTypeList"] as! [String]
        }
        if dict.keys.contains("fieldConditions") {
            var tmp : [FieldCondition] = []
            for v in dict["fieldConditions"] as! [Any] {
                var model = FieldCondition()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fieldConditions = tmp
        }
        if dict.keys.contains("filterId") {
            self.filterId = dict["filterId"] as! Int64
        }
        if dict.keys.contains("hasAudio") {
            self.hasAudio = dict["hasAudio"] as! Bool
        }
        if dict.keys.contains("hasImage") {
            self.hasImage = dict["hasImage"] as! Bool
        }
        if dict.keys.contains("hasMultiModeContent") {
            self.hasMultiModeContent = dict["hasMultiModeContent"] as! Bool
        }
        if dict.keys.contains("hasVideo") {
            self.hasVideo = dict["hasVideo"] as! Bool
        }
        if dict.keys.contains("hostNameList") {
            self.hostNameList = dict["hostNameList"] as! [String]
        }
        if dict.keys.contains("influenceLevel") {
            self.influenceLevel = dict["influenceLevel"] as! Int64
        }
        if dict.keys.contains("keywordTagIds") {
            self.keywordTagIds = dict["keywordTagIds"] as! [Int64]
        }
        if dict.keys.contains("likesLevel") {
            self.likesLevel = dict["likesLevel"] as! Int32
        }
        if dict.keys.contains("materialTagList") {
            self.materialTagList = dict["materialTagList"] as! [String]
        }
        if dict.keys.contains("mediaLibraryIdList") {
            self.mediaLibraryIdList = dict["mediaLibraryIdList"] as! [String]
        }
        if dict.keys.contains("mediaNameList") {
            self.mediaNameList = dict["mediaNameList"] as! [String]
        }
        if dict.keys.contains("mediaTypeList") {
            self.mediaTypeList = dict["mediaTypeList"] as! [String]
        }
        if dict.keys.contains("messageTypeList") {
            self.messageTypeList = dict["messageTypeList"] as! [String]
        }
        if dict.keys.contains("pageNow") {
            self.pageNow = dict["pageNow"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("parentDocId") {
            self.parentDocId = dict["parentDocId"] as! String
        }
        if dict.keys.contains("posKeywordList") {
            self.posKeywordList = dict["posKeywordList"] as! [String]
        }
        if dict.keys.contains("posKeywordListInTitle") {
            self.posKeywordListInTitle = dict["posKeywordListInTitle"] as! [String]
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! Int64
        }
        if dict.keys.contains("propagationLevel") {
            self.propagationLevel = dict["propagationLevel"] as! Int64
        }
        if dict.keys.contains("publishTimeEnd") {
            self.publishTimeEnd = dict["publishTimeEnd"] as! Int64
        }
        if dict.keys.contains("publishTimeStart") {
            self.publishTimeStart = dict["publishTimeStart"] as! Int64
        }
        if dict.keys.contains("readsLevel") {
            self.readsLevel = dict["readsLevel"] as! Int32
        }
        if dict.keys.contains("relevanceLevel") {
            self.relevanceLevel = dict["relevanceLevel"] as! Int32
        }
        if dict.keys.contains("repostLevel") {
            self.repostLevel = dict["repostLevel"] as! Int32
        }
        if dict.keys.contains("sortBy") {
            self.sortBy = dict["sortBy"] as! String
        }
        if dict.keys.contains("sortByDirection") {
            self.sortByDirection = dict["sortByDirection"] as! String
        }
        if dict.keys.contains("topicList") {
            self.topicList = dict["topicList"] as! [String]
        }
        if dict.keys.contains("updateTimeEnd") {
            self.updateTimeEnd = dict["updateTimeEnd"] as! Int64
        }
        if dict.keys.contains("updateTimeStart") {
            self.updateTimeStart = dict["updateTimeStart"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comprehensiveRisk") {
            self.comprehensiveRisk = dict["comprehensiveRisk"] as! Double
        }
        if dict.keys.contains("entityArea") {
            self.entityArea = dict["entityArea"] as! String
        }
        if dict.keys.contains("entityCrn") {
            self.entityCrn = dict["entityCrn"] as! String
        }
        if dict.keys.contains("entityEmotionScore") {
            self.entityEmotionScore = dict["entityEmotionScore"] as! Double
        }
        if dict.keys.contains("entityId") {
            self.entityId = dict["entityId"] as! Int64
        }
        if dict.keys.contains("entityName") {
            self.entityName = dict["entityName"] as! String
        }
        if dict.keys.contains("entityRelevanceScore") {
            self.entityRelevanceScore = dict["entityRelevanceScore"] as! Double
        }
        if dict.keys.contains("entityShowName") {
            self.entityShowName = dict["entityShowName"] as! String
        }
        if dict.keys.contains("entitySummary") {
            self.entitySummary = dict["entitySummary"] as! String
        }
        if dict.keys.contains("entityType") {
            self.entityType = dict["entityType"] as! String
        }
        if dict.keys.contains("eventId") {
            self.eventId = dict["eventId"] as! String
        }
        if dict.keys.contains("eventLevel3Code") {
            self.eventLevel3Code = dict["eventLevel3Code"] as! Int64
        }
        if dict.keys.contains("eventLevel3Name") {
            self.eventLevel3Name = dict["eventLevel3Name"] as! String
        }
        if dict.keys.contains("eventTags") {
            self.eventTags = dict["eventTags"] as! String
        }
        if dict.keys.contains("eventTime") {
            self.eventTime = dict["eventTime"] as! Int64
        }
        if dict.keys.contains("securityAbbreviation") {
            self.securityAbbreviation = dict["securityAbbreviation"] as! String
        }
        if dict.keys.contains("securityCategoryCodes") {
            self.securityCategoryCodes = dict["securityCategoryCodes"] as! [String]
        }
        if dict.keys.contains("securityCodes") {
            self.securityCodes = dict["securityCodes"] as! [String]
        }
        if dict.keys.contains("securityMarketsCodes") {
            self.securityMarketsCodes = dict["securityMarketsCodes"] as! [String]
        }
        if dict.keys.contains("spamScore") {
            self.spamScore = dict["spamScore"] as! Double
        }
        if dict.keys.contains("userSubscribeEntityTags") {
            self.userSubscribeEntityTags = dict["userSubscribeEntityTags"] as! [String]
        }
        if dict.keys.contains("userSubscribeEventTags") {
            self.userSubscribeEventTags = dict["userSubscribeEventTags"] as! [Int64]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appName") {
            self.appName = dict["appName"] as! String
        }
        if dict.keys.contains("appScore") {
            self.appScore = dict["appScore"] as! Int64
        }
        if dict.keys.contains("appStoreName") {
            self.appStoreName = dict["appStoreName"] as! String
        }
        if dict.keys.contains("atAuthorNames") {
            self.atAuthorNames = dict["atAuthorNames"] as! [String]
        }
        if dict.keys.contains("audioCount") {
            self.audioCount = dict["audioCount"] as! Int32
        }
        if dict.keys.contains("authorAvatarUrl") {
            self.authorAvatarUrl = dict["authorAvatarUrl"] as! String
        }
        if dict.keys.contains("authorFollowersCount") {
            self.authorFollowersCount = dict["authorFollowersCount"] as! Int64
        }
        if dict.keys.contains("authorFriendsCount") {
            self.authorFriendsCount = dict["authorFriendsCount"] as! Int64
        }
        if dict.keys.contains("authorGender") {
            self.authorGender = dict["authorGender"] as! String
        }
        if dict.keys.contains("authorId") {
            self.authorId = dict["authorId"] as! String
        }
        if dict.keys.contains("authorLikesCount") {
            self.authorLikesCount = dict["authorLikesCount"] as! Int64
        }
        if dict.keys.contains("authorName") {
            self.authorName = dict["authorName"] as! String
        }
        if dict.keys.contains("authorProfileUrl") {
            self.authorProfileUrl = dict["authorProfileUrl"] as! String
        }
        if dict.keys.contains("authorStatusesCount") {
            self.authorStatusesCount = dict["authorStatusesCount"] as! Int64
        }
        if dict.keys.contains("authorVerified") {
            self.authorVerified = dict["authorVerified"] as! Bool
        }
        if dict.keys.contains("authorVerifyType") {
            self.authorVerifyType = dict["authorVerifyType"] as! Int32
        }
        if dict.keys.contains("contentAudioText") {
            self.contentAudioText = dict["contentAudioText"] as! String
        }
        if dict.keys.contains("contentAudioUrls") {
            self.contentAudioUrls = dict["contentAudioUrls"] as! String
        }
        if dict.keys.contains("contentImageText") {
            self.contentImageText = dict["contentImageText"] as! String
        }
        if dict.keys.contains("contentImageUrls") {
            self.contentImageUrls = dict["contentImageUrls"] as! String
        }
        if dict.keys.contains("contentLang") {
            self.contentLang = dict["contentLang"] as! String
        }
        if dict.keys.contains("contentLen") {
            self.contentLen = dict["contentLen"] as! Int64
        }
        if dict.keys.contains("contentVideoText") {
            self.contentVideoText = dict["contentVideoText"] as! String
        }
        if dict.keys.contains("contentVideoUrls") {
            self.contentVideoUrls = dict["contentVideoUrls"] as! String
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("docAnswersCount") {
            self.docAnswersCount = dict["docAnswersCount"] as! Int64
        }
        if dict.keys.contains("docAreas") {
            self.docAreas = dict["docAreas"] as! [String]
        }
        if dict.keys.contains("docCoinCount") {
            self.docCoinCount = dict["docCoinCount"] as! Int64
        }
        if dict.keys.contains("docCommentsCount") {
            self.docCommentsCount = dict["docCommentsCount"] as! Int64
        }
        if dict.keys.contains("docContent") {
            self.docContent = dict["docContent"] as! String
        }
        if dict.keys.contains("docContentBrief") {
            self.docContentBrief = dict["docContentBrief"] as! String
        }
        if dict.keys.contains("docContentSign") {
            self.docContentSign = dict["docContentSign"] as! String
        }
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("docLikesCount") {
            self.docLikesCount = dict["docLikesCount"] as! Int64
        }
        if dict.keys.contains("docPlayCount") {
            self.docPlayCount = dict["docPlayCount"] as! Int64
        }
        if dict.keys.contains("docReadingCount") {
            self.docReadingCount = dict["docReadingCount"] as! Int64
        }
        if dict.keys.contains("docReadsCount") {
            self.docReadsCount = dict["docReadsCount"] as! Int64
        }
        if dict.keys.contains("docRepostsCount") {
            self.docRepostsCount = dict["docRepostsCount"] as! Int64
        }
        if dict.keys.contains("docReprintName") {
            self.docReprintName = dict["docReprintName"] as! String
        }
        if dict.keys.contains("docSelfContentSign") {
            self.docSelfContentSign = dict["docSelfContentSign"] as! String
        }
        if dict.keys.contains("docTitle") {
            self.docTitle = dict["docTitle"] as! String
        }
        if dict.keys.contains("docUrl") {
            self.docUrl = dict["docUrl"] as! String
        }
        if dict.keys.contains("emotionScore") {
            self.emotionScore = dict["emotionScore"] as! Double
        }
        if dict.keys.contains("emotionType") {
            self.emotionType = dict["emotionType"] as! Int32
        }
        if dict.keys.contains("extInfo") {
            self.extInfo = dict["extInfo"] as! [String: String]
        }
        if dict.keys.contains("finEventCount") {
            self.finEventCount = dict["finEventCount"] as! Int32
        }
        if dict.keys.contains("financeEventList") {
            var tmp : [YuqingFinanceEvent] = []
            for v in dict["financeEventList"] as! [Any] {
                var model = YuqingFinanceEvent()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.financeEventList = tmp
        }
        if dict.keys.contains("highlightKeywords") {
            self.highlightKeywords = dict["highlightKeywords"] as! [String]
        }
        if dict.keys.contains("imageCount") {
            self.imageCount = dict["imageCount"] as! Int32
        }
        if dict.keys.contains("influenceScore") {
            self.influenceScore = dict["influenceScore"] as! Double
        }
        if dict.keys.contains("mediaHosts") {
            self.mediaHosts = dict["mediaHosts"] as! [String]
        }
        if dict.keys.contains("mediaInfluenceLevel") {
            self.mediaInfluenceLevel = dict["mediaInfluenceLevel"] as! Int32
        }
        if dict.keys.contains("mediaName") {
            self.mediaName = dict["mediaName"] as! String
        }
        if dict.keys.contains("mediaPropagationLevel") {
            self.mediaPropagationLevel = dict["mediaPropagationLevel"] as! Int32
        }
        if dict.keys.contains("mediaType") {
            self.mediaType = dict["mediaType"] as! String
        }
        if dict.keys.contains("messageType") {
            self.messageType = dict["messageType"] as! String
        }
        if dict.keys.contains("parentDocId") {
            self.parentDocId = dict["parentDocId"] as! String
        }
        if dict.keys.contains("propagationScore") {
            self.propagationScore = dict["propagationScore"] as! Double
        }
        if dict.keys.contains("publishTime") {
            self.publishTime = dict["publishTime"] as! Int64
        }
        if dict.keys.contains("relevanceScore") {
            self.relevanceScore = dict["relevanceScore"] as! Double
        }
        if dict.keys.contains("reportMaterialTags") {
            self.reportMaterialTags = dict["reportMaterialTags"] as! [String]
        }
        if dict.keys.contains("repostList") {
            self.repostList = dict["repostList"] as! [String]
        }
        if dict.keys.contains("similarNumber") {
            self.similarNumber = dict["similarNumber"] as! Int32
        }
        if dict.keys.contains("topics") {
            self.topics = dict["topics"] as! [String]
        }
        if dict.keys.contains("videoCount") {
            self.videoCount = dict["videoCount"] as! Int32
        }
        if dict.keys.contains("weiboCommentId") {
            self.weiboCommentId = dict["weiboCommentId"] as! String
        }
        if dict.keys.contains("weiboMid") {
            self.weiboMid = dict["weiboMid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productInstance") {
            var model = ProductInstance()
            model.fromMap(dict["productInstance"] as! [String: Any])
            self.productInstance = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloseProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = ConsoleBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resultJson") {
            self.resultJson = dict["resultJson"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConsoleApiProxyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appCode") {
            self.appCode = dict["appCode"] as! String
        }
        if dict.keys.contains("interfaceName") {
            self.interfaceName = dict["interfaceName"] as! String
        }
        if dict.keys.contains("paramJson") {
            self.paramJson = dict["paramJson"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("teamHashId") {
            self.teamHashId = dict["teamHashId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resultJson") {
            self.resultJson = dict["resultJson"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConsoleProxyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisId") {
            self.analysisId = dict["analysisId"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("teamHashId") {
            self.teamHashId = dict["teamHashId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisId") {
            self.analysisId = dict["analysisId"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resultJson") {
            self.resultJson = dict["resultJson"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAnalysisTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("productInstance") {
            var model = ProductInstance()
            model.fromMap(dict["productInstance"] as! [String: Any])
            self.productInstance = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appCode") {
            self.appCode = dict["appCode"] as! String
        }
        if dict.keys.contains("fromTime") {
            self.fromTime = dict["fromTime"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("tenantUid") {
            self.tenantUid = dict["tenantUid"] as! String
        }
        if dict.keys.contains("toTime") {
            self.toTime = dict["toTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceList") {
            var tmp : [ProductInstance] = []
            for v in dict["instanceList"] as! [Any] {
                var model = ProductInstance()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceList = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryProductInstanceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("searchCondition") {
            var model = SearchCondition()
            model.fromMap(dict["searchCondition"] as! [String: Any])
            self.searchCondition = model
        }
        if dict.keys.contains("teamHashId") {
            self.teamHashId = dict["teamHashId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
        if dict.keys.contains("yuqingMessages") {
            var tmp : [YuqingMessage] = []
            for v in dict["yuqingMessages"] as! [Any] {
                var model = YuqingMessage()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryYuqingMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analyseType") {
            self.analyseType = dict["analyseType"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("searchCondition") {
            var model = SearchCondition()
            model.fromMap(dict["searchCondition"] as! [String: Any])
            self.searchCondition = model
        }
        if dict.keys.contains("teamHashId") {
            self.teamHashId = dict["teamHashId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisId") {
            self.analysisId = dict["analysisId"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resultJson") {
            self.resultJson = dict["resultJson"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitAnalysisTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
