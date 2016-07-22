.class final Lcom/didi/car/helper/CarPushHelper$5;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerCommonMesssageListener(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$5;->val$l:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 1
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$5;->val$l:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onCommonMessageReceived(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$100(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;[B)V

    .line 437
    return-void
.end method
