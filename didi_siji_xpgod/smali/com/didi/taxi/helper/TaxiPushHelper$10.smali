.class final Lcom/didi/taxi/helper/TaxiPushHelper$10;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onTerminateOrderNoticed([BLcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$10;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$10;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$10;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$10;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;->onTerminateOrderNoticed(Ljava/lang/String;)V

    .line 457
    return-void
.end method
