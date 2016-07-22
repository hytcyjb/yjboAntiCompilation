.class final Lcom/didi/taxi/helper/TaxiPushHelper$16;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onBusinessPaySucceed(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$freq:Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$16;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$16;->val$freq:Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$16;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$16;->val$freq:Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

    iget-object v1, v1, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;->redirect_url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;->onBusinessPayReceived(Ljava/lang/String;)V

    .line 714
    return-void
.end method
