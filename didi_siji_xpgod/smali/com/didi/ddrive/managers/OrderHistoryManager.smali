.class public Lcom/didi/ddrive/managers/OrderHistoryManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "OrderHistoryManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OrderHistoryManager"

.field private static sInstance:Lcom/didi/ddrive/managers/OrderHistoryManager;


# instance fields
.field private mHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIndex:I

.field private mOrderHistoryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mLastIndex:I

    .line 42
    new-instance v0, Lcom/didi/ddrive/managers/OrderHistoryManager$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/managers/OrderHistoryManager$1;-><init>(Lcom/didi/ddrive/managers/OrderHistoryManager;)V

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mOrderHistoryComparator:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/didi/ddrive/managers/OrderHistoryManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/ddrive/managers/OrderHistoryManager;Lcom/didi/ddrive/net/http/response/KDOrderHistory;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/didi/ddrive/managers/OrderHistoryManager;->filter(Lcom/didi/ddrive/net/http/response/KDOrderHistory;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private filter(Lcom/didi/ddrive/net/http/response/KDOrderHistory;)Ljava/util/List;
    .locals 8
    .parameter "history"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, filtered:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/didi/ddrive/net/http/response/KDOrderHistory;->orders:[Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;

    if-eqz v5, :cond_1

    .line 170
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/KDOrderHistory;->orders:[Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;

    .local v0, arr$:[Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 171
    .local v3, item:Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    iget v5, v3, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->orderState:I

    invoke-static {v5}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v5

    sget-object v6, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    if-eq v5, v6, :cond_0

    .line 172
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0           #arr$:[Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    .end local v2           #i$:I
    .end local v3           #item:Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    .end local v4           #len$:I
    :cond_1
    const-string v5, "OrderHistoryManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filtered history size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mOrderHistoryComparator:Ljava/util/Comparator;

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    return-object v1
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/OrderHistoryManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/didi/ddrive/managers/OrderHistoryManager;->sInstance:Lcom/didi/ddrive/managers/OrderHistoryManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/didi/ddrive/managers/OrderHistoryManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/OrderHistoryManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/OrderHistoryManager;->sInstance:Lcom/didi/ddrive/managers/OrderHistoryManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/OrderHistoryManager;->sInstance:Lcom/didi/ddrive/managers/OrderHistoryManager;

    return-object v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mLastIndex:I

    .line 184
    return-void
.end method


# virtual methods
.method public deleteOrder(Ljava/lang/Runnable;Ljava/util/List;)V
    .locals 8
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, oid:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v3, Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;

    invoke-direct {v3}, Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;-><init>()V

    .line 110
    .local v3, request:Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v4

    .line 111
    .local v4, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    if-eqz v4, :cond_3

    .line 112
    iget-wide v5, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v5, v3, Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;->pid:J

    .line 117
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v2, orderList:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 119
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/OrderHistory;

    iget-object v5, v5, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_4

    .line 125
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;->orderList:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 128
    .local v1, mgr:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v5, "OrderHistoryManager"

    new-instance v6, Lcom/didi/ddrive/managers/OrderHistoryManager$2;

    invoke-direct {v6, p0, p1}, Lcom/didi/ddrive/managers/OrderHistoryManager$2;-><init>(Lcom/didi/ddrive/managers/OrderHistoryManager;Ljava/lang/Runnable;)V

    const-class v7, Lcom/didi/ddrive/net/http/response/OrderDeleteResult;

    invoke-virtual {v1, v5, v3, v6, v7}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0

    .line 114
    .end local v0           #i:I
    .end local v1           #mgr:Lcom/didi/ddrive/net/http/KDHttpManager;
    .end local v2           #orderList:Ljava/lang/StringBuilder;
    :cond_3
    const-wide/16 v5, -0x1

    iput-wide v5, v3, Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;->pid:J

    goto :goto_1

    .line 123
    .restart local v0       #i:I
    .restart local v2       #orderList:Ljava/lang/StringBuilder;
    :cond_4
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getHistoryAfter(J)Ljava/util/List;
    .locals 7
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 74
    :cond_0
    const-string v4, "OrderHistoryManager"

    const-string v5, "no history loaded from server"

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    :goto_0
    return-object v3

    .line 78
    :cond_2
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 79
    .local v2, length:I
    iget v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mLastIndex:I

    if-eqz v4, :cond_3

    .line 80
    iget v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mLastIndex:I

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_1

    .line 84
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    iget v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mLastIndex:I

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 86
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;

    .line 87
    .local v1, item:Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    iget-wide v4, v1, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->stime:J

    cmp-long v4, v4, p1

    if-ltz v4, :cond_4

    .line 88
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_5

    .line 91
    iput v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager;->mLastIndex:I

    .line 97
    .end local v1           #item:Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    :cond_5
    const-string v4, "OrderHistoryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get history after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryHistory()V
    .locals 6

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/didi/ddrive/managers/OrderHistoryManager;->reset()V

    .line 143
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v2

    .line 144
    .local v2, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    new-instance v1, Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;-><init>()V

    .line 145
    .local v1, request:Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;
    const/16 v3, 0x3c

    iput v3, v1, Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;->num:I

    .line 146
    if-eqz v2, :cond_0

    .line 147
    iget-wide v3, v2, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v1, Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;->pid:J

    .line 152
    :goto_0
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 153
    .local v0, mgr:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "OrderHistoryManager"

    new-instance v4, Lcom/didi/ddrive/managers/OrderHistoryManager$3;

    invoke-direct {v4, p0}, Lcom/didi/ddrive/managers/OrderHistoryManager$3;-><init>(Lcom/didi/ddrive/managers/OrderHistoryManager;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/KDOrderHistory;

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 165
    return-void

    .line 149
    .end local v0           #mgr:Lcom/didi/ddrive/net/http/KDHttpManager;
    :cond_0
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;->pid:J

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/managers/OrderHistoryManager;->sInstance:Lcom/didi/ddrive/managers/OrderHistoryManager;

    .line 40
    return-void
.end method
