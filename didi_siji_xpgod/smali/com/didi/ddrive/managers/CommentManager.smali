.class public Lcom/didi/ddrive/managers/CommentManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "CommentManager.java"


# static fields
.field private static final ALREADY_COMMENTED:I = 0x186ac

.field private static final TAG:Ljava/lang/String;

.field private static mgr:Lcom/didi/ddrive/managers/CommentManager;


# instance fields
.field private final RETRY_MAX_COUNT:I

.field private loadDataSuccess:Z

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/didi/ddrive/managers/CommentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/ddrive/managers/CommentManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/ddrive/managers/CommentManager;->RETRY_MAX_COUNT:I

    .line 28
    iput v1, p0, Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I

    .line 29
    iput-boolean v1, p0, Lcom/didi/ddrive/managers/CommentManager;->loadDataSuccess:Z

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/didi/ddrive/managers/CommentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/didi/ddrive/managers/CommentManager;->loadDataSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/ddrive/managers/CommentManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/didi/ddrive/managers/CommentManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/didi/ddrive/managers/CommentManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I

    return v0
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/CommentManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/didi/ddrive/managers/CommentManager;->mgr:Lcom/didi/ddrive/managers/CommentManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/didi/ddrive/managers/CommentManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/CommentManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/CommentManager;->mgr:Lcom/didi/ddrive/managers/CommentManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/CommentManager;->mgr:Lcom/didi/ddrive/managers/CommentManager;

    return-object v0
.end method


# virtual methods
.method public getCommentTags()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 51
    iget-boolean v4, p0, Lcom/didi/ddrive/managers/CommentManager;->loadDataSuccess:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/didi/ddrive/managers/CommentManager;->mRetryCount:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 52
    new-instance v3, Lcom/didi/ddrive/net/http/request/CommentTagRequest;

    invoke-direct {v3}, Lcom/didi/ddrive/net/http/request/CommentTagRequest;-><init>()V

    .line 53
    .local v3, request:Lcom/didi/ddrive/net/http/request/CommentTagRequest;
    iput v6, v3, Lcom/didi/ddrive/net/http/request/CommentTagRequest;->bizType:I

    .line 54
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v1

    .line 55
    .local v1, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getCityId()I

    move-result v0

    .line 56
    .local v0, cityId:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 57
    iput v0, v3, Lcom/didi/ddrive/net/http/request/CommentTagRequest;->cityId:I

    .line 59
    :cond_0
    iput v6, v3, Lcom/didi/ddrive/net/http/request/CommentTagRequest;->userType:I

    .line 60
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v2

    .line 61
    .local v2, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v4, Lcom/didi/ddrive/managers/CommentManager;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/didi/ddrive/managers/CommentManager$1;

    invoke-direct {v5, p0}, Lcom/didi/ddrive/managers/CommentManager$1;-><init>(Lcom/didi/ddrive/managers/CommentManager;)V

    const-class v6, Lcom/didi/ddrive/net/http/response/CommentTags;

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 87
    .end local v0           #cityId:I
    .end local v1           #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    .end local v2           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    .end local v3           #request:Lcom/didi/ddrive/net/http/request/CommentTagRequest;
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/managers/CommentManager;->mgr:Lcom/didi/ddrive/managers/CommentManager;

    .line 38
    return-void
.end method

.method public submitComment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "star"
    .parameter "tagId"
    .parameter "content"

    .prologue
    .line 93
    new-instance v3, Lcom/didi/ddrive/net/http/request/CommentRequest;

    invoke-direct {v3}, Lcom/didi/ddrive/net/http/request/CommentRequest;-><init>()V

    .line 94
    .local v3, request:Lcom/didi/ddrive/net/http/request/CommentRequest;
    sget-object v4, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 95
    .local v2, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-wide v4, v2, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->oid:J

    .line 96
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 97
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getUserInfo()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->pid:J

    .line 98
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->lat:D

    .line 99
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->lng:D

    .line 100
    iput p1, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->star:I

    .line 101
    iput-object p2, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->tagId:Ljava/lang/String;

    .line 102
    iput-object p3, v3, Lcom/didi/ddrive/net/http/request/CommentRequest;->context:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 104
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v4, Lcom/didi/ddrive/managers/CommentManager;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/didi/ddrive/managers/CommentManager$2;

    invoke-direct {v5, p0}, Lcom/didi/ddrive/managers/CommentManager$2;-><init>(Lcom/didi/ddrive/managers/CommentManager;)V

    const-class v6, Lcom/didi/ddrive/net/http/ResponseBean;

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 126
    return-void
.end method
