.class public Lcom/avos/avoscloud/AVException;
.super Ljava/lang/Exception;
.source "AVException.java"


# static fields
.field public static final ACCOUNT_ALREADY_LINKED:I = 0xd0

.field public static final CACHE_MISS:I = 0x78

.field public static final COMMAND_UNAVAILABLE:I = 0x6c

.field public static final CONNECTION_FAILED:I = 0x64

.field public static final DUPLICATE_VALUE:I = 0x89

.field public static final EMAIL_MISSING:I = 0xcc

.field public static final EMAIL_NOT_FOUND:I = 0xcd

.field public static final EMAIL_TAKEN:I = 0xcb

.field public static final EXCEEDED_QUOTA:I = 0x8c

.field public static final FILE_DELETE_ERROR:I = 0x99

.field public static final FILE_DOWNLOAD_INCONSISTENT_FAILURE:I = 0xfd

.field public static final INCORRECT_TYPE:I = 0x6f

.field public static final INTERNAL_SERVER_ERROR:I = 0x1

.field public static final INVALID_ACL:I = 0x7b

.field public static final INVALID_CHANNEL_NAME:I = 0x70

.field public static final INVALID_CLASS_NAME:I = 0x67

.field public static final INVALID_EMAIL_ADDRESS:I = 0x7d

.field public static final INVALID_FILE_NAME:I = 0x7a

.field public static final INVALID_FILE_URL:I = 0x7e

.field public static final INVALID_JSON:I = 0x6b

.field public static final INVALID_KEY_NAME:I = 0x69

.field public static final INVALID_LINKED_SESSION:I = 0xfb

.field public static final INVALID_NESTED_KEY:I = 0x79

.field public static final INVALID_PHONE_NUMBER:I = 0x7f

.field public static final INVALID_POINTER:I = 0x6a

.field public static final INVALID_QUERY:I = 0x66

.field public static final INVALID_ROLE_NAME:I = 0x8b

.field public static final LINKED_ID_MISSING:I = 0xfa

.field public static final MISSING_OBJECT_ID:I = 0x68

.field public static final MUST_CREATE_USER_THROUGH_SIGNUP:I = 0xcf

.field public static final NOT_INITIALIZED:I = 0x6d

.field public static final OBJECT_NOT_FOUND:I = 0x65

.field public static final OBJECT_TOO_LARGE:I = 0x74

.field public static final OPERATION_FORBIDDEN:I = 0x77

.field public static final OTHER_CAUSE:I = -0x1

.field public static final PASSWORD_MISSING:I = 0xc9

.field public static final PUSH_MISCONFIGURED:I = 0x73

.field public static final RATE_LIMITED:I = 0x1f7

.field public static final SCRIPT_ERROR:I = 0x8d

.field public static final SESSION_MISSING:I = 0xce

.field public static final TIMEOUT:I = 0x7c

.field public static final UNKNOWN:I = 0x3e7

.field public static final UNSUPPORTED_SERVICE:I = 0xfc

.field public static final USERNAME_MISSING:I = 0xc8

.field public static final USERNAME_PASSWORD_MISMATCH:I = 0xd2

.field public static final USERNAME_TAKEN:I = 0xca

.field public static final USER_DOESNOT_EXIST:I = 0xd3

.field public static final USER_ID_MISMATCH:I = 0xd1

.field public static final USER_MOBILEPHONE_MISSING:I = 0xd4

.field public static final USER_MOBILEPHONE_NOT_VERIFIED:I = 0xd7

.field public static final USER_MOBILE_PHONENUMBER_TAKEN:I = 0xd6

.field public static final USER_WITH_MOBILEPHONE_NOT_FOUND:I = 0xd5

.field public static final VALIDATION_ERROR:I = 0x8e

.field public static final cacheMissingErrorString:Ljava/lang/String; = "Cache Missing"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 255
    iput p1, p0, Lcom/avos/avoscloud/AVException;->code:I

    .line 256
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    instance-of v0, p2, Lcom/avos/avoscloud/AVException;

    if-eqz v0, :cond_0

    .line 267
    check-cast p2, Lcom/avos/avoscloud/AVException;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getCode()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/AVException;->code:I

    .line 269
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 279
    instance-of v0, p1, Lcom/avos/avoscloud/AVException;

    if-eqz v0, :cond_0

    .line 280
    check-cast p1, Lcom/avos/avoscloud/AVException;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->getCode()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/AVException;->code:I

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/avos/avoscloud/AVException;->code:I

    return v0
.end method
