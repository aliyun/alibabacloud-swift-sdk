import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCategoryRequest : Tea.TeaModel {
    public var categoryName: String?

    public var categoryType: String?

    public var parentCategoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["ParentCategoryId"] as? String {
            self.parentCategoryId = value
        }
    }
}

public class AddCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public var categoryName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? String {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
        }
    }
    public var code: String?

    public var data: AddCategoryResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCategoryResponseBody?

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
            var model = AddCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFileRequest : Tea.TeaModel {
    public var categoryId: String?

    public var categoryType: String?

    public var leaseId: String?

    public var originalFileUrl: String?

    public var parser: String?

    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.leaseId != nil {
            map["LeaseId"] = self.leaseId!
        }
        if self.originalFileUrl != nil {
            map["OriginalFileUrl"] = self.originalFileUrl!
        }
        if self.parser != nil {
            map["Parser"] = self.parser!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["LeaseId"] as? String {
            self.leaseId = value
        }
        if let value = dict["OriginalFileUrl"] as? String {
            self.originalFileUrl = value
        }
        if let value = dict["Parser"] as? String {
            self.parser = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
    }
}

public class AddFileShrinkRequest : Tea.TeaModel {
    public var categoryId: String?

    public var categoryType: String?

    public var leaseId: String?

    public var originalFileUrl: String?

    public var parser: String?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.leaseId != nil {
            map["LeaseId"] = self.leaseId!
        }
        if self.originalFileUrl != nil {
            map["OriginalFileUrl"] = self.originalFileUrl!
        }
        if self.parser != nil {
            map["Parser"] = self.parser!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["LeaseId"] as? String {
            self.leaseId = value
        }
        if let value = dict["OriginalFileUrl"] as? String {
            self.originalFileUrl = value
        }
        if let value = dict["Parser"] as? String {
            self.parser = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class AddFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileId: String?

        public var parser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.parser != nil {
                map["Parser"] = self.parser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["Parser"] as? String {
                self.parser = value
            }
        }
    }
    public var code: String?

    public var data: AddFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class AddFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFileResponseBody?

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
            var model = AddFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddFilesFromAuthorizedOssRequest : Tea.TeaModel {
    public class FileDetails : Tea.TeaModel {
        public var fileName: String?

        public var ossKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["OssKey"] as? String {
                self.ossKey = value
            }
        }
    }
    public var categoryId: String?

    public var categoryType: String?

    public var fileDetails: [AddFilesFromAuthorizedOssRequest.FileDetails]?

    public var ossBucketName: String?

    public var ossRegionId: String?

    public var overWriteFileByOssKey: Bool?

    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.fileDetails != nil {
            var tmp : [Any] = []
            for k in self.fileDetails! {
                tmp.append(k.toMap())
            }
            map["FileDetails"] = tmp
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossRegionId != nil {
            map["OssRegionId"] = self.ossRegionId!
        }
        if self.overWriteFileByOssKey != nil {
            map["OverWriteFileByOssKey"] = self.overWriteFileByOssKey!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["FileDetails"] as? [Any?] {
            var tmp : [AddFilesFromAuthorizedOssRequest.FileDetails] = []
            for v in value {
                if v != nil {
                    var model = AddFilesFromAuthorizedOssRequest.FileDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileDetails = tmp
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssRegionId"] as? String {
            self.ossRegionId = value
        }
        if let value = dict["OverWriteFileByOssKey"] as? Bool {
            self.overWriteFileByOssKey = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
    }
}

public class AddFilesFromAuthorizedOssShrinkRequest : Tea.TeaModel {
    public var categoryId: String?

    public var categoryType: String?

    public var fileDetailsShrink: String?

    public var ossBucketName: String?

    public var ossRegionId: String?

    public var overWriteFileByOssKey: Bool?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.fileDetailsShrink != nil {
            map["FileDetails"] = self.fileDetailsShrink!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossRegionId != nil {
            map["OssRegionId"] = self.ossRegionId!
        }
        if self.overWriteFileByOssKey != nil {
            map["OverWriteFileByOssKey"] = self.overWriteFileByOssKey!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["FileDetails"] as? String {
            self.fileDetailsShrink = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssRegionId"] as? String {
            self.ossRegionId = value
        }
        if let value = dict["OverWriteFileByOssKey"] as? Bool {
            self.overWriteFileByOssKey = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class AddFilesFromAuthorizedOssResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AddFileResultList : Tea.TeaModel {
            public var fileId: String?

            public var msg: String?

            public var ossKey: String?

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
                if self.fileId != nil {
                    map["FileId"] = self.fileId!
                }
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["Msg"] as? String {
                    self.msg = value
                }
                if let value = dict["OssKey"] as? String {
                    self.ossKey = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var addFileResultList: [AddFilesFromAuthorizedOssResponseBody.Data.AddFileResultList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addFileResultList != nil {
                var tmp : [Any] = []
                for k in self.addFileResultList! {
                    tmp.append(k.toMap())
                }
                map["AddFileResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddFileResultList"] as? [Any?] {
                var tmp : [AddFilesFromAuthorizedOssResponseBody.Data.AddFileResultList] = []
                for v in value {
                    if v != nil {
                        var model = AddFilesFromAuthorizedOssResponseBody.Data.AddFileResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.addFileResultList = tmp
            }
        }
    }
    public var code: String?

    public var data: AddFilesFromAuthorizedOssResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddFilesFromAuthorizedOssResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class AddFilesFromAuthorizedOssResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFilesFromAuthorizedOssResponseBody?

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
            var model = AddFilesFromAuthorizedOssResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyFileUploadLeaseRequest : Tea.TeaModel {
    public var categoryType: String?

    public var fileName: String?

    public var md5: String?

    public var sizeInBytes: String?

    public var useInternalEndpoint: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.md5 != nil {
            map["Md5"] = self.md5!
        }
        if self.sizeInBytes != nil {
            map["SizeInBytes"] = self.sizeInBytes!
        }
        if self.useInternalEndpoint != nil {
            map["UseInternalEndpoint"] = self.useInternalEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["Md5"] as? String {
            self.md5 = value
        }
        if let value = dict["SizeInBytes"] as? String {
            self.sizeInBytes = value
        }
        if let value = dict["UseInternalEndpoint"] as? Bool {
            self.useInternalEndpoint = value
        }
    }
}

public class ApplyFileUploadLeaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Param : Tea.TeaModel {
            public var headers: Any?

            public var method: String?

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
                if self.headers != nil {
                    map["Headers"] = self.headers!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Headers"] as? Any {
                    self.headers = value
                }
                if let value = dict["Method"] as? String {
                    self.method = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var fileUploadLeaseId: String?

        public var param: ApplyFileUploadLeaseResponseBody.Data.Param?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.param?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUploadLeaseId != nil {
                map["FileUploadLeaseId"] = self.fileUploadLeaseId!
            }
            if self.param != nil {
                map["Param"] = self.param?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileUploadLeaseId"] as? String {
                self.fileUploadLeaseId = value
            }
            if let value = dict["Param"] as? [String: Any?] {
                var model = ApplyFileUploadLeaseResponseBody.Data.Param()
                model.fromMap(value)
                self.param = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var data: ApplyFileUploadLeaseResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ApplyFileUploadLeaseResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ApplyFileUploadLeaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyFileUploadLeaseResponseBody?

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
            var model = ApplyFileUploadLeaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyTempStorageLeaseRequest : Tea.TeaModel {
    public var fileName: String?

    public var sizeInBytes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.sizeInBytes != nil {
            map["SizeInBytes"] = self.sizeInBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["SizeInBytes"] as? Int64 {
            self.sizeInBytes = value
        }
    }
}

public class ApplyTempStorageLeaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Param : Tea.TeaModel {
            public var headers: Any?

            public var method: String?

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
                if self.headers != nil {
                    map["Headers"] = self.headers!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Headers"] as? Any {
                    self.headers = value
                }
                if let value = dict["Method"] as? String {
                    self.method = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var param: ApplyTempStorageLeaseResponseBody.Data.Param?

        public var tempStorageLeaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.param?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.param != nil {
                map["Param"] = self.param?.toMap()
            }
            if self.tempStorageLeaseId != nil {
                map["TempStorageLeaseId"] = self.tempStorageLeaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Param"] as? [String: Any?] {
                var model = ApplyTempStorageLeaseResponseBody.Data.Param()
                model.fromMap(value)
                self.param = model
            }
            if let value = dict["TempStorageLeaseId"] as? String {
                self.tempStorageLeaseId = value
            }
        }
    }
    public var code: String?

    public var data: ApplyTempStorageLeaseResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ApplyTempStorageLeaseResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ApplyTempStorageLeaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyTempStorageLeaseResponseBody?

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
            var model = ApplyTempStorageLeaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeParseSettingRequest : Tea.TeaModel {
    public class ParserConfig : Tea.TeaModel {
        public var modelName: String?

        public var modelPrompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.modelPrompt != nil {
                map["modelPrompt"] = self.modelPrompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["modelPrompt"] as? String {
                self.modelPrompt = value
            }
        }
    }
    public var categoryId: String?

    public var fileType: String?

    public var parser: String?

    public var parserConfig: ChangeParseSettingRequest.ParserConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parserConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.parser != nil {
            map["Parser"] = self.parser!
        }
        if self.parserConfig != nil {
            map["ParserConfig"] = self.parserConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["Parser"] as? String {
            self.parser = value
        }
        if let value = dict["ParserConfig"] as? [String: Any?] {
            var model = ChangeParseSettingRequest.ParserConfig()
            model.fromMap(value)
            self.parserConfig = model
        }
    }
}

public class ChangeParseSettingShrinkRequest : Tea.TeaModel {
    public var categoryId: String?

    public var fileType: String?

    public var parser: String?

    public var parserConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.parser != nil {
            map["Parser"] = self.parser!
        }
        if self.parserConfigShrink != nil {
            map["ParserConfig"] = self.parserConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["Parser"] as? String {
            self.parser = value
        }
        if let value = dict["ParserConfig"] as? String {
            self.parserConfigShrink = value
        }
    }
}

public class ChangeParseSettingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var changeResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeResult != nil {
                map["ChangeResult"] = self.changeResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeResult"] as? Bool {
                self.changeResult = value
            }
        }
    }
    public var code: String?

    public var data: ChangeParseSettingResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ChangeParseSettingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChangeParseSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeParseSettingResponseBody?

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
            var model = ChangeParseSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAndPulishAgentRequest : Tea.TeaModel {
    public class ApplicationConfig : Tea.TeaModel {
        public class HistoryConfig : Tea.TeaModel {
            public var enableAdbRecord: Bool?

            public var enableRecord: Bool?

            public var instanceId: String?

            public var region: String?

            public var storeCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableAdbRecord != nil {
                    map["enableAdbRecord"] = self.enableAdbRecord!
                }
                if self.enableRecord != nil {
                    map["enableRecord"] = self.enableRecord!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.storeCode != nil {
                    map["storeCode"] = self.storeCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableAdbRecord"] as? Bool {
                    self.enableAdbRecord = value
                }
                if let value = dict["enableRecord"] as? Bool {
                    self.enableRecord = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["storeCode"] as? String {
                    self.storeCode = value
                }
            }
        }
        public class LongTermMemory : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var dialogRound: Int32?

            public var enableThinking: Bool?

            public var maxTokens: Int32?

            public var temperature: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogRound != nil {
                    map["dialogRound"] = self.dialogRound!
                }
                if self.enableThinking != nil {
                    map["enable_thinking"] = self.enableThinking!
                }
                if self.maxTokens != nil {
                    map["maxTokens"] = self.maxTokens!
                }
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dialogRound"] as? Int32 {
                    self.dialogRound = value
                }
                if let value = dict["enable_thinking"] as? Bool {
                    self.enableThinking = value
                }
                if let value = dict["maxTokens"] as? Int32 {
                    self.maxTokens = value
                }
                if let value = dict["temperature"] as? Double {
                    self.temperature = value
                }
            }
        }
        public class RagConfig : Tea.TeaModel {
            public var answerScope: String?

            public var enableCitation: Bool?

            public var enableSearch: Bool?

            public var enableWebSearch: Bool?

            public var fixedReplyDetail: String?

            public var knowledgeBaseCodeList: [String]?

            public var promptStrategy: String?

            public var ragRejectType: String?

            public var rejectFilterPrompt: String?

            public var rejectFilterType: String?

            public var retrieveMaxLength: Int32?

            public var topK: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerScope != nil {
                    map["answerScope"] = self.answerScope!
                }
                if self.enableCitation != nil {
                    map["enableCitation"] = self.enableCitation!
                }
                if self.enableSearch != nil {
                    map["enableSearch"] = self.enableSearch!
                }
                if self.enableWebSearch != nil {
                    map["enableWebSearch"] = self.enableWebSearch!
                }
                if self.fixedReplyDetail != nil {
                    map["fixedReplyDetail"] = self.fixedReplyDetail!
                }
                if self.knowledgeBaseCodeList != nil {
                    map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                }
                if self.promptStrategy != nil {
                    map["promptStrategy"] = self.promptStrategy!
                }
                if self.ragRejectType != nil {
                    map["ragRejectType"] = self.ragRejectType!
                }
                if self.rejectFilterPrompt != nil {
                    map["rejectFilterPrompt"] = self.rejectFilterPrompt!
                }
                if self.rejectFilterType != nil {
                    map["rejectFilterType"] = self.rejectFilterType!
                }
                if self.retrieveMaxLength != nil {
                    map["retrieveMaxLength"] = self.retrieveMaxLength!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerScope"] as? String {
                    self.answerScope = value
                }
                if let value = dict["enableCitation"] as? Bool {
                    self.enableCitation = value
                }
                if let value = dict["enableSearch"] as? Bool {
                    self.enableSearch = value
                }
                if let value = dict["enableWebSearch"] as? Bool {
                    self.enableWebSearch = value
                }
                if let value = dict["fixedReplyDetail"] as? String {
                    self.fixedReplyDetail = value
                }
                if let value = dict["knowledgeBaseCodeList"] as? [String] {
                    self.knowledgeBaseCodeList = value
                }
                if let value = dict["promptStrategy"] as? String {
                    self.promptStrategy = value
                }
                if let value = dict["ragRejectType"] as? String {
                    self.ragRejectType = value
                }
                if let value = dict["rejectFilterPrompt"] as? String {
                    self.rejectFilterPrompt = value
                }
                if let value = dict["rejectFilterType"] as? String {
                    self.rejectFilterType = value
                }
                if let value = dict["retrieveMaxLength"] as? Int32 {
                    self.retrieveMaxLength = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
                }
            }
        }
        public class SecurityConfig : Tea.TeaModel {
            public var processingStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.processingStrategy != nil {
                    map["processingStrategy"] = self.processingStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["processingStrategy"] as? String {
                    self.processingStrategy = value
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class WorkFlows : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var historyConfig: CreateAndPulishAgentRequest.ApplicationConfig.HistoryConfig?

        public var longTermMemory: CreateAndPulishAgentRequest.ApplicationConfig.LongTermMemory?

        public var parameters: CreateAndPulishAgentRequest.ApplicationConfig.Parameters?

        public var ragConfig: CreateAndPulishAgentRequest.ApplicationConfig.RagConfig?

        public var securityConfig: CreateAndPulishAgentRequest.ApplicationConfig.SecurityConfig?

        public var tools: [CreateAndPulishAgentRequest.ApplicationConfig.Tools]?

        public var workFlows: [CreateAndPulishAgentRequest.ApplicationConfig.WorkFlows]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.historyConfig?.validate()
            try self.longTermMemory?.validate()
            try self.parameters?.validate()
            try self.ragConfig?.validate()
            try self.securityConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyConfig != nil {
                map["historyConfig"] = self.historyConfig?.toMap()
            }
            if self.longTermMemory != nil {
                map["longTermMemory"] = self.longTermMemory?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters?.toMap()
            }
            if self.ragConfig != nil {
                map["ragConfig"] = self.ragConfig?.toMap()
            }
            if self.securityConfig != nil {
                map["securityConfig"] = self.securityConfig?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.workFlows != nil {
                var tmp : [Any] = []
                for k in self.workFlows! {
                    tmp.append(k.toMap())
                }
                map["workFlows"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["historyConfig"] as? [String: Any?] {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.HistoryConfig()
                model.fromMap(value)
                self.historyConfig = model
            }
            if let value = dict["longTermMemory"] as? [String: Any?] {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.LongTermMemory()
                model.fromMap(value)
                self.longTermMemory = model
            }
            if let value = dict["parameters"] as? [String: Any?] {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.Parameters()
                model.fromMap(value)
                self.parameters = model
            }
            if let value = dict["ragConfig"] as? [String: Any?] {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.RagConfig()
                model.fromMap(value)
                self.ragConfig = model
            }
            if let value = dict["securityConfig"] as? [String: Any?] {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.SecurityConfig()
                model.fromMap(value)
                self.securityConfig = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [CreateAndPulishAgentRequest.ApplicationConfig.Tools] = []
                for v in value {
                    if v != nil {
                        var model = CreateAndPulishAgentRequest.ApplicationConfig.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["workFlows"] as? [Any?] {
                var tmp : [CreateAndPulishAgentRequest.ApplicationConfig.WorkFlows] = []
                for v in value {
                    if v != nil {
                        var model = CreateAndPulishAgentRequest.ApplicationConfig.WorkFlows()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.workFlows = tmp
            }
        }
    }
    public class SampleLibrary : Tea.TeaModel {
        public var enableSample: Bool?

        public var sampleLibraryIdList: [String]?

        public var topK: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableSample != nil {
                map["enableSample"] = self.enableSample!
            }
            if self.sampleLibraryIdList != nil {
                map["sampleLibraryIdList"] = self.sampleLibraryIdList!
            }
            if self.topK != nil {
                map["topK"] = self.topK!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableSample"] as? Bool {
                self.enableSample = value
            }
            if let value = dict["sampleLibraryIdList"] as? [String] {
                self.sampleLibraryIdList = value
            }
            if let value = dict["topK"] as? Int32 {
                self.topK = value
            }
        }
    }
    public var applicationConfig: CreateAndPulishAgentRequest.ApplicationConfig?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public var sampleLibrary: CreateAndPulishAgentRequest.SampleLibrary?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationConfig?.validate()
        try self.sampleLibrary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfig != nil {
            map["applicationConfig"] = self.applicationConfig?.toMap()
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sampleLibrary != nil {
            map["sampleLibrary"] = self.sampleLibrary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfig"] as? [String: Any?] {
            var model = CreateAndPulishAgentRequest.ApplicationConfig()
            model.fromMap(value)
            self.applicationConfig = model
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sampleLibrary"] as? [String: Any?] {
            var model = CreateAndPulishAgentRequest.SampleLibrary()
            model.fromMap(value)
            self.sampleLibrary = model
        }
    }
}

public class CreateAndPulishAgentShrinkRequest : Tea.TeaModel {
    public var applicationConfigShrink: String?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public var sampleLibraryShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfigShrink != nil {
            map["applicationConfig"] = self.applicationConfigShrink!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sampleLibraryShrink != nil {
            map["sampleLibrary"] = self.sampleLibraryShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfig"] as? String {
            self.applicationConfigShrink = value
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sampleLibrary"] as? String {
            self.sampleLibraryShrink = value
        }
    }
}

public class CreateAndPulishAgentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateAndPulishAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndPulishAgentResponseBody?

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
            var model = CreateAndPulishAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIndexRequest : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public var column: String?

        public var isRecall: Bool?

        public var isSearch: Bool?

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
            if self.column != nil {
                map["Column"] = self.column!
            }
            if self.isRecall != nil {
                map["IsRecall"] = self.isRecall!
            }
            if self.isSearch != nil {
                map["IsSearch"] = self.isSearch!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Column"] as? String {
                self.column = value
            }
            if let value = dict["IsRecall"] as? Bool {
                self.isRecall = value
            }
            if let value = dict["IsSearch"] as? Bool {
                self.isSearch = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class DataSource : Tea.TeaModel {
        public var credentialId: String?

        public var credentialKey: String?

        public var database: String?

        public var endpoint: String?

        public var isPrivateLink: Bool?

        public var region: String?

        public var subPath: String?

        public var subType: String?

        public var table: String?

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
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.credentialKey != nil {
                map["CredentialKey"] = self.credentialKey!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.isPrivateLink != nil {
                map["IsPrivateLink"] = self.isPrivateLink!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.subPath != nil {
                map["SubPath"] = self.subPath!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.table != nil {
                map["Table"] = self.table!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CredentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["CredentialKey"] as? String {
                self.credentialKey = value
            }
            if let value = dict["Database"] as? String {
                self.database = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["IsPrivateLink"] as? Bool {
                self.isPrivateLink = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SubPath"] as? String {
                self.subPath = value
            }
            if let value = dict["SubType"] as? String {
                self.subType = value
            }
            if let value = dict["Table"] as? String {
                self.table = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class MetaExtractColumns : Tea.TeaModel {
        public var desc: String?

        public var enableLlm: Bool?

        public var enableSearch: Bool?

        public var key: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.enableLlm != nil {
                map["EnableLlm"] = self.enableLlm!
            }
            if self.enableSearch != nil {
                map["EnableSearch"] = self.enableSearch!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["EnableLlm"] as? Bool {
                self.enableLlm = value
            }
            if let value = dict["EnableSearch"] as? Bool {
                self.enableSearch = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var categoryIds: [String]?

    public var chunkSize: Int32?

    public var columns: [CreateIndexRequest.Columns]?

    public var createIndexType: String?

    public var dataSource: CreateIndexRequest.DataSource?

    public var description_: String?

    public var documentIds: [String]?

    public var embeddingModelName: String?

    public var enableRewrite: Bool?

    public var name: String?

    public var overlapSize: Int32?

    public var rerankMinScore: Double?

    public var rerankModelName: String?

    public var separator: String?

    public var sinkInstanceId: String?

    public var sinkRegion: String?

    public var sinkType: String?

    public var sourceType: String?

    public var structureType: String?

    public var tableIds: [String]?

    public var chunkMode: String?

    public var database: String?

    public var datasourceCode: String?

    public var enableHeaders: Bool?

    public var metaExtractColumns: [CreateIndexRequest.MetaExtractColumns]?

    public var pipelineCommercialCu: Int32?

    public var pipelineCommercialType: String?

    public var pipelineRetrieveRateLimitStrategy: String?

    public var table: String?

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
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.createIndexType != nil {
            map["CreateIndexType"] = self.createIndexType!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentIds != nil {
            map["DocumentIds"] = self.documentIds!
        }
        if self.embeddingModelName != nil {
            map["EmbeddingModelName"] = self.embeddingModelName!
        }
        if self.enableRewrite != nil {
            map["EnableRewrite"] = self.enableRewrite!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.overlapSize != nil {
            map["OverlapSize"] = self.overlapSize!
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankModelName != nil {
            map["RerankModelName"] = self.rerankModelName!
        }
        if self.separator != nil {
            map["Separator"] = self.separator!
        }
        if self.sinkInstanceId != nil {
            map["SinkInstanceId"] = self.sinkInstanceId!
        }
        if self.sinkRegion != nil {
            map["SinkRegion"] = self.sinkRegion!
        }
        if self.sinkType != nil {
            map["SinkType"] = self.sinkType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.structureType != nil {
            map["StructureType"] = self.structureType!
        }
        if self.tableIds != nil {
            map["TableIds"] = self.tableIds!
        }
        if self.chunkMode != nil {
            map["chunkMode"] = self.chunkMode!
        }
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.datasourceCode != nil {
            map["datasourceCode"] = self.datasourceCode!
        }
        if self.enableHeaders != nil {
            map["enableHeaders"] = self.enableHeaders!
        }
        if self.metaExtractColumns != nil {
            var tmp : [Any] = []
            for k in self.metaExtractColumns! {
                tmp.append(k.toMap())
            }
            map["metaExtractColumns"] = tmp
        }
        if self.pipelineCommercialCu != nil {
            map["pipelineCommercialCu"] = self.pipelineCommercialCu!
        }
        if self.pipelineCommercialType != nil {
            map["pipelineCommercialType"] = self.pipelineCommercialType!
        }
        if self.pipelineRetrieveRateLimitStrategy != nil {
            map["pipelineRetrieveRateLimitStrategy"] = self.pipelineRetrieveRateLimitStrategy!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryIds"] as? [String] {
            self.categoryIds = value
        }
        if let value = dict["ChunkSize"] as? Int32 {
            self.chunkSize = value
        }
        if let value = dict["Columns"] as? [Any?] {
            var tmp : [CreateIndexRequest.Columns] = []
            for v in value {
                if v != nil {
                    var model = CreateIndexRequest.Columns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["CreateIndexType"] as? String {
            self.createIndexType = value
        }
        if let value = dict["DataSource"] as? [String: Any?] {
            var model = CreateIndexRequest.DataSource()
            model.fromMap(value)
            self.dataSource = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DocumentIds"] as? [String] {
            self.documentIds = value
        }
        if let value = dict["EmbeddingModelName"] as? String {
            self.embeddingModelName = value
        }
        if let value = dict["EnableRewrite"] as? Bool {
            self.enableRewrite = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OverlapSize"] as? Int32 {
            self.overlapSize = value
        }
        if let value = dict["RerankMinScore"] as? Double {
            self.rerankMinScore = value
        }
        if let value = dict["RerankModelName"] as? String {
            self.rerankModelName = value
        }
        if let value = dict["Separator"] as? String {
            self.separator = value
        }
        if let value = dict["SinkInstanceId"] as? String {
            self.sinkInstanceId = value
        }
        if let value = dict["SinkRegion"] as? String {
            self.sinkRegion = value
        }
        if let value = dict["SinkType"] as? String {
            self.sinkType = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StructureType"] as? String {
            self.structureType = value
        }
        if let value = dict["TableIds"] as? [String] {
            self.tableIds = value
        }
        if let value = dict["chunkMode"] as? String {
            self.chunkMode = value
        }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["datasourceCode"] as? String {
            self.datasourceCode = value
        }
        if let value = dict["enableHeaders"] as? Bool {
            self.enableHeaders = value
        }
        if let value = dict["metaExtractColumns"] as? [Any?] {
            var tmp : [CreateIndexRequest.MetaExtractColumns] = []
            for v in value {
                if v != nil {
                    var model = CreateIndexRequest.MetaExtractColumns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metaExtractColumns = tmp
        }
        if let value = dict["pipelineCommercialCu"] as? Int32 {
            self.pipelineCommercialCu = value
        }
        if let value = dict["pipelineCommercialType"] as? String {
            self.pipelineCommercialType = value
        }
        if let value = dict["pipelineRetrieveRateLimitStrategy"] as? String {
            self.pipelineRetrieveRateLimitStrategy = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class CreateIndexShrinkRequest : Tea.TeaModel {
    public var categoryIdsShrink: String?

    public var chunkSize: Int32?

    public var columnsShrink: String?

    public var createIndexType: String?

    public var dataSourceShrink: String?

    public var description_: String?

    public var documentIdsShrink: String?

    public var embeddingModelName: String?

    public var enableRewrite: Bool?

    public var name: String?

    public var overlapSize: Int32?

    public var rerankMinScore: Double?

    public var rerankModelName: String?

    public var separator: String?

    public var sinkInstanceId: String?

    public var sinkRegion: String?

    public var sinkType: String?

    public var sourceType: String?

    public var structureType: String?

    public var tableIdsShrink: String?

    public var chunkMode: String?

    public var database: String?

    public var datasourceCode: String?

    public var enableHeaders: Bool?

    public var metaExtractColumnsShrink: String?

    public var pipelineCommercialCu: Int32?

    public var pipelineCommercialType: String?

    public var pipelineRetrieveRateLimitStrategy: String?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryIdsShrink != nil {
            map["CategoryIds"] = self.categoryIdsShrink!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.columnsShrink != nil {
            map["Columns"] = self.columnsShrink!
        }
        if self.createIndexType != nil {
            map["CreateIndexType"] = self.createIndexType!
        }
        if self.dataSourceShrink != nil {
            map["DataSource"] = self.dataSourceShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentIdsShrink != nil {
            map["DocumentIds"] = self.documentIdsShrink!
        }
        if self.embeddingModelName != nil {
            map["EmbeddingModelName"] = self.embeddingModelName!
        }
        if self.enableRewrite != nil {
            map["EnableRewrite"] = self.enableRewrite!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.overlapSize != nil {
            map["OverlapSize"] = self.overlapSize!
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankModelName != nil {
            map["RerankModelName"] = self.rerankModelName!
        }
        if self.separator != nil {
            map["Separator"] = self.separator!
        }
        if self.sinkInstanceId != nil {
            map["SinkInstanceId"] = self.sinkInstanceId!
        }
        if self.sinkRegion != nil {
            map["SinkRegion"] = self.sinkRegion!
        }
        if self.sinkType != nil {
            map["SinkType"] = self.sinkType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.structureType != nil {
            map["StructureType"] = self.structureType!
        }
        if self.tableIdsShrink != nil {
            map["TableIds"] = self.tableIdsShrink!
        }
        if self.chunkMode != nil {
            map["chunkMode"] = self.chunkMode!
        }
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.datasourceCode != nil {
            map["datasourceCode"] = self.datasourceCode!
        }
        if self.enableHeaders != nil {
            map["enableHeaders"] = self.enableHeaders!
        }
        if self.metaExtractColumnsShrink != nil {
            map["metaExtractColumns"] = self.metaExtractColumnsShrink!
        }
        if self.pipelineCommercialCu != nil {
            map["pipelineCommercialCu"] = self.pipelineCommercialCu!
        }
        if self.pipelineCommercialType != nil {
            map["pipelineCommercialType"] = self.pipelineCommercialType!
        }
        if self.pipelineRetrieveRateLimitStrategy != nil {
            map["pipelineRetrieveRateLimitStrategy"] = self.pipelineRetrieveRateLimitStrategy!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryIds"] as? String {
            self.categoryIdsShrink = value
        }
        if let value = dict["ChunkSize"] as? Int32 {
            self.chunkSize = value
        }
        if let value = dict["Columns"] as? String {
            self.columnsShrink = value
        }
        if let value = dict["CreateIndexType"] as? String {
            self.createIndexType = value
        }
        if let value = dict["DataSource"] as? String {
            self.dataSourceShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DocumentIds"] as? String {
            self.documentIdsShrink = value
        }
        if let value = dict["EmbeddingModelName"] as? String {
            self.embeddingModelName = value
        }
        if let value = dict["EnableRewrite"] as? Bool {
            self.enableRewrite = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OverlapSize"] as? Int32 {
            self.overlapSize = value
        }
        if let value = dict["RerankMinScore"] as? Double {
            self.rerankMinScore = value
        }
        if let value = dict["RerankModelName"] as? String {
            self.rerankModelName = value
        }
        if let value = dict["Separator"] as? String {
            self.separator = value
        }
        if let value = dict["SinkInstanceId"] as? String {
            self.sinkInstanceId = value
        }
        if let value = dict["SinkRegion"] as? String {
            self.sinkRegion = value
        }
        if let value = dict["SinkType"] as? String {
            self.sinkType = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StructureType"] as? String {
            self.structureType = value
        }
        if let value = dict["TableIds"] as? String {
            self.tableIdsShrink = value
        }
        if let value = dict["chunkMode"] as? String {
            self.chunkMode = value
        }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["datasourceCode"] as? String {
            self.datasourceCode = value
        }
        if let value = dict["enableHeaders"] as? Bool {
            self.enableHeaders = value
        }
        if let value = dict["metaExtractColumns"] as? String {
            self.metaExtractColumnsShrink = value
        }
        if let value = dict["pipelineCommercialCu"] as? Int32 {
            self.pipelineCommercialCu = value
        }
        if let value = dict["pipelineCommercialType"] as? String {
            self.pipelineCommercialType = value
        }
        if let value = dict["pipelineRetrieveRateLimitStrategy"] as? String {
            self.pipelineRetrieveRateLimitStrategy = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
    }
}

public class CreateIndexResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: CreateIndexResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateIndexResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIndexResponseBody?

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
            var model = CreateIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMemoryRequest : Tea.TeaModel {
    public var description_: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class CreateMemoryResponseBody : Tea.TeaModel {
    public var memoryId: String?

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
        if self.memoryId != nil {
            map["memoryId"] = self.memoryId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["memoryId"] as? String {
            self.memoryId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryResponseBody?

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
            var model = CreateMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMemoryNodeRequest : Tea.TeaModel {
    public var content: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
    }
}

public class CreateMemoryNodeResponseBody : Tea.TeaModel {
    public var memoryNodeId: String?

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
        if self.memoryNodeId != nil {
            map["memoryNodeId"] = self.memoryNodeId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["memoryNodeId"] as? String {
            self.memoryNodeId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryNodeResponseBody?

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
            var model = CreateMemoryNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePromptTemplateRequest : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreatePromptTemplateResponseBody : Tea.TeaModel {
    public var promptTemplateId: String?

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
        if self.promptTemplateId != nil {
            map["promptTemplateId"] = self.promptTemplateId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["promptTemplateId"] as? String {
            self.promptTemplateId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePromptTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePromptTemplateResponseBody?

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
            var model = CreatePromptTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAgentResponseBody?

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
            var model = DeleteAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? String {
                self.categoryId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteCategoryResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCategoryResponseBody?

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
            var model = DeleteCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChunkRequest : Tea.TeaModel {
    public var chunkIds: [String]?

    public var pipelineId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkIds != nil {
            map["ChunkIds"] = self.chunkIds!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkIds"] as? [String] {
            self.chunkIds = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
    }
}

public class DeleteChunkShrinkRequest : Tea.TeaModel {
    public var chunkIdsShrink: String?

    public var pipelineId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkIdsShrink != nil {
            map["ChunkIds"] = self.chunkIdsShrink!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkIds"] as? String {
            self.chunkIdsShrink = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
    }
}

public class DeleteChunkResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteChunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChunkResponseBody?

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
            var model = DeleteChunkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileResponseBody?

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
            var model = DeleteFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIndexRequest : Tea.TeaModel {
    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
    }
}

public class DeleteIndexResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexResponseBody?

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
            var model = DeleteIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIndexDocumentRequest : Tea.TeaModel {
    public var documentIds: [String]?

    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentIds != nil {
            map["DocumentIds"] = self.documentIds!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocumentIds"] as? [String] {
            self.documentIds = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
    }
}

public class DeleteIndexDocumentShrinkRequest : Tea.TeaModel {
    public var documentIdsShrink: String?

    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentIdsShrink != nil {
            map["DocumentIds"] = self.documentIdsShrink!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocumentIds"] as? String {
            self.documentIdsShrink = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
    }
}

public class DeleteIndexDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deletedDocument: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deletedDocument != nil {
                map["DeletedDocument"] = self.deletedDocument!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeletedDocument"] as? [String] {
                self.deletedDocument = value
            }
        }
    }
    public var code: String?

    public var data: DeleteIndexDocumentResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteIndexDocumentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteIndexDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexDocumentResponseBody?

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
            var model = DeleteIndexDocumentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMemoryResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemoryResponseBody?

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
            var model = DeleteMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMemoryNodeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemoryNodeResponseBody?

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
            var model = DeleteMemoryNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePromptTemplateResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePromptTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePromptTemplateResponseBody?

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
            var model = DeletePromptTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public var createTime: String?

        public var fileId: String?

        public var fileName: String?

        public var fileType: String?

        public var parseResultDownloadUrl: String?

        public var parser: String?

        public var sizeInBytes: Int64?

        public var status: String?

        public var tags: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.parseResultDownloadUrl != nil {
                map["ParseResultDownloadUrl"] = self.parseResultDownloadUrl!
            }
            if self.parser != nil {
                map["Parser"] = self.parser!
            }
            if self.sizeInBytes != nil {
                map["SizeInBytes"] = self.sizeInBytes!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? String {
                self.categoryId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileType"] as? String {
                self.fileType = value
            }
            if let value = dict["ParseResultDownloadUrl"] as? String {
                self.parseResultDownloadUrl = value
            }
            if let value = dict["Parser"] as? String {
                self.parser = value
            }
            if let value = dict["SizeInBytes"] as? Int64 {
                self.sizeInBytes = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [String] {
                self.tags = value
            }
        }
    }
    public var code: String?

    public var data: DescribeFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileResponseBody?

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
            var model = DescribeFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlipayTransferStatusRequest : Tea.TeaModel {
    public var code: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.workspaceId != nil {
            map["workspace_id"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["workspace_id"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetAlipayTransferStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var alipayOrderDetail: String?

        public var alipayOrderId: String?

        public var code: String?

        public var creator: String?

        public var mainAccountId: String?

        public var modifier: String?

        public var qrURL: String?

        public var scope: String?

        public var status: Int64?

        public var title: String?

        public var transAmount: String?

        public var walletItemCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.alipayOrderDetail != nil {
                map["alipayOrderDetail"] = self.alipayOrderDetail!
            }
            if self.alipayOrderId != nil {
                map["alipayOrderId"] = self.alipayOrderId!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.mainAccountId != nil {
                map["mainAccountId"] = self.mainAccountId!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.qrURL != nil {
                map["qrURL"] = self.qrURL!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.transAmount != nil {
                map["transAmount"] = self.transAmount!
            }
            if self.walletItemCode != nil {
                map["walletItemCode"] = self.walletItemCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountId"] as? String {
                self.accountId = value
            }
            if let value = dict["alipayOrderDetail"] as? String {
                self.alipayOrderDetail = value
            }
            if let value = dict["alipayOrderId"] as? String {
                self.alipayOrderId = value
            }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["mainAccountId"] as? String {
                self.mainAccountId = value
            }
            if let value = dict["modifier"] as? String {
                self.modifier = value
            }
            if let value = dict["qrURL"] as? String {
                self.qrURL = value
            }
            if let value = dict["scope"] as? String {
                self.scope = value
            }
            if let value = dict["status"] as? Int64 {
                self.status = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["transAmount"] as? String {
                self.transAmount = value
            }
            if let value = dict["walletItemCode"] as? String {
                self.walletItemCode = value
            }
        }
    }
    public var data: GetAlipayTransferStatusResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAlipayTransferStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAlipayTransferStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlipayTransferStatusResponseBody?

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
            var model = GetAlipayTransferStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlipayUrlRequest : Tea.TeaModel {
    public var appId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["app_id"] = self.appId!
        }
        if self.workspaceId != nil {
            map["workspace_id"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["app_id"] as? String {
            self.appId = value
        }
        if let value = dict["workspace_id"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetAlipayUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var qrUrl: String?

        public override init() {
            super.init()
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
                map["code"] = self.code!
            }
            if self.qrUrl != nil {
                map["qrUrl"] = self.qrUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["qrUrl"] as? String {
                self.qrUrl = value
            }
        }
    }
    public var data: GetAlipayUrlResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAlipayUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAlipayUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlipayUrlResponseBody?

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
            var model = GetAlipayUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAvailableParserTypesRequest : Tea.TeaModel {
    public var fileType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
    }
}

public class GetAvailableParserTypesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParserList : Tea.TeaModel {
            public var displayName: String?

            public var parser: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.parser != nil {
                    map["Parser"] = self.parser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Parser"] as? String {
                    self.parser = value
                }
            }
        }
        public var fileType: String?

        public var parserList: [GetAvailableParserTypesResponseBody.Data.ParserList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.parserList != nil {
                var tmp : [Any] = []
                for k in self.parserList! {
                    tmp.append(k.toMap())
                }
                map["ParserList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileType"] as? String {
                self.fileType = value
            }
            if let value = dict["ParserList"] as? [Any?] {
                var tmp : [GetAvailableParserTypesResponseBody.Data.ParserList] = []
                for v in value {
                    if v != nil {
                        var model = GetAvailableParserTypesResponseBody.Data.ParserList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parserList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetAvailableParserTypesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAvailableParserTypesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAvailableParserTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAvailableParserTypesResponseBody?

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
            var model = GetAvailableParserTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIndexJobStatusRequest : Tea.TeaModel {
    public var indexId: String?

    public var jobId: String?

    public var pageNumber: Int32?

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
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class GetIndexJobStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documents : Tea.TeaModel {
            public var code: String?

            public var docId: String?

            public var docName: String?

            public var gmtModified: Int64?

            public var message: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.docId != nil {
                    map["DocId"] = self.docId!
                }
                if self.docName != nil {
                    map["DocName"] = self.docName!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DocId"] as? String {
                    self.docId = value
                }
                if let value = dict["DocName"] as? String {
                    self.docName = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var documents: [GetIndexJobStatusResponseBody.Data.Documents]?

        public var jobId: String?

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
            if self.documents != nil {
                var tmp : [Any] = []
                for k in self.documents! {
                    tmp.append(k.toMap())
                }
                map["Documents"] = tmp
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Documents"] as? [Any?] {
                var tmp : [GetIndexJobStatusResponseBody.Data.Documents] = []
                for v in value {
                    if v != nil {
                        var model = GetIndexJobStatusResponseBody.Data.Documents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.documents = tmp
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetIndexJobStatusResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetIndexJobStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetIndexJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexJobStatusResponseBody?

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
            var model = GetIndexJobStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIndexMonitorRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var indexId: String?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
    }
}

public class GetIndexMonitorResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var status: Int32?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetIndexMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexMonitorResponseBody?

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
            var model = GetIndexMonitorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMemoryResponseBody : Tea.TeaModel {
    public var description_: String?

    public var memoryId: String?

    public var requestId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.memoryId != nil {
            map["memoryId"] = self.memoryId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["memoryId"] as? String {
            self.memoryId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemoryResponseBody?

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
            var model = GetMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMemoryNodeResponseBody : Tea.TeaModel {
    public var content: String?

    public var memoryId: String?

    public var memoryNodeId: String?

    public var requestId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.memoryId != nil {
            map["memoryId"] = self.memoryId!
        }
        if self.memoryNodeId != nil {
            map["memoryNodeId"] = self.memoryNodeId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["memoryId"] as? String {
            self.memoryId = value
        }
        if let value = dict["memoryNodeId"] as? String {
            self.memoryNodeId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemoryNodeResponseBody?

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
            var model = GetMemoryNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetParseSettingsRequest : Tea.TeaModel {
    public var categoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
    }
}

public class GetParseSettingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParserConfig : Tea.TeaModel {
            public var modelName: String?

            public var modelPrompt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelPrompt != nil {
                    map["ModelPrompt"] = self.modelPrompt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ModelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["ModelPrompt"] as? String {
                    self.modelPrompt = value
                }
            }
        }
        public var fileType: String?

        public var parser: String?

        public var parserConfig: GetParseSettingsResponseBody.Data.ParserConfig?

        public var parserDisplayName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.parserConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.parser != nil {
                map["Parser"] = self.parser!
            }
            if self.parserConfig != nil {
                map["ParserConfig"] = self.parserConfig?.toMap()
            }
            if self.parserDisplayName != nil {
                map["ParserDisplayName"] = self.parserDisplayName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileType"] as? String {
                self.fileType = value
            }
            if let value = dict["Parser"] as? String {
                self.parser = value
            }
            if let value = dict["ParserConfig"] as? [String: Any?] {
                var model = GetParseSettingsResponseBody.Data.ParserConfig()
                model.fromMap(value)
                self.parserConfig = model
            }
            if let value = dict["ParserDisplayName"] as? String {
                self.parserDisplayName = value
            }
        }
    }
    public var code: String?

    public var data: [GetParseSettingsResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetParseSettingsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetParseSettingsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetParseSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParseSettingsResponseBody?

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
            var model = GetParseSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPromptTemplateResponseBody : Tea.TeaModel {
    public var content: String?

    public var name: String?

    public var promptTemplateId: String?

    public var requestId: String?

    public var variables: [String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.promptTemplateId != nil {
            map["promptTemplateId"] = self.promptTemplateId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.variables != nil {
            map["variables"] = self.variables!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["promptTemplateId"] as? String {
            self.promptTemplateId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["variables"] as? [String] {
            self.variables = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetPromptTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPromptTemplateResponseBody?

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
            var model = GetPromptTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPublishedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ApplicationConfig : Tea.TeaModel {
            public class HistoryConfig : Tea.TeaModel {
                public var enableAdbRecord: Bool?

                public var enableRecord: Bool?

                public var instanceId: String?

                public var region: String?

                public var storeCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableAdbRecord != nil {
                        map["enableAdbRecord"] = self.enableAdbRecord!
                    }
                    if self.enableRecord != nil {
                        map["enableRecord"] = self.enableRecord!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.region != nil {
                        map["region"] = self.region!
                    }
                    if self.storeCode != nil {
                        map["storeCode"] = self.storeCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enableAdbRecord"] as? Bool {
                        self.enableAdbRecord = value
                    }
                    if let value = dict["enableRecord"] as? Bool {
                        self.enableRecord = value
                    }
                    if let value = dict["instanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["region"] as? String {
                        self.region = value
                    }
                    if let value = dict["storeCode"] as? String {
                        self.storeCode = value
                    }
                }
            }
            public class LongTermMemory : Tea.TeaModel {
                public var enable: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enable"] as? Bool {
                        self.enable = value
                    }
                }
            }
            public class Parameters : Tea.TeaModel {
                public var dialogRound: Int32?

                public var maxTokens: Int32?

                public var temperature: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dialogRound != nil {
                        map["dialogRound"] = self.dialogRound!
                    }
                    if self.maxTokens != nil {
                        map["maxTokens"] = self.maxTokens!
                    }
                    if self.temperature != nil {
                        map["temperature"] = self.temperature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["dialogRound"] as? Int32 {
                        self.dialogRound = value
                    }
                    if let value = dict["maxTokens"] as? Int32 {
                        self.maxTokens = value
                    }
                    if let value = dict["temperature"] as? Double {
                        self.temperature = value
                    }
                }
            }
            public class RagConfig : Tea.TeaModel {
                public var enableCitation: Bool?

                public var enableSearch: Bool?

                public var knowledgeBaseCodeList: [String]?

                public var topK: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableCitation != nil {
                        map["enableCitation"] = self.enableCitation!
                    }
                    if self.enableSearch != nil {
                        map["enableSearch"] = self.enableSearch!
                    }
                    if self.knowledgeBaseCodeList != nil {
                        map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                    }
                    if self.topK != nil {
                        map["topK"] = self.topK!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enableCitation"] as? Bool {
                        self.enableCitation = value
                    }
                    if let value = dict["enableSearch"] as? Bool {
                        self.enableSearch = value
                    }
                    if let value = dict["knowledgeBaseCodeList"] as? [String] {
                        self.knowledgeBaseCodeList = value
                    }
                    if let value = dict["topK"] as? Int32 {
                        self.topK = value
                    }
                }
            }
            public class Security : Tea.TeaModel {
                public var processingStrategy: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.processingStrategy != nil {
                        map["processingStrategy"] = self.processingStrategy!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["processingStrategy"] as? String {
                        self.processingStrategy = value
                    }
                }
            }
            public class Tools : Tea.TeaModel {
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
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public class WorkFlows : Tea.TeaModel {
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
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var historyConfig: GetPublishedAgentResponseBody.Data.ApplicationConfig.HistoryConfig?

            public var longTermMemory: GetPublishedAgentResponseBody.Data.ApplicationConfig.LongTermMemory?

            public var parameters: GetPublishedAgentResponseBody.Data.ApplicationConfig.Parameters?

            public var ragConfig: GetPublishedAgentResponseBody.Data.ApplicationConfig.RagConfig?

            public var security: GetPublishedAgentResponseBody.Data.ApplicationConfig.Security?

            public var tools: [GetPublishedAgentResponseBody.Data.ApplicationConfig.Tools]?

            public var workFlows: [GetPublishedAgentResponseBody.Data.ApplicationConfig.WorkFlows]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.historyConfig?.validate()
                try self.longTermMemory?.validate()
                try self.parameters?.validate()
                try self.ragConfig?.validate()
                try self.security?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.historyConfig != nil {
                    map["historyConfig"] = self.historyConfig?.toMap()
                }
                if self.longTermMemory != nil {
                    map["longTermMemory"] = self.longTermMemory?.toMap()
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.ragConfig != nil {
                    map["ragConfig"] = self.ragConfig?.toMap()
                }
                if self.security != nil {
                    map["security"] = self.security?.toMap()
                }
                if self.tools != nil {
                    var tmp : [Any] = []
                    for k in self.tools! {
                        tmp.append(k.toMap())
                    }
                    map["tools"] = tmp
                }
                if self.workFlows != nil {
                    var tmp : [Any] = []
                    for k in self.workFlows! {
                        tmp.append(k.toMap())
                    }
                    map["workFlows"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["historyConfig"] as? [String: Any?] {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.HistoryConfig()
                    model.fromMap(value)
                    self.historyConfig = model
                }
                if let value = dict["longTermMemory"] as? [String: Any?] {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.LongTermMemory()
                    model.fromMap(value)
                    self.longTermMemory = model
                }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["ragConfig"] as? [String: Any?] {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.RagConfig()
                    model.fromMap(value)
                    self.ragConfig = model
                }
                if let value = dict["security"] as? [String: Any?] {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.Security()
                    model.fromMap(value)
                    self.security = model
                }
                if let value = dict["tools"] as? [Any?] {
                    var tmp : [GetPublishedAgentResponseBody.Data.ApplicationConfig.Tools] = []
                    for v in value {
                        if v != nil {
                            var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.Tools()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tools = tmp
                }
                if let value = dict["workFlows"] as? [Any?] {
                    var tmp : [GetPublishedAgentResponseBody.Data.ApplicationConfig.WorkFlows] = []
                    for v in value {
                        if v != nil {
                            var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.WorkFlows()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.workFlows = tmp
                }
            }
        }
        public var applicationConfig: GetPublishedAgentResponseBody.Data.ApplicationConfig?

        public var code: String?

        public var instructions: String?

        public var modelId: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applicationConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationConfig != nil {
                map["applicationConfig"] = self.applicationConfig?.toMap()
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.instructions != nil {
                map["instructions"] = self.instructions!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["applicationConfig"] as? [String: Any?] {
                var model = GetPublishedAgentResponseBody.Data.ApplicationConfig()
                model.fromMap(value)
                self.applicationConfig = model
            }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["instructions"] as? String {
                self.instructions = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: GetPublishedAgentResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetPublishedAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetPublishedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublishedAgentResponseBody?

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
            var model = GetPublishedAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HighCodeDeployRequest : Tea.TeaModel {
    public var agentDesc: String?

    public var agentId: String?

    public var agentName: String?

    public var sourceCodeName: String?

    public var sourceCodeOssUrl: String?

    public var telemetryEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentDesc != nil {
            map["agentDesc"] = self.agentDesc!
        }
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.agentName != nil {
            map["agentName"] = self.agentName!
        }
        if self.sourceCodeName != nil {
            map["sourceCodeName"] = self.sourceCodeName!
        }
        if self.sourceCodeOssUrl != nil {
            map["sourceCodeOssUrl"] = self.sourceCodeOssUrl!
        }
        if self.telemetryEnabled != nil {
            map["telemetryEnabled"] = self.telemetryEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentDesc"] as? String {
            self.agentDesc = value
        }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["agentName"] as? String {
            self.agentName = value
        }
        if let value = dict["sourceCodeName"] as? String {
            self.sourceCodeName = value
        }
        if let value = dict["sourceCodeOssUrl"] as? String {
            self.sourceCodeOssUrl = value
        }
        if let value = dict["telemetryEnabled"] as? Bool {
            self.telemetryEnabled = value
        }
    }
}

public class HighCodeDeployResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class HighCodeDeployResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HighCodeDeployResponseBody?

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
            var model = HighCodeDeployResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCategoryRequest : Tea.TeaModel {
    public var categoryName: String?

    public var categoryType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentCategoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["CategoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentCategoryId"] as? String {
            self.parentCategoryId = value
        }
    }
}

public class ListCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CategoryList : Tea.TeaModel {
            public var categoryId: String?

            public var categoryName: String?

            public var categoryType: String?

            public var isDefault: Bool?

            public var parentCategoryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.categoryType != nil {
                    map["CategoryType"] = self.categoryType!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.parentCategoryId != nil {
                    map["ParentCategoryId"] = self.parentCategoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryId"] as? String {
                    self.categoryId = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["CategoryType"] as? String {
                    self.categoryType = value
                }
                if let value = dict["IsDefault"] as? Bool {
                    self.isDefault = value
                }
                if let value = dict["ParentCategoryId"] as? String {
                    self.parentCategoryId = value
                }
            }
        }
        public var categoryList: [ListCategoryResponseBody.Data.CategoryList]?

        public var hasNext: Bool?

        public var maxResults: Int32?

        public var nextToken: String?

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
            if self.categoryList != nil {
                var tmp : [Any] = []
                for k in self.categoryList! {
                    tmp.append(k.toMap())
                }
                map["CategoryList"] = tmp
            }
            if self.hasNext != nil {
                map["HasNext"] = self.hasNext!
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryList"] as? [Any?] {
                var tmp : [ListCategoryResponseBody.Data.CategoryList] = []
                for v in value {
                    if v != nil {
                        var model = ListCategoryResponseBody.Data.CategoryList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.categoryList = tmp
            }
            if let value = dict["HasNext"] as? Bool {
                self.hasNext = value
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCategoryResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCategoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCategoryResponseBody?

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
            var model = ListCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChunksRequest : Tea.TeaModel {
    public var fields: [String]?

    public var fileId: String?

    public var filed: String?

    public var indexId: String?

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
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.filed != nil {
            map["Filed"] = self.filed!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
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
        if let value = dict["Fields"] as? [String] {
            self.fields = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["Filed"] as? String {
            self.filed = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListChunksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var metadata: Any?

            public var score: Double?

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
                if self.metadata != nil {
                    map["Metadata"] = self.metadata!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Metadata"] as? Any {
                    self.metadata = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
            }
        }
        public var nodes: [ListChunksResponseBody.Data.Nodes]?

        public var total: Int64?

        public override init() {
            super.init()
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
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [ListChunksResponseBody.Data.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = ListChunksResponseBody.Data.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: ListChunksResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListChunksResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListChunksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChunksResponseBody?

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
            var model = ListChunksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFileRequest : Tea.TeaModel {
    public var categoryId: String?

    public var fileName: String?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
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
        if let value = dict["CategoryId"] as? String {
            self.categoryId = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FileList : Tea.TeaModel {
            public var categoryId: String?

            public var createTime: String?

            public var fileId: String?

            public var fileName: String?

            public var fileType: String?

            public var parser: String?

            public var sizeInBytes: Int64?

            public var status: String?

            public var tags: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.fileId != nil {
                    map["FileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.parser != nil {
                    map["Parser"] = self.parser!
                }
                if self.sizeInBytes != nil {
                    map["SizeInBytes"] = self.sizeInBytes!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryId"] as? String {
                    self.categoryId = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["Parser"] as? String {
                    self.parser = value
                }
                if let value = dict["SizeInBytes"] as? Int64 {
                    self.sizeInBytes = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String] {
                    self.tags = value
                }
            }
        }
        public var fileList: [ListFileResponseBody.Data.FileList]?

        public var hasNext: Bool?

        public var maxResults: Int32?

        public var nextToken: String?

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
            if self.fileList != nil {
                var tmp : [Any] = []
                for k in self.fileList! {
                    tmp.append(k.toMap())
                }
                map["FileList"] = tmp
            }
            if self.hasNext != nil {
                map["HasNext"] = self.hasNext!
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileList"] as? [Any?] {
                var tmp : [ListFileResponseBody.Data.FileList] = []
                for v in value {
                    if v != nil {
                        var model = ListFileResponseBody.Data.FileList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileList = tmp
            }
            if let value = dict["HasNext"] as? Bool {
                self.hasNext = value
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFileResponseBody?

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
            var model = ListFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIndexDocumentsRequest : Tea.TeaModel {
    public var documentName: String?

    public var documentStatus: String?

    public var enableNameLike: String?

    public var indexId: String?

    public var pageNumber: Int32?

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
        if self.documentName != nil {
            map["DocumentName"] = self.documentName!
        }
        if self.documentStatus != nil {
            map["DocumentStatus"] = self.documentStatus!
        }
        if self.enableNameLike != nil {
            map["EnableNameLike"] = self.enableNameLike!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocumentName"] as? String {
            self.documentName = value
        }
        if let value = dict["DocumentStatus"] as? String {
            self.documentStatus = value
        }
        if let value = dict["EnableNameLike"] as? String {
            self.enableNameLike = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListIndexDocumentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documents : Tea.TeaModel {
            public var code: String?

            public var documentType: String?

            public var gmtModified: Int64?

            public var id: String?

            public var message: String?

            public var name: String?

            public var size: Int32?

            public var sourceId: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.documentType != nil {
                    map["DocumentType"] = self.documentType!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DocumentType"] as? String {
                    self.documentType = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var documents: [ListIndexDocumentsResponseBody.Data.Documents]?

        public var indexId: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.documents != nil {
                var tmp : [Any] = []
                for k in self.documents! {
                    tmp.append(k.toMap())
                }
                map["Documents"] = tmp
            }
            if self.indexId != nil {
                map["IndexId"] = self.indexId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Documents"] as? [Any?] {
                var tmp : [ListIndexDocumentsResponseBody.Data.Documents] = []
                for v in value {
                    if v != nil {
                        var model = ListIndexDocumentsResponseBody.Data.Documents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.documents = tmp
            }
            if let value = dict["IndexId"] as? String {
                self.indexId = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListIndexDocumentsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListIndexDocumentsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListIndexDocumentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndexDocumentsResponseBody?

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
            var model = ListIndexDocumentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIndexFileDetailsRequest : Tea.TeaModel {
    public var documentName: String?

    public var documentStatus: String?

    public var enableNameLike: String?

    public var indexId: String?

    public var pageNumber: Int32?

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
        if self.documentName != nil {
            map["DocumentName"] = self.documentName!
        }
        if self.documentStatus != nil {
            map["DocumentStatus"] = self.documentStatus!
        }
        if self.enableNameLike != nil {
            map["EnableNameLike"] = self.enableNameLike!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocumentName"] as? String {
            self.documentName = value
        }
        if let value = dict["DocumentStatus"] as? String {
            self.documentStatus = value
        }
        if let value = dict["EnableNameLike"] as? String {
            self.enableNameLike = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListIndexFileDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documents : Tea.TeaModel {
            public var chunkMode: String?

            public var chunkSize: String?

            public var code: String?

            public var documentType: String?

            public var enableHeaders: String?

            public var gmtModified: Int64?

            public var id: String?

            public var message: String?

            public var name: String?

            public var overlapSize: String?

            public var size: Int32?

            public var sourceId: String?

            public var status: String?

            public var separator: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chunkMode != nil {
                    map["ChunkMode"] = self.chunkMode!
                }
                if self.chunkSize != nil {
                    map["ChunkSize"] = self.chunkSize!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.documentType != nil {
                    map["DocumentType"] = self.documentType!
                }
                if self.enableHeaders != nil {
                    map["EnableHeaders"] = self.enableHeaders!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.overlapSize != nil {
                    map["OverlapSize"] = self.overlapSize!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.separator != nil {
                    map["separator"] = self.separator!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChunkMode"] as? String {
                    self.chunkMode = value
                }
                if let value = dict["ChunkSize"] as? String {
                    self.chunkSize = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DocumentType"] as? String {
                    self.documentType = value
                }
                if let value = dict["EnableHeaders"] as? String {
                    self.enableHeaders = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OverlapSize"] as? String {
                    self.overlapSize = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["separator"] as? String {
                    self.separator = value
                }
            }
        }
        public var documents: [ListIndexFileDetailsResponseBody.Data.Documents]?

        public var indexId: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.documents != nil {
                var tmp : [Any] = []
                for k in self.documents! {
                    tmp.append(k.toMap())
                }
                map["Documents"] = tmp
            }
            if self.indexId != nil {
                map["IndexId"] = self.indexId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Documents"] as? [Any?] {
                var tmp : [ListIndexFileDetailsResponseBody.Data.Documents] = []
                for v in value {
                    if v != nil {
                        var model = ListIndexFileDetailsResponseBody.Data.Documents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.documents = tmp
            }
            if let value = dict["IndexId"] as? String {
                self.indexId = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListIndexFileDetailsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListIndexFileDetailsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListIndexFileDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndexFileDetailsResponseBody?

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
            var model = ListIndexFileDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIndicesRequest : Tea.TeaModel {
    public var indexName: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexName != nil {
            map["IndexName"] = self.indexName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IndexName"] as? String {
            self.indexName = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListIndicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Indices : Tea.TeaModel {
            public var chunkSize: Int32?

            public var confgModel: String?

            public var description_: String?

            public var documentIds: [String]?

            public var embeddingModelName: String?

            public var enableRewrite: Bool?

            public var id: String?

            public var name: String?

            public var overlapSize: Int32?

            public var rerankMinScore: String?

            public var rerankModelName: String?

            public var separator: String?

            public var sinkInstanceId: String?

            public var sinkRegion: String?

            public var sinkType: String?

            public var sourceType: String?

            public var structureType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chunkSize != nil {
                    map["ChunkSize"] = self.chunkSize!
                }
                if self.confgModel != nil {
                    map["ConfgModel"] = self.confgModel!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.documentIds != nil {
                    map["DocumentIds"] = self.documentIds!
                }
                if self.embeddingModelName != nil {
                    map["EmbeddingModelName"] = self.embeddingModelName!
                }
                if self.enableRewrite != nil {
                    map["EnableRewrite"] = self.enableRewrite!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.overlapSize != nil {
                    map["OverlapSize"] = self.overlapSize!
                }
                if self.rerankMinScore != nil {
                    map["RerankMinScore"] = self.rerankMinScore!
                }
                if self.rerankModelName != nil {
                    map["RerankModelName"] = self.rerankModelName!
                }
                if self.separator != nil {
                    map["Separator"] = self.separator!
                }
                if self.sinkInstanceId != nil {
                    map["SinkInstanceId"] = self.sinkInstanceId!
                }
                if self.sinkRegion != nil {
                    map["SinkRegion"] = self.sinkRegion!
                }
                if self.sinkType != nil {
                    map["SinkType"] = self.sinkType!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.structureType != nil {
                    map["StructureType"] = self.structureType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChunkSize"] as? Int32 {
                    self.chunkSize = value
                }
                if let value = dict["ConfgModel"] as? String {
                    self.confgModel = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DocumentIds"] as? [String] {
                    self.documentIds = value
                }
                if let value = dict["EmbeddingModelName"] as? String {
                    self.embeddingModelName = value
                }
                if let value = dict["EnableRewrite"] as? Bool {
                    self.enableRewrite = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OverlapSize"] as? Int32 {
                    self.overlapSize = value
                }
                if let value = dict["RerankMinScore"] as? String {
                    self.rerankMinScore = value
                }
                if let value = dict["RerankModelName"] as? String {
                    self.rerankModelName = value
                }
                if let value = dict["Separator"] as? String {
                    self.separator = value
                }
                if let value = dict["SinkInstanceId"] as? String {
                    self.sinkInstanceId = value
                }
                if let value = dict["SinkRegion"] as? String {
                    self.sinkRegion = value
                }
                if let value = dict["SinkType"] as? String {
                    self.sinkType = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["StructureType"] as? String {
                    self.structureType = value
                }
            }
        }
        public var indices: [ListIndicesResponseBody.Data.Indices]?

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
            if self.indices != nil {
                var tmp : [Any] = []
                for k in self.indices! {
                    tmp.append(k.toMap())
                }
                map["Indices"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Indices"] as? [Any?] {
                var tmp : [ListIndicesResponseBody.Data.Indices] = []
                for v in value {
                    if v != nil {
                        var model = ListIndicesResponseBody.Data.Indices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.indices = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListIndicesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListIndicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListIndicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndicesResponseBody?

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
            var model = ListIndicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMemoriesRequest : Tea.TeaModel {
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListMemoriesResponseBody : Tea.TeaModel {
    public class Memories : Tea.TeaModel {
        public var description_: String?

        public var memoryId: String?

        public override init() {
            super.init()
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
                map["description"] = self.description_!
            }
            if self.memoryId != nil {
                map["memoryId"] = self.memoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["memoryId"] as? String {
                self.memoryId = value
            }
        }
    }
    public var maxResults: Int32?

    public var memories: [ListMemoriesResponseBody.Memories]?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.memories != nil {
            var tmp : [Any] = []
            for k in self.memories! {
                tmp.append(k.toMap())
            }
            map["memories"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["memories"] as? [Any?] {
            var tmp : [ListMemoriesResponseBody.Memories] = []
            for v in value {
                if v != nil {
                    var model = ListMemoriesResponseBody.Memories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.memories = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMemoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoriesResponseBody?

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
            var model = ListMemoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMemoryNodesRequest : Tea.TeaModel {
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListMemoryNodesResponseBody : Tea.TeaModel {
    public class MemoryNodes : Tea.TeaModel {
        public var content: String?

        public var memoryNodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.memoryNodeId != nil {
                map["memoryNodeId"] = self.memoryNodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["memoryNodeId"] as? String {
                self.memoryNodeId = value
            }
        }
    }
    public var maxResults: Int32?

    public var memoryNodes: [ListMemoryNodesResponseBody.MemoryNodes]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.memoryNodes != nil {
            var tmp : [Any] = []
            for k in self.memoryNodes! {
                tmp.append(k.toMap())
            }
            map["memoryNodes"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["memoryNodes"] as? [Any?] {
            var tmp : [ListMemoryNodesResponseBody.MemoryNodes] = []
            for v in value {
                if v != nil {
                    var model = ListMemoryNodesResponseBody.MemoryNodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.memoryNodes = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListMemoryNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoryNodesResponseBody?

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
            var model = ListMemoryNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPromptTemplatesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListPromptTemplatesResponseBody : Tea.TeaModel {
    public class PromptTemplates : Tea.TeaModel {
        public var content: String?

        public var name: String?

        public var promptTemplateId: String?

        public var type: String?

        public var variables: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.promptTemplateId != nil {
                map["promptTemplateId"] = self.promptTemplateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.variables != nil {
                map["variables"] = self.variables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["promptTemplateId"] as? String {
                self.promptTemplateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["variables"] as? [String] {
                self.variables = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var promptTemplates: [ListPromptTemplatesResponseBody.PromptTemplates]?

    public var requestId: String?

    public var totalCount: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.promptTemplates != nil {
            var tmp : [Any] = []
            for k in self.promptTemplates! {
                tmp.append(k.toMap())
            }
            map["promptTemplates"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["promptTemplates"] as? [Any?] {
            var tmp : [ListPromptTemplatesResponseBody.PromptTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListPromptTemplatesResponseBody.PromptTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promptTemplates = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListPromptTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPromptTemplatesResponseBody?

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
            var model = ListPromptTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPublishedAgentRequest : Tea.TeaModel {
    public var pageNo: Int32?

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
        if self.pageNo != nil {
            map["pageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListPublishedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class ApplicationConfig : Tea.TeaModel {
                public class HistoryConfig : Tea.TeaModel {
                    public var enableAdbRecord: Bool?

                    public var enableRecord: Bool?

                    public var instanceId: String?

                    public var region: String?

                    public var storeCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableAdbRecord != nil {
                            map["enableAdbRecord"] = self.enableAdbRecord!
                        }
                        if self.enableRecord != nil {
                            map["enableRecord"] = self.enableRecord!
                        }
                        if self.instanceId != nil {
                            map["instanceId"] = self.instanceId!
                        }
                        if self.region != nil {
                            map["region"] = self.region!
                        }
                        if self.storeCode != nil {
                            map["storeCode"] = self.storeCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["enableAdbRecord"] as? Bool {
                            self.enableAdbRecord = value
                        }
                        if let value = dict["enableRecord"] as? Bool {
                            self.enableRecord = value
                        }
                        if let value = dict["instanceId"] as? String {
                            self.instanceId = value
                        }
                        if let value = dict["region"] as? String {
                            self.region = value
                        }
                        if let value = dict["storeCode"] as? String {
                            self.storeCode = value
                        }
                    }
                }
                public class LongTermMemory : Tea.TeaModel {
                    public var enable: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enable != nil {
                            map["enable"] = self.enable!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["enable"] as? Bool {
                            self.enable = value
                        }
                    }
                }
                public class Parameters : Tea.TeaModel {
                    public var dialogRound: Int32?

                    public var maxTokens: Int32?

                    public var temperature: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.dialogRound != nil {
                            map["dialogRound"] = self.dialogRound!
                        }
                        if self.maxTokens != nil {
                            map["maxTokens"] = self.maxTokens!
                        }
                        if self.temperature != nil {
                            map["temperature"] = self.temperature!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["dialogRound"] as? Int32 {
                            self.dialogRound = value
                        }
                        if let value = dict["maxTokens"] as? Int32 {
                            self.maxTokens = value
                        }
                        if let value = dict["temperature"] as? Double {
                            self.temperature = value
                        }
                    }
                }
                public class RagConfig : Tea.TeaModel {
                    public var enableCitation: Bool?

                    public var enableSearch: Bool?

                    public var knowledgeBaseCodeList: [String]?

                    public var topK: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableCitation != nil {
                            map["enableCitation"] = self.enableCitation!
                        }
                        if self.enableSearch != nil {
                            map["enableSearch"] = self.enableSearch!
                        }
                        if self.knowledgeBaseCodeList != nil {
                            map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                        }
                        if self.topK != nil {
                            map["topK"] = self.topK!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["enableCitation"] as? Bool {
                            self.enableCitation = value
                        }
                        if let value = dict["enableSearch"] as? Bool {
                            self.enableSearch = value
                        }
                        if let value = dict["knowledgeBaseCodeList"] as? [String] {
                            self.knowledgeBaseCodeList = value
                        }
                        if let value = dict["topK"] as? Int32 {
                            self.topK = value
                        }
                    }
                }
                public class Security : Tea.TeaModel {
                    public var processingStrategy: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.processingStrategy != nil {
                            map["processingStrategy"] = self.processingStrategy!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["processingStrategy"] as? String {
                            self.processingStrategy = value
                        }
                    }
                }
                public class Tools : Tea.TeaModel {
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
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class WorkFlows : Tea.TeaModel {
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
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var historyConfig: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.HistoryConfig?

                public var longTermMemory: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.LongTermMemory?

                public var parameters: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Parameters?

                public var ragConfig: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.RagConfig?

                public var security: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Security?

                public var tools: [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Tools]?

                public var workFlows: [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.WorkFlows]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.historyConfig?.validate()
                    try self.longTermMemory?.validate()
                    try self.parameters?.validate()
                    try self.ragConfig?.validate()
                    try self.security?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.historyConfig != nil {
                        map["historyConfig"] = self.historyConfig?.toMap()
                    }
                    if self.longTermMemory != nil {
                        map["longTermMemory"] = self.longTermMemory?.toMap()
                    }
                    if self.parameters != nil {
                        map["parameters"] = self.parameters?.toMap()
                    }
                    if self.ragConfig != nil {
                        map["ragConfig"] = self.ragConfig?.toMap()
                    }
                    if self.security != nil {
                        map["security"] = self.security?.toMap()
                    }
                    if self.tools != nil {
                        var tmp : [Any] = []
                        for k in self.tools! {
                            tmp.append(k.toMap())
                        }
                        map["tools"] = tmp
                    }
                    if self.workFlows != nil {
                        var tmp : [Any] = []
                        for k in self.workFlows! {
                            tmp.append(k.toMap())
                        }
                        map["workFlows"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["historyConfig"] as? [String: Any?] {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.HistoryConfig()
                        model.fromMap(value)
                        self.historyConfig = model
                    }
                    if let value = dict["longTermMemory"] as? [String: Any?] {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.LongTermMemory()
                        model.fromMap(value)
                        self.longTermMemory = model
                    }
                    if let value = dict["parameters"] as? [String: Any?] {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Parameters()
                        model.fromMap(value)
                        self.parameters = model
                    }
                    if let value = dict["ragConfig"] as? [String: Any?] {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.RagConfig()
                        model.fromMap(value)
                        self.ragConfig = model
                    }
                    if let value = dict["security"] as? [String: Any?] {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Security()
                        model.fromMap(value)
                        self.security = model
                    }
                    if let value = dict["tools"] as? [Any?] {
                        var tmp : [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Tools] = []
                        for v in value {
                            if v != nil {
                                var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Tools()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tools = tmp
                    }
                    if let value = dict["workFlows"] as? [Any?] {
                        var tmp : [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.WorkFlows] = []
                        for v in value {
                            if v != nil {
                                var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.WorkFlows()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.workFlows = tmp
                    }
                }
            }
            public var applicationConfig: ListPublishedAgentResponseBody.Data.List.ApplicationConfig?

            public var code: String?

            public var instructions: String?

            public var modelId: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.applicationConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationConfig != nil {
                    map["applicationConfig"] = self.applicationConfig?.toMap()
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.instructions != nil {
                    map["instructions"] = self.instructions!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["applicationConfig"] as? [String: Any?] {
                    var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig()
                    model.fromMap(value)
                    self.applicationConfig = model
                }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["instructions"] as? String {
                    self.instructions = value
                }
                if let value = dict["modelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public var list: [ListPublishedAgentResponseBody.Data.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNo != nil {
                map["pageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [ListPublishedAgentResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListPublishedAgentResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["pageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: ListPublishedAgentResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListPublishedAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class ListPublishedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishedAgentResponseBody?

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
            var model = ListPublishedAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetrieveRequest : Tea.TeaModel {
    public class QueryHistory : Tea.TeaModel {
        public var content: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class Rerank : Tea.TeaModel {
        public var modelName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
        }
    }
    public class Rewrite : Tea.TeaModel {
        public var modelName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
        }
    }
    public var denseSimilarityTopK: Int32?

    public var enableReranking: Bool?

    public var enableRewrite: Bool?

    public var images: [String]?

    public var indexId: String?

    public var query: String?

    public var queryHistory: [RetrieveRequest.QueryHistory]?

    public var rerank: [RetrieveRequest.Rerank]?

    public var rerankMinScore: Double?

    public var rerankTopN: Int32?

    public var rewrite: [RetrieveRequest.Rewrite]?

    public var saveRetrieverHistory: Bool?

    public var searchFilters: [[String: String]]?

    public var sparseSimilarityTopK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.denseSimilarityTopK != nil {
            map["DenseSimilarityTopK"] = self.denseSimilarityTopK!
        }
        if self.enableReranking != nil {
            map["EnableReranking"] = self.enableReranking!
        }
        if self.enableRewrite != nil {
            map["EnableRewrite"] = self.enableRewrite!
        }
        if self.images != nil {
            map["Images"] = self.images!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.queryHistory != nil {
            var tmp : [Any] = []
            for k in self.queryHistory! {
                tmp.append(k.toMap())
            }
            map["QueryHistory"] = tmp
        }
        if self.rerank != nil {
            var tmp : [Any] = []
            for k in self.rerank! {
                tmp.append(k.toMap())
            }
            map["Rerank"] = tmp
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankTopN != nil {
            map["RerankTopN"] = self.rerankTopN!
        }
        if self.rewrite != nil {
            var tmp : [Any] = []
            for k in self.rewrite! {
                tmp.append(k.toMap())
            }
            map["Rewrite"] = tmp
        }
        if self.saveRetrieverHistory != nil {
            map["SaveRetrieverHistory"] = self.saveRetrieverHistory!
        }
        if self.searchFilters != nil {
            map["SearchFilters"] = self.searchFilters!
        }
        if self.sparseSimilarityTopK != nil {
            map["SparseSimilarityTopK"] = self.sparseSimilarityTopK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DenseSimilarityTopK"] as? Int32 {
            self.denseSimilarityTopK = value
        }
        if let value = dict["EnableReranking"] as? Bool {
            self.enableReranking = value
        }
        if let value = dict["EnableRewrite"] as? Bool {
            self.enableRewrite = value
        }
        if let value = dict["Images"] as? [String] {
            self.images = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["QueryHistory"] as? [Any?] {
            var tmp : [RetrieveRequest.QueryHistory] = []
            for v in value {
                if v != nil {
                    var model = RetrieveRequest.QueryHistory()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryHistory = tmp
        }
        if let value = dict["Rerank"] as? [Any?] {
            var tmp : [RetrieveRequest.Rerank] = []
            for v in value {
                if v != nil {
                    var model = RetrieveRequest.Rerank()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rerank = tmp
        }
        if let value = dict["RerankMinScore"] as? Double {
            self.rerankMinScore = value
        }
        if let value = dict["RerankTopN"] as? Int32 {
            self.rerankTopN = value
        }
        if let value = dict["Rewrite"] as? [Any?] {
            var tmp : [RetrieveRequest.Rewrite] = []
            for v in value {
                if v != nil {
                    var model = RetrieveRequest.Rewrite()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rewrite = tmp
        }
        if let value = dict["SaveRetrieverHistory"] as? Bool {
            self.saveRetrieverHistory = value
        }
        if let value = dict["SearchFilters"] as? [[String: String]] {
            self.searchFilters = value
        }
        if let value = dict["SparseSimilarityTopK"] as? Int32 {
            self.sparseSimilarityTopK = value
        }
    }
}

public class RetrieveShrinkRequest : Tea.TeaModel {
    public var denseSimilarityTopK: Int32?

    public var enableReranking: Bool?

    public var enableRewrite: Bool?

    public var imagesShrink: String?

    public var indexId: String?

    public var query: String?

    public var queryHistoryShrink: String?

    public var rerankShrink: String?

    public var rerankMinScore: Double?

    public var rerankTopN: Int32?

    public var rewriteShrink: String?

    public var saveRetrieverHistory: Bool?

    public var searchFiltersShrink: String?

    public var sparseSimilarityTopK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.denseSimilarityTopK != nil {
            map["DenseSimilarityTopK"] = self.denseSimilarityTopK!
        }
        if self.enableReranking != nil {
            map["EnableReranking"] = self.enableReranking!
        }
        if self.enableRewrite != nil {
            map["EnableRewrite"] = self.enableRewrite!
        }
        if self.imagesShrink != nil {
            map["Images"] = self.imagesShrink!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.queryHistoryShrink != nil {
            map["QueryHistory"] = self.queryHistoryShrink!
        }
        if self.rerankShrink != nil {
            map["Rerank"] = self.rerankShrink!
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankTopN != nil {
            map["RerankTopN"] = self.rerankTopN!
        }
        if self.rewriteShrink != nil {
            map["Rewrite"] = self.rewriteShrink!
        }
        if self.saveRetrieverHistory != nil {
            map["SaveRetrieverHistory"] = self.saveRetrieverHistory!
        }
        if self.searchFiltersShrink != nil {
            map["SearchFilters"] = self.searchFiltersShrink!
        }
        if self.sparseSimilarityTopK != nil {
            map["SparseSimilarityTopK"] = self.sparseSimilarityTopK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DenseSimilarityTopK"] as? Int32 {
            self.denseSimilarityTopK = value
        }
        if let value = dict["EnableReranking"] as? Bool {
            self.enableReranking = value
        }
        if let value = dict["EnableRewrite"] as? Bool {
            self.enableRewrite = value
        }
        if let value = dict["Images"] as? String {
            self.imagesShrink = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["QueryHistory"] as? String {
            self.queryHistoryShrink = value
        }
        if let value = dict["Rerank"] as? String {
            self.rerankShrink = value
        }
        if let value = dict["RerankMinScore"] as? Double {
            self.rerankMinScore = value
        }
        if let value = dict["RerankTopN"] as? Int32 {
            self.rerankTopN = value
        }
        if let value = dict["Rewrite"] as? String {
            self.rewriteShrink = value
        }
        if let value = dict["SaveRetrieverHistory"] as? Bool {
            self.saveRetrieverHistory = value
        }
        if let value = dict["SearchFilters"] as? String {
            self.searchFiltersShrink = value
        }
        if let value = dict["SparseSimilarityTopK"] as? Int32 {
            self.sparseSimilarityTopK = value
        }
    }
}

public class RetrieveResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var metadata: Any?

            public var score: Double?

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
                if self.metadata != nil {
                    map["Metadata"] = self.metadata!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Metadata"] as? Any {
                    self.metadata = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
            }
        }
        public var nodes: [RetrieveResponseBody.Data.Nodes]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [RetrieveResponseBody.Data.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = RetrieveResponseBody.Data.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
        }
    }
    public var code: String?

    public var data: RetrieveResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = RetrieveResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RetrieveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetrieveResponseBody?

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
            var model = RetrieveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitIndexAddDocumentsJobRequest : Tea.TeaModel {
    public var categoryIds: [String]?

    public var chunkMode: String?

    public var chunkSize: Int32?

    public var documentIds: [String]?

    public var enableHeaders: Bool?

    public var indexId: String?

    public var overlapSize: Int32?

    public var separator: String?

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
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.chunkMode != nil {
            map["ChunkMode"] = self.chunkMode!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.documentIds != nil {
            map["DocumentIds"] = self.documentIds!
        }
        if self.enableHeaders != nil {
            map["EnableHeaders"] = self.enableHeaders!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.overlapSize != nil {
            map["OverlapSize"] = self.overlapSize!
        }
        if self.separator != nil {
            map["Separator"] = self.separator!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryIds"] as? [String] {
            self.categoryIds = value
        }
        if let value = dict["ChunkMode"] as? String {
            self.chunkMode = value
        }
        if let value = dict["ChunkSize"] as? Int32 {
            self.chunkSize = value
        }
        if let value = dict["DocumentIds"] as? [String] {
            self.documentIds = value
        }
        if let value = dict["EnableHeaders"] as? Bool {
            self.enableHeaders = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["OverlapSize"] as? Int32 {
            self.overlapSize = value
        }
        if let value = dict["Separator"] as? String {
            self.separator = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SubmitIndexAddDocumentsJobShrinkRequest : Tea.TeaModel {
    public var categoryIdsShrink: String?

    public var chunkMode: String?

    public var chunkSize: Int32?

    public var documentIdsShrink: String?

    public var enableHeaders: Bool?

    public var indexId: String?

    public var overlapSize: Int32?

    public var separator: String?

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
        if self.categoryIdsShrink != nil {
            map["CategoryIds"] = self.categoryIdsShrink!
        }
        if self.chunkMode != nil {
            map["ChunkMode"] = self.chunkMode!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.documentIdsShrink != nil {
            map["DocumentIds"] = self.documentIdsShrink!
        }
        if self.enableHeaders != nil {
            map["EnableHeaders"] = self.enableHeaders!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.overlapSize != nil {
            map["OverlapSize"] = self.overlapSize!
        }
        if self.separator != nil {
            map["Separator"] = self.separator!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryIds"] as? String {
            self.categoryIdsShrink = value
        }
        if let value = dict["ChunkMode"] as? String {
            self.chunkMode = value
        }
        if let value = dict["ChunkSize"] as? Int32 {
            self.chunkSize = value
        }
        if let value = dict["DocumentIds"] as? String {
            self.documentIdsShrink = value
        }
        if let value = dict["EnableHeaders"] as? Bool {
            self.enableHeaders = value
        }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
        if let value = dict["OverlapSize"] as? Int32 {
            self.overlapSize = value
        }
        if let value = dict["Separator"] as? String {
            self.separator = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SubmitIndexAddDocumentsJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitIndexAddDocumentsJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitIndexAddDocumentsJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitIndexAddDocumentsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitIndexAddDocumentsJobResponseBody?

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
            var model = SubmitIndexAddDocumentsJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitIndexJobRequest : Tea.TeaModel {
    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IndexId"] as? String {
            self.indexId = value
        }
    }
}

public class SubmitIndexJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var indexId: String?

        public override init() {
            super.init()
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
            if self.indexId != nil {
                map["IndexId"] = self.indexId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IndexId"] as? String {
                self.indexId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitIndexJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitIndexJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitIndexJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitIndexJobResponseBody?

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
            var model = SubmitIndexJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAndPublishAgentRequest : Tea.TeaModel {
    public class ApplicationConfig : Tea.TeaModel {
        public class HistoryConfig : Tea.TeaModel {
            public var enableAdbRecord: Bool?

            public var enableRecord: Bool?

            public var instanceId: String?

            public var region: String?

            public var storeCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableAdbRecord != nil {
                    map["enableAdbRecord"] = self.enableAdbRecord!
                }
                if self.enableRecord != nil {
                    map["enableRecord"] = self.enableRecord!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.storeCode != nil {
                    map["storeCode"] = self.storeCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableAdbRecord"] as? Bool {
                    self.enableAdbRecord = value
                }
                if let value = dict["enableRecord"] as? Bool {
                    self.enableRecord = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["storeCode"] as? String {
                    self.storeCode = value
                }
            }
        }
        public class LongTermMemory : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var dialogRound: Int32?

            public var enableThinking: Bool?

            public var maxTokens: Int32?

            public var temperature: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogRound != nil {
                    map["dialogRound"] = self.dialogRound!
                }
                if self.enableThinking != nil {
                    map["enable_thinking"] = self.enableThinking!
                }
                if self.maxTokens != nil {
                    map["maxTokens"] = self.maxTokens!
                }
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dialogRound"] as? Int32 {
                    self.dialogRound = value
                }
                if let value = dict["enable_thinking"] as? Bool {
                    self.enableThinking = value
                }
                if let value = dict["maxTokens"] as? Int32 {
                    self.maxTokens = value
                }
                if let value = dict["temperature"] as? Double {
                    self.temperature = value
                }
            }
        }
        public class RagConfig : Tea.TeaModel {
            public var answerScope: String?

            public var enableCitation: Bool?

            public var enableSearch: Bool?

            public var enableWebSearch: Bool?

            public var fixedReplyDetail: String?

            public var knowledgeBaseCodeList: [String]?

            public var promptStrategy: String?

            public var ragRejectType: String?

            public var rejectFilterPrompt: String?

            public var rejectFilterType: String?

            public var retrieveMaxLength: Int32?

            public var topK: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerScope != nil {
                    map["answerScope"] = self.answerScope!
                }
                if self.enableCitation != nil {
                    map["enableCitation"] = self.enableCitation!
                }
                if self.enableSearch != nil {
                    map["enableSearch"] = self.enableSearch!
                }
                if self.enableWebSearch != nil {
                    map["enableWebSearch"] = self.enableWebSearch!
                }
                if self.fixedReplyDetail != nil {
                    map["fixedReplyDetail"] = self.fixedReplyDetail!
                }
                if self.knowledgeBaseCodeList != nil {
                    map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                }
                if self.promptStrategy != nil {
                    map["promptStrategy"] = self.promptStrategy!
                }
                if self.ragRejectType != nil {
                    map["ragRejectType"] = self.ragRejectType!
                }
                if self.rejectFilterPrompt != nil {
                    map["rejectFilterPrompt"] = self.rejectFilterPrompt!
                }
                if self.rejectFilterType != nil {
                    map["rejectFilterType"] = self.rejectFilterType!
                }
                if self.retrieveMaxLength != nil {
                    map["retrieveMaxLength"] = self.retrieveMaxLength!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerScope"] as? String {
                    self.answerScope = value
                }
                if let value = dict["enableCitation"] as? Bool {
                    self.enableCitation = value
                }
                if let value = dict["enableSearch"] as? Bool {
                    self.enableSearch = value
                }
                if let value = dict["enableWebSearch"] as? Bool {
                    self.enableWebSearch = value
                }
                if let value = dict["fixedReplyDetail"] as? String {
                    self.fixedReplyDetail = value
                }
                if let value = dict["knowledgeBaseCodeList"] as? [String] {
                    self.knowledgeBaseCodeList = value
                }
                if let value = dict["promptStrategy"] as? String {
                    self.promptStrategy = value
                }
                if let value = dict["ragRejectType"] as? String {
                    self.ragRejectType = value
                }
                if let value = dict["rejectFilterPrompt"] as? String {
                    self.rejectFilterPrompt = value
                }
                if let value = dict["rejectFilterType"] as? String {
                    self.rejectFilterType = value
                }
                if let value = dict["retrieveMaxLength"] as? Int32 {
                    self.retrieveMaxLength = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
                }
            }
        }
        public class Security : Tea.TeaModel {
            public var processingStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.processingStrategy != nil {
                    map["processingStrategy"] = self.processingStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["processingStrategy"] as? String {
                    self.processingStrategy = value
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class WorkFlows : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var historyConfig: UpdateAndPublishAgentRequest.ApplicationConfig.HistoryConfig?

        public var longTermMemory: UpdateAndPublishAgentRequest.ApplicationConfig.LongTermMemory?

        public var parameters: UpdateAndPublishAgentRequest.ApplicationConfig.Parameters?

        public var ragConfig: UpdateAndPublishAgentRequest.ApplicationConfig.RagConfig?

        public var security: UpdateAndPublishAgentRequest.ApplicationConfig.Security?

        public var tools: [UpdateAndPublishAgentRequest.ApplicationConfig.Tools]?

        public var workFlows: [UpdateAndPublishAgentRequest.ApplicationConfig.WorkFlows]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.historyConfig?.validate()
            try self.longTermMemory?.validate()
            try self.parameters?.validate()
            try self.ragConfig?.validate()
            try self.security?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyConfig != nil {
                map["historyConfig"] = self.historyConfig?.toMap()
            }
            if self.longTermMemory != nil {
                map["longTermMemory"] = self.longTermMemory?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters?.toMap()
            }
            if self.ragConfig != nil {
                map["ragConfig"] = self.ragConfig?.toMap()
            }
            if self.security != nil {
                map["security"] = self.security?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.workFlows != nil {
                var tmp : [Any] = []
                for k in self.workFlows! {
                    tmp.append(k.toMap())
                }
                map["workFlows"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["historyConfig"] as? [String: Any?] {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.HistoryConfig()
                model.fromMap(value)
                self.historyConfig = model
            }
            if let value = dict["longTermMemory"] as? [String: Any?] {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.LongTermMemory()
                model.fromMap(value)
                self.longTermMemory = model
            }
            if let value = dict["parameters"] as? [String: Any?] {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.Parameters()
                model.fromMap(value)
                self.parameters = model
            }
            if let value = dict["ragConfig"] as? [String: Any?] {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.RagConfig()
                model.fromMap(value)
                self.ragConfig = model
            }
            if let value = dict["security"] as? [String: Any?] {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.Security()
                model.fromMap(value)
                self.security = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [UpdateAndPublishAgentRequest.ApplicationConfig.Tools] = []
                for v in value {
                    if v != nil {
                        var model = UpdateAndPublishAgentRequest.ApplicationConfig.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["workFlows"] as? [Any?] {
                var tmp : [UpdateAndPublishAgentRequest.ApplicationConfig.WorkFlows] = []
                for v in value {
                    if v != nil {
                        var model = UpdateAndPublishAgentRequest.ApplicationConfig.WorkFlows()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.workFlows = tmp
            }
        }
    }
    public class SampleLibrary : Tea.TeaModel {
        public var enableSample: Bool?

        public var sampleLibraryIdList: [String]?

        public var topK: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableSample != nil {
                map["enableSample"] = self.enableSample!
            }
            if self.sampleLibraryIdList != nil {
                map["sampleLibraryIdList"] = self.sampleLibraryIdList!
            }
            if self.topK != nil {
                map["topK"] = self.topK!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableSample"] as? Bool {
                self.enableSample = value
            }
            if let value = dict["sampleLibraryIdList"] as? [String] {
                self.sampleLibraryIdList = value
            }
            if let value = dict["topK"] as? Int32 {
                self.topK = value
            }
        }
    }
    public var applicationConfig: UpdateAndPublishAgentRequest.ApplicationConfig?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public var sampleLibrary: UpdateAndPublishAgentRequest.SampleLibrary?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationConfig?.validate()
        try self.sampleLibrary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfig != nil {
            map["applicationConfig"] = self.applicationConfig?.toMap()
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sampleLibrary != nil {
            map["sampleLibrary"] = self.sampleLibrary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfig"] as? [String: Any?] {
            var model = UpdateAndPublishAgentRequest.ApplicationConfig()
            model.fromMap(value)
            self.applicationConfig = model
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sampleLibrary"] as? [String: Any?] {
            var model = UpdateAndPublishAgentRequest.SampleLibrary()
            model.fromMap(value)
            self.sampleLibrary = model
        }
    }
}

public class UpdateAndPublishAgentShrinkRequest : Tea.TeaModel {
    public var applicationConfigShrink: String?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public var sampleLibraryShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfigShrink != nil {
            map["applicationConfig"] = self.applicationConfigShrink!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sampleLibraryShrink != nil {
            map["sampleLibrary"] = self.sampleLibraryShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfig"] as? String {
            self.applicationConfigShrink = value
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sampleLibrary"] as? String {
            self.sampleLibraryShrink = value
        }
    }
}

public class UpdateAndPublishAgentResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateAndPublishAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAndPublishAgentResponseBody?

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
            var model = UpdateAndPublishAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAndPublishAgentSelectiveRequest : Tea.TeaModel {
    public class ApplicationConfig : Tea.TeaModel {
        public class HistoryConfig : Tea.TeaModel {
            public var enableAdbRecord: Bool?

            public var enableRecord: Bool?

            public var instanceId: String?

            public var region: String?

            public var storeCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableAdbRecord != nil {
                    map["enableAdbRecord"] = self.enableAdbRecord!
                }
                if self.enableRecord != nil {
                    map["enableRecord"] = self.enableRecord!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.storeCode != nil {
                    map["storeCode"] = self.storeCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableAdbRecord"] as? Bool {
                    self.enableAdbRecord = value
                }
                if let value = dict["enableRecord"] as? Bool {
                    self.enableRecord = value
                }
                if let value = dict["instanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["storeCode"] as? String {
                    self.storeCode = value
                }
            }
        }
        public class LongTermMemory : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var dialogRound: Int32?

            public var enableThinking: Bool?

            public var maxTokens: Int32?

            public var temperature: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogRound != nil {
                    map["dialogRound"] = self.dialogRound!
                }
                if self.enableThinking != nil {
                    map["enable_thinking"] = self.enableThinking!
                }
                if self.maxTokens != nil {
                    map["maxTokens"] = self.maxTokens!
                }
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dialogRound"] as? Int32 {
                    self.dialogRound = value
                }
                if let value = dict["enable_thinking"] as? Bool {
                    self.enableThinking = value
                }
                if let value = dict["maxTokens"] as? Int32 {
                    self.maxTokens = value
                }
                if let value = dict["temperature"] as? Double {
                    self.temperature = value
                }
            }
        }
        public class RagConfig : Tea.TeaModel {
            public var answerScope: String?

            public var enableCitation: Bool?

            public var enableSearch: Bool?

            public var enableWebSearch: Bool?

            public var fixedReplyDetail: String?

            public var knowledgeBaseCodeList: [String]?

            public var promptStrategy: String?

            public var ragRejectType: String?

            public var rejectFilterPrompt: String?

            public var rejectFilterType: String?

            public var retrieveMaxLength: Int32?

            public var topK: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerScope != nil {
                    map["answerScope"] = self.answerScope!
                }
                if self.enableCitation != nil {
                    map["enableCitation"] = self.enableCitation!
                }
                if self.enableSearch != nil {
                    map["enableSearch"] = self.enableSearch!
                }
                if self.enableWebSearch != nil {
                    map["enableWebSearch"] = self.enableWebSearch!
                }
                if self.fixedReplyDetail != nil {
                    map["fixedReplyDetail"] = self.fixedReplyDetail!
                }
                if self.knowledgeBaseCodeList != nil {
                    map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                }
                if self.promptStrategy != nil {
                    map["promptStrategy"] = self.promptStrategy!
                }
                if self.ragRejectType != nil {
                    map["ragRejectType"] = self.ragRejectType!
                }
                if self.rejectFilterPrompt != nil {
                    map["rejectFilterPrompt"] = self.rejectFilterPrompt!
                }
                if self.rejectFilterType != nil {
                    map["rejectFilterType"] = self.rejectFilterType!
                }
                if self.retrieveMaxLength != nil {
                    map["retrieveMaxLength"] = self.retrieveMaxLength!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerScope"] as? String {
                    self.answerScope = value
                }
                if let value = dict["enableCitation"] as? Bool {
                    self.enableCitation = value
                }
                if let value = dict["enableSearch"] as? Bool {
                    self.enableSearch = value
                }
                if let value = dict["enableWebSearch"] as? Bool {
                    self.enableWebSearch = value
                }
                if let value = dict["fixedReplyDetail"] as? String {
                    self.fixedReplyDetail = value
                }
                if let value = dict["knowledgeBaseCodeList"] as? [String] {
                    self.knowledgeBaseCodeList = value
                }
                if let value = dict["promptStrategy"] as? String {
                    self.promptStrategy = value
                }
                if let value = dict["ragRejectType"] as? String {
                    self.ragRejectType = value
                }
                if let value = dict["rejectFilterPrompt"] as? String {
                    self.rejectFilterPrompt = value
                }
                if let value = dict["rejectFilterType"] as? String {
                    self.rejectFilterType = value
                }
                if let value = dict["retrieveMaxLength"] as? Int32 {
                    self.retrieveMaxLength = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
                }
            }
        }
        public class Security : Tea.TeaModel {
            public var processingStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.processingStrategy != nil {
                    map["processingStrategy"] = self.processingStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["processingStrategy"] as? String {
                    self.processingStrategy = value
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class WorkFlows : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var historyConfig: UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.HistoryConfig?

        public var longTermMemory: UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.LongTermMemory?

        public var parameters: UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Parameters?

        public var ragConfig: UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.RagConfig?

        public var security: UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Security?

        public var tools: [UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Tools]?

        public var workFlows: [UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.WorkFlows]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.historyConfig?.validate()
            try self.longTermMemory?.validate()
            try self.parameters?.validate()
            try self.ragConfig?.validate()
            try self.security?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyConfig != nil {
                map["historyConfig"] = self.historyConfig?.toMap()
            }
            if self.longTermMemory != nil {
                map["longTermMemory"] = self.longTermMemory?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters?.toMap()
            }
            if self.ragConfig != nil {
                map["ragConfig"] = self.ragConfig?.toMap()
            }
            if self.security != nil {
                map["security"] = self.security?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.workFlows != nil {
                var tmp : [Any] = []
                for k in self.workFlows! {
                    tmp.append(k.toMap())
                }
                map["workFlows"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["historyConfig"] as? [String: Any?] {
                var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.HistoryConfig()
                model.fromMap(value)
                self.historyConfig = model
            }
            if let value = dict["longTermMemory"] as? [String: Any?] {
                var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.LongTermMemory()
                model.fromMap(value)
                self.longTermMemory = model
            }
            if let value = dict["parameters"] as? [String: Any?] {
                var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Parameters()
                model.fromMap(value)
                self.parameters = model
            }
            if let value = dict["ragConfig"] as? [String: Any?] {
                var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.RagConfig()
                model.fromMap(value)
                self.ragConfig = model
            }
            if let value = dict["security"] as? [String: Any?] {
                var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Security()
                model.fromMap(value)
                self.security = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Tools] = []
                for v in value {
                    if v != nil {
                        var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["workFlows"] as? [Any?] {
                var tmp : [UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.WorkFlows] = []
                for v in value {
                    if v != nil {
                        var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig.WorkFlows()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.workFlows = tmp
            }
        }
    }
    public class SampleLibrary : Tea.TeaModel {
        public var enableSample: Bool?

        public var sampleLibraryIdList: [String]?

        public var topK: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableSample != nil {
                map["enableSample"] = self.enableSample!
            }
            if self.sampleLibraryIdList != nil {
                map["sampleLibraryIdList"] = self.sampleLibraryIdList!
            }
            if self.topK != nil {
                map["topK"] = self.topK!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableSample"] as? Bool {
                self.enableSample = value
            }
            if let value = dict["sampleLibraryIdList"] as? [String] {
                self.sampleLibraryIdList = value
            }
            if let value = dict["topK"] as? Int32 {
                self.topK = value
            }
        }
    }
    public var applicationConfig: UpdateAndPublishAgentSelectiveRequest.ApplicationConfig?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public var sampleLibrary: UpdateAndPublishAgentSelectiveRequest.SampleLibrary?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationConfig?.validate()
        try self.sampleLibrary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfig != nil {
            map["applicationConfig"] = self.applicationConfig?.toMap()
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sampleLibrary != nil {
            map["sampleLibrary"] = self.sampleLibrary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfig"] as? [String: Any?] {
            var model = UpdateAndPublishAgentSelectiveRequest.ApplicationConfig()
            model.fromMap(value)
            self.applicationConfig = model
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sampleLibrary"] as? [String: Any?] {
            var model = UpdateAndPublishAgentSelectiveRequest.SampleLibrary()
            model.fromMap(value)
            self.sampleLibrary = model
        }
    }
}

public class UpdateAndPublishAgentSelectiveShrinkRequest : Tea.TeaModel {
    public var applicationConfigShrink: String?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public var sampleLibraryShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfigShrink != nil {
            map["applicationConfig"] = self.applicationConfigShrink!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sampleLibraryShrink != nil {
            map["sampleLibrary"] = self.sampleLibraryShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["applicationConfig"] as? String {
            self.applicationConfigShrink = value
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sampleLibrary"] as? String {
            self.sampleLibraryShrink = value
        }
    }
}

public class UpdateAndPublishAgentSelectiveResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateAndPublishAgentSelectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAndPublishAgentSelectiveResponseBody?

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
            var model = UpdateAndPublishAgentSelectiveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChunkRequest : Tea.TeaModel {
    public var chunkId: String?

    public var dataId: String?

    public var isDisplayedChunkContent: Bool?

    public var pipelineId: String?

    public var content: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkId != nil {
            map["ChunkId"] = self.chunkId!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.isDisplayedChunkContent != nil {
            map["IsDisplayedChunkContent"] = self.isDisplayedChunkContent!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChunkId"] as? String {
            self.chunkId = value
        }
        if let value = dict["DataId"] as? String {
            self.dataId = value
        }
        if let value = dict["IsDisplayedChunkContent"] as? Bool {
            self.isDisplayedChunkContent = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class UpdateChunkResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateChunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChunkResponseBody?

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
            var model = UpdateChunkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFileTagRequest : Tea.TeaModel {
    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
    }
}

public class UpdateFileTagShrinkRequest : Tea.TeaModel {
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class UpdateFileTagResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateFileTagResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateFileTagResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateFileTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFileTagResponseBody?

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
            var model = UpdateFileTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMemoryRequest : Tea.TeaModel {
    public var description_: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateMemoryResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemoryResponseBody?

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
            var model = UpdateMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMemoryNodeRequest : Tea.TeaModel {
    public var content: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
    }
}

public class UpdateMemoryNodeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemoryNodeResponseBody?

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
            var model = UpdateMemoryNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePromptTemplateRequest : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdatePromptTemplateResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePromptTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePromptTemplateResponseBody?

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
            var model = UpdatePromptTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
