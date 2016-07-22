.class final Lcom/didi/taxi/helper/TaxiPushHelper$4;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onTimelyRemindReceived(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ftaxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$4;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$4;->val$ftaxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$4;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$4;->val$ftaxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

    invoke-interface {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;->onTimelyRemindReceived(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    .line 244
    return-void
.end method
