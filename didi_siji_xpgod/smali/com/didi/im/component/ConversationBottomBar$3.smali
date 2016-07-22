.class Lcom/didi/im/component/ConversationBottomBar$3;
.super Ljava/lang/Object;
.source "ConversationBottomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/component/ConversationBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/component/ConversationBottomBar;


# direct methods
.method constructor <init>(Lcom/didi/im/component/ConversationBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 184
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$000(Lcom/didi/im/component/ConversationBottomBar;)Lx/TextView;

    move-result-object v1

    const v2, 0x7f0b0393

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$000(Lcom/didi/im/component/ConversationBottomBar;)Lx/TextView;

    move-result-object v1

    const v2, 0x7f0201e6

    invoke-virtual {v1, v2}, Lx/TextView;->setBackgroundResource(I)V

    .line 152
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;->onAudioRecordStart()V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 156
    .local v0, nowY:F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;->onSlideUpwards()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;->onSlideBack()V

    goto :goto_0

    .line 163
    .end local v0           #nowY:F
    :pswitch_2
    new-instance v1, Lcom/didi/im/component/ConversationBottomBar$3$1;

    invoke-direct {v1, p0}, Lcom/didi/im/component/ConversationBottomBar$3$1;-><init>(Lcom/didi/im/component/ConversationBottomBar$3;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 173
    .restart local v0       #nowY:F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;->onAudioRecordCancel()V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;->onAudioRecordEnd()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
