.class final Lcom/didi/car/helper/CarPushHelper$20;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->onTimelyRemindReceived(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fcarServiceMsg:Lcom/didi/car/model/CarServiceMessage;

.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarServiceMessage;Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$20;->val$fcarServiceMsg:Lcom/didi/car/model/CarServiceMessage;

    iput-object p2, p0, Lcom/didi/car/helper/CarPushHelper$20;->val$l:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------push message--------- \n onTimelyRemindReceived result received: fcarServiceMsg->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$20;->val$fcarServiceMsg:Lcom/didi/car/model/CarServiceMessage;

    invoke-virtual {v1}, Lcom/didi/car/model/CarServiceMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$20;->val$l:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

    iget-object v1, p0, Lcom/didi/car/helper/CarPushHelper$20;->val$fcarServiceMsg:Lcom/didi/car/model/CarServiceMessage;

    invoke-interface {v0, v1}, Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;->onTimelyRemindReceived(Lcom/didi/car/model/CarServiceMessage;)V

    .line 1218
    return-void
.end method
