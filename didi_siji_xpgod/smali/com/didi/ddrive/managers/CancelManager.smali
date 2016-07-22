.class public Lcom/didi/ddrive/managers/CancelManager;
.super Ljava/lang/Object;
.source "CancelManager.java"


# static fields
.field public static final AFTER_ACCEPT:I = 0x1

.field public static final BEFORE_ACCEPT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CancelManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelOrder(Lcom/didi/ddrive/net/http/response/Item;Ljava/lang/String;I)V
    .locals 6
    .parameter "reason"
    .parameter "extra"
    .parameter "when"

    .prologue
    .line 23
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 24
    .local v2, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v0, Lcom/didi/ddrive/net/http/request/CancelRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/CancelRequest;-><init>()V

    .line 25
    .local v0, cr:Lcom/didi/ddrive/net/http/request/CancelRequest;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v3

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/CancelRequest;->pid:J

    .line 26
    iget-wide v3, v2, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/CancelRequest;->oid:J

    .line 27
    iput-object p2, v0, Lcom/didi/ddrive/net/http/request/CancelRequest;->reason:Ljava/lang/String;

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget v3, p1, Lcom/didi/ddrive/net/http/response/Item;->id:I

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/CancelRequest;->reasonType:J

    .line 31
    :cond_0
    iput p3, v0, Lcom/didi/ddrive/net/http/request/CancelRequest;->when:I

    .line 32
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 33
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "CancelManager"

    new-instance v4, Lcom/didi/ddrive/managers/CancelManager$1;

    invoke-direct {v4, p0}, Lcom/didi/ddrive/managers/CancelManager$1;-><init>(Lcom/didi/ddrive/managers/CancelManager;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/CancelResult;

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 53
    return-void
.end method
