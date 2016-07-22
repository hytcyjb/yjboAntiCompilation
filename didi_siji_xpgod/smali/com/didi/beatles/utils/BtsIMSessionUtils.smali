.class public Lcom/didi/beatles/utils/BtsIMSessionUtils;
.super Ljava/lang/Object;
.source "BtsIMSessionUtils.java"


# static fields
.field private static btsIMSessionUtils:Lcom/didi/beatles/utils/BtsIMSessionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/didi/beatles/utils/BtsIMSessionUtils;

    invoke-direct {v0}, Lcom/didi/beatles/utils/BtsIMSessionUtils;-><init>()V

    sput-object v0, Lcom/didi/beatles/utils/BtsIMSessionUtils;->btsIMSessionUtils:Lcom/didi/beatles/utils/BtsIMSessionUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createIMSessionInDB(Ljava/lang/String;)V
    .locals 5
    .parameter "sessionId"

    .prologue
    .line 37
    move-object v2, p1

    .line 38
    .local v2, sid:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPsngrId()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, uid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v1

    .line 40
    .local v1, oldSession:Lcom/didi/im/model/IMSession;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1, v3}, Lcom/didi/im/model/IMSession;->setUID(Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v2}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionBySId(Lcom/didi/im/model/IMSession;Ljava/lang/String;)I

    .line 50
    :goto_0
    invoke-direct {p0, v2}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getUserInfo(Ljava/lang/String;)V

    .line 51
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/didi/im/model/IMSession;

    invoke-direct {v0}, Lcom/didi/im/model/IMSession;-><init>()V

    .line 45
    .local v0, newSession:Lcom/didi/im/model/IMSession;
    invoke-virtual {v0, v3}, Lcom/didi/im/model/IMSession;->setUID(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/didi/im/model/IMSession;->setSID(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/didi/im/model/IMSession;->setUnreadCnt(I)V

    .line 48
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/didi/im/db/IMDBDataHelper;->insertSession(Lcom/didi/im/model/IMSession;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/didi/beatles/utils/BtsIMSessionUtils;->btsIMSessionUtils:Lcom/didi/beatles/utils/BtsIMSessionUtils;

    return-object v0
.end method

.method private getUserInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 55
    new-instance v0, Lcom/didi/beatles/utils/BtsIMSessionUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/utils/BtsIMSessionUtils$1;-><init>(Lcom/didi/beatles/utils/BtsIMSessionUtils;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/didi/beatles/net/BtsRequest;->getSessUsrList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public creatIMDB(Ljava/lang/String;)V
    .locals 2
    .parameter "sessionid"

    .prologue
    .line 28
    :try_start_0
    invoke-direct {p0, p1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->createIMSessionInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/didi/common/config/Preferences;->setSid(Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createIMUserInDB(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "sessionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/im/model/IMUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMUser;>;"
    move-object v2, p1

    .line 68
    .local v2, sid:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 81
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/im/model/IMUser;

    .line 72
    .local v4, user:Lcom/didi/im/model/IMUser;
    invoke-virtual {v4}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, uid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImUserByID(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 74
    .local v1, oldUser:Lcom/didi/im/model/IMUser;
    invoke-virtual {v4, v2}, Lcom/didi/im/model/IMUser;->setSID(Ljava/lang/String;)V

    .line 75
    if-nez v1, :cond_2

    .line 76
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/didi/im/db/IMDBDataHelper;->insertUser(Lcom/didi/im/model/IMUser;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v4}, Lcom/didi/im/db/IMDBDataHelper;->updateIMUser(Lcom/didi/im/model/IMUser;)I

    goto :goto_0
.end method

.method public isHasSessionUnread(Ljava/lang/String;)Z
    .locals 3
    .parameter "sid"

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, curSession:Lcom/didi/im/model/IMSession;
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-static {p1}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/didi/im/model/IMSession;->getUnreadCnt()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 91
    :cond_0
    return v1
.end method
