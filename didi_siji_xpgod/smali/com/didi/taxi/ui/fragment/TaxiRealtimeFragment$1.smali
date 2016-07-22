.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;
.super Landroid/os/Handler;
.source "TaxiRealtimeFragment.java"


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
    .line 104
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isSupportVoice:Z
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v2, v2, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalListener:Lcom/didi/common/model/ExternalData$ExternalListener;

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/Utils;->dispatchBiz(Lcom/didi/common/model/ExternalData;ZLcom/didi/common/model/ExternalData$ExternalListener;)Z

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
