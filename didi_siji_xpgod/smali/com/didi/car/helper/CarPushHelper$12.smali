.class final Lcom/didi/car/helper/CarPushHelper$12;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerOrderNewTotalCount(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$12;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

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
    .line 736
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$12;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onOrderNewTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$500(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;[B)V

    .line 737
    return-void
.end method
