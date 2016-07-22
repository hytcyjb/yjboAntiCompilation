.class final Lcom/didi/im/helper/IMPushHelper$4;
.super Ljava/lang/Object;
.source "IMPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/helper/IMPushHelper;->registerIMNotificationMessageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 0
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 399
    invoke-static {p3}, Lcom/didi/im/helper/IMPushHelper;->onIMUnreadReceived([B)V

    .line 400
    return-void
.end method
