.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$26;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPaySucceedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$26;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriverPayReceived(Z)V
    .locals 1
    .parameter "canReimburse"

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$26;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onOffLinePaySucceed(Z)V

    .line 2128
    return-void
.end method
