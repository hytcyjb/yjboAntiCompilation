.class final Lcom/didi/im/helper/IMPushHelper$7;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->access$400()Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;->onIMUnreadTotalChanged()V

    .line 516
    return-void
.end method
