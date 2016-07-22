.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$11;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
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
    .line 1338
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$11;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessPayReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "redirectUrl"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$11;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->loadWebUrl(Ljava/lang/String;)V

    .line 1343
    return-void
.end method
