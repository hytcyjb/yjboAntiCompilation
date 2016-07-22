.class final Lcom/didi/car/helper/CarPushHelper$19;
.super Ljava/lang/Object;
.source "CarPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarPushHelper;->registerTimelyRemindListener(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/didi/car/helper/CarPushHelper$19;->val$l:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

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
    .line 1183
    iget-object v0, p0, Lcom/didi/car/helper/CarPushHelper$19;->val$l:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

    #calls: Lcom/didi/car/helper/CarPushHelper;->onTimelyRemindReceived(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/car/helper/CarPushHelper;->access$600(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;[B)V

    .line 1184
    return-void
.end method
