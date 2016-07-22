.class Lcom/didi/beatles/im/BtsConversationActivity$1;
.super Landroid/os/Handler;
.source "BtsConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$000(Lcom/didi/beatles/im/BtsConversationActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$100(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$100(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/AudioRecordDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mAudioRecordDialog:Lcom/didi/im/component/AudioRecordDialog;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$100(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/AudioRecordDialog;

    move-result-object v0

    invoke-static {}, Lcom/didi/im/helper/IMChatHelper;->getAudioAmpLitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/AudioRecordDialog;->changeBackGroundBySound(I)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mConversationListView:Lcom/didi/im/component/PullDownRefreshListView;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$200(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/PullDownRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$000(Lcom/didi/beatles/im/BtsConversationActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #setter for: Lcom/didi/beatles/im/BtsConversationActivity;->recordState:I
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$002(Lcom/didi/beatles/im/BtsConversationActivity;I)I

    .line 162
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #calls: Lcom/didi/beatles/im/BtsConversationActivity;->dismissAudioRecordDialog()V
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$300(Lcom/didi/beatles/im/BtsConversationActivity;)V

    .line 163
    const v0, 0x7f0b0398

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 164
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #calls: Lcom/didi/beatles/im/BtsConversationActivity;->stopRecordAndSendMessage(Z)V
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$400(Lcom/didi/beatles/im/BtsConversationActivity;Z)V

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$500(Lcom/didi/beatles/im/BtsConversationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$1;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->shadowLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$500(Lcom/didi/beatles/im/BtsConversationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
