.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$20;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->back()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$20;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1724
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$23;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1741
    :goto_0
    return-void

    .line 1726
    :pswitch_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showTaxiRealtimeFragment()V

    goto :goto_0

    .line 1729
    :pswitch_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showCarRealtimeFragment()V

    goto :goto_0

    .line 1732
    :pswitch_2
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showBtsRealtimeFragment()V

    goto :goto_0

    .line 1735
    :pswitch_3
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showFlierRealtimeFragment()V

    goto :goto_0

    .line 1738
    :pswitch_4
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showDDriveRealtimeFragment()V

    goto :goto_0

    .line 1724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
