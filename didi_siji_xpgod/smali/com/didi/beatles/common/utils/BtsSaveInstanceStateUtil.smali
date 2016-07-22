.class public Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;
.super Ljava/lang/Object;
.source "BtsSaveInstanceStateUtil.java"


# static fields
.field private static btsSaveInstanceStateUtil:Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

.field private mIsCheckWeixin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsSaveInstanceStateUtil:Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->mIsCheckWeixin:Z

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsSaveInstanceStateUtil:Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsSaveInstanceStateUtil:Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    invoke-direct {v0}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;-><init>()V

    sput-object v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsSaveInstanceStateUtil:Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsSaveInstanceStateUtil:Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBtsOrderParams()Lcom/didi/beatles/model/order/BtsOrderParams;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    return-object v0
.end method

.method public ismIsCheckWeixin()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->mIsCheckWeixin:Z

    return v0
.end method

.method public setBtsOrderParams(Lcom/didi/beatles/model/order/BtsOrderParams;)V
    .locals 0
    .parameter "btsOrderParams"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;

    .line 38
    return-void
.end method

.method public setmIsCheckWeixin(Z)V
    .locals 0
    .parameter "mIsCheckWeixin"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->mIsCheckWeixin:Z

    .line 30
    return-void
.end method
