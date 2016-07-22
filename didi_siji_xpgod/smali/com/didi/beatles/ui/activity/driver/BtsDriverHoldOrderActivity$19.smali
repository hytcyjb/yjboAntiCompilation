.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$19;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$19;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1965
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$19;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1975
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$19;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showStriveConfirm()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 1976
    return-void

    .line 1967
    :pswitch_0
    const-string v0, "pbdmatchdetailrob_sw"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1970
    :pswitch_1
    const-string v0, "pbdnearbydetailrob_sw"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
