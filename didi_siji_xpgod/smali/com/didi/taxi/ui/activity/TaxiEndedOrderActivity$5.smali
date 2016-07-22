.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;
.super Lthread/Job;
.source "TaxiEndedOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->refreshIMUnreadInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curSession:Lcom/didi/im/model/IMSession;

.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->curSession:Lcom/didi/im/model/IMSession;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->access$200(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)Lcom/didi/frame/endorder/EndedOrderView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->curSession:Lcom/didi/im/model/IMSession;

    invoke-virtual {v1}, Lcom/didi/im/model/IMSession;->getUnreadCnt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/endorder/EndedOrderView;->setIMUnRead(I)V

    .line 323
    :cond_0
    return-void
.end method

.method protected run()V
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->access$100(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getSid()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, sid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-static {v0}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->curSession:Lcom/didi/im/model/IMSession;

    .line 317
    :cond_0
    return-void
.end method
