.class final Lcom/didi/car/helper/CarPushHelper$13;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onOrderNewTotalCountReceived(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ftotalCount:Lcom/didi/car/model/CarNewFeeDetail;

.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarNewFeeDetail;Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$13;->val$ftotalCount:Lcom/didi/car/model/CarNewFeeDetail;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$13;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " new totalcount message received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$13;->val$ftotalCount:Lcom/didi/car/model/CarNewFeeDetail;

    invoke-virtual {v1}, Lcom/didi/car/model/CarNewFeeDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$13;->val$l:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$13;->val$ftotalCount:Lcom/didi/car/model/CarNewFeeDetail;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;->onOrderTotalCountReceived(Lcom/didi/car/model/FeeDetail;Z)V

    .line 850
    return-void
.end method
