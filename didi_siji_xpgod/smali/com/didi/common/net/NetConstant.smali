.class public Lcom/didi/common/net/NetConstant;
.super Ljava/lang/Object;
.source "NetConstant.java"


# static fields
.field public static final ACCESS_TOKEN_INVALID:I = 0x65

.field public static final CONNECT_TIMEOUT:I = -0x3

.field public static final CONNECT_TIME_OUT:I = 0x2710

.field public static ERROR:Ljava/lang/String; = null

.field public static ERROR_CODE:Ljava/lang/String; = null

.field public static final ERROR_INVALID_DATA_FORMAT:I = -0x384

.field public static ERROR_MSG:Ljava/lang/String; = null

.field public static final ERROR_NETWORK_FAIL:I = -0x5

.field public static final HTTP_HOST_CONNECT:I = -0x4

.field public static final INVALID_TOKEN:I = 0x65

.field public static final KEY_1:Ljava/lang/String; = "-1"

.field public static final KEY_2:Ljava/lang/String; = "-2"

.field public static final MSG_DOWN_COMPLETE:I = 0x2

.field public static final MSG_ERROR:I = -0x1

.field public static final MSG_PROGRESS_UPDATE:I = 0x1

.field public static final MSG_USR_CANCELLED:I = 0x0

.field public static final MSG_WHAT_FINISH:I = 0x4

.field public static final MSG_WHAT_MULTI_THREADS:I = 0x3

.field public static final NO_DATA:I = -0x320

.field public static final OK:I = 0x0

.field public static final ONLY_TEXT_ERROR:I = 0x7d8

.field public static final ORDER_CANCELED:I = 0x406

.field public static final ORDER_STRIVED:I = 0x3ea

.field public static final REMOTE_LOGIN:I = -0xc8

.field public static final SOCKE_TTIMEOUT:I = -0x2

.field public static final THREAD_NUM:I = 0x2

.field public static TIME_OFFSET:Ljava/lang/String; = null

.field public static final TOKEN_FAILED:I = 0x3f3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "errno"

    sput-object v0, Lcom/didi/common/net/NetConstant;->ERROR_CODE:Ljava/lang/String;

    .line 54
    const-string v0, "errmsg"

    sput-object v0, Lcom/didi/common/net/NetConstant;->ERROR_MSG:Ljava/lang/String;

    .line 56
    const-string v0, "error"

    sput-object v0, Lcom/didi/common/net/NetConstant;->ERROR:Ljava/lang/String;

    .line 58
    const-string v0, "timeoffset"

    sput-object v0, Lcom/didi/common/net/NetConstant;->TIME_OFFSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
