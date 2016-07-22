.class Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;
.super Ljava/lang/Object;
.source "TaxiComplaintActivity.java"

# interfaces
.implements Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->showReConfirmDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$100(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V

    .line 132
    return-void
.end method

.method public onReasonCheck()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintViewHelper;->getReasonNumber()I

    move-result v0

    .line 104
    .local v0, number:I
    packed-switch v0, :pswitch_data_0

    .line 124
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/4 v2, 0x0

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    .line 127
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/16 v2, 0x15

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/16 v2, 0x16

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/16 v2, 0x17

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    goto :goto_0

    .line 115
    :pswitch_3
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/16 v2, 0x18

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    goto :goto_0

    .line 118
    :pswitch_4
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/16 v2, 0x19

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    goto :goto_0

    .line 121
    :pswitch_5
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    const/16 v2, 0x64

    #setter for: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->mType:I
    invoke-static {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$002(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;I)I

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
