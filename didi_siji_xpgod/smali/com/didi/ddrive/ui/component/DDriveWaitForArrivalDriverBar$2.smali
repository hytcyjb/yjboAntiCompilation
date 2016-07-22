.class Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "DDriveWaitForArrivalDriverBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submit()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 273
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->access$100(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->access$200(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->access$300(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->communicateService(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dgxtelptkf_ck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    return-void

    .line 274
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
