.class public final enum Lcom/didi/frame/protobuffer/RspCode;
.super Ljava/lang/Enum;
.source "RspCode.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/RspCode;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrAddTokenError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrBase64EncodeError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrDecodeError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrDelTokenError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrGetUserIdError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrHmacEncodeError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrLoginError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeAuthSvrParamError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeCdntSvrAccessCkvError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeCdntSvrArgsError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeCdntSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeCdntSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeCdntSvrNotExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterAccessCkvTimedOut:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterCkvCasNewer:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterCkvDecodeFailed:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterIfOnlineOutRange:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterKeyExistWhenAdd:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterPbDecodeError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnMasterTimedOut:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnSvrInternalError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeConnSvrTimedOut:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrCkvDecodeFailed:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrCkvSetError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrKeyHasExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrNoCkvServer:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrNoSessionServer:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrSessionNotReturnToken:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrStateError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrTimedOut:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeFileSvrVerificationError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrCkvError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrDecodeError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrGetServerError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrSessionInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrTimeOut:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrToPushError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeMessageSvrToSessionError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrInternalError:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrMsgStaged:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodePushSvrSmsMsgSend:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeRepushSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeRepushSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeRepushSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeRepushSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrForbidden:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrFrozen:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrInvalidArguments:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrMax:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrMin:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrNoSuchSession:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrTryAgain:Lcom/didi/frame/protobuffer/RspCode;

.field public static final enum kRspCodeSessionSvrVanished:Lcom/didi/frame/protobuffer/RspCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnSvrMin"

    invoke-direct {v0, v1, v7, v4}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 10
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnSvrTimedOut"

    invoke-direct {v0, v1, v4, v5}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    .line 11
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnSvrInternalError"

    invoke-direct {v0, v1, v5, v6}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrInternalError:Lcom/didi/frame/protobuffer/RspCode;

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnSvrMax"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v6, v2}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 13
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeCdntSvrMin"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v8, v2}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 14
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeCdntSvrNotExist"

    const/4 v2, 0x5

    const/16 v3, 0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrNotExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 15
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeCdntSvrAccessCkvError"

    const/4 v2, 0x6

    const/16 v3, 0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrAccessCkvError:Lcom/didi/frame/protobuffer/RspCode;

    .line 19
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeCdntSvrArgsError"

    const/4 v2, 0x7

    const/16 v3, 0xcc

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrArgsError:Lcom/didi/frame/protobuffer/RspCode;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeCdntSvrMax"

    const/16 v2, 0x8

    const/16 v3, 0x12b

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 21
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterMin"

    const/16 v2, 0x9

    const/16 v3, 0x191

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 22
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterKeyNotExist"

    const/16 v2, 0xa

    const/16 v3, 0x192

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 23
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterTimedOut"

    const/16 v2, 0xb

    const/16 v3, 0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    .line 24
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterAccessCkvTimedOut"

    const/16 v2, 0xc

    const/16 v3, 0x194

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterAccessCkvTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    .line 25
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterPbDecodeError"

    const/16 v2, 0xd

    const/16 v3, 0x195

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterPbDecodeError:Lcom/didi/frame/protobuffer/RspCode;

    .line 26
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterCkvDecodeFailed"

    const/16 v2, 0xe

    const/16 v3, 0x196

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterCkvDecodeFailed:Lcom/didi/frame/protobuffer/RspCode;

    .line 27
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterCkvCasNewer"

    const/16 v2, 0xf

    const/16 v3, 0x197

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterCkvCasNewer:Lcom/didi/frame/protobuffer/RspCode;

    .line 31
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterKeyExistWhenAdd"

    const/16 v2, 0x10

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterKeyExistWhenAdd:Lcom/didi/frame/protobuffer/RspCode;

    .line 35
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterIfOnlineOutRange"

    const/16 v2, 0x11

    const/16 v3, 0x199

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterIfOnlineOutRange:Lcom/didi/frame/protobuffer/RspCode;

    .line 36
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeConnMasterMax"

    const/16 v2, 0x12

    const/16 v3, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 37
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrMin"

    const/16 v2, 0x13

    const/16 v3, 0x259

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 38
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrKeyNotExist"

    const/16 v2, 0x14

    const/16 v3, 0x25a

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 39
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrParamError"

    const/16 v2, 0x15

    const/16 v3, 0x25b

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrParamError:Lcom/didi/frame/protobuffer/RspCode;

    .line 40
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrDelTokenError"

    const/16 v2, 0x16

    const/16 v3, 0x25c

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrDelTokenError:Lcom/didi/frame/protobuffer/RspCode;

    .line 41
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrAddTokenError"

    const/16 v2, 0x17

    const/16 v3, 0x25d

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrAddTokenError:Lcom/didi/frame/protobuffer/RspCode;

    .line 42
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrLoginError"

    const/16 v2, 0x18

    const/16 v3, 0x25e

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrLoginError:Lcom/didi/frame/protobuffer/RspCode;

    .line 43
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrGetUserIdError"

    const/16 v2, 0x19

    const/16 v3, 0x25f

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrGetUserIdError:Lcom/didi/frame/protobuffer/RspCode;

    .line 44
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrDecodeError"

    const/16 v2, 0x1a

    const/16 v3, 0x260

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrDecodeError:Lcom/didi/frame/protobuffer/RspCode;

    .line 45
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrHmacEncodeError"

    const/16 v2, 0x1b

    const/16 v3, 0x261

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrHmacEncodeError:Lcom/didi/frame/protobuffer/RspCode;

    .line 46
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrBase64EncodeError"

    const/16 v2, 0x1c

    const/16 v3, 0x262

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrBase64EncodeError:Lcom/didi/frame/protobuffer/RspCode;

    .line 47
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeAuthSvrMax"

    const/16 v2, 0x1d

    const/16 v3, 0x2bb

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 48
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrMin"

    const/16 v2, 0x1e

    const/16 v3, 0x600

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 49
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrInternalError"

    const/16 v2, 0x1f

    const/16 v3, 0x601

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrInternalError:Lcom/didi/frame/protobuffer/RspCode;

    .line 53
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrMsgStaged"

    const/16 v2, 0x20

    const/16 v3, 0x602

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrMsgStaged:Lcom/didi/frame/protobuffer/RspCode;

    .line 57
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrInvalidArgs"

    const/16 v2, 0x21

    const/16 v3, 0x603

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    .line 58
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrKeyNotExist"

    const/16 v2, 0x22

    const/16 v3, 0x604

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 62
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrSmsMsgSend"

    const/16 v2, 0x23

    const/16 v3, 0x605

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrSmsMsgSend:Lcom/didi/frame/protobuffer/RspCode;

    .line 63
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodePushSvrMax"

    const/16 v2, 0x24

    const/16 v3, 0x6ff

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 64
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrMin"

    const/16 v2, 0x25

    const/16 v3, 0x900

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 65
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrTimeOut"

    const/16 v2, 0x26

    const/16 v3, 0x901

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrTimeOut:Lcom/didi/frame/protobuffer/RspCode;

    .line 66
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrInvalidArgs"

    const/16 v2, 0x27

    const/16 v3, 0x902

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    .line 70
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrCkvError"

    const/16 v2, 0x28

    const/16 v3, 0x903

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrCkvError:Lcom/didi/frame/protobuffer/RspCode;

    .line 74
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrGetServerError"

    const/16 v2, 0x29

    const/16 v3, 0x904

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrGetServerError:Lcom/didi/frame/protobuffer/RspCode;

    .line 78
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrToPushError"

    const/16 v2, 0x2a

    const/16 v3, 0x905

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrToPushError:Lcom/didi/frame/protobuffer/RspCode;

    .line 82
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrToSessionError"

    const/16 v2, 0x2b

    const/16 v3, 0x906

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrToSessionError:Lcom/didi/frame/protobuffer/RspCode;

    .line 86
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrSessionInvalidArgs"

    const/16 v2, 0x2c

    const/16 v3, 0x907

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrSessionInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    .line 90
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrDecodeError"

    const/16 v2, 0x2d

    const/16 v3, 0x908

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrDecodeError:Lcom/didi/frame/protobuffer/RspCode;

    .line 91
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeMessageSvrMax"

    const/16 v2, 0x2e

    const/16 v3, 0x9ff

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 92
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrMin"

    const/16 v2, 0x2f

    const/16 v3, 0xa00

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 96
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrTryAgain"

    const/16 v2, 0x30

    const/16 v3, 0xa01

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrTryAgain:Lcom/didi/frame/protobuffer/RspCode;

    .line 100
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrInvalidArguments"

    const/16 v2, 0x31

    const/16 v3, 0xa02

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrInvalidArguments:Lcom/didi/frame/protobuffer/RspCode;

    .line 104
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrNoSuchSession"

    const/16 v2, 0x32

    const/16 v3, 0xa03

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrNoSuchSession:Lcom/didi/frame/protobuffer/RspCode;

    .line 108
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrFrozen"

    const/16 v2, 0x33

    const/16 v3, 0xa04

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrFrozen:Lcom/didi/frame/protobuffer/RspCode;

    .line 112
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrForbidden"

    const/16 v2, 0x34

    const/16 v3, 0xa05

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrForbidden:Lcom/didi/frame/protobuffer/RspCode;

    .line 116
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrVanished"

    const/16 v2, 0x35

    const/16 v3, 0xa06

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrVanished:Lcom/didi/frame/protobuffer/RspCode;

    .line 117
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeSessionSvrMax"

    const/16 v2, 0x36

    const/16 v3, 0xaff

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 118
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrMin"

    const/16 v2, 0x37

    const/16 v3, 0xb00

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 122
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrTimedOut"

    const/16 v2, 0x38

    const/16 v3, 0xb01

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    .line 126
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrStateError"

    const/16 v2, 0x39

    const/16 v3, 0xb02

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrStateError:Lcom/didi/frame/protobuffer/RspCode;

    .line 130
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrNoSessionServer"

    const/16 v2, 0x3a

    const/16 v3, 0xb03

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrNoSessionServer:Lcom/didi/frame/protobuffer/RspCode;

    .line 134
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrVerificationError"

    const/16 v2, 0x3b

    const/16 v3, 0xb04

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrVerificationError:Lcom/didi/frame/protobuffer/RspCode;

    .line 138
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrNoCkvServer"

    const/16 v2, 0x3c

    const/16 v3, 0xb05

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrNoCkvServer:Lcom/didi/frame/protobuffer/RspCode;

    .line 142
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrCkvSetError"

    const/16 v2, 0x3d

    const/16 v3, 0xb06

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrCkvSetError:Lcom/didi/frame/protobuffer/RspCode;

    .line 146
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrKeyNotExist"

    const/16 v2, 0x3e

    const/16 v3, 0xb07

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 150
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrSessionNotReturnToken"

    const/16 v2, 0x3f

    const/16 v3, 0xb08

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrSessionNotReturnToken:Lcom/didi/frame/protobuffer/RspCode;

    .line 154
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrKeyHasExist"

    const/16 v2, 0x40

    const/16 v3, 0xb09

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrKeyHasExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 158
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrCkvDecodeFailed"

    const/16 v2, 0x41

    const/16 v3, 0xb0a

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrCkvDecodeFailed:Lcom/didi/frame/protobuffer/RspCode;

    .line 159
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeFileSvrMax"

    const/16 v2, 0x42

    const/16 v3, 0xbff

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 160
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeRepushSvrMin"

    const/16 v2, 0x43

    const/16 v3, 0xc00

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    .line 164
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeRepushSvrInvalidArgs"

    const/16 v2, 0x44

    const/16 v3, 0xc01

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    .line 165
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeRepushSvrKeyNotExist"

    const/16 v2, 0x45

    const/16 v3, 0xc02

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    .line 166
    new-instance v0, Lcom/didi/frame/protobuffer/RspCode;

    const-string v1, "kRspCodeRepushSvrMax"

    const/16 v2, 0x46

    const/16 v3, 0xcff

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/RspCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    .line 7
    const/16 v0, 0x47

    new-array v0, v0, [Lcom/didi/frame/protobuffer/RspCode;

    sget-object v1, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrInternalError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrNotExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrAccessCkvError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrArgsError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeCdntSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterAccessCkvTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterPbDecodeError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterCkvDecodeFailed:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterCkvCasNewer:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterKeyExistWhenAdd:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterIfOnlineOutRange:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeConnMasterMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrParamError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrDelTokenError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrAddTokenError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrLoginError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrGetUserIdError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrDecodeError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrHmacEncodeError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrBase64EncodeError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeAuthSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrInternalError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrMsgStaged:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrSmsMsgSend:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodePushSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrTimeOut:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrCkvError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrGetServerError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrToPushError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrToSessionError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrSessionInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrDecodeError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeMessageSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrTryAgain:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrInvalidArguments:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrNoSuchSession:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrFrozen:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrForbidden:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrVanished:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrTimedOut:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrStateError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrNoSessionServer:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrVerificationError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrNoCkvServer:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrCkvSetError:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrSessionNotReturnToken:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrKeyHasExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrCkvDecodeFailed:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeFileSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrMin:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrInvalidArgs:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrKeyNotExist:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeRepushSvrMax:Lcom/didi/frame/protobuffer/RspCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/frame/protobuffer/RspCode;->$VALUES:[Lcom/didi/frame/protobuffer/RspCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/didi/frame/protobuffer/RspCode;->value:I

    .line 172
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/RspCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/RspCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/RspCode;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/RspCode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/RspCode;->$VALUES:[Lcom/didi/frame/protobuffer/RspCode;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/RspCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/RspCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/didi/frame/protobuffer/RspCode;->value:I

    return v0
.end method
