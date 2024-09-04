import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateEenterpriseDIDRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerUniqueID: String?

    public override init() {
        super.init()
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
        if self.ownerUniqueID != nil {
            map["OwnerUniqueID"] = self.ownerUniqueID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerUniqueID") {
            self.ownerUniqueID = dict["OwnerUniqueID"] as! String
        }
    }
}

public class CreateEenterpriseDIDResponseBody : Tea.TeaModel {
    public var DID: String?

    public var requestId: String?

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
        if self.DID != nil {
            map["DID"] = self.DID!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("DID") {
            self.DID = dict["DID"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class CreateEenterpriseDIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEenterpriseDIDResponseBody?

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
            var model = CreateEenterpriseDIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePersonalDIDRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerUniqueID: String?

    public override init() {
        super.init()
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
        if self.ownerUniqueID != nil {
            map["OwnerUniqueID"] = self.ownerUniqueID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerUniqueID") {
            self.ownerUniqueID = dict["OwnerUniqueID"] as! String
        }
    }
}

public class CreatePersonalDIDResponseBody : Tea.TeaModel {
    public var DID: String?

    public var requestId: String?

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
        if self.DID != nil {
            map["DID"] = self.DID!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("DID") {
            self.DID = dict["DID"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class CreatePersonalDIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalDIDResponseBody?

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
            var model = CreatePersonalDIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTenantDIDRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
    }
}

public class CreateTenantDIDResponseBody : Tea.TeaModel {
    public var DID: String?

    public var requestId: String?

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
        if self.DID != nil {
            map["DID"] = self.DID!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("DID") {
            self.DID = dict["DID"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class CreateTenantDIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantDIDResponseBody?

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
            var model = CreateTenantDIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDIDRequest : Tea.TeaModel {
    public var DID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DID != nil {
            map["DID"] = self.DID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DID") {
            self.DID = dict["DID"] as! String
        }
    }
}

public class GetDIDResponseBody : Tea.TeaModel {
    public var doc: String?

    public var requestId: String?

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
        if self.doc != nil {
            map["Doc"] = self.doc!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("Doc") {
            self.doc = dict["Doc"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class GetDIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDIDResponseBody?

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
            var model = GetDIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IssueNormalVerifiableVCRequest : Tea.TeaModel {
    public class BareClaimStructBody : Tea.TeaModel {
        public var claim: String?

        public var claimType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.claim != nil {
                map["Claim"] = self.claim!
            }
            if self.claimType != nil {
                map["ClaimType"] = self.claimType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Claim") {
                self.claim = dict["Claim"] as! String
            }
            if dict.keys.contains("ClaimType") {
                self.claimType = dict["ClaimType"] as! String
            }
        }
    }
    public var bareClaimStructBody: [IssueNormalVerifiableVCRequest.BareClaimStructBody]?

    public var clientToken: String?

    public var expiration: Int64?

    public var issuer: String?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bareClaimStructBody != nil {
            var tmp : [Any] = []
            for k in self.bareClaimStructBody! {
                tmp.append(k.toMap())
            }
            map["BareClaimStructBody"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.issuer != nil {
            map["Issuer"] = self.issuer!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BareClaimStructBody") {
            var tmp : [IssueNormalVerifiableVCRequest.BareClaimStructBody] = []
            for v in dict["BareClaimStructBody"] as! [Any] {
                var model = IssueNormalVerifiableVCRequest.BareClaimStructBody()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bareClaimStructBody = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Expiration") {
            self.expiration = dict["Expiration"] as! Int64
        }
        if dict.keys.contains("Issuer") {
            self.issuer = dict["Issuer"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
    }
}

public class IssueNormalVerifiableVCResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultCode: String?

    public var resultMessage: String?

    public var success: Bool?

    public var verifiableClaimContent: String?

    public var verifiableClaimId: String?

    public override init() {
        super.init()
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
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMessage != nil {
            map["ResultMessage"] = self.resultMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.verifiableClaimContent != nil {
            map["VerifiableClaimContent"] = self.verifiableClaimContent!
        }
        if self.verifiableClaimId != nil {
            map["VerifiableClaimId"] = self.verifiableClaimId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("VerifiableClaimContent") {
            self.verifiableClaimContent = dict["VerifiableClaimContent"] as! String
        }
        if dict.keys.contains("VerifiableClaimId") {
            self.verifiableClaimId = dict["VerifiableClaimId"] as! String
        }
    }
}

public class IssueNormalVerifiableVCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IssueNormalVerifiableVCResponseBody?

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
            var model = IssueNormalVerifiableVCResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVCRequest : Tea.TeaModel {
    public var issuerDid: String?

    public var VCId: String?

    public var VCStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.issuerDid != nil {
            map["IssuerDid"] = self.issuerDid!
        }
        if self.VCId != nil {
            map["VCId"] = self.VCId!
        }
        if self.VCStatus != nil {
            map["VCStatus"] = self.VCStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IssuerDid") {
            self.issuerDid = dict["IssuerDid"] as! String
        }
        if dict.keys.contains("VCId") {
            self.VCId = dict["VCId"] as! String
        }
        if dict.keys.contains("VCStatus") {
            self.VCStatus = dict["VCStatus"] as! String
        }
    }
}

public class UpdateVCResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class UpdateVCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVCResponseBody?

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
            var model = UpdateVCResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyVerifiableClaimRequest : Tea.TeaModel {
    public var VCContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.VCContent != nil {
            map["VCContent"] = self.VCContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VCContent") {
            self.VCContent = dict["VCContent"] as! String
        }
    }
}

public class VerifyVerifiableClaimResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class VerifyVerifiableClaimResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyVerifiableClaimResponseBody?

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
            var model = VerifyVerifiableClaimResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
