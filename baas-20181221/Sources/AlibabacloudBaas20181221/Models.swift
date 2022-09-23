import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChaincodePackage : Tea.TeaModel {
    public var chaincodePackageId: String?

    public var checksum: String?

    public var deleteTime: String?

    public var deleted: Bool?

    public var installTime: String?

    public var label: String?

    public var md5sum: String?

    public var message: String?

    public var organizationId: String?

    public var ossURL: String?

    public var providerBid: String?

    public var providerUid: String?

    public var state: String?

    public var type: Int32?

    public var typeName: String?

    public var uploadTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodePackageId != nil {
            map["ChaincodePackageId"] = self.chaincodePackageId!
        }
        if self.checksum != nil {
            map["Checksum"] = self.checksum!
        }
        if self.deleteTime != nil {
            map["DeleteTime"] = self.deleteTime!
        }
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.installTime != nil {
            map["InstallTime"] = self.installTime!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.md5sum != nil {
            map["Md5sum"] = self.md5sum!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.ossURL != nil {
            map["OssURL"] = self.ossURL!
        }
        if self.providerBid != nil {
            map["ProviderBid"] = self.providerBid!
        }
        if self.providerUid != nil {
            map["ProviderUid"] = self.providerUid!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        if self.uploadTime != nil {
            map["UploadTime"] = self.uploadTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodePackageId") {
            self.chaincodePackageId = dict["ChaincodePackageId"] as! String
        }
        if dict.keys.contains("Checksum") {
            self.checksum = dict["Checksum"] as! String
        }
        if dict.keys.contains("DeleteTime") {
            self.deleteTime = dict["DeleteTime"] as! String
        }
        if dict.keys.contains("Deleted") {
            self.deleted = dict["Deleted"] as! Bool
        }
        if dict.keys.contains("InstallTime") {
            self.installTime = dict["InstallTime"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Md5sum") {
            self.md5sum = dict["Md5sum"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("OssURL") {
            self.ossURL = dict["OssURL"] as! String
        }
        if dict.keys.contains("ProviderBid") {
            self.providerBid = dict["ProviderBid"] as! String
        }
        if dict.keys.contains("ProviderUid") {
            self.providerUid = dict["ProviderUid"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("TypeName") {
            self.typeName = dict["TypeName"] as! String
        }
        if dict.keys.contains("UploadTime") {
            self.uploadTime = dict["UploadTime"] as! String
        }
    }
}

public class ChaincodeVO : Tea.TeaModel {
    public var chaincodeDefinitionId: String?

    public var chaincodeId: String?

    public var chaincodePackageId: String?

    public var channelId: String?

    public var channelName: String?

    public var consortiumId: String?

    public var createTime: String?

    public var deployTime: String?

    public var endorsePolicy: String?

    public var initRequired: Bool?

    public var input: String?

    public var install: Bool?

    public var management: Bool?

    public var message: String?

    public var name: String?

    public var path: String?

    public var providerId: String?

    public var providerName: String?

    public var state: String?

    public var type: Int32?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeDefinitionId != nil {
            map["ChaincodeDefinitionId"] = self.chaincodeDefinitionId!
        }
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.chaincodePackageId != nil {
            map["ChaincodePackageId"] = self.chaincodePackageId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.channelName != nil {
            map["ChannelName"] = self.channelName!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deployTime != nil {
            map["DeployTime"] = self.deployTime!
        }
        if self.endorsePolicy != nil {
            map["EndorsePolicy"] = self.endorsePolicy!
        }
        if self.initRequired != nil {
            map["InitRequired"] = self.initRequired!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.install != nil {
            map["Install"] = self.install!
        }
        if self.management != nil {
            map["Management"] = self.management!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        if self.providerName != nil {
            map["ProviderName"] = self.providerName!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeDefinitionId") {
            self.chaincodeDefinitionId = dict["ChaincodeDefinitionId"] as! String
        }
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("ChaincodePackageId") {
            self.chaincodePackageId = dict["ChaincodePackageId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("ChannelName") {
            self.channelName = dict["ChannelName"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DeployTime") {
            self.deployTime = dict["DeployTime"] as! String
        }
        if dict.keys.contains("EndorsePolicy") {
            self.endorsePolicy = dict["EndorsePolicy"] as! String
        }
        if dict.keys.contains("InitRequired") {
            self.initRequired = dict["InitRequired"] as! Bool
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Install") {
            self.install = dict["Install"] as! Bool
        }
        if dict.keys.contains("Management") {
            self.management = dict["Management"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("ProviderId") {
            self.providerId = dict["ProviderId"] as! String
        }
        if dict.keys.contains("ProviderName") {
            self.providerName = dict["ProviderName"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class AcceptFabricInvitationRequest : Tea.TeaModel {
    public var code: String?

    public var isAccepted: Bool?

    public override init() {
        super.init()
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
        if self.isAccepted != nil {
            map["IsAccepted"] = self.isAccepted!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsAccepted") {
            self.isAccepted = dict["IsAccepted"] as! Bool
        }
    }
}

public class AcceptFabricInvitationResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AcceptFabricInvitationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptFabricInvitationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AcceptFabricInvitationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyAntChainCertificateRequest : Tea.TeaModel {
    public var antChainId: String?

    public var uploadReq: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.uploadReq != nil {
            map["UploadReq"] = self.uploadReq!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("UploadReq") {
            self.uploadReq = dict["UploadReq"] as! String
        }
    }
}

public class ApplyAntChainCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class ApplyAntChainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAntChainCertificateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyAntChainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyAntChainCertificateWithKeyAutoCreationRequest : Tea.TeaModel {
    public var antChainId: String?

    public var commonName: String?

    public var consortiumId: String?

    public var countryName: String?

    public var localityName: String?

    public var organizationName: String?

    public var organizationUnitName: String?

    public var password: String?

    public var stateOrProvinceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.countryName != nil {
            map["CountryName"] = self.countryName!
        }
        if self.localityName != nil {
            map["LocalityName"] = self.localityName!
        }
        if self.organizationName != nil {
            map["OrganizationName"] = self.organizationName!
        }
        if self.organizationUnitName != nil {
            map["OrganizationUnitName"] = self.organizationUnitName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.stateOrProvinceName != nil {
            map["StateOrProvinceName"] = self.stateOrProvinceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("CountryName") {
            self.countryName = dict["CountryName"] as! String
        }
        if dict.keys.contains("LocalityName") {
            self.localityName = dict["LocalityName"] as! String
        }
        if dict.keys.contains("OrganizationName") {
            self.organizationName = dict["OrganizationName"] as! String
        }
        if dict.keys.contains("OrganizationUnitName") {
            self.organizationUnitName = dict["OrganizationUnitName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("StateOrProvinceName") {
            self.stateOrProvinceName = dict["StateOrProvinceName"] as! String
        }
    }
}

public class ApplyAntChainCertificateWithKeyAutoCreationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DownloadPath : Tea.TeaModel {
            public var caCrtUrl: String?

            public var clientCrtUrl: String?

            public var sdkUrl: String?

            public var trustCaUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caCrtUrl != nil {
                    map["CaCrtUrl"] = self.caCrtUrl!
                }
                if self.clientCrtUrl != nil {
                    map["ClientCrtUrl"] = self.clientCrtUrl!
                }
                if self.sdkUrl != nil {
                    map["SdkUrl"] = self.sdkUrl!
                }
                if self.trustCaUrl != nil {
                    map["TrustCaUrl"] = self.trustCaUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CaCrtUrl") {
                    self.caCrtUrl = dict["CaCrtUrl"] as! String
                }
                if dict.keys.contains("ClientCrtUrl") {
                    self.clientCrtUrl = dict["ClientCrtUrl"] as! String
                }
                if dict.keys.contains("SdkUrl") {
                    self.sdkUrl = dict["SdkUrl"] as! String
                }
                if dict.keys.contains("TrustCaUrl") {
                    self.trustCaUrl = dict["TrustCaUrl"] as! String
                }
            }
        }
        public var downloadPath: ApplyAntChainCertificateWithKeyAutoCreationResponseBody.Result.DownloadPath?

        public var privateKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.downloadPath?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadPath != nil {
                map["DownloadPath"] = self.downloadPath?.toMap()
            }
            if self.privateKey != nil {
                map["PrivateKey"] = self.privateKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadPath") {
                var model = ApplyAntChainCertificateWithKeyAutoCreationResponseBody.Result.DownloadPath()
                model.fromMap(dict["DownloadPath"] as! [String: Any])
                self.downloadPath = model
            }
            if dict.keys.contains("PrivateKey") {
                self.privateKey = dict["PrivateKey"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: ApplyAntChainCertificateWithKeyAutoCreationResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ApplyAntChainCertificateWithKeyAutoCreationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ApplyAntChainCertificateWithKeyAutoCreationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAntChainCertificateWithKeyAutoCreationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyAntChainCertificateWithKeyAutoCreationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApproveFabricChaincodeDefinitionRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var chaincodePackageId: String?

    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.chaincodePackageId != nil {
            map["ChaincodePackageId"] = self.chaincodePackageId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("ChaincodePackageId") {
            self.chaincodePackageId = dict["ChaincodePackageId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class ApproveFabricChaincodeDefinitionResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ChaincodeVO?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ChaincodeVO()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ApproveFabricChaincodeDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveFabricChaincodeDefinitionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApproveFabricChaincodeDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchAddAntChainMiniAppQRCodeAuthorizedUsersRequest : Tea.TeaModel {
    public var antChainId: String?

    public var phoneList: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.phoneList != nil {
            map["PhoneList"] = self.phoneList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("PhoneList") {
            self.phoneList = dict["PhoneList"] as! [String: Any]
        }
    }
}

public class BatchAddAntChainMiniAppQRCodeAuthorizedUsersShrinkRequest : Tea.TeaModel {
    public var antChainId: String?

    public var phoneListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.phoneListShrink != nil {
            map["PhoneList"] = self.phoneListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("PhoneList") {
            self.phoneListShrink = dict["PhoneList"] as! String
        }
    }
}

public class BatchAddAntChainMiniAppQRCodeAuthorizedUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class BatchAddAntChainMiniAppQRCodeAuthorizedUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddAntChainMiniAppQRCodeAuthorizedUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchAddAntChainMiniAppQRCodeAuthorizedUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckFabricConsortiumDomainRequest : Tea.TeaModel {
    public var domainCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainCode") {
            self.domainCode = dict["DomainCode"] as! String
        }
    }
}

public class CheckFabricConsortiumDomainResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var domain: String?

        public var prompt: String?

        public var valid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.valid != nil {
                map["Valid"] = self.valid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("Valid") {
                self.valid = dict["Valid"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CheckFabricConsortiumDomainResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CheckFabricConsortiumDomainResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckFabricConsortiumDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckFabricConsortiumDomainResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckFabricConsortiumDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckFabricOrganizationDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var domainCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainCode") {
            self.domainCode = dict["DomainCode"] as! String
        }
    }
}

public class CheckFabricOrganizationDomainResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var domain: String?

        public var prompt: String?

        public var valid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.valid != nil {
                map["Valid"] = self.valid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("Valid") {
                self.valid = dict["Valid"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CheckFabricOrganizationDomainResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CheckFabricOrganizationDomainResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckFabricOrganizationDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckFabricOrganizationDomainResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckFabricOrganizationDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmFabricConsortiumMemberRequest : Tea.TeaModel {
    public class Organization : Tea.TeaModel {
        public var organizationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
        }
    }
    public var consortiumId: String?

    public var organization: [ConfirmFabricConsortiumMemberRequest.Organization]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.organization != nil {
            var tmp : [Any] = []
            for k in self.organization! {
                tmp.append(k.toMap())
            }
            map["Organization"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! [ConfirmFabricConsortiumMemberRequest.Organization]
        }
    }
}

public class ConfirmFabricConsortiumMemberResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfirmFabricConsortiumMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmFabricConsortiumMemberResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConfirmFabricConsortiumMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyAntChainContractProjectRequest : Tea.TeaModel {
    public var projectDescription: String?

    public var projectId: String?

    public var projectName: String?

    public var projectVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectDescription != nil {
            map["ProjectDescription"] = self.projectDescription!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.projectVersion != nil {
            map["ProjectVersion"] = self.projectVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectDescription") {
            self.projectDescription = dict["ProjectDescription"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ProjectVersion") {
            self.projectVersion = dict["ProjectVersion"] as! String
        }
    }
}

public class CopyAntChainContractProjectResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumId: String?

        public var createTime: Int64?

        public var projectDescription: String?

        public var projectId: String?

        public var projectName: String?

        public var projectVersion: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.projectDescription != nil {
                map["ProjectDescription"] = self.projectDescription!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectVersion != nil {
                map["ProjectVersion"] = self.projectVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("ProjectDescription") {
                self.projectDescription = dict["ProjectDescription"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectVersion") {
                self.projectVersion = dict["ProjectVersion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: CopyAntChainContractProjectResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CopyAntChainContractProjectResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CopyAntChainContractProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyAntChainContractProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CopyAntChainContractProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAntChainAccountRequest : Tea.TeaModel {
    public var account: String?

    public var accountPubKey: String?

    public var accountRecoverPubKey: String?

    public var antChainId: String?

    public override init() {
        super.init()
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
        if self.accountPubKey != nil {
            map["AccountPubKey"] = self.accountPubKey!
        }
        if self.accountRecoverPubKey != nil {
            map["AccountRecoverPubKey"] = self.accountRecoverPubKey!
        }
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AccountPubKey") {
            self.accountPubKey = dict["AccountPubKey"] as! String
        }
        if dict.keys.contains("AccountRecoverPubKey") {
            self.accountRecoverPubKey = dict["AccountRecoverPubKey"] as! String
        }
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class CreateAntChainAccountResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var account: String?

        public var antChainId: String?

        public override init() {
            super.init()
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
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateAntChainAccountResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateAntChainAccountResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateAntChainAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntChainAccountResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAntChainAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAntChainAccountWithKeyPairAutoCreationRequest : Tea.TeaModel {
    public var account: String?

    public var antChainId: String?

    public var password: String?

    public var recoverPassword: String?

    public override init() {
        super.init()
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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.recoverPassword != nil {
            map["RecoverPassword"] = self.recoverPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RecoverPassword") {
            self.recoverPassword = dict["RecoverPassword"] as! String
        }
    }
}

public class CreateAntChainAccountWithKeyPairAutoCreationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var account: String?

        public var accountPrivateKey: String?

        public var accountPublicKey: String?

        public var accountRecoverPrivateKey: String?

        public var accountRecoverPublicKey: String?

        public var antChainId: String?

        public override init() {
            super.init()
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
            if self.accountPrivateKey != nil {
                map["AccountPrivateKey"] = self.accountPrivateKey!
            }
            if self.accountPublicKey != nil {
                map["AccountPublicKey"] = self.accountPublicKey!
            }
            if self.accountRecoverPrivateKey != nil {
                map["AccountRecoverPrivateKey"] = self.accountRecoverPrivateKey!
            }
            if self.accountRecoverPublicKey != nil {
                map["AccountRecoverPublicKey"] = self.accountRecoverPublicKey!
            }
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("AccountPrivateKey") {
                self.accountPrivateKey = dict["AccountPrivateKey"] as! String
            }
            if dict.keys.contains("AccountPublicKey") {
                self.accountPublicKey = dict["AccountPublicKey"] as! String
            }
            if dict.keys.contains("AccountRecoverPrivateKey") {
                self.accountRecoverPrivateKey = dict["AccountRecoverPrivateKey"] as! String
            }
            if dict.keys.contains("AccountRecoverPublicKey") {
                self.accountRecoverPublicKey = dict["AccountRecoverPublicKey"] as! String
            }
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateAntChainAccountWithKeyPairAutoCreationResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateAntChainAccountWithKeyPairAutoCreationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateAntChainAccountWithKeyPairAutoCreationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntChainAccountWithKeyPairAutoCreationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAntChainAccountWithKeyPairAutoCreationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAntChainConsortiumRequest : Tea.TeaModel {
    public var consortiumDescription: String?

    public var consortiumName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumDescription != nil {
            map["ConsortiumDescription"] = self.consortiumDescription!
        }
        if self.consortiumName != nil {
            map["ConsortiumName"] = self.consortiumName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumDescription") {
            self.consortiumDescription = dict["ConsortiumDescription"] as! String
        }
        if dict.keys.contains("ConsortiumName") {
            self.consortiumName = dict["ConsortiumName"] as! String
        }
    }
}

public class CreateAntChainConsortiumResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateAntChainConsortiumResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateAntChainConsortiumResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateAntChainConsortiumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntChainConsortiumResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAntChainConsortiumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAntChainContractContentRequest : Tea.TeaModel {
    public var content: String?

    public var contentName: String?

    public var isDirectory: Bool?

    public var parentContentId: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentName != nil {
            map["ContentName"] = self.contentName!
        }
        if self.isDirectory != nil {
            map["IsDirectory"] = self.isDirectory!
        }
        if self.parentContentId != nil {
            map["ParentContentId"] = self.parentContentId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentName") {
            self.contentName = dict["ContentName"] as! String
        }
        if dict.keys.contains("IsDirectory") {
            self.isDirectory = dict["IsDirectory"] as! Bool
        }
        if dict.keys.contains("ParentContentId") {
            self.parentContentId = dict["ParentContentId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class CreateAntChainContractContentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var contentId: String?

        public var contentName: String?

        public var createTime: String?

        public var isDirectory: Bool?

        public var parentContentId: String?

        public var projectId: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
                map["Content"] = self.content!
            }
            if self.contentId != nil {
                map["ContentId"] = self.contentId!
            }
            if self.contentName != nil {
                map["ContentName"] = self.contentName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.isDirectory != nil {
                map["IsDirectory"] = self.isDirectory!
            }
            if self.parentContentId != nil {
                map["ParentContentId"] = self.parentContentId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentId") {
                self.contentId = dict["ContentId"] as! String
            }
            if dict.keys.contains("ContentName") {
                self.contentName = dict["ContentName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IsDirectory") {
                self.isDirectory = dict["IsDirectory"] as! Bool
            }
            if dict.keys.contains("ParentContentId") {
                self.parentContentId = dict["ParentContentId"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateAntChainContractContentResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateAntChainContractContentResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateAntChainContractContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntChainContractContentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAntChainContractContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAntChainContractProjectRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var projectDescription: String?

    public var projectName: String?

    public var projectVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.projectDescription != nil {
            map["ProjectDescription"] = self.projectDescription!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.projectVersion != nil {
            map["ProjectVersion"] = self.projectVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("ProjectDescription") {
            self.projectDescription = dict["ProjectDescription"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ProjectVersion") {
            self.projectVersion = dict["ProjectVersion"] as! String
        }
    }
}

public class CreateAntChainContractProjectResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumId: String?

        public var createTime: Int64?

        public var projectDescription: String?

        public var projectId: String?

        public var projectName: String?

        public var projectVersion: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.projectDescription != nil {
                map["ProjectDescription"] = self.projectDescription!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectVersion != nil {
                map["ProjectVersion"] = self.projectVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("ProjectDescription") {
                self.projectDescription = dict["ProjectDescription"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectVersion") {
                self.projectVersion = dict["ProjectVersion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: CreateAntChainContractProjectResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateAntChainContractProjectResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateAntChainContractProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntChainContractProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAntChainContractProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAntChainKmsAccountNewRequest : Tea.TeaModel {
    public var account: String?

    public var antChainId: String?

    public override init() {
        super.init()
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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class CreateAntChainKmsAccountNewResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var myKmsKeyId: String?

        public var pubKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.myKmsKeyId != nil {
                map["MyKmsKeyId"] = self.myKmsKeyId!
            }
            if self.pubKey != nil {
                map["PubKey"] = self.pubKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MyKmsKeyId") {
                self.myKmsKeyId = dict["MyKmsKeyId"] as! String
            }
            if dict.keys.contains("PubKey") {
                self.pubKey = dict["PubKey"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: CreateAntChainKmsAccountNewResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateAntChainKmsAccountNewResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateAntChainKmsAccountNewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntChainKmsAccountNewResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAntChainKmsAccountNewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricChaincodeRequest : Tea.TeaModel {
    public var channelId: String?

    public var consortiumId: String?

    public var endorsePolicy: String?

    public var location: String?

    public var organizationId: String?

    public var ossBucket: String?

    public var ossUrl: String?

    public override init() {
        super.init()
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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.endorsePolicy != nil {
            map["EndorsePolicy"] = self.endorsePolicy!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("EndorsePolicy") {
            self.endorsePolicy = dict["EndorsePolicy"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssUrl") {
            self.ossUrl = dict["OssUrl"] as! String
        }
    }
}

public class CreateFabricChaincodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var input: String?

        public var install: Bool?

        public var message: String?

        public var path: String?

        public var providerId: String?

        public var providerName: String?

        public var state: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.install != nil {
                map["Install"] = self.install!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Install") {
                self.install = dict["Install"] as! Bool
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("ProviderName") {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CreateFabricChaincodeResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateFabricChaincodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricChaincodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricChaincodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricChaincodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricChaincodePackageRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public var ossUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("OssUrl") {
            self.ossUrl = dict["OssUrl"] as! String
        }
    }
}

public class CreateFabricChaincodePackageResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ChaincodePackage?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ChaincodePackage()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricChaincodePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricChaincodePackageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricChaincodePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricChannelRequest : Tea.TeaModel {
    public class Organization : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var batchTimeout: Int32?

    public var channelName: String?

    public var consortiumId: String?

    public var maxMessageCount: Int32?

    public var organization: [CreateFabricChannelRequest.Organization]?

    public var preferredMaxBytes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchTimeout != nil {
            map["BatchTimeout"] = self.batchTimeout!
        }
        if self.channelName != nil {
            map["ChannelName"] = self.channelName!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.maxMessageCount != nil {
            map["MaxMessageCount"] = self.maxMessageCount!
        }
        if self.organization != nil {
            var tmp : [Any] = []
            for k in self.organization! {
                tmp.append(k.toMap())
            }
            map["Organization"] = tmp
        }
        if self.preferredMaxBytes != nil {
            map["PreferredMaxBytes"] = self.preferredMaxBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchTimeout") {
            self.batchTimeout = dict["BatchTimeout"] as! Int32
        }
        if dict.keys.contains("ChannelName") {
            self.channelName = dict["ChannelName"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("MaxMessageCount") {
            self.maxMessageCount = dict["MaxMessageCount"] as! Int32
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! [CreateFabricChannelRequest.Organization]
        }
        if dict.keys.contains("PreferredMaxBytes") {
            self.preferredMaxBytes = dict["PreferredMaxBytes"] as! Int32
        }
    }
}

public class CreateFabricChannelResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var batchTimeout: Int32?

        public var blockCount: Int32?

        public var chaincodeCount: Int32?

        public var channelId: String?

        public var channelName: String?

        public var consortiumId: String?

        public var consortiumName: String?

        public var createTime: String?

        public var maxMessageCount: Int32?

        public var memberCount: Int32?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var preferredMaxBytes: Int32?

        public var requestId: String?

        public var state: String?

        public var supportConfig: Bool?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchTimeout != nil {
                map["BatchTimeout"] = self.batchTimeout!
            }
            if self.blockCount != nil {
                map["BlockCount"] = self.blockCount!
            }
            if self.chaincodeCount != nil {
                map["ChaincodeCount"] = self.chaincodeCount!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.maxMessageCount != nil {
                map["MaxMessageCount"] = self.maxMessageCount!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.preferredMaxBytes != nil {
                map["PreferredMaxBytes"] = self.preferredMaxBytes!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.supportConfig != nil {
                map["SupportConfig"] = self.supportConfig!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchTimeout") {
                self.batchTimeout = dict["BatchTimeout"] as! Int32
            }
            if dict.keys.contains("BlockCount") {
                self.blockCount = dict["BlockCount"] as! Int32
            }
            if dict.keys.contains("ChaincodeCount") {
                self.chaincodeCount = dict["ChaincodeCount"] as! Int32
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MaxMessageCount") {
                self.maxMessageCount = dict["MaxMessageCount"] as! Int32
            }
            if dict.keys.contains("MemberCount") {
                self.memberCount = dict["MemberCount"] as! Int32
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PreferredMaxBytes") {
                self.preferredMaxBytes = dict["PreferredMaxBytes"] as! Int32
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("SupportConfig") {
                self.supportConfig = dict["SupportConfig"] as! Bool
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CreateFabricChannelResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateFabricChannelResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricChannelResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricChannelMemberRequest : Tea.TeaModel {
    public class Organization : Tea.TeaModel {
        public var organizationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
        }
    }
    public var channelId: String?

    public var organization: [CreateFabricChannelMemberRequest.Organization]?

    public override init() {
        super.init()
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
        if self.organization != nil {
            var tmp : [Any] = []
            for k in self.organization! {
                tmp.append(k.toMap())
            }
            map["Organization"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! [CreateFabricChannelMemberRequest.Organization]
        }
    }
}

public class CreateFabricChannelMemberResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricChannelMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricChannelMemberResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricChannelMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricConsortiumRequest : Tea.TeaModel {
    public class Organization : Tea.TeaModel {
        public var organizationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
        }
    }
    public var channelPolicy: String?

    public var consortiumDescription: String?

    public var consortiumName: String?

    public var domain: String?

    public var location: String?

    public var ordererType: String?

    public var orderersCount: Int32?

    public var organization: [CreateFabricConsortiumRequest.Organization]?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public var peersCount: Int32?

    public var specName: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelPolicy != nil {
            map["ChannelPolicy"] = self.channelPolicy!
        }
        if self.consortiumDescription != nil {
            map["ConsortiumDescription"] = self.consortiumDescription!
        }
        if self.consortiumName != nil {
            map["ConsortiumName"] = self.consortiumName!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.ordererType != nil {
            map["OrdererType"] = self.ordererType!
        }
        if self.orderersCount != nil {
            map["OrderersCount"] = self.orderersCount!
        }
        if self.organization != nil {
            var tmp : [Any] = []
            for k in self.organization! {
                tmp.append(k.toMap())
            }
            map["Organization"] = tmp
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.peersCount != nil {
            map["PeersCount"] = self.peersCount!
        }
        if self.specName != nil {
            map["SpecName"] = self.specName!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelPolicy") {
            self.channelPolicy = dict["ChannelPolicy"] as! String
        }
        if dict.keys.contains("ConsortiumDescription") {
            self.consortiumDescription = dict["ConsortiumDescription"] as! String
        }
        if dict.keys.contains("ConsortiumName") {
            self.consortiumName = dict["ConsortiumName"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrdererType") {
            self.ordererType = dict["OrdererType"] as! String
        }
        if dict.keys.contains("OrderersCount") {
            self.orderersCount = dict["OrderersCount"] as! Int32
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! [CreateFabricConsortiumRequest.Organization]
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("PeersCount") {
            self.peersCount = dict["PeersCount"] as! Int32
        }
        if dict.keys.contains("SpecName") {
            self.specName = dict["SpecName"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateFabricConsortiumResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var channelCount: Int32?

        public var channelPolicy: String?

        public var clusterState: String?

        public var codeName: String?

        public var consortiumId: String?

        public var consortiumName: String?

        public var createTime: String?

        public var description_: String?

        public var domain: String?

        public var memberCount: Int32?

        public var ordererCount: Int32?

        public var ordererType: String?

        public var ownerBid: String?

        public var ownerUid: Int64?

        public var regionId: String?

        public var serviceState: String?

        public var specName: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelCount != nil {
                map["ChannelCount"] = self.channelCount!
            }
            if self.channelPolicy != nil {
                map["ChannelPolicy"] = self.channelPolicy!
            }
            if self.clusterState != nil {
                map["ClusterState"] = self.clusterState!
            }
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.ordererCount != nil {
                map["OrdererCount"] = self.ordererCount!
            }
            if self.ordererType != nil {
                map["OrdererType"] = self.ordererType!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.serviceState != nil {
                map["ServiceState"] = self.serviceState!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCount") {
                self.channelCount = dict["ChannelCount"] as! Int32
            }
            if dict.keys.contains("ChannelPolicy") {
                self.channelPolicy = dict["ChannelPolicy"] as! String
            }
            if dict.keys.contains("ClusterState") {
                self.clusterState = dict["ClusterState"] as! String
            }
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("MemberCount") {
                self.memberCount = dict["MemberCount"] as! Int32
            }
            if dict.keys.contains("OrdererCount") {
                self.ordererCount = dict["OrdererCount"] as! Int32
            }
            if dict.keys.contains("OrdererType") {
                self.ordererType = dict["OrdererType"] as! String
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ServiceState") {
                self.serviceState = dict["ServiceState"] as! String
            }
            if dict.keys.contains("SpecName") {
                self.specName = dict["SpecName"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CreateFabricConsortiumResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateFabricConsortiumResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricConsortiumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricConsortiumResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricConsortiumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricConsortiumMemberRequest : Tea.TeaModel {
    public class Organization : Tea.TeaModel {
        public var organizationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
        }
    }
    public var code: String?

    public var consortiumId: String?

    public var organization: [CreateFabricConsortiumMemberRequest.Organization]?

    public override init() {
        super.init()
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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.organization != nil {
            var tmp : [Any] = []
            for k in self.organization! {
                tmp.append(k.toMap())
            }
            map["Organization"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! [CreateFabricConsortiumMemberRequest.Organization]
        }
    }
}

public class CreateFabricConsortiumMemberResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricConsortiumMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricConsortiumMemberResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricConsortiumMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricOrganizationRequest : Tea.TeaModel {
    public var description_: String?

    public var domain: String?

    public var location: String?

    public var organizationName: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public var peersCount: Int32?

    public var specName: String?

    public override init() {
        super.init()
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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationName != nil {
            map["OrganizationName"] = self.organizationName!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.peersCount != nil {
            map["PeersCount"] = self.peersCount!
        }
        if self.specName != nil {
            map["SpecName"] = self.specName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationName") {
            self.organizationName = dict["OrganizationName"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("PeersCount") {
            self.peersCount = dict["PeersCount"] as! Int32
        }
        if dict.keys.contains("SpecName") {
            self.specName = dict["SpecName"] as! String
        }
    }
}

public class CreateFabricOrganizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var clusterState: String?

        public var codeName: String?

        public var consortiumCount: Int32?

        public var createTime: String?

        public var domain: String?

        public var organizationDescription: String?

        public var organizationId: String?

        public var organizationName: String?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var peerCount: Int32?

        public var regionId: String?

        public var requestId: String?

        public var serviceState: String?

        public var specName: String?

        public var userCount: Int32?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterState != nil {
                map["ClusterState"] = self.clusterState!
            }
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.consortiumCount != nil {
                map["ConsortiumCount"] = self.consortiumCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.organizationDescription != nil {
                map["OrganizationDescription"] = self.organizationDescription!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.peerCount != nil {
                map["PeerCount"] = self.peerCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.serviceState != nil {
                map["ServiceState"] = self.serviceState!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterState") {
                self.clusterState = dict["ClusterState"] as! String
            }
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("ConsortiumCount") {
                self.consortiumCount = dict["ConsortiumCount"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("OrganizationDescription") {
                self.organizationDescription = dict["OrganizationDescription"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PeerCount") {
                self.peerCount = dict["PeerCount"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("ServiceState") {
                self.serviceState = dict["ServiceState"] as! String
            }
            if dict.keys.contains("SpecName") {
                self.specName = dict["SpecName"] as! String
            }
            if dict.keys.contains("UserCount") {
                self.userCount = dict["UserCount"] as! Int32
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CreateFabricOrganizationResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateFabricOrganizationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricOrganizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricOrganizationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricOrganizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFabricOrganizationUserRequest : Tea.TeaModel {
    public var attrs: String?

    public var organizationId: String?

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
        if self.attrs != nil {
            map["Attrs"] = self.attrs!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attrs") {
            self.attrs = dict["Attrs"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class CreateFabricOrganizationUserResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var fullname: String?

        public var organizationId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fullname != nil {
                map["Fullname"] = self.fullname!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Fullname") {
                self.fullname = dict["Fullname"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: CreateFabricOrganizationUserResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateFabricOrganizationUserResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFabricOrganizationUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFabricOrganizationUserResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFabricOrganizationUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAntChainConsortiumRequest : Tea.TeaModel {
    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DeleteAntChainConsortiumResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class DeleteAntChainConsortiumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAntChainConsortiumResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAntChainConsortiumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAntChainContractContentRequest : Tea.TeaModel {
    public var contentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentId") {
            self.contentId = dict["ContentId"] as! String
        }
    }
}

public class DeleteAntChainContractContentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class DeleteAntChainContractContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAntChainContractContentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAntChainContractContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAntChainContractProjectRequest : Tea.TeaModel {
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteAntChainContractProjectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class DeleteAntChainContractProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAntChainContractProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAntChainContractProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAntChainMiniAppQRCodeAuthorizedUserRequest : Tea.TeaModel {
    public var antChainId: String?

    public var phone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
    }
}

public class DeleteAntChainMiniAppQRCodeAuthorizedUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class DeleteAntChainMiniAppQRCodeAuthorizedUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAntChainMiniAppQRCodeAuthorizedUserResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAntChainMiniAppQRCodeAuthorizedUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFabricChaincodeRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
    }
}

public class DeleteFabricChaincodeResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteFabricChaincodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFabricChaincodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteFabricChaincodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainAccountsRequest : Tea.TeaModel {
    public var antChainId: String?

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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainAccountsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Accounts : Tea.TeaModel {
            public var account: String?

            public var accountPublicKey: String?

            public var accountRecoveryKey: String?

            public var accountStatus: String?

            public var antChainId: String?

            public override init() {
                super.init()
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
                if self.accountPublicKey != nil {
                    map["AccountPublicKey"] = self.accountPublicKey!
                }
                if self.accountRecoveryKey != nil {
                    map["AccountRecoveryKey"] = self.accountRecoveryKey!
                }
                if self.accountStatus != nil {
                    map["AccountStatus"] = self.accountStatus!
                }
                if self.antChainId != nil {
                    map["AntChainId"] = self.antChainId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Account") {
                    self.account = dict["Account"] as! String
                }
                if dict.keys.contains("AccountPublicKey") {
                    self.accountPublicKey = dict["AccountPublicKey"] as! String
                }
                if dict.keys.contains("AccountRecoveryKey") {
                    self.accountRecoveryKey = dict["AccountRecoveryKey"] as! String
                }
                if dict.keys.contains("AccountStatus") {
                    self.accountStatus = dict["AccountStatus"] as! String
                }
                if dict.keys.contains("AntChainId") {
                    self.antChainId = dict["AntChainId"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var accounts: [DescribeAntChainAccountsResponseBody.Result.Accounts]?

        public var pagination: DescribeAntChainAccountsResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accounts != nil {
                var tmp : [Any] = []
                for k in self.accounts! {
                    tmp.append(k.toMap())
                }
                map["Accounts"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accounts") {
                self.accounts = dict["Accounts"] as! [DescribeAntChainAccountsResponseBody.Result.Accounts]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainAccountsResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainAccountsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainAccountsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainAccountsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainAccountsV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainAccountsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Accounts : Tea.TeaModel {
            public var account: String?

            public var accountPublicKey: String?

            public var accountRecoveryKey: String?

            public var accountStatus: String?

            public var antChainId: String?

            public override init() {
                super.init()
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
                if self.accountPublicKey != nil {
                    map["AccountPublicKey"] = self.accountPublicKey!
                }
                if self.accountRecoveryKey != nil {
                    map["AccountRecoveryKey"] = self.accountRecoveryKey!
                }
                if self.accountStatus != nil {
                    map["AccountStatus"] = self.accountStatus!
                }
                if self.antChainId != nil {
                    map["AntChainId"] = self.antChainId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Account") {
                    self.account = dict["Account"] as! String
                }
                if dict.keys.contains("AccountPublicKey") {
                    self.accountPublicKey = dict["AccountPublicKey"] as! String
                }
                if dict.keys.contains("AccountRecoveryKey") {
                    self.accountRecoveryKey = dict["AccountRecoveryKey"] as! String
                }
                if dict.keys.contains("AccountStatus") {
                    self.accountStatus = dict["AccountStatus"] as! String
                }
                if dict.keys.contains("AntChainId") {
                    self.antChainId = dict["AntChainId"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var accounts: [DescribeAntChainAccountsV2ResponseBody.Result.Accounts]?

        public var pagination: DescribeAntChainAccountsV2ResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accounts != nil {
                var tmp : [Any] = []
                for k in self.accounts! {
                    tmp.append(k.toMap())
                }
                map["Accounts"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accounts") {
                self.accounts = dict["Accounts"] as! [DescribeAntChainAccountsV2ResponseBody.Result.Accounts]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainAccountsV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainAccountsV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainAccountsV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainAccountsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainAccountsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainAccountsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainBlockRequest : Tea.TeaModel {
    public var antChainId: String?

    public var height: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int64
        }
    }
}

public class DescribeAntChainBlockResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var blockHash: String?

        public var createTime: Int64?

        public var height: Int32?

        public var previousHash: String?

        public var rootTxHash: String?

        public var transSummaryList: String?

        public var transactionSize: Int32?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.blockHash != nil {
                map["BlockHash"] = self.blockHash!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.previousHash != nil {
                map["PreviousHash"] = self.previousHash!
            }
            if self.rootTxHash != nil {
                map["RootTxHash"] = self.rootTxHash!
            }
            if self.transSummaryList != nil {
                map["TransSummaryList"] = self.transSummaryList!
            }
            if self.transactionSize != nil {
                map["TransactionSize"] = self.transactionSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("BlockHash") {
                self.blockHash = dict["BlockHash"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("PreviousHash") {
                self.previousHash = dict["PreviousHash"] as! String
            }
            if dict.keys.contains("RootTxHash") {
                self.rootTxHash = dict["RootTxHash"] as! String
            }
            if dict.keys.contains("TransSummaryList") {
                self.transSummaryList = dict["TransSummaryList"] as! String
            }
            if dict.keys.contains("TransactionSize") {
                self.transactionSize = dict["TransactionSize"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainBlockResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainBlockResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainBlockResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainBlockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainBlockV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public var height: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int64
        }
    }
}

public class DescribeAntChainBlockV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class TransSummaryList : Tea.TeaModel {
            public var alias: String?

            public var blockHash: String?

            public var category: Int32?

            public var createTime: Int64?

            public var from: String?

            public var gasUsed: Int64?

            public var hash: String?

            public var height: Int64?

            public var referenceCount: Int32?

            public var to: String?

            public var transTypeV10: String?

            public var transTypeV6: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alias != nil {
                    map["Alias"] = self.alias!
                }
                if self.blockHash != nil {
                    map["BlockHash"] = self.blockHash!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.gasUsed != nil {
                    map["GasUsed"] = self.gasUsed!
                }
                if self.hash != nil {
                    map["Hash"] = self.hash!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.referenceCount != nil {
                    map["ReferenceCount"] = self.referenceCount!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                if self.transTypeV10 != nil {
                    map["TransTypeV10"] = self.transTypeV10!
                }
                if self.transTypeV6 != nil {
                    map["TransTypeV6"] = self.transTypeV6!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alias") {
                    self.alias = dict["Alias"] as! String
                }
                if dict.keys.contains("BlockHash") {
                    self.blockHash = dict["BlockHash"] as! String
                }
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("GasUsed") {
                    self.gasUsed = dict["GasUsed"] as! Int64
                }
                if dict.keys.contains("Hash") {
                    self.hash = dict["Hash"] as! String
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int64
                }
                if dict.keys.contains("ReferenceCount") {
                    self.referenceCount = dict["ReferenceCount"] as! Int32
                }
                if dict.keys.contains("To") {
                    self.to = dict["To"] as! String
                }
                if dict.keys.contains("TransTypeV10") {
                    self.transTypeV10 = dict["TransTypeV10"] as! String
                }
                if dict.keys.contains("TransTypeV6") {
                    self.transTypeV6 = dict["TransTypeV6"] as! String
                }
            }
        }
        public var antChainId: String?

        public var blockHash: String?

        public var createTime: Int64?

        public var height: Int32?

        public var previousHash: String?

        public var rootTxHash: String?

        public var transSummaryList: [DescribeAntChainBlockV2ResponseBody.Result.TransSummaryList]?

        public var transactionSize: Int32?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.blockHash != nil {
                map["BlockHash"] = self.blockHash!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.previousHash != nil {
                map["PreviousHash"] = self.previousHash!
            }
            if self.rootTxHash != nil {
                map["RootTxHash"] = self.rootTxHash!
            }
            if self.transSummaryList != nil {
                var tmp : [Any] = []
                for k in self.transSummaryList! {
                    tmp.append(k.toMap())
                }
                map["TransSummaryList"] = tmp
            }
            if self.transactionSize != nil {
                map["TransactionSize"] = self.transactionSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("BlockHash") {
                self.blockHash = dict["BlockHash"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("PreviousHash") {
                self.previousHash = dict["PreviousHash"] as! String
            }
            if dict.keys.contains("RootTxHash") {
                self.rootTxHash = dict["RootTxHash"] as! String
            }
            if dict.keys.contains("TransSummaryList") {
                self.transSummaryList = dict["TransSummaryList"] as! [DescribeAntChainBlockV2ResponseBody.Result.TransSummaryList]
            }
            if dict.keys.contains("TransactionSize") {
                self.transactionSize = dict["TransactionSize"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainBlockV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainBlockV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainBlockV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainBlockV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainBlockV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainCertificateApplicationsRequest : Tea.TeaModel {
    public var antChainId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeAntChainCertificateApplicationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CertificateApplications : Tea.TeaModel {
            public var antChainId: String?

            public var bid: String?

            public var createtime: Int64?

            public var status: String?

            public var updatetime: Int64?

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
                if self.antChainId != nil {
                    map["AntChainId"] = self.antChainId!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.createtime != nil {
                    map["Createtime"] = self.createtime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updatetime != nil {
                    map["Updatetime"] = self.updatetime!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AntChainId") {
                    self.antChainId = dict["AntChainId"] as! String
                }
                if dict.keys.contains("Bid") {
                    self.bid = dict["Bid"] as! String
                }
                if dict.keys.contains("Createtime") {
                    self.createtime = dict["Createtime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Updatetime") {
                    self.updatetime = dict["Updatetime"] as! Int64
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var certificateApplications: [DescribeAntChainCertificateApplicationsResponseBody.Result.CertificateApplications]?

        public var pagination: DescribeAntChainCertificateApplicationsResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateApplications != nil {
                var tmp : [Any] = []
                for k in self.certificateApplications! {
                    tmp.append(k.toMap())
                }
                map["CertificateApplications"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateApplications") {
                self.certificateApplications = dict["CertificateApplications"] as! [DescribeAntChainCertificateApplicationsResponseBody.Result.CertificateApplications]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainCertificateApplicationsResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainCertificateApplicationsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainCertificateApplicationsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainCertificateApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainCertificateApplicationsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainCertificateApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainCertificateApplicationsV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeAntChainCertificateApplicationsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CertificateApplications : Tea.TeaModel {
            public var antChainId: String?

            public var bid: String?

            public var createtime: Int64?

            public var status: String?

            public var updatetime: Int64?

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
                if self.antChainId != nil {
                    map["AntChainId"] = self.antChainId!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.createtime != nil {
                    map["Createtime"] = self.createtime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updatetime != nil {
                    map["Updatetime"] = self.updatetime!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AntChainId") {
                    self.antChainId = dict["AntChainId"] as! String
                }
                if dict.keys.contains("Bid") {
                    self.bid = dict["Bid"] as! String
                }
                if dict.keys.contains("Createtime") {
                    self.createtime = dict["Createtime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Updatetime") {
                    self.updatetime = dict["Updatetime"] as! Int64
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var certificateApplications: [DescribeAntChainCertificateApplicationsV2ResponseBody.Result.CertificateApplications]?

        public var pagination: DescribeAntChainCertificateApplicationsV2ResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateApplications != nil {
                var tmp : [Any] = []
                for k in self.certificateApplications! {
                    tmp.append(k.toMap())
                }
                map["CertificateApplications"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateApplications") {
                self.certificateApplications = dict["CertificateApplications"] as! [DescribeAntChainCertificateApplicationsV2ResponseBody.Result.CertificateApplications]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainCertificateApplicationsV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainCertificateApplicationsV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainCertificateApplicationsV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainCertificateApplicationsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainCertificateApplicationsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainCertificateApplicationsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainConsortiumsRequest : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
    }
}

public class DescribeAntChainConsortiumsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AntConsortiums : Tea.TeaModel {
            public var chainNum: Int64?

            public var consortiumDescription: String?

            public var consortiumId: String?

            public var consortiumName: String?

            public var createTime: Int64?

            public var memberNum: Int64?

            public var role: String?

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
                if self.chainNum != nil {
                    map["ChainNum"] = self.chainNum!
                }
                if self.consortiumDescription != nil {
                    map["ConsortiumDescription"] = self.consortiumDescription!
                }
                if self.consortiumId != nil {
                    map["ConsortiumId"] = self.consortiumId!
                }
                if self.consortiumName != nil {
                    map["ConsortiumName"] = self.consortiumName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.memberNum != nil {
                    map["MemberNum"] = self.memberNum!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChainNum") {
                    self.chainNum = dict["ChainNum"] as! Int64
                }
                if dict.keys.contains("ConsortiumDescription") {
                    self.consortiumDescription = dict["ConsortiumDescription"] as! String
                }
                if dict.keys.contains("ConsortiumId") {
                    self.consortiumId = dict["ConsortiumId"] as! String
                }
                if dict.keys.contains("ConsortiumName") {
                    self.consortiumName = dict["ConsortiumName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("MemberNum") {
                    self.memberNum = dict["MemberNum"] as! Int64
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var antConsortiums: [DescribeAntChainConsortiumsResponseBody.Result.AntConsortiums]?

        public var pagination: DescribeAntChainConsortiumsResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antConsortiums != nil {
                var tmp : [Any] = []
                for k in self.antConsortiums! {
                    tmp.append(k.toMap())
                }
                map["AntConsortiums"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntConsortiums") {
                self.antConsortiums = dict["AntConsortiums"] as! [DescribeAntChainConsortiumsResponseBody.Result.AntConsortiums]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainConsortiumsResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainConsortiumsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainConsortiumsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainConsortiumsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainConsortiumsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainConsortiumsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainConsortiumsV2Request : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
    }
}

public class DescribeAntChainConsortiumsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AntConsortiums : Tea.TeaModel {
            public var chainNum: Int64?

            public var consortiumDescription: String?

            public var consortiumId: String?

            public var consortiumName: String?

            public var createTime: Int64?

            public var isEmptyConsortium: Bool?

            public var memberNum: Int64?

            public var role: String?

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
                if self.chainNum != nil {
                    map["ChainNum"] = self.chainNum!
                }
                if self.consortiumDescription != nil {
                    map["ConsortiumDescription"] = self.consortiumDescription!
                }
                if self.consortiumId != nil {
                    map["ConsortiumId"] = self.consortiumId!
                }
                if self.consortiumName != nil {
                    map["ConsortiumName"] = self.consortiumName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.isEmptyConsortium != nil {
                    map["IsEmptyConsortium"] = self.isEmptyConsortium!
                }
                if self.memberNum != nil {
                    map["MemberNum"] = self.memberNum!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChainNum") {
                    self.chainNum = dict["ChainNum"] as! Int64
                }
                if dict.keys.contains("ConsortiumDescription") {
                    self.consortiumDescription = dict["ConsortiumDescription"] as! String
                }
                if dict.keys.contains("ConsortiumId") {
                    self.consortiumId = dict["ConsortiumId"] as! String
                }
                if dict.keys.contains("ConsortiumName") {
                    self.consortiumName = dict["ConsortiumName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("IsEmptyConsortium") {
                    self.isEmptyConsortium = dict["IsEmptyConsortium"] as! Bool
                }
                if dict.keys.contains("MemberNum") {
                    self.memberNum = dict["MemberNum"] as! Int64
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var antConsortiums: [DescribeAntChainConsortiumsV2ResponseBody.Result.AntConsortiums]?

        public var pagination: DescribeAntChainConsortiumsV2ResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antConsortiums != nil {
                var tmp : [Any] = []
                for k in self.antConsortiums! {
                    tmp.append(k.toMap())
                }
                map["AntConsortiums"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntConsortiums") {
                self.antConsortiums = dict["AntConsortiums"] as! [DescribeAntChainConsortiumsV2ResponseBody.Result.AntConsortiums]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainConsortiumsV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainConsortiumsV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainConsortiumsV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainConsortiumsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainConsortiumsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainConsortiumsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainContractProjectContentTreeRequest : Tea.TeaModel {
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeAntChainContractProjectContentTreeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var children: [[String: Any]]?

        public var projectDescription: String?

        public var projectId: String?

        public var projectName: String?

        public var projectVersion: String?

        public override init() {
            super.init()
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
            if self.projectDescription != nil {
                map["ProjectDescription"] = self.projectDescription!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectVersion != nil {
                map["ProjectVersion"] = self.projectVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Children") {
                self.children = dict["Children"] as! [[String: Any]]
            }
            if dict.keys.contains("ProjectDescription") {
                self.projectDescription = dict["ProjectDescription"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectVersion") {
                self.projectVersion = dict["ProjectVersion"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainContractProjectContentTreeResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainContractProjectContentTreeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainContractProjectContentTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainContractProjectContentTreeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainContractProjectContentTreeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainContractProjectContentTreeV2Request : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DescribeAntChainContractProjectContentTreeV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: String?

    public var resultCode: String?

    public var resultMessage: String?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainContractProjectContentTreeV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainContractProjectContentTreeV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainContractProjectContentTreeV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainContractProjectsRequest : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainContractProjectsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ContractProjects : Tea.TeaModel {
            public var consortiumId: String?

            public var createTime: Int64?

            public var projectDescription: String?

            public var projectId: String?

            public var projectName: String?

            public var projectVersion: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.consortiumId != nil {
                    map["ConsortiumId"] = self.consortiumId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.projectDescription != nil {
                    map["ProjectDescription"] = self.projectDescription!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.projectVersion != nil {
                    map["ProjectVersion"] = self.projectVersion!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConsortiumId") {
                    self.consortiumId = dict["ConsortiumId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ProjectDescription") {
                    self.projectDescription = dict["ProjectDescription"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("ProjectName") {
                    self.projectName = dict["ProjectName"] as! String
                }
                if dict.keys.contains("ProjectVersion") {
                    self.projectVersion = dict["ProjectVersion"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var contractProjects: [DescribeAntChainContractProjectsResponseBody.Result.ContractProjects]?

        public var pagination: DescribeAntChainContractProjectsResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contractProjects != nil {
                var tmp : [Any] = []
                for k in self.contractProjects! {
                    tmp.append(k.toMap())
                }
                map["ContractProjects"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContractProjects") {
                self.contractProjects = dict["ContractProjects"] as! [DescribeAntChainContractProjectsResponseBody.Result.ContractProjects]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainContractProjectsResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainContractProjectsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainContractProjectsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainContractProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainContractProjectsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainContractProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainContractProjectsV2Request : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainContractProjectsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ContractProjects : Tea.TeaModel {
            public var consortiumId: String?

            public var createTime: Int64?

            public var projectDescription: String?

            public var projectId: String?

            public var projectName: String?

            public var projectVersion: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.consortiumId != nil {
                    map["ConsortiumId"] = self.consortiumId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.projectDescription != nil {
                    map["ProjectDescription"] = self.projectDescription!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.projectVersion != nil {
                    map["ProjectVersion"] = self.projectVersion!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConsortiumId") {
                    self.consortiumId = dict["ConsortiumId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ProjectDescription") {
                    self.projectDescription = dict["ProjectDescription"] as! String
                }
                if dict.keys.contains("ProjectId") {
                    self.projectId = dict["ProjectId"] as! String
                }
                if dict.keys.contains("ProjectName") {
                    self.projectName = dict["ProjectName"] as! String
                }
                if dict.keys.contains("ProjectVersion") {
                    self.projectVersion = dict["ProjectVersion"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var contractProjects: [DescribeAntChainContractProjectsV2ResponseBody.Result.ContractProjects]?

        public var pagination: DescribeAntChainContractProjectsV2ResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contractProjects != nil {
                var tmp : [Any] = []
                for k in self.contractProjects! {
                    tmp.append(k.toMap())
                }
                map["ContractProjects"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContractProjects") {
                self.contractProjects = dict["ContractProjects"] as! [DescribeAntChainContractProjectsV2ResponseBody.Result.ContractProjects]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainContractProjectsV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainContractProjectsV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainContractProjectsV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainContractProjectsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainContractProjectsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainContractProjectsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainDownloadPathsRequest : Tea.TeaModel {
    public var antChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class DescribeAntChainDownloadPathsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var caCrtUrl: String?

        public var clientCrtUrl: String?

        public var sdkUrl: String?

        public var trustCaUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caCrtUrl != nil {
                map["CaCrtUrl"] = self.caCrtUrl!
            }
            if self.clientCrtUrl != nil {
                map["ClientCrtUrl"] = self.clientCrtUrl!
            }
            if self.sdkUrl != nil {
                map["SdkUrl"] = self.sdkUrl!
            }
            if self.trustCaUrl != nil {
                map["TrustCaUrl"] = self.trustCaUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaCrtUrl") {
                self.caCrtUrl = dict["CaCrtUrl"] as! String
            }
            if dict.keys.contains("ClientCrtUrl") {
                self.clientCrtUrl = dict["ClientCrtUrl"] as! String
            }
            if dict.keys.contains("SdkUrl") {
                self.sdkUrl = dict["SdkUrl"] as! String
            }
            if dict.keys.contains("TrustCaUrl") {
                self.trustCaUrl = dict["TrustCaUrl"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainDownloadPathsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainDownloadPathsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainDownloadPathsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainDownloadPathsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainDownloadPathsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainDownloadPathsV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DescribeAntChainDownloadPathsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var caCrtUrl: String?

        public var clientCrtUrl: String?

        public var sdkUrl: String?

        public var trustCaUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caCrtUrl != nil {
                map["CaCrtUrl"] = self.caCrtUrl!
            }
            if self.clientCrtUrl != nil {
                map["ClientCrtUrl"] = self.clientCrtUrl!
            }
            if self.sdkUrl != nil {
                map["SdkUrl"] = self.sdkUrl!
            }
            if self.trustCaUrl != nil {
                map["TrustCaUrl"] = self.trustCaUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaCrtUrl") {
                self.caCrtUrl = dict["CaCrtUrl"] as! String
            }
            if dict.keys.contains("ClientCrtUrl") {
                self.clientCrtUrl = dict["ClientCrtUrl"] as! String
            }
            if dict.keys.contains("SdkUrl") {
                self.sdkUrl = dict["SdkUrl"] as! String
            }
            if dict.keys.contains("TrustCaUrl") {
                self.trustCaUrl = dict["TrustCaUrl"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainDownloadPathsV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainDownloadPathsV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainDownloadPathsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainDownloadPathsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainDownloadPathsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainInformationRequest : Tea.TeaModel {
    public var antChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class DescribeAntChainInformationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class NodeInfos : Tea.TeaModel {
            public var blockHeight: Int64?

            public var nodeName: String?

            public var status: Bool?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockHeight != nil {
                    map["BlockHeight"] = self.blockHeight!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockHeight") {
                    self.blockHeight = dict["BlockHeight"] as! Int64
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Bool
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var abnormalNodes: Int32?

        public var antChainId: String?

        public var blockHeight: Int32?

        public var createTime: Int64?

        public var nodeInfos: [DescribeAntChainInformationResponseBody.Result.NodeInfos]?

        public var nodeNumber: Int32?

        public var normal: Bool?

        public var transactionSum: Int32?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abnormalNodes != nil {
                map["AbnormalNodes"] = self.abnormalNodes!
            }
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.blockHeight != nil {
                map["BlockHeight"] = self.blockHeight!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.nodeInfos != nil {
                var tmp : [Any] = []
                for k in self.nodeInfos! {
                    tmp.append(k.toMap())
                }
                map["NodeInfos"] = tmp
            }
            if self.nodeNumber != nil {
                map["NodeNumber"] = self.nodeNumber!
            }
            if self.normal != nil {
                map["Normal"] = self.normal!
            }
            if self.transactionSum != nil {
                map["TransactionSum"] = self.transactionSum!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbnormalNodes") {
                self.abnormalNodes = dict["AbnormalNodes"] as! Int32
            }
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("BlockHeight") {
                self.blockHeight = dict["BlockHeight"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("NodeInfos") {
                self.nodeInfos = dict["NodeInfos"] as! [DescribeAntChainInformationResponseBody.Result.NodeInfos]
            }
            if dict.keys.contains("NodeNumber") {
                self.nodeNumber = dict["NodeNumber"] as! Int32
            }
            if dict.keys.contains("Normal") {
                self.normal = dict["Normal"] as! Bool
            }
            if dict.keys.contains("TransactionSum") {
                self.transactionSum = dict["TransactionSum"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainInformationResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainInformationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainInformationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainInformationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainInformationV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DescribeAntChainInformationV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class NodeInfos : Tea.TeaModel {
            public var blockHeight: Int64?

            public var nodeName: String?

            public var status: Bool?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockHeight != nil {
                    map["BlockHeight"] = self.blockHeight!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockHeight") {
                    self.blockHeight = dict["BlockHeight"] as! Int64
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Bool
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var abnormalNodes: Int32?

        public var antChainId: String?

        public var blockHeight: Int32?

        public var createTime: Int64?

        public var isRole: Bool?

        public var nodeInfos: [DescribeAntChainInformationV2ResponseBody.Result.NodeInfos]?

        public var nodeNumber: Int32?

        public var normal: Bool?

        public var transactionSum: Int32?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abnormalNodes != nil {
                map["AbnormalNodes"] = self.abnormalNodes!
            }
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.blockHeight != nil {
                map["BlockHeight"] = self.blockHeight!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.isRole != nil {
                map["IsRole"] = self.isRole!
            }
            if self.nodeInfos != nil {
                var tmp : [Any] = []
                for k in self.nodeInfos! {
                    tmp.append(k.toMap())
                }
                map["NodeInfos"] = tmp
            }
            if self.nodeNumber != nil {
                map["NodeNumber"] = self.nodeNumber!
            }
            if self.normal != nil {
                map["Normal"] = self.normal!
            }
            if self.transactionSum != nil {
                map["TransactionSum"] = self.transactionSum!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbnormalNodes") {
                self.abnormalNodes = dict["AbnormalNodes"] as! Int32
            }
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("BlockHeight") {
                self.blockHeight = dict["BlockHeight"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("IsRole") {
                self.isRole = dict["IsRole"] as! Bool
            }
            if dict.keys.contains("NodeInfos") {
                self.nodeInfos = dict["NodeInfos"] as! [DescribeAntChainInformationV2ResponseBody.Result.NodeInfos]
            }
            if dict.keys.contains("NodeNumber") {
                self.nodeNumber = dict["NodeNumber"] as! Int32
            }
            if dict.keys.contains("Normal") {
                self.normal = dict["Normal"] as! Bool
            }
            if dict.keys.contains("TransactionSum") {
                self.transactionSum = dict["TransactionSum"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainInformationV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainInformationV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainInformationV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainInformationV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainInformationV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainLatestBlocksRequest : Tea.TeaModel {
    public var antChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class DescribeAntChainLatestBlocksResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [[String: Any]]
        }
    }
}

public class DescribeAntChainLatestBlocksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainLatestBlocksResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainLatestBlocksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainLatestBlocksV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DescribeAntChainLatestBlocksV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var alias: String?

        public var bizData: String?

        public var blockHash: String?

        public var createTime: Int64?

        public var height: Int64?

        public var previousHash: String?

        public var rootTxHash: String?

        public var size: Int64?

        public var transactionSize: Int64?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.bizData != nil {
                map["BizData"] = self.bizData!
            }
            if self.blockHash != nil {
                map["BlockHash"] = self.blockHash!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.previousHash != nil {
                map["PreviousHash"] = self.previousHash!
            }
            if self.rootTxHash != nil {
                map["RootTxHash"] = self.rootTxHash!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.transactionSize != nil {
                map["TransactionSize"] = self.transactionSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("BizData") {
                self.bizData = dict["BizData"] as! String
            }
            if dict.keys.contains("BlockHash") {
                self.blockHash = dict["BlockHash"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int64
            }
            if dict.keys.contains("PreviousHash") {
                self.previousHash = dict["PreviousHash"] as! String
            }
            if dict.keys.contains("RootTxHash") {
                self.rootTxHash = dict["RootTxHash"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("TransactionSize") {
                self.transactionSize = dict["TransactionSize"] as! Int64
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: [DescribeAntChainLatestBlocksV2ResponseBody.Result]?

    public var resultCode: String?

    public var resultMessage: String?

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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeAntChainLatestBlocksV2ResponseBody.Result]
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainLatestBlocksV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainLatestBlocksV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainLatestBlocksV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainLatestTransactionDigestsRequest : Tea.TeaModel {
    public var antChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class DescribeAntChainLatestTransactionDigestsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [[String: Any]]
        }
    }
}

public class DescribeAntChainLatestTransactionDigestsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainLatestTransactionDigestsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainLatestTransactionDigestsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainLatestTransactionDigestsV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DescribeAntChainLatestTransactionDigestsV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: [String]?

    public var resultCode: String?

    public var resultMessage: String?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [String]
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainLatestTransactionDigestsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainLatestTransactionDigestsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainLatestTransactionDigestsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMembersRequest : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainMembersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Members : Tea.TeaModel {
            public var joinTime: Int64?

            public var memberId: String?

            public var memberName: String?

            public var role: String?

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
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.memberId != nil {
                    map["MemberId"] = self.memberId!
                }
                if self.memberName != nil {
                    map["MemberName"] = self.memberName!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTime") {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("MemberId") {
                    self.memberId = dict["MemberId"] as! String
                }
                if dict.keys.contains("MemberName") {
                    self.memberName = dict["MemberName"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var members: [DescribeAntChainMembersResponseBody.Result.Members]?

        public var pagination: DescribeAntChainMembersResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.members != nil {
                var tmp : [Any] = []
                for k in self.members! {
                    tmp.append(k.toMap())
                }
                map["Members"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Members") {
                self.members = dict["Members"] as! [DescribeAntChainMembersResponseBody.Result.Members]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainMembersResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainMembersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMembersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMembersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMembersV2Request : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainMembersV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Members : Tea.TeaModel {
            public var joinTime: Int64?

            public var memberId: String?

            public var memberName: String?

            public var role: String?

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
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.memberId != nil {
                    map["MemberId"] = self.memberId!
                }
                if self.memberName != nil {
                    map["MemberName"] = self.memberName!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTime") {
                    self.joinTime = dict["JoinTime"] as! Int64
                }
                if dict.keys.contains("MemberId") {
                    self.memberId = dict["MemberId"] as! String
                }
                if dict.keys.contains("MemberName") {
                    self.memberName = dict["MemberName"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var members: [DescribeAntChainMembersV2ResponseBody.Result.Members]?

        public var pagination: DescribeAntChainMembersV2ResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.members != nil {
                var tmp : [Any] = []
                for k in self.members! {
                    tmp.append(k.toMap())
                }
                map["Members"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Members") {
                self.members = dict["Members"] as! [DescribeAntChainMembersV2ResponseBody.Result.Members]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainMembersV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainMembersV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMembersV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainMembersV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMembersV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMembersV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAccessLogRequest : Tea.TeaModel {
    public var antChainId: String?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAccessLogResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessAlipayAccountCount: Int64?

        public var accessCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessAlipayAccountCount != nil {
                map["AccessAlipayAccountCount"] = self.accessAlipayAccountCount!
            }
            if self.accessCount != nil {
                map["AccessCount"] = self.accessCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessAlipayAccountCount") {
                self.accessAlipayAccountCount = dict["AccessAlipayAccountCount"] as! Int64
            }
            if dict.keys.contains("AccessCount") {
                self.accessCount = dict["AccessCount"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainMiniAppBrowserQRCodeAccessLogResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAccessLogResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAccessLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMiniAppBrowserQRCodeAccessLogResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAccessLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAccessLogV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAccessLogV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessAlipayAccountCount: Int64?

        public var accessCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessAlipayAccountCount != nil {
                map["AccessAlipayAccountCount"] = self.accessAlipayAccountCount!
            }
            if self.accessCount != nil {
                map["AccessCount"] = self.accessCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessAlipayAccountCount") {
                self.accessAlipayAccountCount = dict["AccessAlipayAccountCount"] as! Int64
            }
            if dict.keys.contains("AccessCount") {
                self.accessCount = dict["AccessCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainMiniAppBrowserQRCodeAccessLogV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAccessLogV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAccessLogV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMiniAppBrowserQRCodeAccessLogV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAccessLogV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersRequest : Tea.TeaModel {
    public var antChainId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AuthorizedUserList : Tea.TeaModel {
            public var gmtAuthorized: String?

            public var phone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtAuthorized != nil {
                    map["GmtAuthorized"] = self.gmtAuthorized!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtAuthorized") {
                    self.gmtAuthorized = dict["GmtAuthorized"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var antChainId: String?

        public var authorizationType: String?

        public var authorizedUserList: [DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody.Result.AuthorizedUserList]?

        public var pagination: DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody.Result.Pagination?

        public var QRCodeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.authorizationType != nil {
                map["AuthorizationType"] = self.authorizationType!
            }
            if self.authorizedUserList != nil {
                var tmp : [Any] = []
                for k in self.authorizedUserList! {
                    tmp.append(k.toMap())
                }
                map["AuthorizedUserList"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.QRCodeType != nil {
                map["QRCodeType"] = self.QRCodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("AuthorizationType") {
                self.authorizationType = dict["AuthorizationType"] as! String
            }
            if dict.keys.contains("AuthorizedUserList") {
                self.authorizedUserList = dict["AuthorizedUserList"] as! [DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody.Result.AuthorizedUserList]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
            if dict.keys.contains("QRCodeType") {
                self.QRCodeType = dict["QRCodeType"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AuthorizedUserList : Tea.TeaModel {
            public var gmtAuthorized: String?

            public var phone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtAuthorized != nil {
                    map["GmtAuthorized"] = self.gmtAuthorized!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtAuthorized") {
                    self.gmtAuthorized = dict["GmtAuthorized"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var antChainId: String?

        public var authorizationType: String?

        public var authorizedUserList: [DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody.Result.AuthorizedUserList]?

        public var pagination: DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody.Result.Pagination?

        public var QRCodeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.authorizationType != nil {
                map["AuthorizationType"] = self.authorizationType!
            }
            if self.authorizedUserList != nil {
                var tmp : [Any] = []
                for k in self.authorizedUserList! {
                    tmp.append(k.toMap())
                }
                map["AuthorizedUserList"] = tmp
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            if self.QRCodeType != nil {
                map["QRCodeType"] = self.QRCodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("AuthorizationType") {
                self.authorizationType = dict["AuthorizationType"] as! String
            }
            if dict.keys.contains("AuthorizedUserList") {
                self.authorizedUserList = dict["AuthorizedUserList"] as! [DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody.Result.AuthorizedUserList]
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
            if dict.keys.contains("QRCodeType") {
                self.QRCodeType = dict["QRCodeType"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMiniAppBrowserQRCodeAuthorizedUsersV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserTransactionQRCodeRequest : Tea.TeaModel {
    public var antChainId: String?

    public var transactionHash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.transactionHash != nil {
            map["TransactionHash"] = self.transactionHash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("TransactionHash") {
            self.transactionHash = dict["TransactionHash"] as! String
        }
    }
}

public class DescribeAntChainMiniAppBrowserTransactionQRCodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var base64QRCodePNG: String?

        public var QRCodeContent: String?

        public var transactionHash: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.base64QRCodePNG != nil {
                map["Base64QRCodePNG"] = self.base64QRCodePNG!
            }
            if self.QRCodeContent != nil {
                map["QRCodeContent"] = self.QRCodeContent!
            }
            if self.transactionHash != nil {
                map["TransactionHash"] = self.transactionHash!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("Base64QRCodePNG") {
                self.base64QRCodePNG = dict["Base64QRCodePNG"] as! String
            }
            if dict.keys.contains("QRCodeContent") {
                self.QRCodeContent = dict["QRCodeContent"] as! String
            }
            if dict.keys.contains("TransactionHash") {
                self.transactionHash = dict["TransactionHash"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainMiniAppBrowserTransactionQRCodeResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMiniAppBrowserTransactionQRCodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserTransactionQRCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMiniAppBrowserTransactionQRCodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMiniAppBrowserTransactionQRCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainMiniAppBrowserTransactionQRCodeNewRequest : Tea.TeaModel {
    public var antChainId: String?

    public var contractId: String?

    public var transactionHash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.contractId != nil {
            map["ContractId"] = self.contractId!
        }
        if self.transactionHash != nil {
            map["TransactionHash"] = self.transactionHash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ContractId") {
            self.contractId = dict["ContractId"] as! String
        }
        if dict.keys.contains("TransactionHash") {
            self.transactionHash = dict["TransactionHash"] as! String
        }
    }
}

public class DescribeAntChainMiniAppBrowserTransactionQRCodeNewResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var base64QRCodePNG: String?

        public var QRCodeContent: String?

        public var transactionHash: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.base64QRCodePNG != nil {
                map["Base64QRCodePNG"] = self.base64QRCodePNG!
            }
            if self.QRCodeContent != nil {
                map["QRCodeContent"] = self.QRCodeContent!
            }
            if self.transactionHash != nil {
                map["TransactionHash"] = self.transactionHash!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("Base64QRCodePNG") {
                self.base64QRCodePNG = dict["Base64QRCodePNG"] as! String
            }
            if dict.keys.contains("QRCodeContent") {
                self.QRCodeContent = dict["QRCodeContent"] as! String
            }
            if dict.keys.contains("TransactionHash") {
                self.transactionHash = dict["TransactionHash"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainMiniAppBrowserTransactionQRCodeNewResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainMiniAppBrowserTransactionQRCodeNewResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainMiniAppBrowserTransactionQRCodeNewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainMiniAppBrowserTransactionQRCodeNewResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainMiniAppBrowserTransactionQRCodeNewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainNodesRequest : Tea.TeaModel {
    public var antChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class DescribeAntChainNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [[String: Any]]
        }
    }
}

public class DescribeAntChainNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainNodesV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DescribeAntChainNodesV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: [String]?

    public var resultCode: String?

    public var resultMessage: String?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [String]
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainNodesV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainNodesV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainNodesV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainQRCodeAuthorizationRequest : Tea.TeaModel {
    public var antChainId: String?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class DescribeAntChainQRCodeAuthorizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var authorizationType: String?

        public var QRCodeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.authorizationType != nil {
                map["AuthorizationType"] = self.authorizationType!
            }
            if self.QRCodeType != nil {
                map["QRCodeType"] = self.QRCodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("AuthorizationType") {
                self.authorizationType = dict["AuthorizationType"] as! String
            }
            if dict.keys.contains("QRCodeType") {
                self.QRCodeType = dict["QRCodeType"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainQRCodeAuthorizationResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainQRCodeAuthorizationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainQRCodeAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainQRCodeAuthorizationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainQRCodeAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainQRCodeAuthorizationV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class DescribeAntChainQRCodeAuthorizationV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var authorizationType: String?

        public var QRCodeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.authorizationType != nil {
                map["AuthorizationType"] = self.authorizationType!
            }
            if self.QRCodeType != nil {
                map["QRCodeType"] = self.QRCodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("AuthorizationType") {
                self.authorizationType = dict["AuthorizationType"] as! String
            }
            if dict.keys.contains("QRCodeType") {
                self.QRCodeType = dict["QRCodeType"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainQRCodeAuthorizationV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainQRCodeAuthorizationV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainQRCodeAuthorizationV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainQRCodeAuthorizationV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainQRCodeAuthorizationV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainTransactionRequest : Tea.TeaModel {
    public var antChainId: String?

    public var hash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.hash != nil {
            map["Hash"] = self.hash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("Hash") {
            self.hash = dict["Hash"] as! String
        }
    }
}

public class DescribeAntChainTransactionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Transaction : Tea.TeaModel {
            public var data: String?

            public var extentions: [String]?

            public var from: String?

            public var gas: String?

            public var hash: String?

            public var nonce: String?

            public var period: Int64?

            public var signatures: [String]?

            public var timestamp: Int64?

            public var to: String?

            public var txType: String?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.extentions != nil {
                    map["Extentions"] = self.extentions!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.gas != nil {
                    map["Gas"] = self.gas!
                }
                if self.hash != nil {
                    map["Hash"] = self.hash!
                }
                if self.nonce != nil {
                    map["Nonce"] = self.nonce!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.signatures != nil {
                    map["Signatures"] = self.signatures!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                if self.txType != nil {
                    map["TxType"] = self.txType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! String
                }
                if dict.keys.contains("Extentions") {
                    self.extentions = dict["Extentions"] as! [String]
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("Gas") {
                    self.gas = dict["Gas"] as! String
                }
                if dict.keys.contains("Hash") {
                    self.hash = dict["Hash"] as! String
                }
                if dict.keys.contains("Nonce") {
                    self.nonce = dict["Nonce"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! Int64
                }
                if dict.keys.contains("Signatures") {
                    self.signatures = dict["Signatures"] as! [String]
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("To") {
                    self.to = dict["To"] as! String
                }
                if dict.keys.contains("TxType") {
                    self.txType = dict["TxType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var blockHash: String?

        public var blockHeight: Int64?

        public var blockVersion: String?

        public var createTime: Int64?

        public var hash: String?

        public var transaction: DescribeAntChainTransactionResponseBody.Result.Transaction?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.transaction?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockHash != nil {
                map["BlockHash"] = self.blockHash!
            }
            if self.blockHeight != nil {
                map["BlockHeight"] = self.blockHeight!
            }
            if self.blockVersion != nil {
                map["BlockVersion"] = self.blockVersion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.transaction != nil {
                map["Transaction"] = self.transaction?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockHash") {
                self.blockHash = dict["BlockHash"] as! String
            }
            if dict.keys.contains("BlockHeight") {
                self.blockHeight = dict["BlockHeight"] as! Int64
            }
            if dict.keys.contains("BlockVersion") {
                self.blockVersion = dict["BlockVersion"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Transaction") {
                var model = DescribeAntChainTransactionResponseBody.Result.Transaction()
                model.fromMap(dict["Transaction"] as! [String: Any])
                self.transaction = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainTransactionResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainTransactionResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainTransactionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainTransactionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainTransactionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainTransactionReceiptRequest : Tea.TeaModel {
    public var antChainId: String?

    public var hash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.hash != nil {
            map["Hash"] = self.hash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("Hash") {
            self.hash = dict["Hash"] as! String
        }
    }
}

public class DescribeAntChainTransactionReceiptResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var data: String?

        public var gasUsed: String?

        public var logs: [String]?

        public var result: Int64?

        public override init() {
            super.init()
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
            if self.gasUsed != nil {
                map["GasUsed"] = self.gasUsed!
            }
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("GasUsed") {
                self.gasUsed = dict["GasUsed"] as! String
            }
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [String]
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainTransactionReceiptResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainTransactionReceiptResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainTransactionReceiptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainTransactionReceiptResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainTransactionReceiptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainTransactionReceiptV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public var hash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.hash != nil {
            map["Hash"] = self.hash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Hash") {
            self.hash = dict["Hash"] as! String
        }
    }
}

public class DescribeAntChainTransactionReceiptV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var data: String?

        public var gasUsed: String?

        public var logs: [String]?

        public var result: Int64?

        public override init() {
            super.init()
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
            if self.gasUsed != nil {
                map["GasUsed"] = self.gasUsed!
            }
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("GasUsed") {
                self.gasUsed = dict["GasUsed"] as! String
            }
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [String]
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainTransactionReceiptV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainTransactionReceiptV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainTransactionReceiptV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainTransactionReceiptV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainTransactionReceiptV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainTransactionStatisticsRequest : Tea.TeaModel {
    public var antChainId: String?

    public var end: Int64?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Int64
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int64
        }
    }
}

public class DescribeAntChainTransactionStatisticsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var creatTime: Int64?

        public var dt: String?

        public var lastSumBlockHeight: Int64?

        public var transCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.creatTime != nil {
                map["CreatTime"] = self.creatTime!
            }
            if self.dt != nil {
                map["Dt"] = self.dt!
            }
            if self.lastSumBlockHeight != nil {
                map["LastSumBlockHeight"] = self.lastSumBlockHeight!
            }
            if self.transCount != nil {
                map["TransCount"] = self.transCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("CreatTime") {
                self.creatTime = dict["CreatTime"] as! Int64
            }
            if dict.keys.contains("Dt") {
                self.dt = dict["Dt"] as! String
            }
            if dict.keys.contains("LastSumBlockHeight") {
                self.lastSumBlockHeight = dict["LastSumBlockHeight"] as! Int64
            }
            if dict.keys.contains("TransCount") {
                self.transCount = dict["TransCount"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeAntChainTransactionStatisticsResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeAntChainTransactionStatisticsResponseBody.Result]
        }
    }
}

public class DescribeAntChainTransactionStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainTransactionStatisticsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainTransactionStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainTransactionStatisticsV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public var end: Int64?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Int64
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int64
        }
    }
}

public class DescribeAntChainTransactionStatisticsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var antChainId: String?

        public var creatTime: Int64?

        public var dt: Int64?

        public var lastSumBlockHeight: Int64?

        public var transCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChainId != nil {
                map["AntChainId"] = self.antChainId!
            }
            if self.creatTime != nil {
                map["CreatTime"] = self.creatTime!
            }
            if self.dt != nil {
                map["Dt"] = self.dt!
            }
            if self.lastSumBlockHeight != nil {
                map["LastSumBlockHeight"] = self.lastSumBlockHeight!
            }
            if self.transCount != nil {
                map["TransCount"] = self.transCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChainId") {
                self.antChainId = dict["AntChainId"] as! String
            }
            if dict.keys.contains("CreatTime") {
                self.creatTime = dict["CreatTime"] as! Int64
            }
            if dict.keys.contains("Dt") {
                self.dt = dict["Dt"] as! Int64
            }
            if dict.keys.contains("LastSumBlockHeight") {
                self.lastSumBlockHeight = dict["LastSumBlockHeight"] as! Int64
            }
            if dict.keys.contains("TransCount") {
                self.transCount = dict["TransCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: [DescribeAntChainTransactionStatisticsV2ResponseBody.Result]?

    public var resultCode: String?

    public var resultMessage: String?

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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeAntChainTransactionStatisticsV2ResponseBody.Result]
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainTransactionStatisticsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainTransactionStatisticsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainTransactionStatisticsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainTransactionV2Request : Tea.TeaModel {
    public var antChainId: String?

    public var consortiumId: String?

    public var hash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.hash != nil {
            map["Hash"] = self.hash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Hash") {
            self.hash = dict["Hash"] as! String
        }
    }
}

public class DescribeAntChainTransactionV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Transaction : Tea.TeaModel {
            public var data: String?

            public var extentions: [String]?

            public var from: String?

            public var gas: String?

            public var hash: String?

            public var nonce: String?

            public var period: Int64?

            public var signatures: [String]?

            public var timestamp: Int64?

            public var to: String?

            public var txType: String?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.extentions != nil {
                    map["Extentions"] = self.extentions!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.gas != nil {
                    map["Gas"] = self.gas!
                }
                if self.hash != nil {
                    map["Hash"] = self.hash!
                }
                if self.nonce != nil {
                    map["Nonce"] = self.nonce!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.signatures != nil {
                    map["Signatures"] = self.signatures!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                if self.txType != nil {
                    map["TxType"] = self.txType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! String
                }
                if dict.keys.contains("Extentions") {
                    self.extentions = dict["Extentions"] as! [String]
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("Gas") {
                    self.gas = dict["Gas"] as! String
                }
                if dict.keys.contains("Hash") {
                    self.hash = dict["Hash"] as! String
                }
                if dict.keys.contains("Nonce") {
                    self.nonce = dict["Nonce"] as! String
                }
                if dict.keys.contains("Period") {
                    self.period = dict["Period"] as! Int64
                }
                if dict.keys.contains("Signatures") {
                    self.signatures = dict["Signatures"] as! [String]
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("To") {
                    self.to = dict["To"] as! String
                }
                if dict.keys.contains("TxType") {
                    self.txType = dict["TxType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var blockHash: String?

        public var blockHeight: Int64?

        public var blockVersion: String?

        public var createTime: Int64?

        public var hash: String?

        public var transaction: DescribeAntChainTransactionV2ResponseBody.Result.Transaction?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.transaction?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockHash != nil {
                map["BlockHash"] = self.blockHash!
            }
            if self.blockHeight != nil {
                map["BlockHeight"] = self.blockHeight!
            }
            if self.blockVersion != nil {
                map["BlockVersion"] = self.blockVersion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.transaction != nil {
                map["Transaction"] = self.transaction?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockHash") {
                self.blockHash = dict["BlockHash"] as! String
            }
            if dict.keys.contains("BlockHeight") {
                self.blockHeight = dict["BlockHeight"] as! Int64
            }
            if dict.keys.contains("BlockVersion") {
                self.blockVersion = dict["BlockVersion"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Transaction") {
                var model = DescribeAntChainTransactionV2ResponseBody.Result.Transaction()
                model.fromMap(dict["Transaction"] as! [String: Any])
                self.transaction = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainTransactionV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainTransactionV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainTransactionV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainTransactionV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainTransactionV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainsRequest : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AntChains : Tea.TeaModel {
            public var antChainId: String?

            public var antChainName: String?

            public var chainType: String?

            public var cipherSuit: String?

            public var createTime: Int64?

            public var expireTime: Int64?

            public var isAdmin: Bool?

            public var memberStatus: String?

            public var merkleTreeSuit: String?

            public var network: String?

            public var nodeNum: Int32?

            public var regionId: String?

            public var resourceSize: String?

            public var tlsAlgo: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.antChainId != nil {
                    map["AntChainId"] = self.antChainId!
                }
                if self.antChainName != nil {
                    map["AntChainName"] = self.antChainName!
                }
                if self.chainType != nil {
                    map["ChainType"] = self.chainType!
                }
                if self.cipherSuit != nil {
                    map["CipherSuit"] = self.cipherSuit!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.isAdmin != nil {
                    map["IsAdmin"] = self.isAdmin!
                }
                if self.memberStatus != nil {
                    map["MemberStatus"] = self.memberStatus!
                }
                if self.merkleTreeSuit != nil {
                    map["MerkleTreeSuit"] = self.merkleTreeSuit!
                }
                if self.network != nil {
                    map["Network"] = self.network!
                }
                if self.nodeNum != nil {
                    map["NodeNum"] = self.nodeNum!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceSize != nil {
                    map["ResourceSize"] = self.resourceSize!
                }
                if self.tlsAlgo != nil {
                    map["TlsAlgo"] = self.tlsAlgo!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AntChainId") {
                    self.antChainId = dict["AntChainId"] as! String
                }
                if dict.keys.contains("AntChainName") {
                    self.antChainName = dict["AntChainName"] as! String
                }
                if dict.keys.contains("ChainType") {
                    self.chainType = dict["ChainType"] as! String
                }
                if dict.keys.contains("CipherSuit") {
                    self.cipherSuit = dict["CipherSuit"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("IsAdmin") {
                    self.isAdmin = dict["IsAdmin"] as! Bool
                }
                if dict.keys.contains("MemberStatus") {
                    self.memberStatus = dict["MemberStatus"] as! String
                }
                if dict.keys.contains("MerkleTreeSuit") {
                    self.merkleTreeSuit = dict["MerkleTreeSuit"] as! String
                }
                if dict.keys.contains("Network") {
                    self.network = dict["Network"] as! String
                }
                if dict.keys.contains("NodeNum") {
                    self.nodeNum = dict["NodeNum"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceSize") {
                    self.resourceSize = dict["ResourceSize"] as! String
                }
                if dict.keys.contains("TlsAlgo") {
                    self.tlsAlgo = dict["TlsAlgo"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var antChains: [DescribeAntChainsResponseBody.Result.AntChains]?

        public var isExist: Bool?

        public var pagination: DescribeAntChainsResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChains != nil {
                var tmp : [Any] = []
                for k in self.antChains! {
                    tmp.append(k.toMap())
                }
                map["AntChains"] = tmp
            }
            if self.isExist != nil {
                map["IsExist"] = self.isExist!
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChains") {
                self.antChains = dict["AntChains"] as! [DescribeAntChainsResponseBody.Result.AntChains]
            }
            if dict.keys.contains("IsExist") {
                self.isExist = dict["IsExist"] as! Bool
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainsResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeAntChainsResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DescribeAntChainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAntChainsV2Request : Tea.TeaModel {
    public var consortiumId: String?

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
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAntChainsV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AntChains : Tea.TeaModel {
            public var antChainId: String?

            public var antChainName: String?

            public var chainType: String?

            public var cipherSuit: String?

            public var createTime: Int64?

            public var expireTime: Int64?

            public var instanceId: String?

            public var isAdmin: Bool?

            public var memberStatus: String?

            public var merkleTreeSuit: String?

            public var monitorStatus: Bool?

            public var network: String?

            public var nodeNum: Int32?

            public var regionId: String?

            public var resourceSize: String?

            public var restStatus: String?

            public var tlsAlgo: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.antChainId != nil {
                    map["AntChainId"] = self.antChainId!
                }
                if self.antChainName != nil {
                    map["AntChainName"] = self.antChainName!
                }
                if self.chainType != nil {
                    map["ChainType"] = self.chainType!
                }
                if self.cipherSuit != nil {
                    map["CipherSuit"] = self.cipherSuit!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.isAdmin != nil {
                    map["IsAdmin"] = self.isAdmin!
                }
                if self.memberStatus != nil {
                    map["MemberStatus"] = self.memberStatus!
                }
                if self.merkleTreeSuit != nil {
                    map["MerkleTreeSuit"] = self.merkleTreeSuit!
                }
                if self.monitorStatus != nil {
                    map["MonitorStatus"] = self.monitorStatus!
                }
                if self.network != nil {
                    map["Network"] = self.network!
                }
                if self.nodeNum != nil {
                    map["NodeNum"] = self.nodeNum!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceSize != nil {
                    map["ResourceSize"] = self.resourceSize!
                }
                if self.restStatus != nil {
                    map["RestStatus"] = self.restStatus!
                }
                if self.tlsAlgo != nil {
                    map["TlsAlgo"] = self.tlsAlgo!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AntChainId") {
                    self.antChainId = dict["AntChainId"] as! String
                }
                if dict.keys.contains("AntChainName") {
                    self.antChainName = dict["AntChainName"] as! String
                }
                if dict.keys.contains("ChainType") {
                    self.chainType = dict["ChainType"] as! String
                }
                if dict.keys.contains("CipherSuit") {
                    self.cipherSuit = dict["CipherSuit"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("IsAdmin") {
                    self.isAdmin = dict["IsAdmin"] as! Bool
                }
                if dict.keys.contains("MemberStatus") {
                    self.memberStatus = dict["MemberStatus"] as! String
                }
                if dict.keys.contains("MerkleTreeSuit") {
                    self.merkleTreeSuit = dict["MerkleTreeSuit"] as! String
                }
                if dict.keys.contains("MonitorStatus") {
                    self.monitorStatus = dict["MonitorStatus"] as! Bool
                }
                if dict.keys.contains("Network") {
                    self.network = dict["Network"] as! String
                }
                if dict.keys.contains("NodeNum") {
                    self.nodeNum = dict["NodeNum"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceSize") {
                    self.resourceSize = dict["ResourceSize"] as! String
                }
                if dict.keys.contains("RestStatus") {
                    self.restStatus = dict["RestStatus"] as! String
                }
                if dict.keys.contains("TlsAlgo") {
                    self.tlsAlgo = dict["TlsAlgo"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
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
        public var antChains: [DescribeAntChainsV2ResponseBody.Result.AntChains]?

        public var isExist: Bool?

        public var pagination: DescribeAntChainsV2ResponseBody.Result.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antChains != nil {
                var tmp : [Any] = []
                for k in self.antChains! {
                    tmp.append(k.toMap())
                }
                map["AntChains"] = tmp
            }
            if self.isExist != nil {
                map["IsExist"] = self.isExist!
            }
            if self.pagination != nil {
                map["Pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AntChains") {
                self.antChains = dict["AntChains"] as! [DescribeAntChainsV2ResponseBody.Result.AntChains]
            }
            if dict.keys.contains("IsExist") {
                self.isExist = dict["IsExist"] as! Bool
            }
            if dict.keys.contains("Pagination") {
                var model = DescribeAntChainsV2ResponseBody.Result.Pagination()
                model.fromMap(dict["Pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAntChainsV2ResponseBody.Result?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
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
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeAntChainsV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMessage") {
            self.resultMessage = dict["ResultMessage"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeAntChainsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntChainsV2ResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAntChainsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEthereumDeletableRequest : Tea.TeaModel {
    public var ethereumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ethereumId != nil {
            map["EthereumId"] = self.ethereumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EthereumId") {
            self.ethereumId = dict["EthereumId"] as! String
        }
    }
}

public class DescribeEthereumDeletableResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var deletable: Bool?

        public var ethereumId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deletable != nil {
                map["Deletable"] = self.deletable!
            }
            if self.ethereumId != nil {
                map["EthereumId"] = self.ethereumId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Deletable") {
                self.deletable = dict["Deletable"] as! Bool
            }
            if dict.keys.contains("EthereumId") {
                self.ethereumId = dict["EthereumId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeEthereumDeletableResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeEthereumDeletableResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeEthereumDeletableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEthereumDeletableResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEthereumDeletableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricCandidateOrganizationsRequest : Tea.TeaModel {
    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricCandidateOrganizationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var clusterState: String?

        public var organizationId: String?

        public var organizationName: String?

        public var serviceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterState != nil {
                map["ClusterState"] = self.clusterState!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.serviceState != nil {
                map["ServiceState"] = self.serviceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterState") {
                self.clusterState = dict["ClusterState"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("ServiceState") {
                self.serviceState = dict["ServiceState"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricCandidateOrganizationsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricCandidateOrganizationsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricCandidateOrganizationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricCandidateOrganizationsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricCandidateOrganizationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricChaincodeDefinitionTaskRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricChaincodeDefinitionTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class ChaincodeDefinition : Tea.TeaModel {
                public var chaincodePackageId: String?

                public var collectionConfig: String?

                public var endorsementPolicy: String?

                public var initRequired: Bool?

                public var name: String?

                public var sequence: Int64?

                public var uid: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.chaincodePackageId != nil {
                        map["ChaincodePackageId"] = self.chaincodePackageId!
                    }
                    if self.collectionConfig != nil {
                        map["CollectionConfig"] = self.collectionConfig!
                    }
                    if self.endorsementPolicy != nil {
                        map["EndorsementPolicy"] = self.endorsementPolicy!
                    }
                    if self.initRequired != nil {
                        map["InitRequired"] = self.initRequired!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.sequence != nil {
                        map["Sequence"] = self.sequence!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ChaincodePackageId") {
                        self.chaincodePackageId = dict["ChaincodePackageId"] as! String
                    }
                    if dict.keys.contains("CollectionConfig") {
                        self.collectionConfig = dict["CollectionConfig"] as! String
                    }
                    if dict.keys.contains("EndorsementPolicy") {
                        self.endorsementPolicy = dict["EndorsementPolicy"] as! String
                    }
                    if dict.keys.contains("InitRequired") {
                        self.initRequired = dict["InitRequired"] as! Bool
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Sequence") {
                        self.sequence = dict["Sequence"] as! Int64
                    }
                    if dict.keys.contains("Uid") {
                        self.uid = dict["Uid"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var chaincodeDefinition: DescribeFabricChaincodeDefinitionTaskResponseBody.Result.Content.ChaincodeDefinition?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.chaincodeDefinition?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chaincodeDefinition != nil {
                    map["ChaincodeDefinition"] = self.chaincodeDefinition?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChaincodeDefinition") {
                    var model = DescribeFabricChaincodeDefinitionTaskResponseBody.Result.Content.ChaincodeDefinition()
                    model.fromMap(dict["ChaincodeDefinition"] as! [String: Any])
                    self.chaincodeDefinition = model
                }
            }
        }
        public var approvers: [String]?

        public var channelName: String?

        public var content: DescribeFabricChaincodeDefinitionTaskResponseBody.Result.Content?

        public var createTime: Int64?

        public var creator: String?

        public var description_: String?

        public var status: String?

        public var taskId: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvers != nil {
                map["Approvers"] = self.approvers!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.content != nil {
                map["Content"] = self.content?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Approvers") {
                self.approvers = dict["Approvers"] as! [String]
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("Content") {
                var model = DescribeFabricChaincodeDefinitionTaskResponseBody.Result.Content()
                model.fromMap(dict["Content"] as! [String: Any])
                self.content = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricChaincodeDefinitionTaskResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricChaincodeDefinitionTaskResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricChaincodeDefinitionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricChaincodeDefinitionTaskResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricChaincodeDefinitionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricChaincodeUploadPolicyRequest : Tea.TeaModel {
    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricChaincodeUploadPolicyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessId: String?

        public var dir: String?

        public var expire: Int32?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Dir") {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! Int32
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricChaincodeUploadPolicyResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricChaincodeUploadPolicyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricChaincodeUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricChaincodeUploadPolicyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricChaincodeUploadPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricChannelMembersRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
    }
}

public class DescribeFabricChannelMembersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var acceptTime: String?

        public var channelId: String?

        public var inviteTime: String?

        public var organizationDescription: String?

        public var organizationDomain: String?

        public var organizationId: String?

        public var organizationName: String?

        public var state: String?

        public var withPeer: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptTime != nil {
                map["AcceptTime"] = self.acceptTime!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.inviteTime != nil {
                map["InviteTime"] = self.inviteTime!
            }
            if self.organizationDescription != nil {
                map["OrganizationDescription"] = self.organizationDescription!
            }
            if self.organizationDomain != nil {
                map["OrganizationDomain"] = self.organizationDomain!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.withPeer != nil {
                map["WithPeer"] = self.withPeer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptTime") {
                self.acceptTime = dict["AcceptTime"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("InviteTime") {
                self.inviteTime = dict["InviteTime"] as! String
            }
            if dict.keys.contains("OrganizationDescription") {
                self.organizationDescription = dict["OrganizationDescription"] as! String
            }
            if dict.keys.contains("OrganizationDomain") {
                self.organizationDomain = dict["OrganizationDomain"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("WithPeer") {
                self.withPeer = dict["WithPeer"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricChannelMembersResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricChannelMembersResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricChannelMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricChannelMembersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricChannelMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumAdminStatusRequest : Tea.TeaModel {
    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumAdminStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumAdministrator: Bool?

        public var consortiumId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumAdministrator != nil {
                map["ConsortiumAdministrator"] = self.consortiumAdministrator!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumAdministrator") {
                self.consortiumAdministrator = dict["ConsortiumAdministrator"] as! Bool
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumAdminStatusResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumAdminStatusResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumAdminStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumAdminStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumAdminStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumChaincodesRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumChaincodesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelId: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var input: String?

        public var install: Bool?

        public var message: String?

        public var path: String?

        public var providerId: String?

        public var providerName: String?

        public var state: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.install != nil {
                map["Install"] = self.install!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Install") {
                self.install = dict["Install"] as! Bool
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("ProviderName") {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumChaincodesResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumChaincodesResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumChaincodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumChaincodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumChaincodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumChannelsRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumChannelsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var batchTimeout: Int32?

        public var blockCount: Int32?

        public var chaincodeCount: Int32?

        public var channelId: String?

        public var channelName: String?

        public var consortiumChannelId: Int32?

        public var consortiumId: String?

        public var consortiumName: String?

        public var createTime: String?

        public var deleteTime: String?

        public var deleted: Bool?

        public var maxMessageCount: Int32?

        public var memberCount: Int32?

        public var memberJoinedCount: String?

        public var needJoined: Bool?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var preferredMaxBytes: Int32?

        public var requestId: String?

        public var state: String?

        public var supportChannelConfig: Bool?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchTimeout != nil {
                map["BatchTimeout"] = self.batchTimeout!
            }
            if self.blockCount != nil {
                map["BlockCount"] = self.blockCount!
            }
            if self.chaincodeCount != nil {
                map["ChaincodeCount"] = self.chaincodeCount!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumChannelId != nil {
                map["ConsortiumChannelId"] = self.consortiumChannelId!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleteTime != nil {
                map["DeleteTime"] = self.deleteTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.maxMessageCount != nil {
                map["MaxMessageCount"] = self.maxMessageCount!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.memberJoinedCount != nil {
                map["MemberJoinedCount"] = self.memberJoinedCount!
            }
            if self.needJoined != nil {
                map["NeedJoined"] = self.needJoined!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.preferredMaxBytes != nil {
                map["PreferredMaxBytes"] = self.preferredMaxBytes!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.supportChannelConfig != nil {
                map["SupportChannelConfig"] = self.supportChannelConfig!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchTimeout") {
                self.batchTimeout = dict["BatchTimeout"] as! Int32
            }
            if dict.keys.contains("BlockCount") {
                self.blockCount = dict["BlockCount"] as! Int32
            }
            if dict.keys.contains("ChaincodeCount") {
                self.chaincodeCount = dict["ChaincodeCount"] as! Int32
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumChannelId") {
                self.consortiumChannelId = dict["ConsortiumChannelId"] as! Int32
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeleteTime") {
                self.deleteTime = dict["DeleteTime"] as! String
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("MaxMessageCount") {
                self.maxMessageCount = dict["MaxMessageCount"] as! Int32
            }
            if dict.keys.contains("MemberCount") {
                self.memberCount = dict["MemberCount"] as! Int32
            }
            if dict.keys.contains("MemberJoinedCount") {
                self.memberJoinedCount = dict["MemberJoinedCount"] as! String
            }
            if dict.keys.contains("NeedJoined") {
                self.needJoined = dict["NeedJoined"] as! Bool
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PreferredMaxBytes") {
                self.preferredMaxBytes = dict["PreferredMaxBytes"] as! Int32
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("SupportChannelConfig") {
                self.supportChannelConfig = dict["SupportChannelConfig"] as! Bool
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumChannelsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumChannelsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumChannelsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var channelPolicy: [String]?

        public var ordererType: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelPolicy != nil {
                map["ChannelPolicy"] = self.channelPolicy!
            }
            if self.ordererType != nil {
                map["OrdererType"] = self.ordererType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelPolicy") {
                self.channelPolicy = dict["ChannelPolicy"] as! [String]
            }
            if dict.keys.contains("OrdererType") {
                self.ordererType = dict["OrdererType"] as! [String]
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricConsortiumConfigResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricConsortiumConfigResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumDeletableRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumDeletableResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var codeName: String?

        public var consortiumId: String?

        public var consortiumName: String?

        public var deletable: Bool?

        public var description_: String?

        public var domain: String?

        public var regionId: String?

        public var state: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.deletable != nil {
                map["Deletable"] = self.deletable!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("Deletable") {
                self.deletable = dict["Deletable"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricConsortiumDeletableResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricConsortiumDeletableResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumDeletableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumDeletableResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumDeletableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumMemberApprovalRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumMemberApprovalResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var channelCreatePolicy: String?

        public var confirmTime: String?

        public var consortiumId: String?

        public var consortiumName: String?

        public var domainName: String?

        public var organizationId: String?

        public var organizationName: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelCreatePolicy != nil {
                map["ChannelCreatePolicy"] = self.channelCreatePolicy!
            }
            if self.confirmTime != nil {
                map["ConfirmTime"] = self.confirmTime!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCreatePolicy") {
                self.channelCreatePolicy = dict["ChannelCreatePolicy"] as! String
            }
            if dict.keys.contains("ConfirmTime") {
                self.confirmTime = dict["ConfirmTime"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumMemberApprovalResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumMemberApprovalResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumMemberApprovalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumMemberApprovalResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumMemberApprovalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumMembersRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumMembersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumId: String?

        public var description_: String?

        public var domain: String?

        public var joinedTime: String?

        public var organizationId: String?

        public var organizationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.joinedTime != nil {
                map["JoinedTime"] = self.joinedTime!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("JoinedTime") {
                self.joinedTime = dict["JoinedTime"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumMembersResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumMembersResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumMembersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumOrderersRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var location: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class DescribeFabricConsortiumOrderersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var domain: String?

        public var instanceType: String?

        public var ordererName: String?

        public var port: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ordererName != nil {
                map["OrdererName"] = self.ordererName!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("OrdererName") {
                self.ordererName = dict["OrdererName"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumOrderersResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumOrderersResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumOrderersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumOrderersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumOrderersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumSpecsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var enable: Bool?

        public var specName: String?

        public var specTitle: String?

        public override init() {
            super.init()
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
                map["Enable"] = self.enable!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            if self.specTitle != nil {
                map["SpecTitle"] = self.specTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("SpecName") {
                self.specName = dict["SpecName"] as! String
            }
            if dict.keys.contains("SpecTitle") {
                self.specTitle = dict["SpecTitle"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumSpecsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumSpecsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumSpecsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumSpecsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricConsortiumsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var consortiumId: String?

    public var location: String?

    public var tag: [DescribeFabricConsortiumsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeFabricConsortiumsRequest.Tag]
        }
    }
}

public class DescribeFabricConsortiumsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
        public var channelCount: Int32?

        public var channelPolicy: String?

        public var codeName: String?

        public var consortiumId: String?

        public var consortiumName: String?

        public var createTime: String?

        public var domain: String?

        public var expiredTime: String?

        public var organizationCount: Int32?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var regionId: String?

        public var requestId: String?

        public var specName: String?

        public var state: String?

        public var supportChannelConfig: Bool?

        public var tags: [DescribeFabricConsortiumsResponseBody.Result.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelCount != nil {
                map["ChannelCount"] = self.channelCount!
            }
            if self.channelPolicy != nil {
                map["ChannelPolicy"] = self.channelPolicy!
            }
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.organizationCount != nil {
                map["OrganizationCount"] = self.organizationCount!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.supportChannelConfig != nil {
                map["SupportChannelConfig"] = self.supportChannelConfig!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCount") {
                self.channelCount = dict["ChannelCount"] as! Int32
            }
            if dict.keys.contains("ChannelPolicy") {
                self.channelPolicy = dict["ChannelPolicy"] as! String
            }
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("OrganizationCount") {
                self.organizationCount = dict["OrganizationCount"] as! Int32
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SpecName") {
                self.specName = dict["SpecName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("SupportChannelConfig") {
                self.supportChannelConfig = dict["SupportChannelConfig"] as! Bool
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeFabricConsortiumsResponseBody.Result.Tags]
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricConsortiumsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricConsortiumsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricConsortiumsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricConsortiumsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricConsortiumsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricExplorerRequest : Tea.TeaModel {
    public var exBody: String?

    public var exMethod: String?

    public var exUrl: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exBody != nil {
            map["ExBody"] = self.exBody!
        }
        if self.exMethod != nil {
            map["ExMethod"] = self.exMethod!
        }
        if self.exUrl != nil {
            map["ExUrl"] = self.exUrl!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExBody") {
            self.exBody = dict["ExBody"] as! String
        }
        if dict.keys.contains("ExMethod") {
            self.exMethod = dict["ExMethod"] as! String
        }
        if dict.keys.contains("ExUrl") {
            self.exUrl = dict["ExUrl"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricExplorerResponseBody : Tea.TeaModel {
    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: Int32?

    public var requestId: String?

    public var result: String?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricExplorerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricExplorerResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricExplorerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricInvitationCodeRequest : Tea.TeaModel {
    public var consortiumId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
    }
}

public class DescribeFabricInvitationCodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accepted: Bool?

        public var code: String?

        public var consortiumId: String?

        public var email: String?

        public var expireTime: String?

        public var invitationId: Int32?

        public var sendTime: String?

        public var senderBid: String?

        public var senderId: Int64?

        public var senderName: String?

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
            if self.accepted != nil {
                map["Accepted"] = self.accepted!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.invitationId != nil {
                map["InvitationId"] = self.invitationId!
            }
            if self.sendTime != nil {
                map["SendTime"] = self.sendTime!
            }
            if self.senderBid != nil {
                map["SenderBid"] = self.senderBid!
            }
            if self.senderId != nil {
                map["SenderId"] = self.senderId!
            }
            if self.senderName != nil {
                map["SenderName"] = self.senderName!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accepted") {
                self.accepted = dict["Accepted"] as! Bool
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InvitationId") {
                self.invitationId = dict["InvitationId"] as! Int32
            }
            if dict.keys.contains("SendTime") {
                self.sendTime = dict["SendTime"] as! String
            }
            if dict.keys.contains("SenderBid") {
                self.senderBid = dict["SenderBid"] as! String
            }
            if dict.keys.contains("SenderId") {
                self.senderId = dict["SenderId"] as! Int64
            }
            if dict.keys.contains("SenderName") {
                self.senderName = dict["SenderName"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricInvitationCodeResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricInvitationCodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricInvitationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricInvitationCodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricInvitationCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricInviterRequest : Tea.TeaModel {
    public var code: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
    }
}

public class DescribeFabricInviterResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumId: String?

        public var consortiumName: String?

        public var expireTime: String?

        public var inviterId: Int64?

        public var inviterName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.inviterId != nil {
                map["InviterId"] = self.inviterId!
            }
            if self.inviterName != nil {
                map["InviterName"] = self.inviterName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InviterId") {
                self.inviterId = dict["InviterId"] as! Int64
            }
            if dict.keys.contains("InviterName") {
                self.inviterName = dict["InviterName"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricInviterResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricInviterResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricInviterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricInviterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricInviterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrdererLogsRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var lines: String?

    public var ordererName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.lines != nil {
            map["Lines"] = self.lines!
        }
        if self.ordererName != nil {
            map["OrdererName"] = self.ordererName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("Lines") {
            self.lines = dict["Lines"] as! String
        }
        if dict.keys.contains("OrdererName") {
            self.ordererName = dict["OrdererName"] as! String
        }
    }
}

public class DescribeFabricOrdererLogsResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrdererLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrdererLogsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrdererLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var location: String?

    public var organizationId: String?

    public var tag: [DescribeFabricOrganizationRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeFabricOrganizationRequest.Tag]
        }
    }
}

public class DescribeFabricOrganizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
        public var CANAME: String?

        public var CAUrl: String?

        public var codeName: String?

        public var consortiumCount: Int32?

        public var createTime: String?

        public var domain: String?

        public var MSP: String?

        public var organizationDescription: String?

        public var organizationId: String?

        public var organizationName: String?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var peerCount: Int32?

        public var regionId: String?

        public var requestId: String?

        public var specName: String?

        public var state: String?

        public var tags: [DescribeFabricOrganizationResponseBody.Result.Tags]?

        public var userCount: Int32?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CANAME != nil {
                map["CANAME"] = self.CANAME!
            }
            if self.CAUrl != nil {
                map["CAUrl"] = self.CAUrl!
            }
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.consortiumCount != nil {
                map["ConsortiumCount"] = self.consortiumCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.MSP != nil {
                map["MSP"] = self.MSP!
            }
            if self.organizationDescription != nil {
                map["OrganizationDescription"] = self.organizationDescription!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.peerCount != nil {
                map["PeerCount"] = self.peerCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CANAME") {
                self.CANAME = dict["CANAME"] as! String
            }
            if dict.keys.contains("CAUrl") {
                self.CAUrl = dict["CAUrl"] as! String
            }
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("ConsortiumCount") {
                self.consortiumCount = dict["ConsortiumCount"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("MSP") {
                self.MSP = dict["MSP"] as! String
            }
            if dict.keys.contains("OrganizationDescription") {
                self.organizationDescription = dict["OrganizationDescription"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PeerCount") {
                self.peerCount = dict["PeerCount"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SpecName") {
                self.specName = dict["SpecName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeFabricOrganizationResponseBody.Result.Tags]
            }
            if dict.keys.contains("UserCount") {
                self.userCount = dict["UserCount"] as! Int32
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricOrganizationResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricOrganizationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationChaincodePackageRequest : Tea.TeaModel {
    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationChaincodePackageResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: [ChaincodePackage]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [ChaincodePackage]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationChaincodePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationChaincodePackageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationChaincodePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationChaincodesRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationChaincodesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelId: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var creator: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var installed: String?

        public var message: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.installed != nil {
                map["Installed"] = self.installed!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Installed") {
                self.installed = dict["Installed"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationChaincodesResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationChaincodesResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationChaincodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationChaincodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationChaincodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationChannelsRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationChannelsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var batchTimeout: Int32?

        public var blockCount: Int32?

        public var chaincodeCount: Int32?

        public var channelId: String?

        public var channelName: String?

        public var consortiumId: String?

        public var consortiumName: String?

        public var createTime: String?

        public var deleteTime: String?

        public var deleted: Bool?

        public var maxMessageCount: Int32?

        public var memberCount: Int32?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var preferredMaxBytes: Int32?

        public var requestId: String?

        public var state: String?

        public var supportChannelConfig: Bool?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchTimeout != nil {
                map["BatchTimeout"] = self.batchTimeout!
            }
            if self.blockCount != nil {
                map["BlockCount"] = self.blockCount!
            }
            if self.chaincodeCount != nil {
                map["ChaincodeCount"] = self.chaincodeCount!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleteTime != nil {
                map["DeleteTime"] = self.deleteTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.maxMessageCount != nil {
                map["MaxMessageCount"] = self.maxMessageCount!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.preferredMaxBytes != nil {
                map["PreferredMaxBytes"] = self.preferredMaxBytes!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.supportChannelConfig != nil {
                map["SupportChannelConfig"] = self.supportChannelConfig!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchTimeout") {
                self.batchTimeout = dict["BatchTimeout"] as! Int32
            }
            if dict.keys.contains("BlockCount") {
                self.blockCount = dict["BlockCount"] as! Int32
            }
            if dict.keys.contains("ChaincodeCount") {
                self.chaincodeCount = dict["ChaincodeCount"] as! Int32
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeleteTime") {
                self.deleteTime = dict["DeleteTime"] as! String
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("MaxMessageCount") {
                self.maxMessageCount = dict["MaxMessageCount"] as! Int32
            }
            if dict.keys.contains("MemberCount") {
                self.memberCount = dict["MemberCount"] as! Int32
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PreferredMaxBytes") {
                self.preferredMaxBytes = dict["PreferredMaxBytes"] as! Int32
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("SupportChannelConfig") {
                self.supportChannelConfig = dict["SupportChannelConfig"] as! Bool
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationChannelsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationChannelsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationChannelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationChannelsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationChannelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationDeletableRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationDeletableResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var codeName: String?

        public var deletable: Bool?

        public var domain: String?

        public var organizationDescription: String?

        public var organizationId: String?

        public var organizationName: String?

        public var regionId: String?

        public var state: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.deletable != nil {
                map["Deletable"] = self.deletable!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.organizationDescription != nil {
                map["OrganizationDescription"] = self.organizationDescription!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("Deletable") {
                self.deletable = dict["Deletable"] as! Bool
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("OrganizationDescription") {
                self.organizationDescription = dict["OrganizationDescription"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: DescribeFabricOrganizationDeletableResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeFabricOrganizationDeletableResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationDeletableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationDeletableResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationDeletableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationMembersRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationMembersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var consortiumId: String?

        public var consortiumName: String?

        public var description_: String?

        public var domain: String?

        public var joinedTime: String?

        public var organizationId: String?

        public var organizationName: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.consortiumName != nil {
                map["ConsortiumName"] = self.consortiumName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.joinedTime != nil {
                map["JoinedTime"] = self.joinedTime!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("ConsortiumName") {
                self.consortiumName = dict["ConsortiumName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("JoinedTime") {
                self.joinedTime = dict["JoinedTime"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationMembersResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationMembersResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationMembersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationPeersRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationPeersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var domain: String?

        public var instanceType: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var isAnchor: Bool?

        public var organizationPeerName: String?

        public var port: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.isAnchor != nil {
                map["IsAnchor"] = self.isAnchor!
            }
            if self.organizationPeerName != nil {
                map["OrganizationPeerName"] = self.organizationPeerName!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("IntranetIp") {
                self.intranetIp = dict["IntranetIp"] as! String
            }
            if dict.keys.contains("IsAnchor") {
                self.isAnchor = dict["IsAnchor"] as! Bool
            }
            if dict.keys.contains("OrganizationPeerName") {
                self.organizationPeerName = dict["OrganizationPeerName"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationPeersResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationPeersResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationPeersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationPeersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationPeersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationSpecsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var enable: Bool?

        public var organizationSpecsName: String?

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
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.organizationSpecsName != nil {
                map["OrganizationSpecsName"] = self.organizationSpecsName!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("OrganizationSpecsName") {
                self.organizationSpecsName = dict["OrganizationSpecsName"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationSpecsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationSpecsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationSpecsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationSpecsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationUsersRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DescribeFabricOrganizationUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var attrs: String?

        public var callerBid: String?

        public var callerUid: Int64?

        public var createTime: String?

        public var expireTime: String?

        public var fullName: String?

        public var organizationId: String?

        public var regionId: String?

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
            if self.attrs != nil {
                map["Attrs"] = self.attrs!
            }
            if self.callerBid != nil {
                map["CallerBid"] = self.callerBid!
            }
            if self.callerUid != nil {
                map["CallerUid"] = self.callerUid!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fullName != nil {
                map["FullName"] = self.fullName!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attrs") {
                self.attrs = dict["Attrs"] as! String
            }
            if dict.keys.contains("CallerBid") {
                self.callerBid = dict["CallerBid"] as! String
            }
            if dict.keys.contains("CallerUid") {
                self.callerUid = dict["CallerUid"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("FullName") {
                self.fullName = dict["FullName"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationUsersResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationUsersResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricOrganizationsRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var location: String?

    public var tag: [DescribeFabricOrganizationsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeFabricOrganizationsRequest.Tag]
        }
    }
}

public class DescribeFabricOrganizationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
        public var codeName: String?

        public var consortiumCount: Int32?

        public var createTime: String?

        public var domain: String?

        public var organizationDescription: String?

        public var organizationId: String?

        public var organizationName: String?

        public var ownerBid: String?

        public var ownerName: String?

        public var ownerUid: Int64?

        public var peerCount: Int32?

        public var regionId: String?

        public var requestId: String?

        public var specName: String?

        public var state: String?

        public var tags: [DescribeFabricOrganizationsResponseBody.Result.Tags]?

        public var userCount: Int32?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeName != nil {
                map["CodeName"] = self.codeName!
            }
            if self.consortiumCount != nil {
                map["ConsortiumCount"] = self.consortiumCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.organizationDescription != nil {
                map["OrganizationDescription"] = self.organizationDescription!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.peerCount != nil {
                map["PeerCount"] = self.peerCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeName") {
                self.codeName = dict["CodeName"] as! String
            }
            if dict.keys.contains("ConsortiumCount") {
                self.consortiumCount = dict["ConsortiumCount"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("OrganizationDescription") {
                self.organizationDescription = dict["OrganizationDescription"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("OwnerBid") {
                self.ownerBid = dict["OwnerBid"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! Int64
            }
            if dict.keys.contains("PeerCount") {
                self.peerCount = dict["PeerCount"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SpecName") {
                self.specName = dict["SpecName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeFabricOrganizationsResponseBody.Result.Tags]
            }
            if dict.keys.contains("UserCount") {
                self.userCount = dict["UserCount"] as! Int32
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeFabricOrganizationsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeFabricOrganizationsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricOrganizationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricOrganizationsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricOrganizationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFabricPeerLogsRequest : Tea.TeaModel {
    public var lines: String?

    public var organizationId: String?

    public var peerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lines != nil {
            map["Lines"] = self.lines!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.peerName != nil {
            map["PeerName"] = self.peerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lines") {
            self.lines = dict["Lines"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("PeerName") {
            self.peerName = dict["PeerName"] as! String
        }
    }
}

public class DescribeFabricPeerLogsResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFabricPeerLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFabricPeerLogsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFabricPeerLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [DescribeRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRootDomainResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRootDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRootDomainResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRootDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var action: String?

        public var handled: Bool?

        public var operationType: String?

        public var requestTime: Int64?

        public var responseTime: String?

        public var result: String?

        public var sender: String?

        public var target: String?

        public var taskId: Int32?

        public override init() {
            super.init()
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
            if self.handled != nil {
                map["Handled"] = self.handled!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.responseTime != nil {
                map["ResponseTime"] = self.responseTime!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.sender != nil {
                map["Sender"] = self.sender!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("Handled") {
                self.handled = dict["Handled"] as! Bool
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("RequestTime") {
                self.requestTime = dict["RequestTime"] as! Int64
            }
            if dict.keys.contains("ResponseTime") {
                self.responseTime = dict["ResponseTime"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Sender") {
                self.sender = dict["Sender"] as! String
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
        }
    }
    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DescribeTasksResponseBody.Result]?

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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DescribeTasksResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DownloadFabricOrganizationSDKRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

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
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class DownloadFabricOrganizationSDKResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var path: String?

        public override init() {
            super.init()
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
                map["Content"] = self.content!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [DownloadFabricOrganizationSDKResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [DownloadFabricOrganizationSDKResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DownloadFabricOrganizationSDKResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadFabricOrganizationSDKResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DownloadFabricOrganizationSDKResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FreezeAntChainAccountRequest : Tea.TeaModel {
    public var account: String?

    public var antChainId: String?

    public override init() {
        super.init()
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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class FreezeAntChainAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class FreezeAntChainAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FreezeAntChainAccountResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FreezeAntChainAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallFabricChaincodeRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class InstallFabricChaincodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var input: String?

        public var install: Bool?

        public var message: String?

        public var path: String?

        public var providerId: String?

        public var providerName: String?

        public var state: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.install != nil {
                map["Install"] = self.install!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Install") {
                self.install = dict["Install"] as! Bool
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("ProviderName") {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: InstallFabricChaincodeResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = InstallFabricChaincodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InstallFabricChaincodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallFabricChaincodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallFabricChaincodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallFabricChaincodePackageRequest : Tea.TeaModel {
    public var chaincodePackageId: String?

    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodePackageId != nil {
            map["ChaincodePackageId"] = self.chaincodePackageId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodePackageId") {
            self.chaincodePackageId = dict["ChaincodePackageId"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class InstallFabricChaincodePackageResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ChaincodePackage?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ChaincodePackage()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InstallFabricChaincodePackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallFabricChaincodePackageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallFabricChaincodePackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstantiateFabricChaincodeRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var collectionConfig: String?

    public var endorsePolicy: String?

    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.collectionConfig != nil {
            map["CollectionConfig"] = self.collectionConfig!
        }
        if self.endorsePolicy != nil {
            map["EndorsePolicy"] = self.endorsePolicy!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("CollectionConfig") {
            self.collectionConfig = dict["CollectionConfig"] as! String
        }
        if dict.keys.contains("EndorsePolicy") {
            self.endorsePolicy = dict["EndorsePolicy"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class InstantiateFabricChaincodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var input: String?

        public var install: Bool?

        public var message: String?

        public var path: String?

        public var providerId: String?

        public var providerName: String?

        public var state: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.install != nil {
                map["Install"] = self.install!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Install") {
                self.install = dict["Install"] as! Bool
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("ProviderName") {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: InstantiateFabricChaincodeResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = InstantiateFabricChaincodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InstantiateFabricChaincodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstantiateFabricChaincodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstantiateFabricChaincodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JoinFabricChannelRequest : Tea.TeaModel {
    public var channelId: String?

    public var do_: String?

    public var location: String?

    public override init() {
        super.init()
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
        if self.do_ != nil {
            map["Do"] = self.do_!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("Do") {
            self.do_ = dict["Do"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
    }
}

public class JoinFabricChannelResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var acceptTime: String?

        public var approveTime: String?

        public var channelId: String?

        public var confirmTime: String?

        public var destroyTime: String?

        public var inviteTime: String?

        public var organizationId: String?

        public var state: String?

        public var withPeer: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptTime != nil {
                map["AcceptTime"] = self.acceptTime!
            }
            if self.approveTime != nil {
                map["ApproveTime"] = self.approveTime!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.confirmTime != nil {
                map["ConfirmTime"] = self.confirmTime!
            }
            if self.destroyTime != nil {
                map["DestroyTime"] = self.destroyTime!
            }
            if self.inviteTime != nil {
                map["InviteTime"] = self.inviteTime!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.withPeer != nil {
                map["WithPeer"] = self.withPeer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptTime") {
                self.acceptTime = dict["AcceptTime"] as! String
            }
            if dict.keys.contains("ApproveTime") {
                self.approveTime = dict["ApproveTime"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("ConfirmTime") {
                self.confirmTime = dict["ConfirmTime"] as! String
            }
            if dict.keys.contains("DestroyTime") {
                self.destroyTime = dict["DestroyTime"] as! String
            }
            if dict.keys.contains("InviteTime") {
                self.inviteTime = dict["InviteTime"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("WithPeer") {
                self.withPeer = dict["WithPeer"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: [JoinFabricChannelResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [JoinFabricChannelResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class JoinFabricChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JoinFabricChannelResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = JoinFabricChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var nextToken: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            self.tagResources = dict["TagResources"] as! [ListTagResourcesResponseBody.TagResources]
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAntChainCertificateRequest : Tea.TeaModel {
    public var antChainId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class ResetAntChainCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class ResetAntChainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAntChainCertificateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetAntChainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAntChainUserCertificateRequest : Tea.TeaModel {
    public var antChainId: String?

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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ResetAntChainUserCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class ResetAntChainUserCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAntChainUserCertificateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetAntChainUserCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetFabricOrganizationUserPasswordRequest : Tea.TeaModel {
    public var location: String?

    public var organizationId: String?

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
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ResetFabricOrganizationUserPasswordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var fullname: String?

        public var organizationId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fullname != nil {
                map["Fullname"] = self.fullname!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Fullname") {
                self.fullname = dict["Fullname"] as! String
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: ResetFabricOrganizationUserPasswordResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ResetFabricOrganizationUserPasswordResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ResetFabricOrganizationUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetFabricOrganizationUserPasswordResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetFabricOrganizationUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitFabricChaincodeDefinitionRequest : Tea.TeaModel {
    public var chaincodePackageId: String?

    public var chaincodeVersion: String?

    public var channelId: String?

    public var collectionConfig: String?

    public var endorsePolicy: String?

    public var initRequired: Bool?

    public var location: String?

    public var name: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodePackageId != nil {
            map["ChaincodePackageId"] = self.chaincodePackageId!
        }
        if self.chaincodeVersion != nil {
            map["ChaincodeVersion"] = self.chaincodeVersion!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.collectionConfig != nil {
            map["CollectionConfig"] = self.collectionConfig!
        }
        if self.endorsePolicy != nil {
            map["EndorsePolicy"] = self.endorsePolicy!
        }
        if self.initRequired != nil {
            map["InitRequired"] = self.initRequired!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodePackageId") {
            self.chaincodePackageId = dict["ChaincodePackageId"] as! String
        }
        if dict.keys.contains("ChaincodeVersion") {
            self.chaincodeVersion = dict["ChaincodeVersion"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CollectionConfig") {
            self.collectionConfig = dict["CollectionConfig"] as! String
        }
        if dict.keys.contains("EndorsePolicy") {
            self.endorsePolicy = dict["EndorsePolicy"] as! String
        }
        if dict.keys.contains("InitRequired") {
            self.initRequired = dict["InitRequired"] as! Bool
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class SubmitFabricChaincodeDefinitionResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ChaincodeVO?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ChaincodeVO()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitFabricChaincodeDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitFabricChaincodeDefinitionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitFabricChaincodeDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SynchronizeFabricChaincodeRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class SynchronizeFabricChaincodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var input: String?

        public var install: Bool?

        public var message: String?

        public var path: String?

        public var providerId: String?

        public var providerName: String?

        public var state: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.install != nil {
                map["Install"] = self.install!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Install") {
                self.install = dict["Install"] as! Bool
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("ProviderName") {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: SynchronizeFabricChaincodeResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = SynchronizeFabricChaincodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SynchronizeFabricChaincodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SynchronizeFabricChaincodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SynchronizeFabricChaincodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnfreezeAntChainAccountRequest : Tea.TeaModel {
    public var account: String?

    public var antChainId: String?

    public override init() {
        super.init()
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
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
    }
}

public class UnfreezeAntChainAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UnfreezeAntChainAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnfreezeAntChainAccountResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnfreezeAntChainAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAntChainRequest : Tea.TeaModel {
    public var antChainId: String?

    public var antChainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.antChainName != nil {
            map["AntChainName"] = self.antChainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("AntChainName") {
            self.antChainName = dict["AntChainName"] as! String
        }
    }
}

public class UpdateAntChainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UpdateAntChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntChainResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAntChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAntChainConsortiumRequest : Tea.TeaModel {
    public var consortiumDescription: String?

    public var consortiumId: String?

    public var consortiumName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumDescription != nil {
            map["ConsortiumDescription"] = self.consortiumDescription!
        }
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.consortiumName != nil {
            map["ConsortiumName"] = self.consortiumName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumDescription") {
            self.consortiumDescription = dict["ConsortiumDescription"] as! String
        }
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("ConsortiumName") {
            self.consortiumName = dict["ConsortiumName"] as! String
        }
    }
}

public class UpdateAntChainConsortiumResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UpdateAntChainConsortiumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntChainConsortiumResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAntChainConsortiumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAntChainContractContentRequest : Tea.TeaModel {
    public var content: String?

    public var contentId: String?

    public var contentName: String?

    public var parentContentId: String?

    public override init() {
        super.init()
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
            map["Content"] = self.content!
        }
        if self.contentId != nil {
            map["ContentId"] = self.contentId!
        }
        if self.contentName != nil {
            map["ContentName"] = self.contentName!
        }
        if self.parentContentId != nil {
            map["ParentContentId"] = self.parentContentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentId") {
            self.contentId = dict["ContentId"] as! String
        }
        if dict.keys.contains("ContentName") {
            self.contentName = dict["ContentName"] as! String
        }
        if dict.keys.contains("ParentContentId") {
            self.parentContentId = dict["ParentContentId"] as! String
        }
    }
}

public class UpdateAntChainContractContentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UpdateAntChainContractContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntChainContractContentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAntChainContractContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAntChainContractProjectRequest : Tea.TeaModel {
    public var projectDescription: String?

    public var projectId: String?

    public var projectName: String?

    public var projectVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectDescription != nil {
            map["ProjectDescription"] = self.projectDescription!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.projectVersion != nil {
            map["ProjectVersion"] = self.projectVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectDescription") {
            self.projectDescription = dict["ProjectDescription"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ProjectVersion") {
            self.projectVersion = dict["ProjectVersion"] as! String
        }
    }
}

public class UpdateAntChainContractProjectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UpdateAntChainContractProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntChainContractProjectResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAntChainContractProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAntChainMemberRequest : Tea.TeaModel {
    public var consortiumId: String?

    public var memberId: String?

    public var memberName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consortiumId != nil {
            map["ConsortiumId"] = self.consortiumId!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.memberName != nil {
            map["MemberName"] = self.memberName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsortiumId") {
            self.consortiumId = dict["ConsortiumId"] as! String
        }
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("MemberName") {
            self.memberName = dict["MemberName"] as! String
        }
    }
}

public class UpdateAntChainMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UpdateAntChainMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntChainMemberResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAntChainMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAntChainQRCodeAuthorizationRequest : Tea.TeaModel {
    public var antChainId: String?

    public var authorizationType: String?

    public var QRCodeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.antChainId != nil {
            map["AntChainId"] = self.antChainId!
        }
        if self.authorizationType != nil {
            map["AuthorizationType"] = self.authorizationType!
        }
        if self.QRCodeType != nil {
            map["QRCodeType"] = self.QRCodeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntChainId") {
            self.antChainId = dict["AntChainId"] as! String
        }
        if dict.keys.contains("AuthorizationType") {
            self.authorizationType = dict["AuthorizationType"] as! String
        }
        if dict.keys.contains("QRCodeType") {
            self.QRCodeType = dict["QRCodeType"] as! String
        }
    }
}

public class UpdateAntChainQRCodeAuthorizationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class UpdateAntChainQRCodeAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntChainQRCodeAuthorizationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAntChainQRCodeAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeFabricChaincodeRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var collectionConfig: String?

    public var endorsePolicy: String?

    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.collectionConfig != nil {
            map["CollectionConfig"] = self.collectionConfig!
        }
        if self.endorsePolicy != nil {
            map["EndorsePolicy"] = self.endorsePolicy!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("CollectionConfig") {
            self.collectionConfig = dict["CollectionConfig"] as! String
        }
        if dict.keys.contains("EndorsePolicy") {
            self.endorsePolicy = dict["EndorsePolicy"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class UpgradeFabricChaincodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chaincodeId: String?

        public var chaincodeName: String?

        public var chaincodeVersion: String?

        public var channelName: String?

        public var consortiumId: String?

        public var createTime: String?

        public var deployTime: String?

        public var endorsePolicy: String?

        public var input: String?

        public var install: Bool?

        public var message: String?

        public var path: String?

        public var providerId: String?

        public var providerName: String?

        public var state: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chaincodeId != nil {
                map["ChaincodeId"] = self.chaincodeId!
            }
            if self.chaincodeName != nil {
                map["ChaincodeName"] = self.chaincodeName!
            }
            if self.chaincodeVersion != nil {
                map["ChaincodeVersion"] = self.chaincodeVersion!
            }
            if self.channelName != nil {
                map["ChannelName"] = self.channelName!
            }
            if self.consortiumId != nil {
                map["ConsortiumId"] = self.consortiumId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployTime != nil {
                map["DeployTime"] = self.deployTime!
            }
            if self.endorsePolicy != nil {
                map["EndorsePolicy"] = self.endorsePolicy!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.install != nil {
                map["Install"] = self.install!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChaincodeId") {
                self.chaincodeId = dict["ChaincodeId"] as! String
            }
            if dict.keys.contains("ChaincodeName") {
                self.chaincodeName = dict["ChaincodeName"] as! String
            }
            if dict.keys.contains("ChaincodeVersion") {
                self.chaincodeVersion = dict["ChaincodeVersion"] as! String
            }
            if dict.keys.contains("ChannelName") {
                self.channelName = dict["ChannelName"] as! String
            }
            if dict.keys.contains("ConsortiumId") {
                self.consortiumId = dict["ConsortiumId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployTime") {
                self.deployTime = dict["DeployTime"] as! String
            }
            if dict.keys.contains("EndorsePolicy") {
                self.endorsePolicy = dict["EndorsePolicy"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Install") {
                self.install = dict["Install"] as! Bool
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("ProviderName") {
                self.providerName = dict["ProviderName"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var errorCode: Int32?

    public var requestId: String?

    public var result: UpgradeFabricChaincodeResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = UpgradeFabricChaincodeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpgradeFabricChaincodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeFabricChaincodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeFabricChaincodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeFabricChaincodeDefinitionRequest : Tea.TeaModel {
    public var chaincodeId: String?

    public var chaincodePackageId: String?

    public var chaincodeVersion: String?

    public var collectionConfig: String?

    public var endorsePolicy: String?

    public var initRequired: Bool?

    public var location: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chaincodeId != nil {
            map["ChaincodeId"] = self.chaincodeId!
        }
        if self.chaincodePackageId != nil {
            map["ChaincodePackageId"] = self.chaincodePackageId!
        }
        if self.chaincodeVersion != nil {
            map["ChaincodeVersion"] = self.chaincodeVersion!
        }
        if self.collectionConfig != nil {
            map["CollectionConfig"] = self.collectionConfig!
        }
        if self.endorsePolicy != nil {
            map["EndorsePolicy"] = self.endorsePolicy!
        }
        if self.initRequired != nil {
            map["InitRequired"] = self.initRequired!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChaincodeId") {
            self.chaincodeId = dict["ChaincodeId"] as! String
        }
        if dict.keys.contains("ChaincodePackageId") {
            self.chaincodePackageId = dict["ChaincodePackageId"] as! String
        }
        if dict.keys.contains("ChaincodeVersion") {
            self.chaincodeVersion = dict["ChaincodeVersion"] as! String
        }
        if dict.keys.contains("CollectionConfig") {
            self.collectionConfig = dict["CollectionConfig"] as! String
        }
        if dict.keys.contains("EndorsePolicy") {
            self.endorsePolicy = dict["EndorsePolicy"] as! String
        }
        if dict.keys.contains("InitRequired") {
            self.initRequired = dict["InitRequired"] as! Bool
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class UpgradeFabricChaincodeDefinitionResponseBody : Tea.TeaModel {
    public var errorCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: ChaincodeVO?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ChaincodeVO()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpgradeFabricChaincodeDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeFabricChaincodeDefinitionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeFabricChaincodeDefinitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
