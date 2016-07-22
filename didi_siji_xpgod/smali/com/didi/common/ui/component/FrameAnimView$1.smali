.class Lcom/didi/common/ui/component/FrameAnimView$1;
.super Landroid/os/Handler;
.source "FrameAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/FrameAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/FrameAnimView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/FrameAnimView;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I
    invoke-static {v0}, Lcom/didi/common/ui/component/FrameAnimView;->access$000(Lcom/didi/common/ui/component/FrameAnimView;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I
    invoke-static {v0}, Lcom/didi/common/ui/component/FrameAnimView;->access$000(Lcom/didi/common/ui/component/FrameAnimView;)I

    move-result v0

    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mDrawables:Ljava/util/Vector;
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$100(Lcom/didi/common/ui/component/FrameAnimView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mDrawables:Ljava/util/Vector;
    invoke-static {v0}, Lcom/didi/common/ui/component/FrameAnimView;->access$100(Lcom/didi/common/ui/component/FrameAnimView;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I
    invoke-static {v2}, Lcom/didi/common/ui/component/FrameAnimView;->access$000(Lcom/didi/common/ui/component/FrameAnimView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/didi/common/ui/component/FrameAnimView;->setBackgroundResource(I)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView$1;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    const/16 v1, 0x8

    #calls: Landroid/widget/ImageView;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$201(Lcom/didi/common/ui/component/FrameAnimView;I)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
