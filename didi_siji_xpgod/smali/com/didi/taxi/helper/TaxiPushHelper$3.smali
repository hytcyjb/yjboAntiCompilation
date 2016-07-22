.class final Lcom/didi/taxi/helper/TaxiPushHelper$3;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->registerTimelyRemindListener(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$3;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

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
    .line 209
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$3;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

    #calls: Lcom/didi/taxi/helper/TaxiPushHelper;->onTimelyRemindReceived(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;[B)V
    invoke-static {v0, p3}, Lcom/didi/taxi/helper/TaxiPushHelper;->access$000(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;[B)V

    .line 210
    return-void
.end method
