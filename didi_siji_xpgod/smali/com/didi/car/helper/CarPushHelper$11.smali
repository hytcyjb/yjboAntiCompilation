.class final Lcom/didi/car/helper/CarPushHelper$11;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerOrderTotalCount(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$11;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;

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
    .line 725
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$11;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onOrderTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$400(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;[B)V

    .line 726
    return-void
.end method
