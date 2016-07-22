.class final Lcom/didi/taxi/helper/TaxiPushHelper$8;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onPaySucceed(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$freq:Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$8;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$8;->val$freq:Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$8;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;

    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$8;->val$freq:Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

    iget-object v0, v0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;->is_vip:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;->onDriverPayReceived(Z)V

    .line 408
    return-void
.end method
