.class Lcom/didi/im/activity/ConversationActivity$1;
.super Landroid/os/Handler;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/activity/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->recordState:I
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$000(Lcom/didi/im/activity/ConversationActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/AudioRecordDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$100(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;

    move-result-object v0

    invoke-static {}, Lcom/didi/im/helper/IMChatHelper;->getAudioAmpLitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/AudioRecordDialog;->changeBackGroundBySound(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->recordState:I
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$000(Lcom/didi/im/activity/ConversationActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #setter for: Lcom/didi/im/activity/ConversationActivity;->recordState:I
    invoke-static {v0, v1}, Lcom/didi/im/activity/ConversationActivity;->access$002(Lcom/didi/im/activity/ConversationActivity;I)I

    .line 138
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #calls: Lcom/didi/im/activity/ConversationActivity;->dismissAudioRecordDialog()V
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$300(Lcom/didi/im/activity/ConversationActivity;)V

    .line 139
    const v0, 0x7f0b0398

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 140
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #calls: Lcom/didi/im/activity/ConversationActivity;->stopRecordAndSendMessage(Z)V
    invoke-static {v0, v1}, Lcom/didi/im/activity/ConversationActivity;->access$400(Lcom/didi/im/activity/ConversationActivity;Z)V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$500(Lcom/didi/im/activity/ConversationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 147
    :pswitch_4
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$1;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$500(Lcom/didi/im/activity/ConversationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
