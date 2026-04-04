import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AppAiStaff : Tea.TeaModel {
    public var staffId: String?

    public var staffName: String?

    public var staffType: String?

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
        if self.staffId != nil {
            map["StaffId"] = self.staffId!
        }
        if self.staffName != nil {
            map["StaffName"] = self.staffName!
        }
        if self.staffType != nil {
            map["StaffType"] = self.staffType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["StaffId"] as? String {
            self.staffId = value
        }
        if let value = dict["StaffName"] as? String {
            self.staffName = value
        }
        if let value = dict["StaffType"] as? String {
            self.staffType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class AppInstance : Tea.TeaModel {
    public var appSubType: String?

    public var appType: String?

    public var bizId: String?

    public var buildType: String?

    public var deleted: Int32?

    public var description_: String?

    public var designSpecBizId: String?

    public var designSpecId: String?

    public var domain: String?

    public var endTime: String?

    public var espBizId: String?

    public var gmtCreate: String?

    public var gmtDelete: String?

    public var gmtModified: String?

    public var gmtPublish: String?

    public var iconUrl: String?

    public var name: String?

    public var profile: AppInstanceProfile?

    public var siteHost: String?

    public var slug: String?

    public var sourceType: String?

    public var startTime: String?

    public var status: String?

    public var statusText: String?

    public var thumbnailUrl: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSubType != nil {
            map["AppSubType"] = self.appSubType!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.buildType != nil {
            map["BuildType"] = self.buildType!
        }
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.designSpecBizId != nil {
            map["DesignSpecBizId"] = self.designSpecBizId!
        }
        if self.designSpecId != nil {
            map["DesignSpecId"] = self.designSpecId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtDelete != nil {
            map["GmtDelete"] = self.gmtDelete!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.gmtPublish != nil {
            map["GmtPublish"] = self.gmtPublish!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        if self.siteHost != nil {
            map["SiteHost"] = self.siteHost!
        }
        if self.slug != nil {
            map["Slug"] = self.slug!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusText != nil {
            map["StatusText"] = self.statusText!
        }
        if self.thumbnailUrl != nil {
            map["ThumbnailUrl"] = self.thumbnailUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppSubType"] as? String {
            self.appSubType = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BuildType"] as? String {
            self.buildType = value
        }
        if let value = dict["Deleted"] as? Int32 {
            self.deleted = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesignSpecBizId"] as? String {
            self.designSpecBizId = value
        }
        if let value = dict["DesignSpecId"] as? String {
            self.designSpecId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtDelete"] as? String {
            self.gmtDelete = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["GmtPublish"] as? String {
            self.gmtPublish = value
        }
        if let value = dict["IconUrl"] as? String {
            self.iconUrl = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = AppInstanceProfile()
            model.fromMap(value)
            self.profile = model
        }
        if let value = dict["SiteHost"] as? String {
            self.siteHost = value
        }
        if let value = dict["Slug"] as? String {
            self.slug = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusText"] as? String {
            self.statusText = value
        }
        if let value = dict["ThumbnailUrl"] as? String {
            self.thumbnailUrl = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AppInstanceAggregate : Tea.TeaModel {
    public class PartnerDetail : Tea.TeaModel {
        public class BindData : Tea.TeaModel {
            public var bizId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: String?

            public var mobile: String?

            public var parentPk: String?

            public var partnerId: String?

            public var userId: String?

            public override init() {
                super.init()
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
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.parentPk != nil {
                    map["ParentPk"] = self.parentPk!
                }
                if self.partnerId != nil {
                    map["PartnerId"] = self.partnerId!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["ParentPk"] as? String {
                    self.parentPk = value
                }
                if let value = dict["PartnerId"] as? String {
                    self.partnerId = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var bindData: AppInstanceAggregate.PartnerDetail.BindData?

        public var partnerId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bindData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindData != nil {
                map["BindData"] = self.bindData?.toMap()
            }
            if self.partnerId != nil {
                map["PartnerId"] = self.partnerId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindData"] as? [String: Any?] {
                var model = AppInstanceAggregate.PartnerDetail.BindData()
                model.fromMap(value)
                self.bindData = model
            }
            if let value = dict["PartnerId"] as? String {
                self.partnerId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var aiStaffList: [AppAiStaff]?

    public var appOperationAddress: AppOperationAddress?

    public var appServiceList: [AppServiceAggregate]?

    public var appSubType: String?

    public var appType: String?

    public var bizId: String?

    public var buildType: String?

    public var createTime: String?

    public var deleted: Int32?

    public var description_: String?

    public var designSpecBizId: String?

    public var designSpecId: String?

    public var domain: String?

    public var endTime: String?

    public var espBizId: String?

    public var gmtDelete: String?

    public var gmtModified: String?

    public var gmtPublish: String?

    public var iconUrl: String?

    public var name: String?

    public var partnerDetail: AppInstanceAggregate.PartnerDetail?

    public var profile: AppInstanceProfile?

    public var resourceGroupId: String?

    public var siteHost: String?

    public var slug: String?

    public var sourceType: String?

    public var startTime: String?

    public var status: String?

    public var statusText: String?

    public var tags: [AppInstanceAggregate.Tags]?

    public var thumbnailUrl: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appOperationAddress?.validate()
        try self.partnerDetail?.validate()
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiStaffList != nil {
            var tmp : [Any] = []
            for k in self.aiStaffList! {
                tmp.append(k.toMap())
            }
            map["AiStaffList"] = tmp
        }
        if self.appOperationAddress != nil {
            map["AppOperationAddress"] = self.appOperationAddress?.toMap()
        }
        if self.appServiceList != nil {
            var tmp : [Any] = []
            for k in self.appServiceList! {
                tmp.append(k.toMap())
            }
            map["AppServiceList"] = tmp
        }
        if self.appSubType != nil {
            map["AppSubType"] = self.appSubType!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.buildType != nil {
            map["BuildType"] = self.buildType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.designSpecBizId != nil {
            map["DesignSpecBizId"] = self.designSpecBizId!
        }
        if self.designSpecId != nil {
            map["DesignSpecId"] = self.designSpecId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.gmtDelete != nil {
            map["GmtDelete"] = self.gmtDelete!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.gmtPublish != nil {
            map["GmtPublish"] = self.gmtPublish!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.partnerDetail != nil {
            map["PartnerDetail"] = self.partnerDetail?.toMap()
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.siteHost != nil {
            map["SiteHost"] = self.siteHost!
        }
        if self.slug != nil {
            map["Slug"] = self.slug!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusText != nil {
            map["StatusText"] = self.statusText!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.thumbnailUrl != nil {
            map["ThumbnailUrl"] = self.thumbnailUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AiStaffList"] as? [Any?] {
            var tmp : [AppAiStaff] = []
            for v in value {
                if v != nil {
                    var model = AppAiStaff()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aiStaffList = tmp
        }
        if let value = dict["AppOperationAddress"] as? [String: Any?] {
            var model = AppOperationAddress()
            model.fromMap(value)
            self.appOperationAddress = model
        }
        if let value = dict["AppServiceList"] as? [Any?] {
            var tmp : [AppServiceAggregate] = []
            for v in value {
                if v != nil {
                    var model = AppServiceAggregate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appServiceList = tmp
        }
        if let value = dict["AppSubType"] as? String {
            self.appSubType = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BuildType"] as? String {
            self.buildType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Deleted"] as? Int32 {
            self.deleted = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DesignSpecBizId"] as? String {
            self.designSpecBizId = value
        }
        if let value = dict["DesignSpecId"] as? String {
            self.designSpecId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["GmtDelete"] as? String {
            self.gmtDelete = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["GmtPublish"] as? String {
            self.gmtPublish = value
        }
        if let value = dict["IconUrl"] as? String {
            self.iconUrl = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PartnerDetail"] as? [String: Any?] {
            var model = AppInstanceAggregate.PartnerDetail()
            model.fromMap(value)
            self.partnerDetail = model
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = AppInstanceProfile()
            model.fromMap(value)
            self.profile = model
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SiteHost"] as? String {
            self.siteHost = value
        }
        if let value = dict["Slug"] as? String {
            self.slug = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusText"] as? String {
            self.statusText = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [AppInstanceAggregate.Tags] = []
            for v in value {
                if v != nil {
                    var model = AppInstanceAggregate.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["ThumbnailUrl"] as? String {
            self.thumbnailUrl = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AppInstanceProfile : Tea.TeaModel {
    public var applicationType: String?

    public var applicationTypeText: String?

    public var bizId: String?

    public var commodityCode: String?

    public var customerService: String?

    public var deployArea: String?

    public var instanceId: String?

    public var ordTime: String?

    public var orderId: String?

    public var payTime: String?

    public var seoSite: String?

    public var siteVersion: String?

    public var siteVersionText: String?

    public var source: String?

    public var templateEtag: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.applicationTypeText != nil {
            map["ApplicationTypeText"] = self.applicationTypeText!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.customerService != nil {
            map["CustomerService"] = self.customerService!
        }
        if self.deployArea != nil {
            map["DeployArea"] = self.deployArea!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ordTime != nil {
            map["OrdTime"] = self.ordTime!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.payTime != nil {
            map["PayTime"] = self.payTime!
        }
        if self.seoSite != nil {
            map["SeoSite"] = self.seoSite!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        if self.siteVersionText != nil {
            map["SiteVersionText"] = self.siteVersionText!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.templateEtag != nil {
            map["TemplateEtag"] = self.templateEtag!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? String {
            self.applicationType = value
        }
        if let value = dict["ApplicationTypeText"] as? String {
            self.applicationTypeText = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["CustomerService"] as? String {
            self.customerService = value
        }
        if let value = dict["DeployArea"] as? String {
            self.deployArea = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrdTime"] as? String {
            self.ordTime = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["PayTime"] as? String {
            self.payTime = value
        }
        if let value = dict["SeoSite"] as? String {
            self.seoSite = value
        }
        if let value = dict["SiteVersion"] as? String {
            self.siteVersion = value
        }
        if let value = dict["SiteVersionText"] as? String {
            self.siteVersionText = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["TemplateEtag"] as? String {
            self.templateEtag = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class AppMaterialDirectory : Tea.TeaModel {
    public var bizId: String?

    public var children: [AppMaterialDirectory]?

    public var directoryId: String?

    public var name: String?

    public var sortNum: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["Children"] = tmp
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sortNum != nil {
            map["SortNum"] = self.sortNum!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Children"] as? [Any?] {
            var tmp : [AppMaterialDirectory] = []
            for v in value {
                if v != nil {
                    var model = AppMaterialDirectory()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SortNum"] as? String {
            self.sortNum = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class AppMaterialFile : Tea.TeaModel {
    public var bizId: String?

    public var contentType: String?

    public var createTime: String?

    public var deletedTime: String?

    public var directoryId: String?

    public var fileId: String?

    public var fileUrl: String?

    public var height: Int32?

    public var name: String?

    public var status: String?

    public var storageSize: String?

    public var suffix: String?

    public var type: String?

    public var width: Int32?

    public override init() {
        super.init()
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
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deletedTime != nil {
            map["DeletedTime"] = self.deletedTime!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.suffix != nil {
            map["Suffix"] = self.suffix!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DeletedTime"] as? String {
            self.deletedTime = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StorageSize"] as? String {
            self.storageSize = value
        }
        if let value = dict["Suffix"] as? String {
            self.suffix = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class AppMaterialTask : Tea.TeaModel {
    public var completeTime: String?

    public var completeTimeFormat: String?

    public var failReason: String?

    public var finalFileUrls: [String]?

    public var status: String?

    public var subStatus: String?

    public var submitTime: String?

    public var taskId: String?

    public var taskParam: String?

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
        if self.completeTime != nil {
            map["CompleteTime"] = self.completeTime!
        }
        if self.completeTimeFormat != nil {
            map["CompleteTimeFormat"] = self.completeTimeFormat!
        }
        if self.failReason != nil {
            map["FailReason"] = self.failReason!
        }
        if self.finalFileUrls != nil {
            map["FinalFileUrls"] = self.finalFileUrls!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subStatus != nil {
            map["SubStatus"] = self.subStatus!
        }
        if self.submitTime != nil {
            map["SubmitTime"] = self.submitTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskParam != nil {
            map["TaskParam"] = self.taskParam!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompleteTime"] as? String {
            self.completeTime = value
        }
        if let value = dict["CompleteTimeFormat"] as? String {
            self.completeTimeFormat = value
        }
        if let value = dict["FailReason"] as? String {
            self.failReason = value
        }
        if let value = dict["FinalFileUrls"] as? [String] {
            self.finalFileUrls = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubStatus"] as? String {
            self.subStatus = value
        }
        if let value = dict["SubmitTime"] as? String {
            self.submitTime = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskParam"] as? String {
            self.taskParam = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class AppOperateAction : Tea.TeaModel {
    public var actionKey: String?

    public var actionText: String?

    public var enable: Bool?

    public var href: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionKey != nil {
            map["ActionKey"] = self.actionKey!
        }
        if self.actionText != nil {
            map["ActionText"] = self.actionText!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.href != nil {
            map["Href"] = self.href!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionKey"] as? String {
            self.actionKey = value
        }
        if let value = dict["ActionText"] as? String {
            self.actionText = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["Href"] as? String {
            self.href = value
        }
    }
}

public class AppOperationAddress : Tea.TeaModel {
    public var actions: [AppOperateAction]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [AppOperateAction] = []
            for v in value {
                if v != nil {
                    var model = AppOperateAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
    }
}

public class AppService : Tea.TeaModel {
    public var bizId: String?

    public var createTime: String?

    public var deleted: Int32?

    public var endTime: String?

    public var espBizId: String?

    public var gmtModified: String?

    public var instanceBizId: String?

    public var name: String?

    public var profile: AppServiceProfile?

    public var serviceType: String?

    public var serviceTypeText: String?

    public var slug: String?

    public var startTime: String?

    public var status: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.instanceBizId != nil {
            map["InstanceBizId"] = self.instanceBizId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceTypeText != nil {
            map["ServiceTypeText"] = self.serviceTypeText!
        }
        if self.slug != nil {
            map["Slug"] = self.slug!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Deleted"] as? Int32 {
            self.deleted = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["InstanceBizId"] as? String {
            self.instanceBizId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = AppServiceProfile()
            model.fromMap(value)
            self.profile = model
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ServiceTypeText"] as? String {
            self.serviceTypeText = value
        }
        if let value = dict["Slug"] as? String {
            self.slug = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AppServiceAggregate : Tea.TeaModel {
    public var bizId: String?

    public var deleted: Int32?

    public var endTime: String?

    public var espBizId: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var instanceBizId: String?

    public var name: String?

    public var operationAddress: AppOperationAddress?

    public var profile: AppServiceProfile?

    public var serviceType: String?

    public var serviceTypeText: String?

    public var slug: String?

    public var startTime: String?

    public var status: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationAddress?.validate()
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.instanceBizId != nil {
            map["InstanceBizId"] = self.instanceBizId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationAddress != nil {
            map["OperationAddress"] = self.operationAddress?.toMap()
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceTypeText != nil {
            map["ServiceTypeText"] = self.serviceTypeText!
        }
        if self.slug != nil {
            map["Slug"] = self.slug!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Deleted"] as? Int32 {
            self.deleted = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["InstanceBizId"] as? String {
            self.instanceBizId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperationAddress"] as? [String: Any?] {
            var model = AppOperationAddress()
            model.fromMap(value)
            self.operationAddress = model
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = AppServiceProfile()
            model.fromMap(value)
            self.profile = model
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ServiceTypeText"] as? String {
            self.serviceTypeText = value
        }
        if let value = dict["Slug"] as? String {
            self.slug = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AppServiceGroup : Tea.TeaModel {
    public var name: String?

    public var qrCode: String?

    public var type: String?

    public var url: String?

    public override init() {
        super.init()
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
        if self.qrCode != nil {
            map["QrCode"] = self.qrCode!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["QrCode"] as? String {
            self.qrCode = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class AppServiceProfile : Tea.TeaModel {
    public var bizId: String?

    public var designType: String?

    public var designTypeText: String?

    public var instanceId: String?

    public var orderId: String?

    public var serviceSpec: String?

    public var serviceSpecText: String?

    public override init() {
        super.init()
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
        if self.designType != nil {
            map["DesignType"] = self.designType!
        }
        if self.designTypeText != nil {
            map["DesignTypeText"] = self.designTypeText!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.serviceSpec != nil {
            map["ServiceSpec"] = self.serviceSpec!
        }
        if self.serviceSpecText != nil {
            map["ServiceSpecText"] = self.serviceSpecText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DesignType"] as? String {
            self.designType = value
        }
        if let value = dict["DesignTypeText"] as? String {
            self.designTypeText = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["ServiceSpec"] as? String {
            self.serviceSpec = value
        }
        if let value = dict["ServiceSpecText"] as? String {
            self.serviceSpecText = value
        }
    }
}

public class ModuleResultsValue : Tea.TeaModel {
    public var passed: Bool?

    public var resourceCode: String?

    public var errorCode: String?

    public var errorMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passed != nil {
            map["Passed"] = self.passed!
        }
        if self.resourceCode != nil {
            map["ResourceCode"] = self.resourceCode!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Passed"] as? Bool {
            self.passed = value
        }
        if let value = dict["ResourceCode"] as? String {
            self.resourceCode = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
    }
}

public class ModuleVersionsValue : Tea.TeaModel {
    public var code: String?

    public var name: String?

    public var components: [String: ModuleVersionsValueComponentsValue]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.components != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.components! {
                tmp[k] = v.toMap()
            }
            map["Components"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Components"] as? [String: Any?] {
            var tmp : [String: ModuleVersionsValueComponentsValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ModuleVersionsValueComponentsValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.components = tmp
        }
    }
}

public class ModuleDataComponentsValue : Tea.TeaModel {
    public class InstanceProperty : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var code: String?

            public var value: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var code: String?

        public var name: String?

        public var value: String?

        public var values: [ModuleDataComponentsValue.InstanceProperty.Values]?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [ModuleDataComponentsValue.InstanceProperty.Values] = []
                for v in value {
                    if v != nil {
                        var model = ModuleDataComponentsValue.InstanceProperty.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var code: String?

    public var name: String?

    public var instanceProperty: [ModuleDataComponentsValue.InstanceProperty]?

    public var properties: [String: ModuleDataComponentsValuePropertiesValue]?

    public var moduleAttrStatus: Int32?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.instanceProperty != nil {
            var tmp : [Any] = []
            for k in self.instanceProperty! {
                tmp.append(k.toMap())
            }
            map["InstanceProperty"] = tmp
        }
        if self.properties != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.properties! {
                tmp[k] = v.toMap()
            }
            map["Properties"] = tmp
        }
        if self.moduleAttrStatus != nil {
            map["ModuleAttrStatus"] = self.moduleAttrStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["InstanceProperty"] as? [Any?] {
            var tmp : [ModuleDataComponentsValue.InstanceProperty] = []
            for v in value {
                if v != nil {
                    var model = ModuleDataComponentsValue.InstanceProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceProperty = tmp
        }
        if let value = dict["Properties"] as? [String: Any?] {
            var tmp : [String: ModuleDataComponentsValuePropertiesValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ModuleDataComponentsValuePropertiesValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.properties = tmp
        }
        if let value = dict["ModuleAttrStatus"] as? Int32 {
            self.moduleAttrStatus = value
        }
    }
}

public class ModuleDataPropertiesValue : Tea.TeaModel {
    public class Values : Tea.TeaModel {
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var code: String?

    public var values: [ModuleDataPropertiesValue.Values]?

    public override init() {
        super.init()
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
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["Values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Values"] as? [Any?] {
            var tmp : [ModuleDataPropertiesValue.Values] = []
            for v in value {
                if v != nil {
                    var model = ModuleDataPropertiesValue.Values()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.values = tmp
        }
    }
}

public class ModuleNextComponentsValue : Tea.TeaModel {
    public class InstanceProperty : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var code: String?

            public var value: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var code: String?

        public var name: String?

        public var value: String?

        public var values: [ModuleNextComponentsValue.InstanceProperty.Values]?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [ModuleNextComponentsValue.InstanceProperty.Values] = []
                for v in value {
                    if v != nil {
                        var model = ModuleNextComponentsValue.InstanceProperty.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var code: String?

    public var name: String?

    public var instanceProperty: [ModuleNextComponentsValue.InstanceProperty]?

    public var properties: [String: ModuleNextComponentsValuePropertiesValue]?

    public var moduleAttrStatus: Int32?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.instanceProperty != nil {
            var tmp : [Any] = []
            for k in self.instanceProperty! {
                tmp.append(k.toMap())
            }
            map["InstanceProperty"] = tmp
        }
        if self.properties != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.properties! {
                tmp[k] = v.toMap()
            }
            map["Properties"] = tmp
        }
        if self.moduleAttrStatus != nil {
            map["ModuleAttrStatus"] = self.moduleAttrStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["InstanceProperty"] as? [Any?] {
            var tmp : [ModuleNextComponentsValue.InstanceProperty] = []
            for v in value {
                if v != nil {
                    var model = ModuleNextComponentsValue.InstanceProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceProperty = tmp
        }
        if let value = dict["Properties"] as? [String: Any?] {
            var tmp : [String: ModuleNextComponentsValuePropertiesValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ModuleNextComponentsValuePropertiesValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.properties = tmp
        }
        if let value = dict["ModuleAttrStatus"] as? Int32 {
            self.moduleAttrStatus = value
        }
    }
}

public class ModuleNextPropertiesValue : Tea.TeaModel {
    public class Values : Tea.TeaModel {
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var code: String?

    public var values: [ModuleNextPropertiesValue.Values]?

    public override init() {
        super.init()
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
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["Values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Values"] as? [Any?] {
            var tmp : [ModuleNextPropertiesValue.Values] = []
            for v in value {
                if v != nil {
                    var model = ModuleNextPropertiesValue.Values()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.values = tmp
        }
    }
}

public class ModuleVersionsValueComponentsValue : Tea.TeaModel {
    public class InstanceProperty : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var code: String?

            public var value: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var code: String?

        public var name: String?

        public var value: String?

        public var values: [ModuleVersionsValueComponentsValue.InstanceProperty.Values]?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [ModuleVersionsValueComponentsValue.InstanceProperty.Values] = []
                for v in value {
                    if v != nil {
                        var model = ModuleVersionsValueComponentsValue.InstanceProperty.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var componentCode: String?

    public var componentName: String?

    public var instanceProperty: [ModuleVersionsValueComponentsValue.InstanceProperty]?

    public var properties: [String: ModuleVersionsValueComponentsValuePropertiesValue]?

    public var moduleAttrStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentCode != nil {
            map["ComponentCode"] = self.componentCode!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.instanceProperty != nil {
            var tmp : [Any] = []
            for k in self.instanceProperty! {
                tmp.append(k.toMap())
            }
            map["InstanceProperty"] = tmp
        }
        if self.properties != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.properties! {
                tmp[k] = v.toMap()
            }
            map["Properties"] = tmp
        }
        if self.moduleAttrStatus != nil {
            map["ModuleAttrStatus"] = self.moduleAttrStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentCode"] as? String {
            self.componentCode = value
        }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["InstanceProperty"] as? [Any?] {
            var tmp : [ModuleVersionsValueComponentsValue.InstanceProperty] = []
            for v in value {
                if v != nil {
                    var model = ModuleVersionsValueComponentsValue.InstanceProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceProperty = tmp
        }
        if let value = dict["Properties"] as? [String: Any?] {
            var tmp : [String: ModuleVersionsValueComponentsValuePropertiesValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ModuleVersionsValueComponentsValuePropertiesValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.properties = tmp
        }
        if let value = dict["ModuleAttrStatus"] as? Int32 {
            self.moduleAttrStatus = value
        }
    }
}

public class ModuleVersionsValueComponentsValuePropertiesValue : Tea.TeaModel {
    public class Values : Tea.TeaModel {
        public var code: String?

        public var value: String?

        public var name: String?

        public override init() {
            super.init()
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var name: String?

    public var value: String?

    public var values: [ModuleVersionsValueComponentsValuePropertiesValue.Values]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["Values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Values"] as? [Any?] {
            var tmp : [ModuleVersionsValueComponentsValuePropertiesValue.Values] = []
            for v in value {
                if v != nil {
                    var model = ModuleVersionsValueComponentsValuePropertiesValue.Values()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.values = tmp
        }
    }
}

public class ModuleDataComponentsValuePropertiesValue : Tea.TeaModel {
    public class Values : Tea.TeaModel {
        public var code: String?

        public var value: String?

        public var name: String?

        public override init() {
            super.init()
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var name: String?

    public var value: String?

    public var values: [ModuleDataComponentsValuePropertiesValue.Values]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["Values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Values"] as? [Any?] {
            var tmp : [ModuleDataComponentsValuePropertiesValue.Values] = []
            for v in value {
                if v != nil {
                    var model = ModuleDataComponentsValuePropertiesValue.Values()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.values = tmp
        }
    }
}

public class ModuleNextComponentsValuePropertiesValue : Tea.TeaModel {
    public class Values : Tea.TeaModel {
        public var code: String?

        public var value: String?

        public var name: String?

        public override init() {
            super.init()
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var name: String?

    public var value: String?

    public var values: [ModuleNextComponentsValuePropertiesValue.Values]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["Values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Values"] as? [Any?] {
            var tmp : [ModuleNextComponentsValuePropertiesValue.Values] = []
            for v in value {
                if v != nil {
                    var model = ModuleNextComponentsValuePropertiesValue.Values()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.values = tmp
        }
    }
}

public class AllocateSupabaseForAdminRequest : Tea.TeaModel {
    public var bizId: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AllocateSupabaseForAdminResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var anonKey: String?

        public var bizId: String?

        public var dbInstanceCreateTime: String?

        public var dbInstanceId: String?

        public var dbPublicUrl: String?

        public var dbType: String?

        public var extra: String?

        public var instanceCreateFinishedTime: String?

        public var instanceCreateStatus: String?

        public var isDeleted: Int32?

        public var rdsDatabasePassword: String?

        public var serviceKey: String?

        public var status: Int32?

        public var supabaseDashboardPassword: String?

        public var supabaseDashboardUserName: String?

        public var supabaseInstanceCreateTime: String?

        public var supabaseInstanceId: String?

        public var supabaseKongUrl: String?

        public var supabasePrivateIp: String?

        public var supabasePublicIp: String?

        public var supabasePublicUrl: String?

        public var tenantId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anonKey != nil {
                map["AnonKey"] = self.anonKey!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.dbInstanceCreateTime != nil {
                map["DbInstanceCreateTime"] = self.dbInstanceCreateTime!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.dbPublicUrl != nil {
                map["DbPublicUrl"] = self.dbPublicUrl!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.instanceCreateFinishedTime != nil {
                map["InstanceCreateFinishedTime"] = self.instanceCreateFinishedTime!
            }
            if self.instanceCreateStatus != nil {
                map["InstanceCreateStatus"] = self.instanceCreateStatus!
            }
            if self.isDeleted != nil {
                map["IsDeleted"] = self.isDeleted!
            }
            if self.rdsDatabasePassword != nil {
                map["RdsDatabasePassword"] = self.rdsDatabasePassword!
            }
            if self.serviceKey != nil {
                map["ServiceKey"] = self.serviceKey!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supabaseDashboardPassword != nil {
                map["SupabaseDashboardPassword"] = self.supabaseDashboardPassword!
            }
            if self.supabaseDashboardUserName != nil {
                map["SupabaseDashboardUserName"] = self.supabaseDashboardUserName!
            }
            if self.supabaseInstanceCreateTime != nil {
                map["SupabaseInstanceCreateTime"] = self.supabaseInstanceCreateTime!
            }
            if self.supabaseInstanceId != nil {
                map["SupabaseInstanceId"] = self.supabaseInstanceId!
            }
            if self.supabaseKongUrl != nil {
                map["SupabaseKongUrl"] = self.supabaseKongUrl!
            }
            if self.supabasePrivateIp != nil {
                map["SupabasePrivateIp"] = self.supabasePrivateIp!
            }
            if self.supabasePublicIp != nil {
                map["SupabasePublicIp"] = self.supabasePublicIp!
            }
            if self.supabasePublicUrl != nil {
                map["SupabasePublicUrl"] = self.supabasePublicUrl!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnonKey"] as? String {
                self.anonKey = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["DbInstanceCreateTime"] as? String {
                self.dbInstanceCreateTime = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbPublicUrl"] as? String {
                self.dbPublicUrl = value
            }
            if let value = dict["DbType"] as? String {
                self.dbType = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["InstanceCreateFinishedTime"] as? String {
                self.instanceCreateFinishedTime = value
            }
            if let value = dict["InstanceCreateStatus"] as? String {
                self.instanceCreateStatus = value
            }
            if let value = dict["IsDeleted"] as? Int32 {
                self.isDeleted = value
            }
            if let value = dict["RdsDatabasePassword"] as? String {
                self.rdsDatabasePassword = value
            }
            if let value = dict["ServiceKey"] as? String {
                self.serviceKey = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SupabaseDashboardPassword"] as? String {
                self.supabaseDashboardPassword = value
            }
            if let value = dict["SupabaseDashboardUserName"] as? String {
                self.supabaseDashboardUserName = value
            }
            if let value = dict["SupabaseInstanceCreateTime"] as? String {
                self.supabaseInstanceCreateTime = value
            }
            if let value = dict["SupabaseInstanceId"] as? String {
                self.supabaseInstanceId = value
            }
            if let value = dict["SupabaseKongUrl"] as? String {
                self.supabaseKongUrl = value
            }
            if let value = dict["SupabasePrivateIp"] as? String {
                self.supabasePrivateIp = value
            }
            if let value = dict["SupabasePublicIp"] as? String {
                self.supabasePublicIp = value
            }
            if let value = dict["SupabasePublicUrl"] as? String {
                self.supabasePublicUrl = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: AllocateSupabaseForAdminResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = AllocateSupabaseForAdminResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class AllocateSupabaseForAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateSupabaseForAdminResponseBody?

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
            var model = AllocateSupabaseForAdminResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchCheckResourceMeasureRequest : Tea.TeaModel {
    public var belongId: String?

    public var belongIdType: String?

    public var bizType: String?

    public var espBizId: String?

    public var orderComponentParams: String?

    public var resourceCheckItems: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.belongId != nil {
            map["BelongId"] = self.belongId!
        }
        if self.belongIdType != nil {
            map["BelongIdType"] = self.belongIdType!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.orderComponentParams != nil {
            map["OrderComponentParams"] = self.orderComponentParams!
        }
        if self.resourceCheckItems != nil {
            map["ResourceCheckItems"] = self.resourceCheckItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BelongId"] as? String {
            self.belongId = value
        }
        if let value = dict["BelongIdType"] as? String {
            self.belongIdType = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["OrderComponentParams"] as? String {
            self.orderComponentParams = value
        }
        if let value = dict["ResourceCheckItems"] as? String {
            self.resourceCheckItems = value
        }
    }
}

public class BatchCheckResourceMeasureResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var allPassed: Bool?

        public var results: [String: ModuleResultsValue]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allPassed != nil {
                map["AllPassed"] = self.allPassed!
            }
            if self.results != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.results! {
                    tmp[k] = v.toMap()
                }
                map["Results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllPassed"] as? Bool {
                self.allPassed = value
            }
            if let value = dict["Results"] as? [String: Any?] {
                var tmp : [String: ModuleResultsValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = ModuleResultsValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.results = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: BatchCheckResourceMeasureResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = BatchCheckResourceMeasureResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class BatchCheckResourceMeasureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCheckResourceMeasureResponseBody?

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
            var model = BatchCheckResourceMeasureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAppDomainRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public var extend: String?

    public var operateType: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
    }
}

public class BindAppDomainResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: BindAppDomainResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = BindAppDomainResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class BindAppDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAppDomainResponseBody?

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
            var model = BindAppDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckResourceMeasureRequest : Tea.TeaModel {
    public var belongId: String?

    public var belongIdType: String?

    public var bizType: String?

    public var espBizId: String?

    public var orderComponentParams: String?

    public var resourceCode: String?

    public var resourceValue: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.belongId != nil {
            map["BelongId"] = self.belongId!
        }
        if self.belongIdType != nil {
            map["BelongIdType"] = self.belongIdType!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.orderComponentParams != nil {
            map["OrderComponentParams"] = self.orderComponentParams!
        }
        if self.resourceCode != nil {
            map["ResourceCode"] = self.resourceCode!
        }
        if self.resourceValue != nil {
            map["ResourceValue"] = self.resourceValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BelongId"] as? String {
            self.belongId = value
        }
        if let value = dict["BelongIdType"] as? String {
            self.belongIdType = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["OrderComponentParams"] as? String {
            self.orderComponentParams = value
        }
        if let value = dict["ResourceCode"] as? String {
            self.resourceCode = value
        }
        if let value = dict["ResourceValue"] as? Int64 {
            self.resourceValue = value
        }
    }
}

public class CheckResourceMeasureResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var passed: Bool?

        public var resourceCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.resourceCode != nil {
                map["ResourceCode"] = self.resourceCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Passed"] as? Bool {
                self.passed = value
            }
            if let value = dict["ResourceCode"] as? String {
                self.resourceCode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CheckResourceMeasureResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CheckResourceMeasureResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CheckResourceMeasureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckResourceMeasureResponseBody?

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
            var model = CheckResourceMeasureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckUserResourceMeasureRequest : Tea.TeaModel {
    public var belongId: String?

    public var belongIdType: String?

    public var bizType: String?

    public var espBizId: String?

    public var orderComponentParams: String?

    public var resourceCode: String?

    public var resourceValue: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.belongId != nil {
            map["BelongId"] = self.belongId!
        }
        if self.belongIdType != nil {
            map["BelongIdType"] = self.belongIdType!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.espBizId != nil {
            map["EspBizId"] = self.espBizId!
        }
        if self.orderComponentParams != nil {
            map["OrderComponentParams"] = self.orderComponentParams!
        }
        if self.resourceCode != nil {
            map["ResourceCode"] = self.resourceCode!
        }
        if self.resourceValue != nil {
            map["ResourceValue"] = self.resourceValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BelongId"] as? String {
            self.belongId = value
        }
        if let value = dict["BelongIdType"] as? String {
            self.belongIdType = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["EspBizId"] as? String {
            self.espBizId = value
        }
        if let value = dict["OrderComponentParams"] as? String {
            self.orderComponentParams = value
        }
        if let value = dict["ResourceCode"] as? String {
            self.resourceCode = value
        }
        if let value = dict["ResourceValue"] as? Int64 {
            self.resourceValue = value
        }
    }
}

public class CheckUserResourceMeasureResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var passed: Bool?

        public var resourceCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.resourceCode != nil {
                map["ResourceCode"] = self.resourceCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Passed"] as? Bool {
                self.passed = value
            }
            if let value = dict["ResourceCode"] as? String {
                self.resourceCode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CheckUserResourceMeasureResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CheckUserResourceMeasureResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CheckUserResourceMeasureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUserResourceMeasureResponseBody?

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
            var model = CheckUserResourceMeasureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppAssistantAgentRequest : Tea.TeaModel {
    public var agentName: String?

    public var bizId: String?

    public var platformType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["PlatformType"] as? String {
            self.platformType = value
        }
    }
}

public class CreateAppAssistantAgentResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Credential : Tea.TeaModel {
            public var extra: [String: String]?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Extra"] as? [String: String] {
                    self.extra = value
                }
                if let value = dict["Username"] as? String {
                    self.username = value
                }
            }
        }
        public class EmbedConfig : Tea.TeaModel {
            public var extra: [String: String]?

            public var rawScript: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.rawScript != nil {
                    map["RawScript"] = self.rawScript!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Extra"] as? [String: String] {
                    self.extra = value
                }
                if let value = dict["RawScript"] as? String {
                    self.rawScript = value
                }
            }
        }
        public var agentId: String?

        public var agentName: String?

        public var bizId: String?

        public var credential: CreateAppAssistantAgentResponseBody.Module.Credential?

        public var embedConfig: CreateAppAssistantAgentResponseBody.Module.EmbedConfig?

        public var extraParams: [String: String]?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var platformAppId: String?

        public var platformType: String?

        public var status: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.credential?.validate()
            try self.embedConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["AgentId"] = self.agentId!
            }
            if self.agentName != nil {
                map["AgentName"] = self.agentName!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.credential != nil {
                map["Credential"] = self.credential?.toMap()
            }
            if self.embedConfig != nil {
                map["EmbedConfig"] = self.embedConfig?.toMap()
            }
            if self.extraParams != nil {
                map["ExtraParams"] = self.extraParams!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.platformAppId != nil {
                map["PlatformAppId"] = self.platformAppId!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentId"] as? String {
                self.agentId = value
            }
            if let value = dict["AgentName"] as? String {
                self.agentName = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["Credential"] as? [String: Any?] {
                var model = CreateAppAssistantAgentResponseBody.Module.Credential()
                model.fromMap(value)
                self.credential = model
            }
            if let value = dict["EmbedConfig"] as? [String: Any?] {
                var model = CreateAppAssistantAgentResponseBody.Module.EmbedConfig()
                model.fromMap(value)
                self.embedConfig = model
            }
            if let value = dict["ExtraParams"] as? [String: String] {
                self.extraParams = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["PlatformAppId"] as? String {
                self.platformAppId = value
            }
            if let value = dict["PlatformType"] as? String {
                self.platformType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CreateAppAssistantAgentResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateAppAssistantAgentResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateAppAssistantAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppAssistantAgentResponseBody?

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
            var model = CreateAppAssistantAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppAssistantAgentSsoLoginRequest : Tea.TeaModel {
    public var bizId: String?

    public var platformType: String?

    public var targetUrl: String?

    public override init() {
        super.init()
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
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.targetUrl != nil {
            map["TargetUrl"] = self.targetUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["PlatformType"] as? String {
            self.platformType = value
        }
        if let value = dict["TargetUrl"] as? String {
            self.targetUrl = value
        }
    }
}

public class CreateAppAssistantAgentSsoLoginResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var expireTime: Int64?

        public var extra: [String: String]?

        public var platformType: String?

        public var ssoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.ssoUrl != nil {
                map["SsoUrl"] = self.ssoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["Extra"] as? [String: String] {
                self.extra = value
            }
            if let value = dict["PlatformType"] as? String {
                self.platformType = value
            }
            if let value = dict["SsoUrl"] as? String {
                self.ssoUrl = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CreateAppAssistantAgentSsoLoginResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateAppAssistantAgentSsoLoginResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateAppAssistantAgentSsoLoginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppAssistantAgentSsoLoginResponseBody?

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
            var model = CreateAppAssistantAgentSsoLoginResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppInstanceRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var applicationType: String?

    public var autoRenew: Bool?

    public var clientToken: String?

    public var deployArea: String?

    public var duration: Int32?

    public var extend: String?

    public var paymentType: String?

    public var pricingCycle: String?

    public var quantity: Int32?

    public var resourceGroupId: String?

    public var siteVersion: String?

    public var tags: [CreateAppInstanceRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deployArea != nil {
            map["DeployArea"] = self.deployArea!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? String {
            self.applicationType = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeployArea"] as? String {
            self.deployArea = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["Quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SiteVersion"] as? String {
            self.siteVersion = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateAppInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateAppInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class CreateAppInstanceShrinkRequest : Tea.TeaModel {
    public var applicationType: String?

    public var autoRenew: Bool?

    public var clientToken: String?

    public var deployArea: String?

    public var duration: Int32?

    public var extend: String?

    public var paymentType: String?

    public var pricingCycle: String?

    public var quantity: Int32?

    public var resourceGroupId: String?

    public var siteVersion: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deployArea != nil {
            map["DeployArea"] = self.deployArea!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? String {
            self.applicationType = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeployArea"] as? String {
            self.deployArea = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["Quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SiteVersion"] as? String {
            self.siteVersion = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class CreateAppInstanceResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var bizId: String?

        public var instanceId: String?

        public var orderId: String?

        public var siteHost: String?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.siteHost != nil {
                map["SiteHost"] = self.siteHost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["SiteHost"] as? String {
                self.siteHost = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CreateAppInstanceResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateAppInstanceResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppInstanceResponseBody?

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
            var model = CreateAppInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppInstanceTicketRequest : Tea.TeaModel {
    public var bizId: String?

    public var clientId: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
    }
}

public class CreateAppInstanceTicketResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var accessTokenExpiresAt: String?

        public var accessTokenIssuedAt: String?

        public var accessTokenValue: String?

        public var aliyunPk: String?

        public var attributes: String?

        public var authorizationGrantType: String?

        public var bid: String?

        public var parentPk: String?

        public var refreshTokenExpiresAt: String?

        public var refreshTokenIssuedAt: String?

        public var refreshTokenValue: String?

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
            if self.accessTokenExpiresAt != nil {
                map["AccessTokenExpiresAt"] = self.accessTokenExpiresAt!
            }
            if self.accessTokenIssuedAt != nil {
                map["AccessTokenIssuedAt"] = self.accessTokenIssuedAt!
            }
            if self.accessTokenValue != nil {
                map["AccessTokenValue"] = self.accessTokenValue!
            }
            if self.aliyunPk != nil {
                map["AliyunPk"] = self.aliyunPk!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.authorizationGrantType != nil {
                map["AuthorizationGrantType"] = self.authorizationGrantType!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.parentPk != nil {
                map["ParentPk"] = self.parentPk!
            }
            if self.refreshTokenExpiresAt != nil {
                map["RefreshTokenExpiresAt"] = self.refreshTokenExpiresAt!
            }
            if self.refreshTokenIssuedAt != nil {
                map["RefreshTokenIssuedAt"] = self.refreshTokenIssuedAt!
            }
            if self.refreshTokenValue != nil {
                map["RefreshTokenValue"] = self.refreshTokenValue!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenExpiresAt"] as? String {
                self.accessTokenExpiresAt = value
            }
            if let value = dict["AccessTokenIssuedAt"] as? String {
                self.accessTokenIssuedAt = value
            }
            if let value = dict["AccessTokenValue"] as? String {
                self.accessTokenValue = value
            }
            if let value = dict["AliyunPk"] as? String {
                self.aliyunPk = value
            }
            if let value = dict["Attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["AuthorizationGrantType"] as? String {
                self.authorizationGrantType = value
            }
            if let value = dict["Bid"] as? String {
                self.bid = value
            }
            if let value = dict["ParentPk"] as? String {
                self.parentPk = value
            }
            if let value = dict["RefreshTokenExpiresAt"] as? String {
                self.refreshTokenExpiresAt = value
            }
            if let value = dict["RefreshTokenIssuedAt"] as? String {
                self.refreshTokenIssuedAt = value
            }
            if let value = dict["RefreshTokenValue"] as? String {
                self.refreshTokenValue = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CreateAppInstanceTicketResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateAppInstanceTicketResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateAppInstanceTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppInstanceTicketResponseBody?

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
            var model = CreateAppInstanceTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppTokenServiceRequest : Tea.TeaModel {
    public var createAction: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createAction != nil {
            map["CreateAction"] = self.createAction!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateAction"] as? String {
            self.createAction = value
        }
    }
}

public class CreateAppTokenServiceResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var extInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtInfo"] as? String {
                self.extInfo = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: CreateAppTokenServiceResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateAppTokenServiceResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateAppTokenServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppTokenServiceResponseBody?

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
            var model = CreateAppTokenServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLogoTaskRequest : Tea.TeaModel {
    public var logoVersion: String?

    public var negativePrompt: String?

    public var parameters: String?

    public var prompt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logoVersion != nil {
            map["LogoVersion"] = self.logoVersion!
        }
        if self.negativePrompt != nil {
            map["NegativePrompt"] = self.negativePrompt!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogoVersion"] as? String {
            self.logoVersion = value
        }
        if let value = dict["NegativePrompt"] as? String {
            self.negativePrompt = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
    }
}

public class CreateLogoTaskResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateLogoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogoTaskResponseBody?

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
            var model = CreateLogoTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMaterialDirectoryRequest : Tea.TeaModel {
    public var bizId: String?

    public var name: String?

    public var parentDirectoryId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentDirectoryId != nil {
            map["ParentDirectoryId"] = self.parentDirectoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
    }
}

public class CreateMaterialDirectoryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var directoryId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var module: CreateMaterialDirectoryResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateMaterialDirectoryResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class CreateMaterialDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMaterialDirectoryResponseBody?

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
            var model = CreateMaterialDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppDomainCertificateRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
    }
}

public class DeleteAppDomainCertificateResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: DeleteAppDomainCertificateResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = DeleteAppDomainCertificateResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DeleteAppDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppDomainCertificateResponseBody?

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
            var model = DeleteAppDomainCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppDomainRedirectRequest : Tea.TeaModel {
    public var bizId: String?

    public var recordId: Int64?

    public override init() {
        super.init()
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
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
    }
}

public class DeleteAppDomainRedirectResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: DeleteAppDomainRedirectResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = DeleteAppDomainRedirectResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DeleteAppDomainRedirectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppDomainRedirectResponseBody?

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
            var model = DeleteAppDomainRedirectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMaterialDirectoryRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
    }
}

public class DeleteMaterialDirectoryResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DeleteMaterialDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMaterialDirectoryResponseBody?

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
            var model = DeleteMaterialDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMaterialTaskRequest : Tea.TeaModel {
    public var taskIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskIds != nil {
            map["TaskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskIds"] as? [String] {
            self.taskIds = value
        }
    }
}

public class DeleteMaterialTaskShrinkRequest : Tea.TeaModel {
    public var taskIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskIdsShrink != nil {
            map["TaskIds"] = self.taskIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskIds"] as? String {
            self.taskIdsShrink = value
        }
    }
}

public class DeleteMaterialTaskResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DeleteMaterialTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMaterialTaskResponseBody?

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
            var model = DeleteMaterialTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppDomainDnsRecordRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public var purpose: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.purpose != nil {
            map["Purpose"] = self.purpose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Purpose"] as? String {
            self.purpose = value
        }
    }
}

public class DescribeAppDomainDnsRecordResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var host: String?

        public var recordType: String?

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
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.recordType != nil {
                map["RecordType"] = self.recordType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["RecordType"] as? String {
                self.recordType = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: DescribeAppDomainDnsRecordResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = DescribeAppDomainDnsRecordResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DescribeAppDomainDnsRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppDomainDnsRecordResponseBody?

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
            var model = DescribeAppDomainDnsRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DispatchConsoleAPIForPartnerRequest : Tea.TeaModel {
    public var liveToken: String?

    public var operation: String?

    public var params: String?

    public var product: String?

    public var siteHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.liveToken != nil {
            map["LiveToken"] = self.liveToken!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.siteHost != nil {
            map["SiteHost"] = self.siteHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LiveToken"] as? String {
            self.liveToken = value
        }
        if let value = dict["Operation"] as? String {
            self.operation = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["SiteHost"] as? String {
            self.siteHost = value
        }
    }
}

public class DispatchConsoleAPIForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
        }
    }
    public var errorCode: String?

    public var module: DispatchConsoleAPIForPartnerResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = DispatchConsoleAPIForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DispatchConsoleAPIForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DispatchConsoleAPIForPartnerResponseBody?

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
            var model = DispatchConsoleAPIForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditPluginConfigRequest : Tea.TeaModel {
    public var bizId: String?

    public var pluginConfig: String?

    public var pluginDesc: String?

    public var pluginId: String?

    public var pluginName: String?

    public override init() {
        super.init()
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
        if self.pluginConfig != nil {
            map["PluginConfig"] = self.pluginConfig!
        }
        if self.pluginDesc != nil {
            map["PluginDesc"] = self.pluginDesc!
        }
        if self.pluginId != nil {
            map["PluginId"] = self.pluginId!
        }
        if self.pluginName != nil {
            map["PluginName"] = self.pluginName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["PluginConfig"] as? String {
            self.pluginConfig = value
        }
        if let value = dict["PluginDesc"] as? String {
            self.pluginDesc = value
        }
        if let value = dict["PluginId"] as? String {
            self.pluginId = value
        }
        if let value = dict["PluginName"] as? String {
            self.pluginName = value
        }
    }
}

public class EditPluginConfigResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class EditPluginConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditPluginConfigResponseBody?

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
            var model = EditPluginConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportMaterialFileRequest : Tea.TeaModel {
    public var bizId: String?

    public var fileIds: [String]?

    public override init() {
        super.init()
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
        if self.fileIds != nil {
            map["FileIds"] = self.fileIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["FileIds"] as? [String] {
            self.fileIds = value
        }
    }
}

public class ExportMaterialFileShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var fileIdsShrink: String?

    public override init() {
        super.init()
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
        if self.fileIdsShrink != nil {
            map["FileIds"] = self.fileIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["FileIds"] as? String {
            self.fileIdsShrink = value
        }
    }
}

public class ExportMaterialFileResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var fileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: ExportMaterialFileResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ExportMaterialFileResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ExportMaterialFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportMaterialFileResponseBody?

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
            var model = ExportMaterialFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppInstanceRequest : Tea.TeaModel {
    public var bizId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
    }
}

public class GetAppInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: AppInstanceAggregate?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = AppInstanceAggregate()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class GetAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppInstanceResponseBody?

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
            var model = GetAppInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppInstanceForAdminRequest : Tea.TeaModel {
    public var bizId: String?

    public var domain: String?

    public override init() {
        super.init()
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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class GetAppInstanceForAdminResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: AppInstanceAggregate?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = AppInstanceAggregate()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class GetAppInstanceForAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppInstanceForAdminResponseBody?

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
            var model = GetAppInstanceForAdminResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppInstanceForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
    }
}

public class GetAppInstanceForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class AiStaffList : Tea.TeaModel {
            public var staffId: String?

            public var staffName: String?

            public var staffType: String?

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
                if self.staffId != nil {
                    map["StaffId"] = self.staffId!
                }
                if self.staffName != nil {
                    map["StaffName"] = self.staffName!
                }
                if self.staffType != nil {
                    map["StaffType"] = self.staffType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StaffId"] as? String {
                    self.staffId = value
                }
                if let value = dict["StaffName"] as? String {
                    self.staffName = value
                }
                if let value = dict["StaffType"] as? String {
                    self.staffType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class AppDesignSpec : Tea.TeaModel {
            public var bilingual: Bool?

            public var bizId: String?

            public var businessScope: String?

            public var colorStyle: String?

            public var companyName: String?

            public var deployArea: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var mainBusiness: String?

            public var referenceWebsite: String?

            public var siteGoals: String?

            public var siteLanguage: String?

            public var siteLogo: String?

            public var siteSlogan: String?

            public var siteStyle: String?

            public var siteTitle: String?

            public var siteType: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bilingual != nil {
                    map["Bilingual"] = self.bilingual!
                }
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.businessScope != nil {
                    map["BusinessScope"] = self.businessScope!
                }
                if self.colorStyle != nil {
                    map["ColorStyle"] = self.colorStyle!
                }
                if self.companyName != nil {
                    map["CompanyName"] = self.companyName!
                }
                if self.deployArea != nil {
                    map["DeployArea"] = self.deployArea!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.mainBusiness != nil {
                    map["MainBusiness"] = self.mainBusiness!
                }
                if self.referenceWebsite != nil {
                    map["ReferenceWebsite"] = self.referenceWebsite!
                }
                if self.siteGoals != nil {
                    map["SiteGoals"] = self.siteGoals!
                }
                if self.siteLanguage != nil {
                    map["SiteLanguage"] = self.siteLanguage!
                }
                if self.siteLogo != nil {
                    map["SiteLogo"] = self.siteLogo!
                }
                if self.siteSlogan != nil {
                    map["SiteSlogan"] = self.siteSlogan!
                }
                if self.siteStyle != nil {
                    map["SiteStyle"] = self.siteStyle!
                }
                if self.siteTitle != nil {
                    map["SiteTitle"] = self.siteTitle!
                }
                if self.siteType != nil {
                    map["SiteType"] = self.siteType!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bilingual"] as? Bool {
                    self.bilingual = value
                }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["BusinessScope"] as? String {
                    self.businessScope = value
                }
                if let value = dict["ColorStyle"] as? String {
                    self.colorStyle = value
                }
                if let value = dict["CompanyName"] as? String {
                    self.companyName = value
                }
                if let value = dict["DeployArea"] as? String {
                    self.deployArea = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["MainBusiness"] as? String {
                    self.mainBusiness = value
                }
                if let value = dict["ReferenceWebsite"] as? String {
                    self.referenceWebsite = value
                }
                if let value = dict["SiteGoals"] as? String {
                    self.siteGoals = value
                }
                if let value = dict["SiteLanguage"] as? String {
                    self.siteLanguage = value
                }
                if let value = dict["SiteLogo"] as? String {
                    self.siteLogo = value
                }
                if let value = dict["SiteSlogan"] as? String {
                    self.siteSlogan = value
                }
                if let value = dict["SiteStyle"] as? String {
                    self.siteStyle = value
                }
                if let value = dict["SiteTitle"] as? String {
                    self.siteTitle = value
                }
                if let value = dict["SiteType"] as? String {
                    self.siteType = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public class AppOperationAddress : Tea.TeaModel {
            public class Actions : Tea.TeaModel {
                public var actionKey: String?

                public var actionText: String?

                public var enable: Bool?

                public var href: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actionKey != nil {
                        map["ActionKey"] = self.actionKey!
                    }
                    if self.actionText != nil {
                        map["ActionText"] = self.actionText!
                    }
                    if self.enable != nil {
                        map["Enable"] = self.enable!
                    }
                    if self.href != nil {
                        map["Href"] = self.href!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActionKey"] as? String {
                        self.actionKey = value
                    }
                    if let value = dict["ActionText"] as? String {
                        self.actionText = value
                    }
                    if let value = dict["Enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["Href"] as? String {
                        self.href = value
                    }
                }
            }
            public class DashboardActions : Tea.TeaModel {
                public var actionKey: String?

                public var actionText: String?

                public var enable: Bool?

                public var href: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actionKey != nil {
                        map["ActionKey"] = self.actionKey!
                    }
                    if self.actionText != nil {
                        map["ActionText"] = self.actionText!
                    }
                    if self.enable != nil {
                        map["Enable"] = self.enable!
                    }
                    if self.href != nil {
                        map["Href"] = self.href!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActionKey"] as? String {
                        self.actionKey = value
                    }
                    if let value = dict["ActionText"] as? String {
                        self.actionText = value
                    }
                    if let value = dict["Enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["Href"] as? String {
                        self.href = value
                    }
                }
            }
            public var actions: [GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress.Actions]?

            public var aiCustomerConfigUrl: String?

            public var aiDesignUrl: String?

            public var appPublishUrl: String?

            public var dashboardActions: [GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress.DashboardActions]?

            public var designUrl: String?

            public var instanceLoginUrl: String?

            public var renewBuyUrl: String?

            public var serverDeliveryUrl: String?

            public var upgradeBuyUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actions != nil {
                    var tmp : [Any] = []
                    for k in self.actions! {
                        tmp.append(k.toMap())
                    }
                    map["Actions"] = tmp
                }
                if self.aiCustomerConfigUrl != nil {
                    map["AiCustomerConfigUrl"] = self.aiCustomerConfigUrl!
                }
                if self.aiDesignUrl != nil {
                    map["AiDesignUrl"] = self.aiDesignUrl!
                }
                if self.appPublishUrl != nil {
                    map["AppPublishUrl"] = self.appPublishUrl!
                }
                if self.dashboardActions != nil {
                    var tmp : [Any] = []
                    for k in self.dashboardActions! {
                        tmp.append(k.toMap())
                    }
                    map["DashboardActions"] = tmp
                }
                if self.designUrl != nil {
                    map["DesignUrl"] = self.designUrl!
                }
                if self.instanceLoginUrl != nil {
                    map["InstanceLoginUrl"] = self.instanceLoginUrl!
                }
                if self.renewBuyUrl != nil {
                    map["RenewBuyUrl"] = self.renewBuyUrl!
                }
                if self.serverDeliveryUrl != nil {
                    map["ServerDeliveryUrl"] = self.serverDeliveryUrl!
                }
                if self.upgradeBuyUrl != nil {
                    map["UpgradeBuyUrl"] = self.upgradeBuyUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Actions"] as? [Any?] {
                    var tmp : [GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress.Actions] = []
                    for v in value {
                        if v != nil {
                            var model = GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress.Actions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.actions = tmp
                }
                if let value = dict["AiCustomerConfigUrl"] as? String {
                    self.aiCustomerConfigUrl = value
                }
                if let value = dict["AiDesignUrl"] as? String {
                    self.aiDesignUrl = value
                }
                if let value = dict["AppPublishUrl"] as? String {
                    self.appPublishUrl = value
                }
                if let value = dict["DashboardActions"] as? [Any?] {
                    var tmp : [GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress.DashboardActions] = []
                    for v in value {
                        if v != nil {
                            var model = GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress.DashboardActions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dashboardActions = tmp
                }
                if let value = dict["DesignUrl"] as? String {
                    self.designUrl = value
                }
                if let value = dict["InstanceLoginUrl"] as? String {
                    self.instanceLoginUrl = value
                }
                if let value = dict["RenewBuyUrl"] as? String {
                    self.renewBuyUrl = value
                }
                if let value = dict["ServerDeliveryUrl"] as? String {
                    self.serverDeliveryUrl = value
                }
                if let value = dict["UpgradeBuyUrl"] as? String {
                    self.upgradeBuyUrl = value
                }
            }
        }
        public class AppServiceList : Tea.TeaModel {
            public class Group : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public var qrCode: String?

                public var type: String?

                public var url: String?

                public override init() {
                    super.init()
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
                    if self.qrCode != nil {
                        map["QrCode"] = self.qrCode!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["QrCode"] as? String {
                        self.qrCode = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
                    }
                }
            }
            public class NodeList : Tea.TeaModel {
                public var children: [Any]?

                public var finalStepNo: Int32?

                public var finishTime: Int64?

                public var isContainerNode: Bool?

                public var nodeId: String?

                public var nodeName: String?

                public var nodeStatus: String?

                public var operatorRole: String?

                public var parentNodeId: String?

                public var stepNo: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.children != nil {
                        map["Children"] = self.children!
                    }
                    if self.finalStepNo != nil {
                        map["FinalStepNo"] = self.finalStepNo!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.isContainerNode != nil {
                        map["IsContainerNode"] = self.isContainerNode!
                    }
                    if self.nodeId != nil {
                        map["NodeId"] = self.nodeId!
                    }
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    if self.nodeStatus != nil {
                        map["NodeStatus"] = self.nodeStatus!
                    }
                    if self.operatorRole != nil {
                        map["OperatorRole"] = self.operatorRole!
                    }
                    if self.parentNodeId != nil {
                        map["ParentNodeId"] = self.parentNodeId!
                    }
                    if self.stepNo != nil {
                        map["StepNo"] = self.stepNo!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Children"] as? [Any] {
                        self.children = value
                    }
                    if let value = dict["FinalStepNo"] as? Int32 {
                        self.finalStepNo = value
                    }
                    if let value = dict["FinishTime"] as? Int64 {
                        self.finishTime = value
                    }
                    if let value = dict["IsContainerNode"] as? Bool {
                        self.isContainerNode = value
                    }
                    if let value = dict["NodeId"] as? String {
                        self.nodeId = value
                    }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                    if let value = dict["NodeStatus"] as? String {
                        self.nodeStatus = value
                    }
                    if let value = dict["OperatorRole"] as? String {
                        self.operatorRole = value
                    }
                    if let value = dict["ParentNodeId"] as? String {
                        self.parentNodeId = value
                    }
                    if let value = dict["StepNo"] as? Int32 {
                        self.stepNo = value
                    }
                }
            }
            public class OperationAddress : Tea.TeaModel {
                public class Actions : Tea.TeaModel {
                    public var actionKey: String?

                    public var actionText: String?

                    public var enable: Bool?

                    public var href: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.actionKey != nil {
                            map["ActionKey"] = self.actionKey!
                        }
                        if self.actionText != nil {
                            map["ActionText"] = self.actionText!
                        }
                        if self.enable != nil {
                            map["Enable"] = self.enable!
                        }
                        if self.href != nil {
                            map["Href"] = self.href!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ActionKey"] as? String {
                            self.actionKey = value
                        }
                        if let value = dict["ActionText"] as? String {
                            self.actionText = value
                        }
                        if let value = dict["Enable"] as? Bool {
                            self.enable = value
                        }
                        if let value = dict["Href"] as? String {
                            self.href = value
                        }
                    }
                }
                public class DashboardActions : Tea.TeaModel {
                    public var actionKey: String?

                    public var actionText: String?

                    public var enable: Bool?

                    public var href: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.actionKey != nil {
                            map["ActionKey"] = self.actionKey!
                        }
                        if self.actionText != nil {
                            map["ActionText"] = self.actionText!
                        }
                        if self.enable != nil {
                            map["Enable"] = self.enable!
                        }
                        if self.href != nil {
                            map["Href"] = self.href!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ActionKey"] as? String {
                            self.actionKey = value
                        }
                        if let value = dict["ActionText"] as? String {
                            self.actionText = value
                        }
                        if let value = dict["Enable"] as? Bool {
                            self.enable = value
                        }
                        if let value = dict["Href"] as? String {
                            self.href = value
                        }
                    }
                }
                public var actions: [GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress.Actions]?

                public var aiCustomerConfigUrl: String?

                public var aiDesignUrl: String?

                public var appPublishUrl: String?

                public var dashboardActions: [GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress.DashboardActions]?

                public var designUrl: String?

                public var instanceLoginUrl: String?

                public var renewBuyUrl: String?

                public var serverDeliveryUrl: String?

                public var upgradeBuyUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actions != nil {
                        var tmp : [Any] = []
                        for k in self.actions! {
                            tmp.append(k.toMap())
                        }
                        map["Actions"] = tmp
                    }
                    if self.aiCustomerConfigUrl != nil {
                        map["AiCustomerConfigUrl"] = self.aiCustomerConfigUrl!
                    }
                    if self.aiDesignUrl != nil {
                        map["AiDesignUrl"] = self.aiDesignUrl!
                    }
                    if self.appPublishUrl != nil {
                        map["AppPublishUrl"] = self.appPublishUrl!
                    }
                    if self.dashboardActions != nil {
                        var tmp : [Any] = []
                        for k in self.dashboardActions! {
                            tmp.append(k.toMap())
                        }
                        map["DashboardActions"] = tmp
                    }
                    if self.designUrl != nil {
                        map["DesignUrl"] = self.designUrl!
                    }
                    if self.instanceLoginUrl != nil {
                        map["InstanceLoginUrl"] = self.instanceLoginUrl!
                    }
                    if self.renewBuyUrl != nil {
                        map["RenewBuyUrl"] = self.renewBuyUrl!
                    }
                    if self.serverDeliveryUrl != nil {
                        map["ServerDeliveryUrl"] = self.serverDeliveryUrl!
                    }
                    if self.upgradeBuyUrl != nil {
                        map["UpgradeBuyUrl"] = self.upgradeBuyUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Actions"] as? [Any?] {
                        var tmp : [GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress.Actions] = []
                        for v in value {
                            if v != nil {
                                var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress.Actions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.actions = tmp
                    }
                    if let value = dict["AiCustomerConfigUrl"] as? String {
                        self.aiCustomerConfigUrl = value
                    }
                    if let value = dict["AiDesignUrl"] as? String {
                        self.aiDesignUrl = value
                    }
                    if let value = dict["AppPublishUrl"] as? String {
                        self.appPublishUrl = value
                    }
                    if let value = dict["DashboardActions"] as? [Any?] {
                        var tmp : [GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress.DashboardActions] = []
                        for v in value {
                            if v != nil {
                                var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress.DashboardActions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dashboardActions = tmp
                    }
                    if let value = dict["DesignUrl"] as? String {
                        self.designUrl = value
                    }
                    if let value = dict["InstanceLoginUrl"] as? String {
                        self.instanceLoginUrl = value
                    }
                    if let value = dict["RenewBuyUrl"] as? String {
                        self.renewBuyUrl = value
                    }
                    if let value = dict["ServerDeliveryUrl"] as? String {
                        self.serverDeliveryUrl = value
                    }
                    if let value = dict["UpgradeBuyUrl"] as? String {
                        self.upgradeBuyUrl = value
                    }
                }
            }
            public class Profile : Tea.TeaModel {
                public var bizId: String?

                public var designType: String?

                public var designTypeText: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var id: String?

                public var lxInstanceId: String?

                public var orderId: String?

                public var serviceSpec: String?

                public var serviceSpecText: String?

                public override init() {
                    super.init()
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
                    if self.designType != nil {
                        map["DesignType"] = self.designType!
                    }
                    if self.designTypeText != nil {
                        map["DesignTypeText"] = self.designTypeText!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.lxInstanceId != nil {
                        map["LxInstanceId"] = self.lxInstanceId!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.serviceSpec != nil {
                        map["ServiceSpec"] = self.serviceSpec!
                    }
                    if self.serviceSpecText != nil {
                        map["ServiceSpecText"] = self.serviceSpecText!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BizId"] as? String {
                        self.bizId = value
                    }
                    if let value = dict["DesignType"] as? String {
                        self.designType = value
                    }
                    if let value = dict["DesignTypeText"] as? String {
                        self.designTypeText = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["LxInstanceId"] as? String {
                        self.lxInstanceId = value
                    }
                    if let value = dict["OrderId"] as? String {
                        self.orderId = value
                    }
                    if let value = dict["ServiceSpec"] as? String {
                        self.serviceSpec = value
                    }
                    if let value = dict["ServiceSpecText"] as? String {
                        self.serviceSpecText = value
                    }
                }
            }
            public var bizId: String?

            public var deleted: Int32?

            public var endTime: String?

            public var espBizId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var group: GetAppInstanceForPartnerResponseBody.Module.AppServiceList.Group?

            public var instanceBizId: String?

            public var name: String?

            public var nodeList: [GetAppInstanceForPartnerResponseBody.Module.AppServiceList.NodeList]?

            public var operationAddress: GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress?

            public var orderId: String?

            public var profile: GetAppInstanceForPartnerResponseBody.Module.AppServiceList.Profile?

            public var serviceType: String?

            public var serviceTypeText: String?

            public var slug: String?

            public var startTime: String?

            public var status: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.group?.validate()
                try self.operationAddress?.validate()
                try self.profile?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.espBizId != nil {
                    map["EspBizId"] = self.espBizId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.group != nil {
                    map["Group"] = self.group?.toMap()
                }
                if self.instanceBizId != nil {
                    map["InstanceBizId"] = self.instanceBizId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeList != nil {
                    var tmp : [Any] = []
                    for k in self.nodeList! {
                        tmp.append(k.toMap())
                    }
                    map["NodeList"] = tmp
                }
                if self.operationAddress != nil {
                    map["OperationAddress"] = self.operationAddress?.toMap()
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile?.toMap()
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.serviceTypeText != nil {
                    map["ServiceTypeText"] = self.serviceTypeText!
                }
                if self.slug != nil {
                    map["Slug"] = self.slug!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["Deleted"] as? Int32 {
                    self.deleted = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["EspBizId"] as? String {
                    self.espBizId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Group"] as? [String: Any?] {
                    var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList.Group()
                    model.fromMap(value)
                    self.group = model
                }
                if let value = dict["InstanceBizId"] as? String {
                    self.instanceBizId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NodeList"] as? [Any?] {
                    var tmp : [GetAppInstanceForPartnerResponseBody.Module.AppServiceList.NodeList] = []
                    for v in value {
                        if v != nil {
                            var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList.NodeList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nodeList = tmp
                }
                if let value = dict["OperationAddress"] as? [String: Any?] {
                    var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList.OperationAddress()
                    model.fromMap(value)
                    self.operationAddress = model
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["Profile"] as? [String: Any?] {
                    var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList.Profile()
                    model.fromMap(value)
                    self.profile = model
                }
                if let value = dict["ServiceType"] as? String {
                    self.serviceType = value
                }
                if let value = dict["ServiceTypeText"] as? String {
                    self.serviceTypeText = value
                }
                if let value = dict["Slug"] as? String {
                    self.slug = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public class PartnerDetail : Tea.TeaModel {
            public class BindData : Tea.TeaModel {
                public var aliyunPk: String?

                public var bizId: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var grantAliyunPk: String?

                public var mobile: String?

                public var parentPk: String?

                public var partnerId: String?

                public var userDisplayName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.aliyunPk != nil {
                        map["AliyunPk"] = self.aliyunPk!
                    }
                    if self.bizId != nil {
                        map["BizId"] = self.bizId!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.grantAliyunPk != nil {
                        map["GrantAliyunPk"] = self.grantAliyunPk!
                    }
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.parentPk != nil {
                        map["ParentPk"] = self.parentPk!
                    }
                    if self.partnerId != nil {
                        map["PartnerId"] = self.partnerId!
                    }
                    if self.userDisplayName != nil {
                        map["UserDisplayName"] = self.userDisplayName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AliyunPk"] as? String {
                        self.aliyunPk = value
                    }
                    if let value = dict["BizId"] as? String {
                        self.bizId = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["GrantAliyunPk"] as? String {
                        self.grantAliyunPk = value
                    }
                    if let value = dict["Mobile"] as? String {
                        self.mobile = value
                    }
                    if let value = dict["ParentPk"] as? String {
                        self.parentPk = value
                    }
                    if let value = dict["PartnerId"] as? String {
                        self.partnerId = value
                    }
                    if let value = dict["UserDisplayName"] as? String {
                        self.userDisplayName = value
                    }
                }
            }
            public var bindData: GetAppInstanceForPartnerResponseBody.Module.PartnerDetail.BindData?

            public var partnerId: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bindData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindData != nil {
                    map["BindData"] = self.bindData?.toMap()
                }
                if self.partnerId != nil {
                    map["PartnerId"] = self.partnerId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindData"] as? [String: Any?] {
                    var model = GetAppInstanceForPartnerResponseBody.Module.PartnerDetail.BindData()
                    model.fromMap(value)
                    self.bindData = model
                }
                if let value = dict["PartnerId"] as? String {
                    self.partnerId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class Profile : Tea.TeaModel {
            public var adminUrl: String?

            public var applicationType: String?

            public var applicationTypeText: String?

            public var bindCname: String?

            public var bizId: String?

            public var commodityCode: String?

            public var customerService: String?

            public var deployArea: String?

            public var domainList: String?

            public var editorUrl: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var icpbaNo: String?

            public var imageList: String?

            public var lxInstanceId: String?

            public var ordTime: String?

            public var orderId: String?

            public var orderNum: Int32?

            public var partnerId: String?

            public var payTime: String?

            public var previewUrl: String?

            public var seoSite: String?

            public var siteLogo: String?

            public var siteVersion: String?

            public var siteVersionText: String?

            public var source: String?

            public var templateEtag: String?

            public var templateId: String?

            public var textList: String?

            public var thumbnail: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adminUrl != nil {
                    map["AdminUrl"] = self.adminUrl!
                }
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.applicationTypeText != nil {
                    map["ApplicationTypeText"] = self.applicationTypeText!
                }
                if self.bindCname != nil {
                    map["BindCname"] = self.bindCname!
                }
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.customerService != nil {
                    map["CustomerService"] = self.customerService!
                }
                if self.deployArea != nil {
                    map["DeployArea"] = self.deployArea!
                }
                if self.domainList != nil {
                    map["DomainList"] = self.domainList!
                }
                if self.editorUrl != nil {
                    map["EditorUrl"] = self.editorUrl!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.icpbaNo != nil {
                    map["IcpbaNo"] = self.icpbaNo!
                }
                if self.imageList != nil {
                    map["ImageList"] = self.imageList!
                }
                if self.lxInstanceId != nil {
                    map["LxInstanceId"] = self.lxInstanceId!
                }
                if self.ordTime != nil {
                    map["OrdTime"] = self.ordTime!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderNum != nil {
                    map["OrderNum"] = self.orderNum!
                }
                if self.partnerId != nil {
                    map["PartnerId"] = self.partnerId!
                }
                if self.payTime != nil {
                    map["PayTime"] = self.payTime!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                if self.seoSite != nil {
                    map["SeoSite"] = self.seoSite!
                }
                if self.siteLogo != nil {
                    map["SiteLogo"] = self.siteLogo!
                }
                if self.siteVersion != nil {
                    map["SiteVersion"] = self.siteVersion!
                }
                if self.siteVersionText != nil {
                    map["SiteVersionText"] = self.siteVersionText!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.templateEtag != nil {
                    map["TemplateEtag"] = self.templateEtag!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.textList != nil {
                    map["TextList"] = self.textList!
                }
                if self.thumbnail != nil {
                    map["Thumbnail"] = self.thumbnail!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdminUrl"] as? String {
                    self.adminUrl = value
                }
                if let value = dict["ApplicationType"] as? String {
                    self.applicationType = value
                }
                if let value = dict["ApplicationTypeText"] as? String {
                    self.applicationTypeText = value
                }
                if let value = dict["BindCname"] as? String {
                    self.bindCname = value
                }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["CustomerService"] as? String {
                    self.customerService = value
                }
                if let value = dict["DeployArea"] as? String {
                    self.deployArea = value
                }
                if let value = dict["DomainList"] as? String {
                    self.domainList = value
                }
                if let value = dict["EditorUrl"] as? String {
                    self.editorUrl = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["IcpbaNo"] as? String {
                    self.icpbaNo = value
                }
                if let value = dict["ImageList"] as? String {
                    self.imageList = value
                }
                if let value = dict["LxInstanceId"] as? String {
                    self.lxInstanceId = value
                }
                if let value = dict["OrdTime"] as? String {
                    self.ordTime = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["OrderNum"] as? Int32 {
                    self.orderNum = value
                }
                if let value = dict["PartnerId"] as? String {
                    self.partnerId = value
                }
                if let value = dict["PayTime"] as? String {
                    self.payTime = value
                }
                if let value = dict["PreviewUrl"] as? String {
                    self.previewUrl = value
                }
                if let value = dict["SeoSite"] as? String {
                    self.seoSite = value
                }
                if let value = dict["SiteLogo"] as? String {
                    self.siteLogo = value
                }
                if let value = dict["SiteVersion"] as? String {
                    self.siteVersion = value
                }
                if let value = dict["SiteVersionText"] as? String {
                    self.siteVersionText = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["TemplateEtag"] as? String {
                    self.templateEtag = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TextList"] as? String {
                    self.textList = value
                }
                if let value = dict["Thumbnail"] as? String {
                    self.thumbnail = value
                }
            }
        }
        public class RelatedInstanceList : Tea.TeaModel {
            public class Profile : Tea.TeaModel {
                public var adminUrl: String?

                public var applicationType: String?

                public var applicationTypeText: String?

                public var bindCname: String?

                public var bizId: String?

                public var commodityCode: String?

                public var customerService: String?

                public var deployArea: String?

                public var domainList: String?

                public var editorUrl: String?

                public var gmtCreate: String?

                public var gmtModified: String?

                public var icpbaNo: String?

                public var imageList: String?

                public var lxInstanceId: String?

                public var ordTime: String?

                public var orderId: String?

                public var orderNum: Int32?

                public var partnerId: String?

                public var payTime: String?

                public var previewUrl: String?

                public var seoSite: String?

                public var siteLogo: String?

                public var siteVersion: String?

                public var siteVersionText: String?

                public var source: String?

                public var templateEtag: String?

                public var templateId: String?

                public var textList: String?

                public var thumbnail: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adminUrl != nil {
                        map["AdminUrl"] = self.adminUrl!
                    }
                    if self.applicationType != nil {
                        map["ApplicationType"] = self.applicationType!
                    }
                    if self.applicationTypeText != nil {
                        map["ApplicationTypeText"] = self.applicationTypeText!
                    }
                    if self.bindCname != nil {
                        map["BindCname"] = self.bindCname!
                    }
                    if self.bizId != nil {
                        map["BizId"] = self.bizId!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.customerService != nil {
                        map["CustomerService"] = self.customerService!
                    }
                    if self.deployArea != nil {
                        map["DeployArea"] = self.deployArea!
                    }
                    if self.domainList != nil {
                        map["DomainList"] = self.domainList!
                    }
                    if self.editorUrl != nil {
                        map["EditorUrl"] = self.editorUrl!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.icpbaNo != nil {
                        map["IcpbaNo"] = self.icpbaNo!
                    }
                    if self.imageList != nil {
                        map["ImageList"] = self.imageList!
                    }
                    if self.lxInstanceId != nil {
                        map["LxInstanceId"] = self.lxInstanceId!
                    }
                    if self.ordTime != nil {
                        map["OrdTime"] = self.ordTime!
                    }
                    if self.orderId != nil {
                        map["OrderId"] = self.orderId!
                    }
                    if self.orderNum != nil {
                        map["OrderNum"] = self.orderNum!
                    }
                    if self.partnerId != nil {
                        map["PartnerId"] = self.partnerId!
                    }
                    if self.payTime != nil {
                        map["PayTime"] = self.payTime!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.seoSite != nil {
                        map["SeoSite"] = self.seoSite!
                    }
                    if self.siteLogo != nil {
                        map["SiteLogo"] = self.siteLogo!
                    }
                    if self.siteVersion != nil {
                        map["SiteVersion"] = self.siteVersion!
                    }
                    if self.siteVersionText != nil {
                        map["SiteVersionText"] = self.siteVersionText!
                    }
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.templateEtag != nil {
                        map["TemplateEtag"] = self.templateEtag!
                    }
                    if self.templateId != nil {
                        map["TemplateId"] = self.templateId!
                    }
                    if self.textList != nil {
                        map["TextList"] = self.textList!
                    }
                    if self.thumbnail != nil {
                        map["Thumbnail"] = self.thumbnail!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AdminUrl"] as? String {
                        self.adminUrl = value
                    }
                    if let value = dict["ApplicationType"] as? String {
                        self.applicationType = value
                    }
                    if let value = dict["ApplicationTypeText"] as? String {
                        self.applicationTypeText = value
                    }
                    if let value = dict["BindCname"] as? String {
                        self.bindCname = value
                    }
                    if let value = dict["BizId"] as? String {
                        self.bizId = value
                    }
                    if let value = dict["CommodityCode"] as? String {
                        self.commodityCode = value
                    }
                    if let value = dict["CustomerService"] as? String {
                        self.customerService = value
                    }
                    if let value = dict["DeployArea"] as? String {
                        self.deployArea = value
                    }
                    if let value = dict["DomainList"] as? String {
                        self.domainList = value
                    }
                    if let value = dict["EditorUrl"] as? String {
                        self.editorUrl = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["IcpbaNo"] as? String {
                        self.icpbaNo = value
                    }
                    if let value = dict["ImageList"] as? String {
                        self.imageList = value
                    }
                    if let value = dict["LxInstanceId"] as? String {
                        self.lxInstanceId = value
                    }
                    if let value = dict["OrdTime"] as? String {
                        self.ordTime = value
                    }
                    if let value = dict["OrderId"] as? String {
                        self.orderId = value
                    }
                    if let value = dict["OrderNum"] as? Int32 {
                        self.orderNum = value
                    }
                    if let value = dict["PartnerId"] as? String {
                        self.partnerId = value
                    }
                    if let value = dict["PayTime"] as? String {
                        self.payTime = value
                    }
                    if let value = dict["PreviewUrl"] as? String {
                        self.previewUrl = value
                    }
                    if let value = dict["SeoSite"] as? String {
                        self.seoSite = value
                    }
                    if let value = dict["SiteLogo"] as? String {
                        self.siteLogo = value
                    }
                    if let value = dict["SiteVersion"] as? String {
                        self.siteVersion = value
                    }
                    if let value = dict["SiteVersionText"] as? String {
                        self.siteVersionText = value
                    }
                    if let value = dict["Source"] as? String {
                        self.source = value
                    }
                    if let value = dict["TemplateEtag"] as? String {
                        self.templateEtag = value
                    }
                    if let value = dict["TemplateId"] as? String {
                        self.templateId = value
                    }
                    if let value = dict["TextList"] as? String {
                        self.textList = value
                    }
                    if let value = dict["Thumbnail"] as? String {
                        self.thumbnail = value
                    }
                }
            }
            public var appSubType: String?

            public var appType: String?

            public var bizId: String?

            public var buildType: String?

            public var deleted: Int32?

            public var description_: String?

            public var designSpecBizId: String?

            public var designSpecId: String?

            public var domain: String?

            public var endTime: String?

            public var env: String?

            public var espBizId: String?

            public var gmtCreate: String?

            public var gmtDelete: String?

            public var gmtModified: String?

            public var gmtPublish: String?

            public var iconUrl: String?

            public var name: String?

            public var orderId: String?

            public var profile: GetAppInstanceForPartnerResponseBody.Module.RelatedInstanceList.Profile?

            public var siteHost: String?

            public var slug: String?

            public var sourceType: String?

            public var startTime: String?

            public var status: String?

            public var statusText: String?

            public var thumbnailUrl: String?

            public var userId: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.profile?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appSubType != nil {
                    map["AppSubType"] = self.appSubType!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.buildType != nil {
                    map["BuildType"] = self.buildType!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.designSpecBizId != nil {
                    map["DesignSpecBizId"] = self.designSpecBizId!
                }
                if self.designSpecId != nil {
                    map["DesignSpecId"] = self.designSpecId!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.env != nil {
                    map["Env"] = self.env!
                }
                if self.espBizId != nil {
                    map["EspBizId"] = self.espBizId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtDelete != nil {
                    map["GmtDelete"] = self.gmtDelete!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.gmtPublish != nil {
                    map["GmtPublish"] = self.gmtPublish!
                }
                if self.iconUrl != nil {
                    map["IconUrl"] = self.iconUrl!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile?.toMap()
                }
                if self.siteHost != nil {
                    map["SiteHost"] = self.siteHost!
                }
                if self.slug != nil {
                    map["Slug"] = self.slug!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusText != nil {
                    map["StatusText"] = self.statusText!
                }
                if self.thumbnailUrl != nil {
                    map["ThumbnailUrl"] = self.thumbnailUrl!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppSubType"] as? String {
                    self.appSubType = value
                }
                if let value = dict["AppType"] as? String {
                    self.appType = value
                }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["BuildType"] as? String {
                    self.buildType = value
                }
                if let value = dict["Deleted"] as? Int32 {
                    self.deleted = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DesignSpecBizId"] as? String {
                    self.designSpecBizId = value
                }
                if let value = dict["DesignSpecId"] as? String {
                    self.designSpecId = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Env"] as? String {
                    self.env = value
                }
                if let value = dict["EspBizId"] as? String {
                    self.espBizId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtDelete"] as? String {
                    self.gmtDelete = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["GmtPublish"] as? String {
                    self.gmtPublish = value
                }
                if let value = dict["IconUrl"] as? String {
                    self.iconUrl = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["Profile"] as? [String: Any?] {
                    var model = GetAppInstanceForPartnerResponseBody.Module.RelatedInstanceList.Profile()
                    model.fromMap(value)
                    self.profile = model
                }
                if let value = dict["SiteHost"] as? String {
                    self.siteHost = value
                }
                if let value = dict["Slug"] as? String {
                    self.slug = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusText"] as? String {
                    self.statusText = value
                }
                if let value = dict["ThumbnailUrl"] as? String {
                    self.thumbnailUrl = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var aiStaffList: [GetAppInstanceForPartnerResponseBody.Module.AiStaffList]?

        public var appDesignSpec: GetAppInstanceForPartnerResponseBody.Module.AppDesignSpec?

        public var appOperationAddress: GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress?

        public var appServiceList: [GetAppInstanceForPartnerResponseBody.Module.AppServiceList]?

        public var appSubType: String?

        public var appType: String?

        public var bizId: String?

        public var buildType: String?

        public var deleted: Int32?

        public var description_: String?

        public var designSpecBizId: String?

        public var designSpecId: String?

        public var domain: String?

        public var endTime: String?

        public var env: String?

        public var espBizId: String?

        public var gmtCreate: String?

        public var gmtDelete: String?

        public var gmtModified: String?

        public var gmtPublish: String?

        public var iconUrl: String?

        public var name: String?

        public var orderId: String?

        public var partnerDetail: GetAppInstanceForPartnerResponseBody.Module.PartnerDetail?

        public var profile: GetAppInstanceForPartnerResponseBody.Module.Profile?

        public var relatedInstanceList: [GetAppInstanceForPartnerResponseBody.Module.RelatedInstanceList]?

        public var siteHost: String?

        public var slug: String?

        public var sourceType: String?

        public var startTime: String?

        public var status: String?

        public var statusText: String?

        public var thumbnailUrl: String?

        public var userId: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appDesignSpec?.validate()
            try self.appOperationAddress?.validate()
            try self.partnerDetail?.validate()
            try self.profile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiStaffList != nil {
                var tmp : [Any] = []
                for k in self.aiStaffList! {
                    tmp.append(k.toMap())
                }
                map["AiStaffList"] = tmp
            }
            if self.appDesignSpec != nil {
                map["AppDesignSpec"] = self.appDesignSpec?.toMap()
            }
            if self.appOperationAddress != nil {
                map["AppOperationAddress"] = self.appOperationAddress?.toMap()
            }
            if self.appServiceList != nil {
                var tmp : [Any] = []
                for k in self.appServiceList! {
                    tmp.append(k.toMap())
                }
                map["AppServiceList"] = tmp
            }
            if self.appSubType != nil {
                map["AppSubType"] = self.appSubType!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.buildType != nil {
                map["BuildType"] = self.buildType!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.designSpecBizId != nil {
                map["DesignSpecBizId"] = self.designSpecBizId!
            }
            if self.designSpecId != nil {
                map["DesignSpecId"] = self.designSpecId!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.env != nil {
                map["Env"] = self.env!
            }
            if self.espBizId != nil {
                map["EspBizId"] = self.espBizId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtDelete != nil {
                map["GmtDelete"] = self.gmtDelete!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.gmtPublish != nil {
                map["GmtPublish"] = self.gmtPublish!
            }
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.partnerDetail != nil {
                map["PartnerDetail"] = self.partnerDetail?.toMap()
            }
            if self.profile != nil {
                map["Profile"] = self.profile?.toMap()
            }
            if self.relatedInstanceList != nil {
                var tmp : [Any] = []
                for k in self.relatedInstanceList! {
                    tmp.append(k.toMap())
                }
                map["RelatedInstanceList"] = tmp
            }
            if self.siteHost != nil {
                map["SiteHost"] = self.siteHost!
            }
            if self.slug != nil {
                map["Slug"] = self.slug!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusText != nil {
                map["StatusText"] = self.statusText!
            }
            if self.thumbnailUrl != nil {
                map["ThumbnailUrl"] = self.thumbnailUrl!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AiStaffList"] as? [Any?] {
                var tmp : [GetAppInstanceForPartnerResponseBody.Module.AiStaffList] = []
                for v in value {
                    if v != nil {
                        var model = GetAppInstanceForPartnerResponseBody.Module.AiStaffList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aiStaffList = tmp
            }
            if let value = dict["AppDesignSpec"] as? [String: Any?] {
                var model = GetAppInstanceForPartnerResponseBody.Module.AppDesignSpec()
                model.fromMap(value)
                self.appDesignSpec = model
            }
            if let value = dict["AppOperationAddress"] as? [String: Any?] {
                var model = GetAppInstanceForPartnerResponseBody.Module.AppOperationAddress()
                model.fromMap(value)
                self.appOperationAddress = model
            }
            if let value = dict["AppServiceList"] as? [Any?] {
                var tmp : [GetAppInstanceForPartnerResponseBody.Module.AppServiceList] = []
                for v in value {
                    if v != nil {
                        var model = GetAppInstanceForPartnerResponseBody.Module.AppServiceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appServiceList = tmp
            }
            if let value = dict["AppSubType"] as? String {
                self.appSubType = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["BuildType"] as? String {
                self.buildType = value
            }
            if let value = dict["Deleted"] as? Int32 {
                self.deleted = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DesignSpecBizId"] as? String {
                self.designSpecBizId = value
            }
            if let value = dict["DesignSpecId"] as? String {
                self.designSpecId = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Env"] as? String {
                self.env = value
            }
            if let value = dict["EspBizId"] as? String {
                self.espBizId = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtDelete"] as? String {
                self.gmtDelete = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["GmtPublish"] as? String {
                self.gmtPublish = value
            }
            if let value = dict["IconUrl"] as? String {
                self.iconUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["PartnerDetail"] as? [String: Any?] {
                var model = GetAppInstanceForPartnerResponseBody.Module.PartnerDetail()
                model.fromMap(value)
                self.partnerDetail = model
            }
            if let value = dict["Profile"] as? [String: Any?] {
                var model = GetAppInstanceForPartnerResponseBody.Module.Profile()
                model.fromMap(value)
                self.profile = model
            }
            if let value = dict["RelatedInstanceList"] as? [Any?] {
                var tmp : [GetAppInstanceForPartnerResponseBody.Module.RelatedInstanceList] = []
                for v in value {
                    if v != nil {
                        var model = GetAppInstanceForPartnerResponseBody.Module.RelatedInstanceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedInstanceList = tmp
            }
            if let value = dict["SiteHost"] as? String {
                self.siteHost = value
            }
            if let value = dict["Slug"] as? String {
                self.slug = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusText"] as? String {
                self.statusText = value
            }
            if let value = dict["ThumbnailUrl"] as? String {
                self.thumbnailUrl = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: GetAppInstanceForPartnerResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetAppInstanceForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class GetAppInstanceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppInstanceForPartnerResponseBody?

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
            var model = GetAppInstanceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppPluginConfigRequest : Tea.TeaModel {
    public var bizId: String?

    public var pluginId: String?

    public override init() {
        super.init()
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
        if self.pluginId != nil {
            map["PluginId"] = self.pluginId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["PluginId"] as? String {
            self.pluginId = value
        }
    }
}

public class GetAppPluginConfigResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var bizId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var pluginConfig: String?

        public var pluginDesc: String?

        public var pluginId: String?

        public var pluginName: String?

        public var userId: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.pluginConfig != nil {
                map["PluginConfig"] = self.pluginConfig!
            }
            if self.pluginDesc != nil {
                map["PluginDesc"] = self.pluginDesc!
            }
            if self.pluginId != nil {
                map["PluginId"] = self.pluginId!
            }
            if self.pluginName != nil {
                map["PluginName"] = self.pluginName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["PluginConfig"] as? String {
                self.pluginConfig = value
            }
            if let value = dict["PluginDesc"] as? String {
                self.pluginDesc = value
            }
            if let value = dict["PluginId"] as? String {
                self.pluginId = value
            }
            if let value = dict["PluginName"] as? String {
                self.pluginName = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var module: GetAppPluginConfigResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetAppPluginConfigResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAppPluginConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppPluginConfigResponseBody?

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
            var model = GetAppPluginConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppRecommendedCommoditiesRequest : Tea.TeaModel {
    public var bizId: String?

    public var extend: String?

    public var resourceConditions: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.resourceConditions != nil {
            map["ResourceConditions"] = self.resourceConditions!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["ResourceConditions"] as? String {
            self.resourceConditions = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
    }
}

public class GetAppRecommendedCommoditiesResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Commodities : Tea.TeaModel {
            public var commodityCode: String?

            public var extend: [String: String]?

            public var orderType: String?

            public var priority: Int32?

            public var promotionCommodityId: String?

            public var redirectUrl: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.extend != nil {
                    map["Extend"] = self.extend!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.promotionCommodityId != nil {
                    map["PromotionCommodityId"] = self.promotionCommodityId!
                }
                if self.redirectUrl != nil {
                    map["RedirectUrl"] = self.redirectUrl!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["Extend"] as? [String: String] {
                    self.extend = value
                }
                if let value = dict["OrderType"] as? String {
                    self.orderType = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["PromotionCommodityId"] as? String {
                    self.promotionCommodityId = value
                }
                if let value = dict["RedirectUrl"] as? String {
                    self.redirectUrl = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var commodities: [GetAppRecommendedCommoditiesResponseBody.Module.Commodities]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodities != nil {
                var tmp : [Any] = []
                for k in self.commodities! {
                    tmp.append(k.toMap())
                }
                map["Commodities"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Commodities"] as? [Any?] {
                var tmp : [GetAppRecommendedCommoditiesResponseBody.Module.Commodities] = []
                for v in value {
                    if v != nil {
                        var model = GetAppRecommendedCommoditiesResponseBody.Module.Commodities()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commodities = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: GetAppRecommendedCommoditiesResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetAppRecommendedCommoditiesResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class GetAppRecommendedCommoditiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppRecommendedCommoditiesResponseBody?

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
            var model = GetAppRecommendedCommoditiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppTokenServiceResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var extend: String?

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
            if self.extend != nil {
                map["Extend"] = self.extend!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extend"] as? String {
                self.extend = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: GetAppTokenServiceResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetAppTokenServiceResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class GetAppTokenServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppTokenServiceResponseBody?

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
            var model = GetAppTokenServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCreateLogoTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetCreateLogoTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var taskId: String?

        public var taskStatus: String?

        public var urls: [String]?

        public override init() {
            super.init()
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
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.urls != nil {
                map["Urls"] = self.urls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["Urls"] as? [String] {
                self.urls = value
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

    public var task: GetCreateLogoTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Task"] as? [String: Any?] {
            var model = GetCreateLogoTaskResponseBody.Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetCreateLogoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreateLogoTaskResponseBody?

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
            var model = GetCreateLogoTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDomainInfoForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetDomainInfoForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Ownership : Tea.TeaModel {
            public var account: String?

            public var provider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["Account"] = self.account!
                }
                if self.provider != nil {
                    map["Provider"] = self.provider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Account"] as? String {
                    self.account = value
                }
                if let value = dict["Provider"] as? String {
                    self.provider = value
                }
            }
        }
        public var domainName: String?

        public var nameServers: String?

        public var ownership: GetDomainInfoForPartnerResponseBody.Data.Ownership?

        public var registrar: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ownership?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.nameServers != nil {
                map["NameServers"] = self.nameServers!
            }
            if self.ownership != nil {
                map["Ownership"] = self.ownership?.toMap()
            }
            if self.registrar != nil {
                map["Registrar"] = self.registrar!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["NameServers"] as? String {
                self.nameServers = value
            }
            if let value = dict["Ownership"] as? [String: Any?] {
                var model = GetDomainInfoForPartnerResponseBody.Data.Ownership()
                model.fromMap(value)
                self.ownership = model
            }
            if let value = dict["Registrar"] as? String {
                self.registrar = value
            }
        }
    }
    public var data: GetDomainInfoForPartnerResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDomainInfoForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDomainInfoForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainInfoForPartnerResponseBody?

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
            var model = GetDomainInfoForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIcpFilingInfoForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var domain: String?

    public override init() {
        super.init()
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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class GetIcpFilingInfoForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var icpNumber: String?

        public var recorded: Bool?

        public var siteRecordNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.icpNumber != nil {
                map["IcpNumber"] = self.icpNumber!
            }
            if self.recorded != nil {
                map["Recorded"] = self.recorded!
            }
            if self.siteRecordNumber != nil {
                map["SiteRecordNumber"] = self.siteRecordNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IcpNumber"] as? String {
                self.icpNumber = value
            }
            if let value = dict["Recorded"] as? Bool {
                self.recorded = value
            }
            if let value = dict["SiteRecordNumber"] as? String {
                self.siteRecordNumber = value
            }
        }
    }
    public var data: GetIcpFilingInfoForPartnerResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetIcpFilingInfoForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIcpFilingInfoForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIcpFilingInfoForPartnerResponseBody?

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
            var model = GetIcpFilingInfoForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserAccessTokenForPartnerRequest : Tea.TeaModel {
    public var siteHost: String?

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
        if self.siteHost != nil {
            map["SiteHost"] = self.siteHost!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SiteHost"] as? String {
            self.siteHost = value
        }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
        }
    }
}

public class GetUserAccessTokenForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var tokenValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokenValue != nil {
                map["TokenValue"] = self.tokenValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TokenValue"] as? String {
                self.tokenValue = value
            }
        }
    }
    public var errorCode: String?

    public var module: GetUserAccessTokenForPartnerResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetUserAccessTokenForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetUserAccessTokenForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserAccessTokenForPartnerResponseBody?

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
            var model = GetUserAccessTokenForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserTmpIdentityForPartnerRequest : Tea.TeaModel {
    public var authPurpose: String?

    public var bizId: String?

    public var extend: String?

    public var serviceLinkedRole: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authPurpose != nil {
            map["AuthPurpose"] = self.authPurpose!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.serviceLinkedRole != nil {
            map["ServiceLinkedRole"] = self.serviceLinkedRole!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthPurpose"] as? String {
            self.authPurpose = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["ServiceLinkedRole"] as? String {
            self.serviceLinkedRole = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetUserTmpIdentityForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Credentials : Tea.TeaModel {
            public var encryptedAccessKeyId: String?

            public var encryptedAccessKeySecret: String?

            public var encryptedSecurityToken: String?

            public var expiration: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.encryptedAccessKeyId != nil {
                    map["EncryptedAccessKeyId"] = self.encryptedAccessKeyId!
                }
                if self.encryptedAccessKeySecret != nil {
                    map["EncryptedAccessKeySecret"] = self.encryptedAccessKeySecret!
                }
                if self.encryptedSecurityToken != nil {
                    map["EncryptedSecurityToken"] = self.encryptedSecurityToken!
                }
                if self.expiration != nil {
                    map["Expiration"] = self.expiration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EncryptedAccessKeyId"] as? String {
                    self.encryptedAccessKeyId = value
                }
                if let value = dict["EncryptedAccessKeySecret"] as? String {
                    self.encryptedAccessKeySecret = value
                }
                if let value = dict["EncryptedSecurityToken"] as? String {
                    self.encryptedSecurityToken = value
                }
                if let value = dict["Expiration"] as? String {
                    self.expiration = value
                }
            }
        }
        public var credentials: GetUserTmpIdentityForPartnerResponseBody.Data.Credentials?

        public var hasCustomRoleAuth: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.credentials?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.credentials != nil {
                map["Credentials"] = self.credentials?.toMap()
            }
            if self.hasCustomRoleAuth != nil {
                map["HasCustomRoleAuth"] = self.hasCustomRoleAuth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Credentials"] as? [String: Any?] {
                var model = GetUserTmpIdentityForPartnerResponseBody.Data.Credentials()
                model.fromMap(value)
                self.credentials = model
            }
            if let value = dict["HasCustomRoleAuth"] as? Bool {
                self.hasCustomRoleAuth = value
            }
        }
    }
    public var data: GetUserTmpIdentityForPartnerResponseBody.Data?

    public var errorCode: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserTmpIdentityForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class GetUserTmpIdentityForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserTmpIdentityForPartnerResponseBody?

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
            var model = GetUserTmpIdentityForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IntrospectAppInstanceTicketForPreviewRequest : Tea.TeaModel {
    public var bizId: String?

    public var token: String?

    public override init() {
        super.init()
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class IntrospectAppInstanceTicketForPreviewResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var accessTokenExpiresAt: String?

        public var accessTokenIssuedAt: String?

        public var accessTokenValue: String?

        public var aliyunPk: String?

        public var attributes: String?

        public var authorizationGrantType: String?

        public var bid: String?

        public var parentPk: String?

        public var refreshTokenExpiresAt: String?

        public var refreshTokenIssuedAt: String?

        public var refreshTokenValue: String?

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
            if self.accessTokenExpiresAt != nil {
                map["AccessTokenExpiresAt"] = self.accessTokenExpiresAt!
            }
            if self.accessTokenIssuedAt != nil {
                map["AccessTokenIssuedAt"] = self.accessTokenIssuedAt!
            }
            if self.accessTokenValue != nil {
                map["AccessTokenValue"] = self.accessTokenValue!
            }
            if self.aliyunPk != nil {
                map["AliyunPk"] = self.aliyunPk!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.authorizationGrantType != nil {
                map["AuthorizationGrantType"] = self.authorizationGrantType!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.parentPk != nil {
                map["ParentPk"] = self.parentPk!
            }
            if self.refreshTokenExpiresAt != nil {
                map["RefreshTokenExpiresAt"] = self.refreshTokenExpiresAt!
            }
            if self.refreshTokenIssuedAt != nil {
                map["RefreshTokenIssuedAt"] = self.refreshTokenIssuedAt!
            }
            if self.refreshTokenValue != nil {
                map["RefreshTokenValue"] = self.refreshTokenValue!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenExpiresAt"] as? String {
                self.accessTokenExpiresAt = value
            }
            if let value = dict["AccessTokenIssuedAt"] as? String {
                self.accessTokenIssuedAt = value
            }
            if let value = dict["AccessTokenValue"] as? String {
                self.accessTokenValue = value
            }
            if let value = dict["AliyunPk"] as? String {
                self.aliyunPk = value
            }
            if let value = dict["Attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["AuthorizationGrantType"] as? String {
                self.authorizationGrantType = value
            }
            if let value = dict["Bid"] as? String {
                self.bid = value
            }
            if let value = dict["ParentPk"] as? String {
                self.parentPk = value
            }
            if let value = dict["RefreshTokenExpiresAt"] as? String {
                self.refreshTokenExpiresAt = value
            }
            if let value = dict["RefreshTokenIssuedAt"] as? String {
                self.refreshTokenIssuedAt = value
            }
            if let value = dict["RefreshTokenValue"] as? String {
                self.refreshTokenValue = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: IntrospectAppInstanceTicketForPreviewResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = IntrospectAppInstanceTicketForPreviewResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class IntrospectAppInstanceTicketForPreviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IntrospectAppInstanceTicketForPreviewResponseBody?

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
            var model = IntrospectAppInstanceTicketForPreviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppAssistantAgentsRequest : Tea.TeaModel {
    public var bizId: String?

    public var platformType: String?

    public override init() {
        super.init()
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
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["PlatformType"] as? String {
            self.platformType = value
        }
    }
}

public class ListAppAssistantAgentsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Credential : Tea.TeaModel {
            public var apiKey: String?

            public var apiSecret: String?

            public var extra: [String: String]?

            public var password: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKey != nil {
                    map["ApiKey"] = self.apiKey!
                }
                if self.apiSecret != nil {
                    map["ApiSecret"] = self.apiSecret!
                }
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.password != nil {
                    map["Password"] = self.password!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiKey"] as? String {
                    self.apiKey = value
                }
                if let value = dict["ApiSecret"] as? String {
                    self.apiSecret = value
                }
                if let value = dict["Extra"] as? [String: String] {
                    self.extra = value
                }
                if let value = dict["Password"] as? String {
                    self.password = value
                }
                if let value = dict["Username"] as? String {
                    self.username = value
                }
            }
        }
        public class EmbedConfig : Tea.TeaModel {
            public var extra: [String: String]?

            public var rawScript: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.rawScript != nil {
                    map["RawScript"] = self.rawScript!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Extra"] as? [String: String] {
                    self.extra = value
                }
                if let value = dict["RawScript"] as? String {
                    self.rawScript = value
                }
            }
        }
        public var agentId: String?

        public var agentName: String?

        public var bizId: String?

        public var credential: ListAppAssistantAgentsResponseBody.Module.Credential?

        public var embedConfig: ListAppAssistantAgentsResponseBody.Module.EmbedConfig?

        public var extraParams: [String: String]?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var platformAppId: String?

        public var platformType: String?

        public var status: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.credential?.validate()
            try self.embedConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["AgentId"] = self.agentId!
            }
            if self.agentName != nil {
                map["AgentName"] = self.agentName!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.credential != nil {
                map["Credential"] = self.credential?.toMap()
            }
            if self.embedConfig != nil {
                map["EmbedConfig"] = self.embedConfig?.toMap()
            }
            if self.extraParams != nil {
                map["ExtraParams"] = self.extraParams!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.platformAppId != nil {
                map["PlatformAppId"] = self.platformAppId!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentId"] as? String {
                self.agentId = value
            }
            if let value = dict["AgentName"] as? String {
                self.agentName = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["Credential"] as? [String: Any?] {
                var model = ListAppAssistantAgentsResponseBody.Module.Credential()
                model.fromMap(value)
                self.credential = model
            }
            if let value = dict["EmbedConfig"] as? [String: Any?] {
                var model = ListAppAssistantAgentsResponseBody.Module.EmbedConfig()
                model.fromMap(value)
                self.embedConfig = model
            }
            if let value = dict["ExtraParams"] as? [String: String] {
                self.extraParams = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["PlatformAppId"] as? String {
                self.platformAppId = value
            }
            if let value = dict["PlatformType"] as? String {
                self.platformType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: [ListAppAssistantAgentsResponseBody.Module]?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            var tmp : [Any] = []
            for k in self.module! {
                tmp.append(k.toMap())
            }
            map["Module"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [Any?] {
            var tmp : [ListAppAssistantAgentsResponseBody.Module] = []
            for v in value {
                if v != nil {
                    var model = ListAppAssistantAgentsResponseBody.Module()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.module = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppAssistantAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppAssistantAgentsResponseBody?

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
            var model = ListAppAssistantAgentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppCommoditySpecificationsForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var versions: [String: ModuleVersionsValue]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.versions != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.versions! {
                    tmp[k] = v.toMap()
                }
                map["Versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Versions"] as? [String: Any?] {
                var tmp : [String: ModuleVersionsValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = ModuleVersionsValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.versions = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: ListAppCommoditySpecificationsForPartnerResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ListAppCommoditySpecificationsForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppCommoditySpecificationsForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppCommoditySpecificationsForPartnerResponseBody?

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
            var model = ListAppCommoditySpecificationsForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppCommoditySpecificationsV2ForPartnerRequest : Tea.TeaModel {
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListAppCommoditySpecificationsV2ForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var code: String?

            public var components: [String: ModuleDataComponentsValue]?

            public var name: String?

            public var properties: [String: ModuleDataPropertiesValue]?

            public override init() {
                super.init()
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
                if self.components != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.components! {
                        tmp[k] = v.toMap()
                    }
                    map["Components"] = tmp
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.properties != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.properties! {
                        tmp[k] = v.toMap()
                    }
                    map["Properties"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Components"] as? [String: Any?] {
                    var tmp : [String: ModuleDataComponentsValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = ModuleDataComponentsValue()
                            model.fromMap(v as? [String: Any?])
                            tmp[k] = model
                        }
                    }
                    self.components = tmp
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Properties"] as? [String: Any?] {
                    var tmp : [String: ModuleDataPropertiesValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = ModuleDataPropertiesValue()
                            model.fromMap(v as? [String: Any?])
                            tmp[k] = model
                        }
                    }
                    self.properties = tmp
                }
            }
        }
        public class Next : Tea.TeaModel {
            public var code: String?

            public var components: [String: ModuleNextComponentsValue]?

            public var name: String?

            public var properties: [String: ModuleNextPropertiesValue]?

            public override init() {
                super.init()
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
                if self.components != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.components! {
                        tmp[k] = v.toMap()
                    }
                    map["Components"] = tmp
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.properties != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.properties! {
                        tmp[k] = v.toMap()
                    }
                    map["Properties"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Components"] as? [String: Any?] {
                    var tmp : [String: ModuleNextComponentsValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = ModuleNextComponentsValue()
                            model.fromMap(v as? [String: Any?])
                            tmp[k] = model
                        }
                    }
                    self.components = tmp
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Properties"] as? [String: Any?] {
                    var tmp : [String: ModuleNextPropertiesValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = ModuleNextPropertiesValue()
                            model.fromMap(v as? [String: Any?])
                            tmp[k] = model
                        }
                    }
                    self.properties = tmp
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module.Data]?

        public var next: ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var maxResults: Int32?

    public var module: ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ListAppCommoditySpecificationsV2ForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppCommoditySpecificationsV2ForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppCommoditySpecificationsV2ForPartnerResponseBody?

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
            var model = ListAppCommoditySpecificationsV2ForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppDomainRedirectRecordsRequest : Tea.TeaModel {
    public var bizId: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListAppDomainRedirectRecordsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var recordId: String?

            public var sourceDomain: String?

            public var targetDomain: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.sourceDomain != nil {
                    map["SourceDomain"] = self.sourceDomain!
                }
                if self.targetDomain != nil {
                    map["TargetDomain"] = self.targetDomain!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RecordId"] as? String {
                    self.recordId = value
                }
                if let value = dict["SourceDomain"] as? String {
                    self.sourceDomain = value
                }
                if let value = dict["TargetDomain"] as? String {
                    self.targetDomain = value
                }
            }
        }
        public class Next : Tea.TeaModel {
            public var recordId: String?

            public var sourceDomain: String?

            public var targetDomain: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.sourceDomain != nil {
                    map["SourceDomain"] = self.sourceDomain!
                }
                if self.targetDomain != nil {
                    map["TargetDomain"] = self.targetDomain!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RecordId"] as? String {
                    self.recordId = value
                }
                if let value = dict["SourceDomain"] as? String {
                    self.sourceDomain = value
                }
                if let value = dict["TargetDomain"] as? String {
                    self.targetDomain = value
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [ListAppDomainRedirectRecordsResponseBody.Module.Data]?

        public var next: ListAppDomainRedirectRecordsResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListAppDomainRedirectRecordsResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListAppDomainRedirectRecordsResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = ListAppDomainRedirectRecordsResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var maxResults: Int32?

    public var module: ListAppDomainRedirectRecordsResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ListAppDomainRedirectRecordsResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppDomainRedirectRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppDomainRedirectRecordsResponseBody?

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
            var model = ListAppDomainRedirectRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppInstanceDomainsRequest : Tea.TeaModel {
    public var bizId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAppInstanceDomainsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Certificate : Tea.TeaModel {
                public var certificateName: String?

                public var certificateStatus: String?

                public var certificateType: String?

                public var endTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certificateName != nil {
                        map["CertificateName"] = self.certificateName!
                    }
                    if self.certificateStatus != nil {
                        map["CertificateStatus"] = self.certificateStatus!
                    }
                    if self.certificateType != nil {
                        map["CertificateType"] = self.certificateType!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CertificateName"] as? String {
                        self.certificateName = value
                    }
                    if let value = dict["CertificateStatus"] as? String {
                        self.certificateStatus = value
                    }
                    if let value = dict["CertificateType"] as? String {
                        self.certificateType = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                }
            }
            public class Ownership : Tea.TeaModel {
                public var account: String?

                public var provider: String?

                public var rootDomain: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.account != nil {
                        map["Account"] = self.account!
                    }
                    if self.provider != nil {
                        map["Provider"] = self.provider!
                    }
                    if self.rootDomain != nil {
                        map["RootDomain"] = self.rootDomain!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Account"] as? String {
                        self.account = value
                    }
                    if let value = dict["Provider"] as? String {
                        self.provider = value
                    }
                    if let value = dict["RootDomain"] as? String {
                        self.rootDomain = value
                    }
                }
            }
            public class Qualification : Tea.TeaModel {
                public var icpRecordNumber: String?

                public var icpSiteRecordNumber: String?

                public var policeRecordNumber: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.icpRecordNumber != nil {
                        map["IcpRecordNumber"] = self.icpRecordNumber!
                    }
                    if self.icpSiteRecordNumber != nil {
                        map["IcpSiteRecordNumber"] = self.icpSiteRecordNumber!
                    }
                    if self.policeRecordNumber != nil {
                        map["PoliceRecordNumber"] = self.policeRecordNumber!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IcpRecordNumber"] as? String {
                        self.icpRecordNumber = value
                    }
                    if let value = dict["IcpSiteRecordNumber"] as? String {
                        self.icpSiteRecordNumber = value
                    }
                    if let value = dict["PoliceRecordNumber"] as? String {
                        self.policeRecordNumber = value
                    }
                }
            }
            public class Resolution : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Data.Resolution.DnsRecord?

                public var errorMsg: String?

                public var resolutionStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.resolutionStatus != nil {
                        map["ResolutionStatus"] = self.resolutionStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Data.Resolution.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ResolutionStatus"] as? String {
                        self.resolutionStatus = value
                    }
                }
            }
            public class Verification : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Data.Verification.DnsRecord?

                public var errorMsg: String?

                public var verificationStatus: String?

                public var verificationStatusCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.verificationStatus != nil {
                        map["VerificationStatus"] = self.verificationStatus!
                    }
                    if self.verificationStatusCode != nil {
                        map["VerificationStatusCode"] = self.verificationStatusCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Data.Verification.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["VerificationStatus"] as? String {
                        self.verificationStatus = value
                    }
                    if let value = dict["VerificationStatusCode"] as? String {
                        self.verificationStatusCode = value
                    }
                }
            }
            public var certificate: ListAppInstanceDomainsResponseBody.Module.Data.Certificate?

            public var createTime: String?

            public var domainName: String?

            public var overallStatus: String?

            public var ownership: ListAppInstanceDomainsResponseBody.Module.Data.Ownership?

            public var qualification: ListAppInstanceDomainsResponseBody.Module.Data.Qualification?

            public var resolution: ListAppInstanceDomainsResponseBody.Module.Data.Resolution?

            public var verification: ListAppInstanceDomainsResponseBody.Module.Data.Verification?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.certificate?.validate()
                try self.ownership?.validate()
                try self.qualification?.validate()
                try self.resolution?.validate()
                try self.verification?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificate != nil {
                    map["Certificate"] = self.certificate?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.overallStatus != nil {
                    map["OverallStatus"] = self.overallStatus!
                }
                if self.ownership != nil {
                    map["Ownership"] = self.ownership?.toMap()
                }
                if self.qualification != nil {
                    map["Qualification"] = self.qualification?.toMap()
                }
                if self.resolution != nil {
                    map["Resolution"] = self.resolution?.toMap()
                }
                if self.verification != nil {
                    map["Verification"] = self.verification?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Certificate"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Certificate()
                    model.fromMap(value)
                    self.certificate = model
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["OverallStatus"] as? String {
                    self.overallStatus = value
                }
                if let value = dict["Ownership"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Ownership()
                    model.fromMap(value)
                    self.ownership = model
                }
                if let value = dict["Qualification"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Qualification()
                    model.fromMap(value)
                    self.qualification = model
                }
                if let value = dict["Resolution"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Resolution()
                    model.fromMap(value)
                    self.resolution = model
                }
                if let value = dict["Verification"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Verification()
                    model.fromMap(value)
                    self.verification = model
                }
            }
        }
        public class Next : Tea.TeaModel {
            public class Certificate : Tea.TeaModel {
                public var certificateName: String?

                public var certificateStatus: String?

                public var certificateType: String?

                public var endTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certificateName != nil {
                        map["CertificateName"] = self.certificateName!
                    }
                    if self.certificateStatus != nil {
                        map["CertificateStatus"] = self.certificateStatus!
                    }
                    if self.certificateType != nil {
                        map["CertificateType"] = self.certificateType!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CertificateName"] as? String {
                        self.certificateName = value
                    }
                    if let value = dict["CertificateStatus"] as? String {
                        self.certificateStatus = value
                    }
                    if let value = dict["CertificateType"] as? String {
                        self.certificateType = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                }
            }
            public class Ownership : Tea.TeaModel {
                public var account: String?

                public var provider: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.account != nil {
                        map["Account"] = self.account!
                    }
                    if self.provider != nil {
                        map["Provider"] = self.provider!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Account"] as? String {
                        self.account = value
                    }
                    if let value = dict["Provider"] as? String {
                        self.provider = value
                    }
                }
            }
            public class Qualification : Tea.TeaModel {
                public var icpRecordNumber: String?

                public var icpSiteRecordNumber: String?

                public var policeRecordNumber: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.icpRecordNumber != nil {
                        map["IcpRecordNumber"] = self.icpRecordNumber!
                    }
                    if self.icpSiteRecordNumber != nil {
                        map["IcpSiteRecordNumber"] = self.icpSiteRecordNumber!
                    }
                    if self.policeRecordNumber != nil {
                        map["PoliceRecordNumber"] = self.policeRecordNumber!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IcpRecordNumber"] as? String {
                        self.icpRecordNumber = value
                    }
                    if let value = dict["IcpSiteRecordNumber"] as? String {
                        self.icpSiteRecordNumber = value
                    }
                    if let value = dict["PoliceRecordNumber"] as? String {
                        self.policeRecordNumber = value
                    }
                }
            }
            public class Resolution : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Next.Resolution.DnsRecord?

                public var errorMsg: String?

                public var resolutionStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.resolutionStatus != nil {
                        map["ResolutionStatus"] = self.resolutionStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Next.Resolution.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ResolutionStatus"] as? String {
                        self.resolutionStatus = value
                    }
                }
            }
            public class Verification : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Next.Verification.DnsRecord?

                public var errorMsg: String?

                public var verificationStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.verificationStatus != nil {
                        map["VerificationStatus"] = self.verificationStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Next.Verification.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["VerificationStatus"] as? String {
                        self.verificationStatus = value
                    }
                }
            }
            public var certificate: ListAppInstanceDomainsResponseBody.Module.Next.Certificate?

            public var createTime: String?

            public var domainName: String?

            public var overallStatus: String?

            public var ownership: ListAppInstanceDomainsResponseBody.Module.Next.Ownership?

            public var qualification: ListAppInstanceDomainsResponseBody.Module.Next.Qualification?

            public var resolution: ListAppInstanceDomainsResponseBody.Module.Next.Resolution?

            public var verification: ListAppInstanceDomainsResponseBody.Module.Next.Verification?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.certificate?.validate()
                try self.ownership?.validate()
                try self.qualification?.validate()
                try self.resolution?.validate()
                try self.verification?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificate != nil {
                    map["Certificate"] = self.certificate?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.overallStatus != nil {
                    map["OverallStatus"] = self.overallStatus!
                }
                if self.ownership != nil {
                    map["Ownership"] = self.ownership?.toMap()
                }
                if self.qualification != nil {
                    map["Qualification"] = self.qualification?.toMap()
                }
                if self.resolution != nil {
                    map["Resolution"] = self.resolution?.toMap()
                }
                if self.verification != nil {
                    map["Verification"] = self.verification?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Certificate"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Certificate()
                    model.fromMap(value)
                    self.certificate = model
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["OverallStatus"] as? String {
                    self.overallStatus = value
                }
                if let value = dict["Ownership"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Ownership()
                    model.fromMap(value)
                    self.ownership = model
                }
                if let value = dict["Qualification"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Qualification()
                    model.fromMap(value)
                    self.qualification = model
                }
                if let value = dict["Resolution"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Resolution()
                    model.fromMap(value)
                    self.resolution = model
                }
                if let value = dict["Verification"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Verification()
                    model.fromMap(value)
                    self.verification = model
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [ListAppInstanceDomainsResponseBody.Module.Data]?

        public var next: ListAppInstanceDomainsResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListAppInstanceDomainsResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListAppInstanceDomainsResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = ListAppInstanceDomainsResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var maxResults: Int32?

    public var module: ListAppInstanceDomainsResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ListAppInstanceDomainsResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppInstanceDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstanceDomainsResponseBody?

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
            var model = ListAppInstanceDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppInstancesRequest : Tea.TeaModel {
    public var bizId: String?

    public var endTimeBegin: String?

    public var endTimeEnd: String?

    public var extend: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var statusList: [String]?

    public override init() {
        super.init()
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
        if self.endTimeBegin != nil {
            map["EndTimeBegin"] = self.endTimeBegin!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["EndTimeBegin"] as? String {
            self.endTimeBegin = value
        }
        if let value = dict["EndTimeEnd"] as? String {
            self.endTimeEnd = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
    }
}

public class ListAppInstancesShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var endTimeBegin: String?

    public var endTimeEnd: String?

    public var extend: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var statusListShrink: String?

    public override init() {
        super.init()
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
        if self.endTimeBegin != nil {
            map["EndTimeBegin"] = self.endTimeBegin!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.statusListShrink != nil {
            map["StatusList"] = self.statusListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["EndTimeBegin"] as? String {
            self.endTimeBegin = value
        }
        if let value = dict["EndTimeEnd"] as? String {
            self.endTimeEnd = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["StatusList"] as? String {
            self.statusListShrink = value
        }
    }
}

public class ListAppInstancesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var currentPageNum: Int32?

    public var data: [AppInstanceAggregate]?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var maxResults: Int32?

    public var nextPage: Bool?

    public var nextToken: String?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var resultLimit: Bool?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultLimit != nil {
            map["ResultLimit"] = self.resultLimit!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [AppInstanceAggregate] = []
            for v in value {
                if v != nil {
                    var model = AppInstanceAggregate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultLimit"] as? Bool {
            self.resultLimit = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class ListAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstancesResponseBody?

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
            var model = ListAppInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppInstanceSpecRequest : Tea.TeaModel {
    public var applicationType: String?

    public var bizId: String?

    public var clientToken: String?

    public var deployArea: String?

    public var extend: String?

    public var paymentType: String?

    public var siteVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deployArea != nil {
            map["DeployArea"] = self.deployArea!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.siteVersion != nil {
            map["SiteVersion"] = self.siteVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? String {
            self.applicationType = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeployArea"] as? String {
            self.deployArea = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["SiteVersion"] as? String {
            self.siteVersion = value
        }
    }
}

public class ModifyAppInstanceSpecResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: ModifyAppInstanceSpecResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ModifyAppInstanceSpecResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ModifyAppInstanceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppInstanceSpecResponseBody?

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
            var model = ModifyAppInstanceSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMaterialDirectoryRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var name: String?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class ModifyMaterialDirectoryResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ModifyMaterialDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMaterialDirectoryResponseBody?

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
            var model = ModifyMaterialDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMaterialFileRequest : Tea.TeaModel {
    public var bizId: String?

    public var fileId: String?

    public var name: String?

    public override init() {
        super.init()
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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class ModifyMaterialFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ModifyMaterialFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMaterialFileResponseBody?

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
            var model = ModifyMaterialFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMaterialFileStatusRequest : Tea.TeaModel {
    public var bizId: String?

    public var fileIds: [String]?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.fileIds != nil {
            map["FileIds"] = self.fileIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["FileIds"] as? [String] {
            self.fileIds = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ModifyMaterialFileStatusShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var fileIdsShrink: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.fileIdsShrink != nil {
            map["FileIds"] = self.fileIdsShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["FileIds"] as? String {
            self.fileIdsShrink = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ModifyMaterialFileStatusResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ModifyMaterialFileStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMaterialFileStatusResponseBody?

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
            var model = ModifyMaterialFileStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveMaterialDirectoryRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var parentDirectoryId: String?

    public var sortNum: Int32?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.parentDirectoryId != nil {
            map["ParentDirectoryId"] = self.parentDirectoryId!
        }
        if self.sortNum != nil {
            map["SortNum"] = self.sortNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["ParentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["SortNum"] as? Int32 {
            self.sortNum = value
        }
    }
}

public class MoveMaterialDirectoryResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class MoveMaterialDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveMaterialDirectoryResponseBody?

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
            var model = MoveMaterialDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveMaterialFileRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var fileIds: [String]?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.fileIds != nil {
            map["FileIds"] = self.fileIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["FileIds"] as? [String] {
            self.fileIds = value
        }
    }
}

public class MoveMaterialFileShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var fileIdsShrink: String?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.fileIdsShrink != nil {
            map["FileIds"] = self.fileIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["FileIds"] as? String {
            self.fileIdsShrink = value
        }
    }
}

public class MoveMaterialFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class MoveMaterialFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveMaterialFileResponseBody?

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
            var model = MoveMaterialFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateAppInstanceForPartnerRequest : Tea.TeaModel {
    public var extend: String?

    public var operateEvent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.operateEvent != nil {
            map["OperateEvent"] = self.operateEvent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["OperateEvent"] as? String {
            self.operateEvent = value
        }
    }
}

public class OperateAppInstanceForPartnerResponseBody : Tea.TeaModel {
    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class OperateAppInstanceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAppInstanceForPartnerResponseBody?

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
            var model = OperateAppInstanceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateAppServiceForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var extend: String?

    public var operateEvent: String?

    public var serviceType: String?

    public override init() {
        super.init()
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
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.operateEvent != nil {
            map["OperateEvent"] = self.operateEvent!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["OperateEvent"] as? String {
            self.operateEvent = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
    }
}

public class OperateAppServiceForPartnerResponseBody : Tea.TeaModel {
    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class OperateAppServiceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAppServiceForPartnerResponseBody?

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
            var model = OperateAppServiceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateSupabaseForAdminRequest : Tea.TeaModel {
    public var bizId: String?

    public var executeSql: String?

    public var operateType: String?

    public var orderByClause: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tableName: String?

    public var userId: String?

    public var whereClause: String?

    public override init() {
        super.init()
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
        if self.executeSql != nil {
            map["ExecuteSql"] = self.executeSql!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.orderByClause != nil {
            map["OrderByClause"] = self.orderByClause!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.whereClause != nil {
            map["WhereClause"] = self.whereClause!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ExecuteSql"] as? String {
            self.executeSql = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["OrderByClause"] as? String {
            self.orderByClause = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WhereClause"] as? String {
            self.whereClause = value
        }
    }
}

public class OperateSupabaseForAdminResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class OperateSupabaseForAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateSupabaseForAdminResponseBody?

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
            var model = OperateSupabaseForAdminResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushResourceMeasureRequest : Tea.TeaModel {
    public var amount: Int64?

    public var belongId: String?

    public var belongIdType: String?

    public var bizId: String?

    public var measureData: String?

    public var metaData: String?

    public var resourceCode: String?

    public var useTime: String?

    public var useType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.belongId != nil {
            map["BelongId"] = self.belongId!
        }
        if self.belongIdType != nil {
            map["BelongIdType"] = self.belongIdType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.measureData != nil {
            map["MeasureData"] = self.measureData!
        }
        if self.metaData != nil {
            map["MetaData"] = self.metaData!
        }
        if self.resourceCode != nil {
            map["ResourceCode"] = self.resourceCode!
        }
        if self.useTime != nil {
            map["UseTime"] = self.useTime!
        }
        if self.useType != nil {
            map["UseType"] = self.useType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? Int64 {
            self.amount = value
        }
        if let value = dict["BelongId"] as? String {
            self.belongId = value
        }
        if let value = dict["BelongIdType"] as? String {
            self.belongIdType = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["MeasureData"] as? String {
            self.measureData = value
        }
        if let value = dict["MetaData"] as? String {
            self.metaData = value
        }
        if let value = dict["ResourceCode"] as? String {
            self.resourceCode = value
        }
        if let value = dict["UseTime"] as? String {
            self.useTime = value
        }
        if let value = dict["UseType"] as? String {
            self.useType = value
        }
    }
}

public class PushResourceMeasureResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: Bool?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class PushResourceMeasureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushResourceMeasureResponseBody?

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
            var model = PushResourceMeasureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryInspirationAccountDetailsRequest : Tea.TeaModel {
    public var endTime: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sourceType: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class QueryInspirationAccountDetailsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var acquisitionTime: String?

            public var balance: Int64?

            public var endDate: String?

            public var expired: Bool?

            public var initQuota: Int64?

            public var sourceType: String?

            public var sourceTypeName: String?

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
                if self.acquisitionTime != nil {
                    map["AcquisitionTime"] = self.acquisitionTime!
                }
                if self.balance != nil {
                    map["Balance"] = self.balance!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.initQuota != nil {
                    map["InitQuota"] = self.initQuota!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.sourceTypeName != nil {
                    map["SourceTypeName"] = self.sourceTypeName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AcquisitionTime"] as? String {
                    self.acquisitionTime = value
                }
                if let value = dict["Balance"] as? Int64 {
                    self.balance = value
                }
                if let value = dict["EndDate"] as? String {
                    self.endDate = value
                }
                if let value = dict["Expired"] as? Bool {
                    self.expired = value
                }
                if let value = dict["InitQuota"] as? Int64 {
                    self.initQuota = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["SourceTypeName"] as? String {
                    self.sourceTypeName = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class Next : Tea.TeaModel {
            public var acquisitionTime: String?

            public var balance: Int64?

            public var endDate: String?

            public var expired: Bool?

            public var initQuota: Int64?

            public var sourceType: String?

            public var sourceTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acquisitionTime != nil {
                    map["AcquisitionTime"] = self.acquisitionTime!
                }
                if self.balance != nil {
                    map["Balance"] = self.balance!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.initQuota != nil {
                    map["InitQuota"] = self.initQuota!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.sourceTypeName != nil {
                    map["SourceTypeName"] = self.sourceTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AcquisitionTime"] as? String {
                    self.acquisitionTime = value
                }
                if let value = dict["Balance"] as? Int64 {
                    self.balance = value
                }
                if let value = dict["EndDate"] as? String {
                    self.endDate = value
                }
                if let value = dict["Expired"] as? Bool {
                    self.expired = value
                }
                if let value = dict["InitQuota"] as? Int64 {
                    self.initQuota = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["SourceTypeName"] as? String {
                    self.sourceTypeName = value
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [QueryInspirationAccountDetailsResponseBody.Module.Data]?

        public var next: QueryInspirationAccountDetailsResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryInspirationAccountDetailsResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryInspirationAccountDetailsResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = QueryInspirationAccountDetailsResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QueryInspirationAccountDetailsResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryInspirationAccountDetailsResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryInspirationAccountDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInspirationAccountDetailsResponseBody?

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
            var model = QueryInspirationAccountDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryInspirationBalanceResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var remaining: Int64?

        public var totalQuota: Int64?

        public var totalUsed: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.remaining != nil {
                map["Remaining"] = self.remaining!
            }
            if self.totalQuota != nil {
                map["TotalQuota"] = self.totalQuota!
            }
            if self.totalUsed != nil {
                map["TotalUsed"] = self.totalUsed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Remaining"] as? Int64 {
                self.remaining = value
            }
            if let value = dict["TotalQuota"] as? Int64 {
                self.totalQuota = value
            }
            if let value = dict["TotalUsed"] as? Int64 {
                self.totalUsed = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QueryInspirationBalanceResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryInspirationBalanceResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryInspirationBalanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInspirationBalanceResponseBody?

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
            var model = QueryInspirationBalanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryInspirationConsumeRecordsRequest : Tea.TeaModel {
    public var endTime: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sceneName: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class QueryInspirationConsumeRecordsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var amount: Int64?

            public var consumeTime: String?

            public var metaData: String?

            public var sceneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.consumeTime != nil {
                    map["ConsumeTime"] = self.consumeTime!
                }
                if self.metaData != nil {
                    map["MetaData"] = self.metaData!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int64 {
                    self.amount = value
                }
                if let value = dict["ConsumeTime"] as? String {
                    self.consumeTime = value
                }
                if let value = dict["MetaData"] as? String {
                    self.metaData = value
                }
                if let value = dict["SceneName"] as? String {
                    self.sceneName = value
                }
            }
        }
        public class Next : Tea.TeaModel {
            public var amount: Int64?

            public var consumeTime: String?

            public var metaData: String?

            public var sceneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.consumeTime != nil {
                    map["ConsumeTime"] = self.consumeTime!
                }
                if self.metaData != nil {
                    map["MetaData"] = self.metaData!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int64 {
                    self.amount = value
                }
                if let value = dict["ConsumeTime"] as? String {
                    self.consumeTime = value
                }
                if let value = dict["MetaData"] as? String {
                    self.metaData = value
                }
                if let value = dict["SceneName"] as? String {
                    self.sceneName = value
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [QueryInspirationConsumeRecordsResponseBody.Module.Data]?

        public var next: QueryInspirationConsumeRecordsResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryInspirationConsumeRecordsResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryInspirationConsumeRecordsResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = QueryInspirationConsumeRecordsResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QueryInspirationConsumeRecordsResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryInspirationConsumeRecordsResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryInspirationConsumeRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInspirationConsumeRecordsResponseBody?

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
            var model = QueryInspirationConsumeRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMaterialDirectoryTreeRequest : Tea.TeaModel {
    public var bizId: String?

    public var hiddenPublic: Bool?

    public var root: Bool?

    public override init() {
        super.init()
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
        if self.hiddenPublic != nil {
            map["HiddenPublic"] = self.hiddenPublic!
        }
        if self.root != nil {
            map["Root"] = self.root!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["HiddenPublic"] as? Bool {
            self.hiddenPublic = value
        }
        if let value = dict["Root"] as? Bool {
            self.root = value
        }
    }
}

public class QueryMaterialDirectoryTreeResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var directoryList: [AppMaterialDirectory]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.directoryList != nil {
                var tmp : [Any] = []
                for k in self.directoryList! {
                    tmp.append(k.toMap())
                }
                map["DirectoryList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DirectoryList"] as? [Any?] {
                var tmp : [AppMaterialDirectory] = []
                for v in value {
                    if v != nil {
                        var model = AppMaterialDirectory()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.directoryList = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: QueryMaterialDirectoryTreeResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryMaterialDirectoryTreeResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryMaterialDirectoryTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMaterialDirectoryTreeResponseBody?

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
            var model = QueryMaterialDirectoryTreeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMaterialFileDetailRequest : Tea.TeaModel {
    public var bizId: String?

    public var fileId: String?

    public override init() {
        super.init()
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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
    }
}

public class QueryMaterialFileDetailResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: AppMaterialFile?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = AppMaterialFile()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryMaterialFileDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMaterialFileDetailResponseBody?

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
            var model = QueryMaterialFileDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMaterialFileListRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var maxFileSize: Int64?

    public var maxResults: Int32?

    public var minFileSize: Int64?

    public var name: String?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusList: [String]?

    public var suffixList: [String]?

    public var typeList: [String]?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.maxFileSize != nil {
            map["MaxFileSize"] = self.maxFileSize!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.minFileSize != nil {
            map["MinFileSize"] = self.minFileSize!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.suffixList != nil {
            map["SuffixList"] = self.suffixList!
        }
        if self.typeList != nil {
            map["TypeList"] = self.typeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxFileSize"] as? Int64 {
            self.maxFileSize = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MinFileSize"] as? Int64 {
            self.minFileSize = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
        if let value = dict["SuffixList"] as? [String] {
            self.suffixList = value
        }
        if let value = dict["TypeList"] as? [String] {
            self.typeList = value
        }
    }
}

public class QueryMaterialFileListShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var maxFileSize: Int64?

    public var maxResults: Int32?

    public var minFileSize: Int64?

    public var name: String?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusListShrink: String?

    public var suffixListShrink: String?

    public var typeListShrink: String?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.maxFileSize != nil {
            map["MaxFileSize"] = self.maxFileSize!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.minFileSize != nil {
            map["MinFileSize"] = self.minFileSize!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusListShrink != nil {
            map["StatusList"] = self.statusListShrink!
        }
        if self.suffixListShrink != nil {
            map["SuffixList"] = self.suffixListShrink!
        }
        if self.typeListShrink != nil {
            map["TypeList"] = self.typeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxFileSize"] as? Int64 {
            self.maxFileSize = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MinFileSize"] as? Int64 {
            self.minFileSize = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? String {
            self.statusListShrink = value
        }
        if let value = dict["SuffixList"] as? String {
            self.suffixListShrink = value
        }
        if let value = dict["TypeList"] as? String {
            self.typeListShrink = value
        }
    }
}

public class QueryMaterialFileListResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var currentPageNum: Int32?

        public var data: [AppMaterialFile]?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [AppMaterialFile] = []
                for v in value {
                    if v != nil {
                        var model = AppMaterialFile()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var maxResults: Int32?

    public var module: QueryMaterialFileListResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryMaterialFileListResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryMaterialFileListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMaterialFileListResponseBody?

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
            var model = QueryMaterialFileListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMaterialFileSummaryInfoRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var name: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusList: [String]?

    public var typeList: [String]?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.typeList != nil {
            map["TypeList"] = self.typeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
        if let value = dict["TypeList"] as? [String] {
            self.typeList = value
        }
    }
}

public class QueryMaterialFileSummaryInfoShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var name: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusListShrink: String?

    public var typeListShrink: String?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusListShrink != nil {
            map["StatusList"] = self.statusListShrink!
        }
        if self.typeListShrink != nil {
            map["TypeList"] = self.typeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? String {
            self.statusListShrink = value
        }
        if let value = dict["TypeList"] as? String {
            self.typeListShrink = value
        }
    }
}

public class QueryMaterialFileSummaryInfoResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var fileNum: Int64?

        public var storageSize: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileNum != nil {
                map["FileNum"] = self.fileNum!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileNum"] as? Int64 {
                self.fileNum = value
            }
            if let value = dict["StorageSize"] as? String {
                self.storageSize = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QueryMaterialFileSummaryInfoResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryMaterialFileSummaryInfoResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryMaterialFileSummaryInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMaterialFileSummaryInfoResponseBody?

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
            var model = QueryMaterialFileSummaryInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMaterialTaskDetailRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class QueryMaterialTaskDetailResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: AppMaterialTask?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = AppMaterialTask()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryMaterialTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMaterialTaskDetailResponseBody?

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
            var model = QueryMaterialTaskDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMaterialTaskListRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusList: [String]?

    public var taskTypeList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.taskTypeList != nil {
            map["TaskTypeList"] = self.taskTypeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
        if let value = dict["TaskTypeList"] as? [String] {
            self.taskTypeList = value
        }
    }
}

public class QueryMaterialTaskListShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var statusListShrink: String?

    public var taskTypeListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusListShrink != nil {
            map["StatusList"] = self.statusListShrink!
        }
        if self.taskTypeListShrink != nil {
            map["TaskTypeList"] = self.taskTypeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? String {
            self.statusListShrink = value
        }
        if let value = dict["TaskTypeList"] as? String {
            self.taskTypeListShrink = value
        }
    }
}

public class QueryMaterialTaskListResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var currentPageNum: Int32?

        public var data: [AppMaterialTask]?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [AppMaterialTask] = []
                for v in value {
                    if v != nil {
                        var model = AppMaterialTask()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var maxResults: Int32?

    public var module: QueryMaterialTaskListResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryMaterialTaskListResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryMaterialTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMaterialTaskListResponseBody?

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
            var model = QueryMaterialTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySupabaseAuthConfigsForAdminRequest : Tea.TeaModel {
    public var authType: String?

    public var bizId: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QuerySupabaseAuthConfigsForAdminResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var configs: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configs != nil {
                map["Configs"] = self.configs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Configs"] as? [String: Any] {
                self.configs = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QuerySupabaseAuthConfigsForAdminResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QuerySupabaseAuthConfigsForAdminResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QuerySupabaseAuthConfigsForAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySupabaseAuthConfigsForAdminResponseBody?

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
            var model = QuerySupabaseAuthConfigsForAdminResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySupabaseConfigsForAdminRequest : Tea.TeaModel {
    public var bizId: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QuerySupabaseConfigsForAdminResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var configs: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configs != nil {
                map["Configs"] = self.configs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Configs"] as? [String: Any] {
                self.configs = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QuerySupabaseConfigsForAdminResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QuerySupabaseConfigsForAdminResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QuerySupabaseConfigsForAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySupabaseConfigsForAdminResponseBody?

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
            var model = QuerySupabaseConfigsForAdminResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySupabaseInstanceInfoForAdminRequest : Tea.TeaModel {
    public var bizId: String?

    public var env: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Env"] as? String {
            self.env = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QuerySupabaseInstanceInfoForAdminResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var anonKey: String?

        public var bizId: String?

        public var dbInstanceCreateTime: String?

        public var dbInstanceId: String?

        public var dbPublicUrl: String?

        public var dbType: String?

        public var extra: String?

        public var instanceCreateFinishedTime: String?

        public var instanceCreateStatus: String?

        public var isDeleted: Int32?

        public var rdsDatabasePassword: String?

        public var serviceKey: String?

        public var status: Int32?

        public var supabaseDashboardPassword: String?

        public var supabaseDashboardUserName: String?

        public var supabaseInstanceCreateTime: String?

        public var supabaseInstanceId: String?

        public var supabaseKongUrl: String?

        public var supabasePrivateIp: String?

        public var supabasePublicIp: String?

        public var supabasePublicUrl: String?

        public var tenantId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anonKey != nil {
                map["AnonKey"] = self.anonKey!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.dbInstanceCreateTime != nil {
                map["DbInstanceCreateTime"] = self.dbInstanceCreateTime!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.dbPublicUrl != nil {
                map["DbPublicUrl"] = self.dbPublicUrl!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.instanceCreateFinishedTime != nil {
                map["InstanceCreateFinishedTime"] = self.instanceCreateFinishedTime!
            }
            if self.instanceCreateStatus != nil {
                map["InstanceCreateStatus"] = self.instanceCreateStatus!
            }
            if self.isDeleted != nil {
                map["IsDeleted"] = self.isDeleted!
            }
            if self.rdsDatabasePassword != nil {
                map["RdsDatabasePassword"] = self.rdsDatabasePassword!
            }
            if self.serviceKey != nil {
                map["ServiceKey"] = self.serviceKey!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supabaseDashboardPassword != nil {
                map["SupabaseDashboardPassword"] = self.supabaseDashboardPassword!
            }
            if self.supabaseDashboardUserName != nil {
                map["SupabaseDashboardUserName"] = self.supabaseDashboardUserName!
            }
            if self.supabaseInstanceCreateTime != nil {
                map["SupabaseInstanceCreateTime"] = self.supabaseInstanceCreateTime!
            }
            if self.supabaseInstanceId != nil {
                map["SupabaseInstanceId"] = self.supabaseInstanceId!
            }
            if self.supabaseKongUrl != nil {
                map["SupabaseKongUrl"] = self.supabaseKongUrl!
            }
            if self.supabasePrivateIp != nil {
                map["SupabasePrivateIp"] = self.supabasePrivateIp!
            }
            if self.supabasePublicIp != nil {
                map["SupabasePublicIp"] = self.supabasePublicIp!
            }
            if self.supabasePublicUrl != nil {
                map["SupabasePublicUrl"] = self.supabasePublicUrl!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnonKey"] as? String {
                self.anonKey = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["DbInstanceCreateTime"] as? String {
                self.dbInstanceCreateTime = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["DbPublicUrl"] as? String {
                self.dbPublicUrl = value
            }
            if let value = dict["DbType"] as? String {
                self.dbType = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["InstanceCreateFinishedTime"] as? String {
                self.instanceCreateFinishedTime = value
            }
            if let value = dict["InstanceCreateStatus"] as? String {
                self.instanceCreateStatus = value
            }
            if let value = dict["IsDeleted"] as? Int32 {
                self.isDeleted = value
            }
            if let value = dict["RdsDatabasePassword"] as? String {
                self.rdsDatabasePassword = value
            }
            if let value = dict["ServiceKey"] as? String {
                self.serviceKey = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SupabaseDashboardPassword"] as? String {
                self.supabaseDashboardPassword = value
            }
            if let value = dict["SupabaseDashboardUserName"] as? String {
                self.supabaseDashboardUserName = value
            }
            if let value = dict["SupabaseInstanceCreateTime"] as? String {
                self.supabaseInstanceCreateTime = value
            }
            if let value = dict["SupabaseInstanceId"] as? String {
                self.supabaseInstanceId = value
            }
            if let value = dict["SupabaseKongUrl"] as? String {
                self.supabaseKongUrl = value
            }
            if let value = dict["SupabasePrivateIp"] as? String {
                self.supabasePrivateIp = value
            }
            if let value = dict["SupabasePublicIp"] as? String {
                self.supabasePublicIp = value
            }
            if let value = dict["SupabasePublicUrl"] as? String {
                self.supabasePublicUrl = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: QuerySupabaseInstanceInfoForAdminResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QuerySupabaseInstanceInfoForAdminResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QuerySupabaseInstanceInfoForAdminResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySupabaseInstanceInfoForAdminResponseBody?

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
            var model = QuerySupabaseInstanceInfoForAdminResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefreshAppInstanceTicketRequest : Tea.TeaModel {
    public var bizId: String?

    public var token: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class RefreshAppInstanceTicketResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var accessTokenExpiresAt: String?

        public var accessTokenIssuedAt: String?

        public var accessTokenValue: String?

        public var aliyunPk: String?

        public var attributes: String?

        public var authorizationGrantType: String?

        public var bid: String?

        public var parentPk: String?

        public var refreshTokenExpiresAt: String?

        public var refreshTokenIssuedAt: String?

        public var refreshTokenValue: String?

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
            if self.accessTokenExpiresAt != nil {
                map["AccessTokenExpiresAt"] = self.accessTokenExpiresAt!
            }
            if self.accessTokenIssuedAt != nil {
                map["AccessTokenIssuedAt"] = self.accessTokenIssuedAt!
            }
            if self.accessTokenValue != nil {
                map["AccessTokenValue"] = self.accessTokenValue!
            }
            if self.aliyunPk != nil {
                map["AliyunPk"] = self.aliyunPk!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.authorizationGrantType != nil {
                map["AuthorizationGrantType"] = self.authorizationGrantType!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.parentPk != nil {
                map["ParentPk"] = self.parentPk!
            }
            if self.refreshTokenExpiresAt != nil {
                map["RefreshTokenExpiresAt"] = self.refreshTokenExpiresAt!
            }
            if self.refreshTokenIssuedAt != nil {
                map["RefreshTokenIssuedAt"] = self.refreshTokenIssuedAt!
            }
            if self.refreshTokenValue != nil {
                map["RefreshTokenValue"] = self.refreshTokenValue!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenExpiresAt"] as? String {
                self.accessTokenExpiresAt = value
            }
            if let value = dict["AccessTokenIssuedAt"] as? String {
                self.accessTokenIssuedAt = value
            }
            if let value = dict["AccessTokenValue"] as? String {
                self.accessTokenValue = value
            }
            if let value = dict["AliyunPk"] as? String {
                self.aliyunPk = value
            }
            if let value = dict["Attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["AuthorizationGrantType"] as? String {
                self.authorizationGrantType = value
            }
            if let value = dict["Bid"] as? String {
                self.bid = value
            }
            if let value = dict["ParentPk"] as? String {
                self.parentPk = value
            }
            if let value = dict["RefreshTokenExpiresAt"] as? String {
                self.refreshTokenExpiresAt = value
            }
            if let value = dict["RefreshTokenIssuedAt"] as? String {
                self.refreshTokenIssuedAt = value
            }
            if let value = dict["RefreshTokenValue"] as? String {
                self.refreshTokenValue = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: RefreshAppInstanceTicketResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = RefreshAppInstanceTicketResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class RefreshAppInstanceTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshAppInstanceTicketResponseBody?

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
            var model = RefreshAppInstanceTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefundAppInstanceForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var clientToken: String?

    public var refundReason: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.refundReason != nil {
            map["RefundReason"] = self.refundReason!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RefundReason"] as? String {
            self.refundReason = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class RefundAppInstanceForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: RefundAppInstanceForPartnerResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = RefundAppInstanceForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class RefundAppInstanceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundAppInstanceForPartnerResponseBody?

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
            var model = RefundAppInstanceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewAppInstanceRequest : Tea.TeaModel {
    public var bizId: String?

    public var clientToken: String?

    public var duration: Int32?

    public var extend: String?

    public var paymentType: String?

    public var pricingCycle: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
    }
}

public class RenewAppInstanceResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: RenewAppInstanceResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = RenewAppInstanceResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class RenewAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAppInstanceResponseBody?

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
            var model = RenewAppInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchImageRequest : Tea.TeaModel {
    public var colorHex: String?

    public var hasPerson: Bool?

    public var imageCategory: String?

    public var imageRatio: String?

    public var maxHeight: Int32?

    public var maxResults: Int32?

    public var maxWidth: Int32?

    public var minHeight: Int32?

    public var minWidth: Int32?

    public var nextToken: String?

    public var ossKey: String?

    public var size: Int32?

    public var start: Int32?

    public var tags: [String]?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.colorHex != nil {
            map["ColorHex"] = self.colorHex!
        }
        if self.hasPerson != nil {
            map["HasPerson"] = self.hasPerson!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageRatio != nil {
            map["ImageRatio"] = self.imageRatio!
        }
        if self.maxHeight != nil {
            map["MaxHeight"] = self.maxHeight!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.maxWidth != nil {
            map["MaxWidth"] = self.maxWidth!
        }
        if self.minHeight != nil {
            map["MinHeight"] = self.minHeight!
        }
        if self.minWidth != nil {
            map["MinWidth"] = self.minWidth!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorHex"] as? String {
            self.colorHex = value
        }
        if let value = dict["HasPerson"] as? Bool {
            self.hasPerson = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageRatio"] as? String {
            self.imageRatio = value
        }
        if let value = dict["MaxHeight"] as? Int32 {
            self.maxHeight = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MaxWidth"] as? Int32 {
            self.maxWidth = value
        }
        if let value = dict["MinHeight"] as? Int32 {
            self.minHeight = value
        }
        if let value = dict["MinWidth"] as? Int32 {
            self.minWidth = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OssKey"] as? String {
            self.ossKey = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
    }
}

public class SearchImageShrinkRequest : Tea.TeaModel {
    public var colorHex: String?

    public var hasPerson: Bool?

    public var imageCategory: String?

    public var imageRatio: String?

    public var maxHeight: Int32?

    public var maxResults: Int32?

    public var maxWidth: Int32?

    public var minHeight: Int32?

    public var minWidth: Int32?

    public var nextToken: String?

    public var ossKey: String?

    public var size: Int32?

    public var start: Int32?

    public var tagsShrink: String?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.colorHex != nil {
            map["ColorHex"] = self.colorHex!
        }
        if self.hasPerson != nil {
            map["HasPerson"] = self.hasPerson!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageRatio != nil {
            map["ImageRatio"] = self.imageRatio!
        }
        if self.maxHeight != nil {
            map["MaxHeight"] = self.maxHeight!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.maxWidth != nil {
            map["MaxWidth"] = self.maxWidth!
        }
        if self.minHeight != nil {
            map["MinHeight"] = self.minHeight!
        }
        if self.minWidth != nil {
            map["MinWidth"] = self.minWidth!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorHex"] as? String {
            self.colorHex = value
        }
        if let value = dict["HasPerson"] as? Bool {
            self.hasPerson = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageRatio"] as? String {
            self.imageRatio = value
        }
        if let value = dict["MaxHeight"] as? Int32 {
            self.maxHeight = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MaxWidth"] as? Int32 {
            self.maxWidth = value
        }
        if let value = dict["MinHeight"] as? Int32 {
            self.minHeight = value
        }
        if let value = dict["MinWidth"] as? Int32 {
            self.minWidth = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OssKey"] as? String {
            self.ossKey = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
    }
}

public class SearchImageResponseBody : Tea.TeaModel {
    public class ImageResponse : Tea.TeaModel {
        public class ImageList : Tea.TeaModel {
            public var descriptiveTones: String?

            public var height: Int32?

            public var imageCategory: String?

            public var imageRatio: String?

            public var imageUuid: String?

            public var ossKey: String?

            public var quantitativePalette: String?

            public var tagsFromImage: String?

            public var url: String?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.descriptiveTones != nil {
                    map["DescriptiveTones"] = self.descriptiveTones!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.imageCategory != nil {
                    map["ImageCategory"] = self.imageCategory!
                }
                if self.imageRatio != nil {
                    map["ImageRatio"] = self.imageRatio!
                }
                if self.imageUuid != nil {
                    map["ImageUuid"] = self.imageUuid!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.quantitativePalette != nil {
                    map["QuantitativePalette"] = self.quantitativePalette!
                }
                if self.tagsFromImage != nil {
                    map["TagsFromImage"] = self.tagsFromImage!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DescriptiveTones"] as? String {
                    self.descriptiveTones = value
                }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["ImageCategory"] as? String {
                    self.imageCategory = value
                }
                if let value = dict["ImageRatio"] as? String {
                    self.imageRatio = value
                }
                if let value = dict["ImageUuid"] as? String {
                    self.imageUuid = value
                }
                if let value = dict["OssKey"] as? String {
                    self.ossKey = value
                }
                if let value = dict["QuantitativePalette"] as? String {
                    self.quantitativePalette = value
                }
                if let value = dict["TagsFromImage"] as? String {
                    self.tagsFromImage = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public var imageList: [SearchImageResponseBody.ImageResponse.ImageList]?

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
            if self.imageList != nil {
                var tmp : [Any] = []
                for k in self.imageList! {
                    tmp.append(k.toMap())
                }
                map["ImageList"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageList"] as? [Any?] {
                var tmp : [SearchImageResponseBody.ImageResponse.ImageList] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageResponseBody.ImageResponse.ImageList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.imageList = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var imageResponse: SearchImageResponseBody.ImageResponse?

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
        try self.imageResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.imageResponse != nil {
            map["ImageResponse"] = self.imageResponse?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["ImageResponse"] as? [String: Any?] {
            var model = SearchImageResponseBody.ImageResponse()
            model.fromMap(value)
            self.imageResponse = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class SearchImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageResponseBody?

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
            var model = SearchImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetAppDomainCertificateRequest : Tea.TeaModel {
    public var bizId: String?

    public var certificateName: String?

    public var certificateType: String?

    public var domainName: String?

    public var privateKey: String?

    public var publicKey: String?

    public override init() {
        super.init()
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
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.certificateType != nil {
            map["CertificateType"] = self.certificateType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CertificateName"] as? String {
            self.certificateName = value
        }
        if let value = dict["CertificateType"] as? String {
            self.certificateType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
    }
}

public class SetAppDomainCertificateResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: SetAppDomainCertificateResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = SetAppDomainCertificateResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class SetAppDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAppDomainCertificateResponseBody?

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
            var model = SetAppDomainCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitMaterialTaskRequest : Tea.TeaModel {
    public var taskParam: String?

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
        if self.taskParam != nil {
            map["TaskParam"] = self.taskParam!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskParam"] as? String {
            self.taskParam = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class SubmitMaterialTaskResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: SubmitMaterialTaskResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = SubmitMaterialTaskResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class SubmitMaterialTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitMaterialTaskResponseBody?

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
            var model = SubmitMaterialTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncAppInstanceForPartnerRequest : Tea.TeaModel {
    public class AppInstance : Tea.TeaModel {
        public class Profile : Tea.TeaModel {
            public var deployArea: String?

            public var lxInstanceId: String?

            public var orderId: String?

            public var siteVersion: String?

            public var templateEtag: String?

            public var templateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deployArea != nil {
                    map["DeployArea"] = self.deployArea!
                }
                if self.lxInstanceId != nil {
                    map["LxInstanceId"] = self.lxInstanceId!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.siteVersion != nil {
                    map["SiteVersion"] = self.siteVersion!
                }
                if self.templateEtag != nil {
                    map["TemplateEtag"] = self.templateEtag!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeployArea"] as? String {
                    self.deployArea = value
                }
                if let value = dict["LxInstanceId"] as? String {
                    self.lxInstanceId = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["SiteVersion"] as? String {
                    self.siteVersion = value
                }
                if let value = dict["TemplateEtag"] as? String {
                    self.templateEtag = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
            }
        }
        public var appType: String?

        public var bizId: String?

        public var deleted: String?

        public var domain: String?

        public var endTime: String?

        public var gmtDelete: String?

        public var gmtPublish: String?

        public var iconUrl: String?

        public var name: String?

        public var profile: SyncAppInstanceForPartnerRequest.AppInstance.Profile?

        public var siteHost: String?

        public var slug: String?

        public var startTime: String?

        public var status: String?

        public var thumbnailUrl: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.profile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.gmtDelete != nil {
                map["GmtDelete"] = self.gmtDelete!
            }
            if self.gmtPublish != nil {
                map["GmtPublish"] = self.gmtPublish!
            }
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.profile != nil {
                map["Profile"] = self.profile?.toMap()
            }
            if self.siteHost != nil {
                map["SiteHost"] = self.siteHost!
            }
            if self.slug != nil {
                map["Slug"] = self.slug!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.thumbnailUrl != nil {
                map["ThumbnailUrl"] = self.thumbnailUrl!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["Deleted"] as? String {
                self.deleted = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["GmtDelete"] as? String {
                self.gmtDelete = value
            }
            if let value = dict["GmtPublish"] as? String {
                self.gmtPublish = value
            }
            if let value = dict["IconUrl"] as? String {
                self.iconUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Profile"] as? [String: Any?] {
                var model = SyncAppInstanceForPartnerRequest.AppInstance.Profile()
                model.fromMap(value)
                self.profile = model
            }
            if let value = dict["SiteHost"] as? String {
                self.siteHost = value
            }
            if let value = dict["Slug"] as? String {
                self.slug = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ThumbnailUrl"] as? String {
                self.thumbnailUrl = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var appInstance: SyncAppInstanceForPartnerRequest.AppInstance?

    public var eventType: String?

    public var operator_: String?

    public var sourceBizId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstance != nil {
            map["AppInstance"] = self.appInstance?.toMap()
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.sourceBizId != nil {
            map["SourceBizId"] = self.sourceBizId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstance"] as? [String: Any?] {
            var model = SyncAppInstanceForPartnerRequest.AppInstance()
            model.fromMap(value)
            self.appInstance = model
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SourceBizId"] as? String {
            self.sourceBizId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SyncAppInstanceForPartnerShrinkRequest : Tea.TeaModel {
    public var appInstanceShrink: String?

    public var eventType: String?

    public var operator_: String?

    public var sourceBizId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceShrink != nil {
            map["AppInstance"] = self.appInstanceShrink!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.sourceBizId != nil {
            map["SourceBizId"] = self.sourceBizId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstance"] as? String {
            self.appInstanceShrink = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SourceBizId"] as? String {
            self.sourceBizId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SyncAppInstanceForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppInstance : Tea.TeaModel {
            public var bizId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
            }
        }
        public var appInstance: SyncAppInstanceForPartnerResponseBody.Data.AppInstance?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appInstance?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstance != nil {
                map["AppInstance"] = self.appInstance?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstance"] as? [String: Any?] {
                var model = SyncAppInstanceForPartnerResponseBody.Data.AppInstance()
                model.fromMap(value)
                self.appInstance = model
            }
        }
    }
    public var data: SyncAppInstanceForPartnerResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SyncAppInstanceForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SyncAppInstanceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncAppInstanceForPartnerResponseBody?

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
            var model = SyncAppInstanceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindAppDomainRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
    }
}

public class UnbindAppDomainResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: UnbindAppDomainResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = UnbindAppDomainResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class UnbindAppDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAppDomainResponseBody?

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
            var model = UnbindAppDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadMaterialFileRequest : Tea.TeaModel {
    public var bizId: String?

    public var directoryId: String?

    public var fileUrl: String?

    public var name: String?

    public override init() {
        super.init()
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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UploadMaterialFileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var module: AppMaterialFile?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = AppMaterialFile()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class UploadMaterialFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadMaterialFileResponseBody?

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
            var model = UploadMaterialFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
