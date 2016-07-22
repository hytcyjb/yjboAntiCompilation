.class final Lcom/didi/taxi/helper/TaxiPushHelper$9;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->registerTerminateOrderNoticeListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;

.field final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$9;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$9;->val$oid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 2
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$9;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$9;->val$oid:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->onTerminateOrderNoticed([BLcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V

    .line 431
    return-void
.end method
