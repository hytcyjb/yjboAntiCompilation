.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/MainActivity$CallFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedirect(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v1, 0x1

    .line 745
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v2, v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1102(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)Lcom/didi/taxi/model/TaxiOrder;

    .line 746
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v0

    sget-object v2, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v2}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 747
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record.amr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->voicePath:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1202(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/ExternalData;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v2, v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$002(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/common/model/ExternalData;)Lcom/didi/common/model/ExternalData;

    .line 750
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCreateOrderStyle()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isSupportVoice:Z
    invoke-static {v2, v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$102(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Z)Z

    .line 751
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isSupportVoice:Z
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/didi/common/model/ExternalData;->isSupprotVoice:Z

    .line 752
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setSource(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1300(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 757
    return-void

    :cond_0
    move v0, v1

    .line 750
    goto :goto_0
.end method
