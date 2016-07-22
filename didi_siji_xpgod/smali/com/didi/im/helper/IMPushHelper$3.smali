.class final Lcom/didi/im/helper/IMPushHelper$3;
.super Ljava/lang/Object;
.source "IMPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/helper/IMPushHelper;->onFetchedMessageReceived(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;

.field final synthetic val$maxmid:J

.field final synthetic val$messages:Ljava/util/List;

.field final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;ILjava/util/List;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$l:Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;

    iput p2, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$res:I

    iput-object p3, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$messages:Ljava/util/List;

    iput-wide p4, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$maxmid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 319
    iget-object v1, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$l:Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;

    iget v0, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$res:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$messages:Ljava/util/List;

    iget-wide v3, p0, Lcom/didi/im/helper/IMPushHelper$3;->val$maxmid:J

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/didi/im/helper/IMPushHelper$FetchedMesssageListener;->onFetchedMessageReceived(ZLjava/util/List;J)V

    .line 320
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
