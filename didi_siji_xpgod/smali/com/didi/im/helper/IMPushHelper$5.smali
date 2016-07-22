.class final Lcom/didi/im/helper/IMPushHelper$5;
.super Ljava/lang/Object;
.source "IMPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/helper/IMPushHelper;->onIMUnreadReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fCurMaxMid:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-wide p1, p0, Lcom/didi/im/helper/IMPushHelper$5;->val$fCurMaxMid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 467
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->access$200()Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/im/helper/IMPushHelper$5;->val$fCurMaxMid:J

    invoke-interface {v0, v1, v2}, Lcom/didi/im/helper/IMPushHelper$IMUnreadListener;->onIMUnreadReceived(J)V

    .line 468
    return-void
.end method
