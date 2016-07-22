.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;
.super Ljava/lang/Object;
.source "TaxiRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/model/ExternalData$ExternalListener;


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
    .line 759
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 6

    .prologue
    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------------external data  confirm--------:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->voicePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " evice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->voicePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 786
    .local v0, isOk:Z
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->voicePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v4}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/common/model/ExternalData;->voiceTime:J

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onVoice(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V

    .line 787
    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->deleAll(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1500(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Ljava/lang/String;)V

    .line 790
    :cond_0
    return-void
.end method

.method public error()V
    .locals 1

    .prologue
    .line 779
    const-string v0, "---------------------external data  error--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public goCommpany()V
    .locals 2

    .prologue
    .line 767
    const-string v0, "---------------------external data  Commpany--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onCompany(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$800(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 769
    return-void
.end method

.method public goHome()V
    .locals 2

    .prologue
    .line 773
    const-string v0, "---------------------external data  gohome--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onHome(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$700(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 775
    return-void
.end method

.method public goLogin()V
    .locals 1

    .prologue
    .line 806
    const-string v0, "---------------------external data  goLogin--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment()V

    .line 808
    return-void
.end method

.method public goMainPage()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setRealtimeCallView(Lcom/didi/common/model/ExternalData;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$1400(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/common/model/ExternalData;)V

    .line 763
    return-void
.end method

.method public log()V
    .locals 2

    .prologue
    .line 794
    const-string v0, "---------------------external data  log--------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 796
    const-string v0, "---extend---data is null--"

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 802
    :goto_0
    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---extend--lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->localLng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->localLat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
