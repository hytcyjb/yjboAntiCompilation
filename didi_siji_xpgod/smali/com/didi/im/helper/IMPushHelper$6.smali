.class final Lcom/didi/im/helper/IMPushHelper$6;
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
.field final synthetic val$funreadCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput p1, p0, Lcom/didi/im/helper/IMPushHelper$6;->val$funreadCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->access$300()Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->access$300()Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/helper/IMPushHelper$6;->val$funreadCount:I

    invoke-interface {v0, v1}, Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;->onIMUnreadCountChanged(I)V

    .line 503
    :cond_0
    return-void
.end method
