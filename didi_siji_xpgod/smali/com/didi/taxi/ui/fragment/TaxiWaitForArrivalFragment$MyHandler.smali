.class final Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$MyHandler;
.super Landroid/os/Handler;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyHandler"
.end annotation


# instance fields
.field private sRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 860
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 861
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$MyHandler;->sRef:Ljava/lang/ref/WeakReference;

    .line 862
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, fragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$MyHandler;->sRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    check-cast v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    .line 867
    .restart local v0       #fragment:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
    if-nez v0, :cond_0

    .line 911
    :goto_0
    :pswitch_0
    return-void

    .line 871
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 874
    :pswitch_2
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doOrderStatusUpdate()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$300(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 878
    :pswitch_3
    invoke-virtual {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doEvaluateShow()V

    goto :goto_0

    .line 882
    :pswitch_4
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doSnsConfigGet()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 886
    :pswitch_5
    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    move-result-object v1

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->strMall:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$500(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showDrawerView(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :pswitch_6
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initCountDownAlarm()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 895
    :pswitch_7
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 902
    :pswitch_8
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoveDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$900(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 905
    :pswitch_9
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showSendRedDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 908
    :pswitch_a
    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showShareDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    goto :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
