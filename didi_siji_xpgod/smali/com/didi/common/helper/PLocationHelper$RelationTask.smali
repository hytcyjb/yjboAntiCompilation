.class Lcom/didi/common/helper/PLocationHelper$RelationTask;
.super Ljava/lang/Object;
.source "PLocationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PLocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationTask"
.end annotation


# static fields
.field public static final TYPE_CREATE:I = 0x1

.field public static final TYPE_DELETE:I = 0x0

.field private static final sErrorTimeOut:I = 0x67


# instance fields
.field private mFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mOrderId:Ljava/lang/String;

.field private mPContext:Lcom/didi/common/helper/PLocationHelper;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/didi/common/helper/PLocationHelper;Ljava/lang/String;I)V
    .locals 0
    .parameter "pContext"
    .parameter "orderId"
    .parameter "type"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mOrderId:Ljava/lang/String;

    .line 174
    iput p3, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mType:I

    .line 175
    iput-object p1, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mPContext:Lcom/didi/common/helper/PLocationHelper;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/helper/PLocationHelper$RelationTask;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/helper/PLocationHelper$RelationTask;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/helper/PLocationHelper$RelationTask;)Lcom/didi/common/helper/PLocationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mPContext:Lcom/didi/common/helper/PLocationHelper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x1

    iget v1, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mType:I

    if-ne v0, v1, :cond_0

    .line 182
    const-string v0, "=========TYPE_CREATE_RELATION run----------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mOrderId:Ljava/lang/String;

    iget v1, p0, Lcom/didi/common/helper/PLocationHelper$RelationTask;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/didi/common/helper/PLocationHelper$RelationTask$1;

    invoke-direct {v2, p0}, Lcom/didi/common/helper/PLocationHelper$RelationTask$1;-><init>(Lcom/didi/common/helper/PLocationHelper$RelationTask;)V

    invoke-static {v0, v1, v2}, Lcom/didi/taxi/net/TaxiRequest;->updateRelation(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 209
    return-void

    .line 184
    :cond_0
    const-string v0, "=========TYPE_DELETE_RELATION run----------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
