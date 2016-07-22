.class Lcom/example/scroll/ScrollableView$1;
.super Landroid/os/Handler;
.source "ScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/scroll/ScrollableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/scroll/ScrollableView;


# direct methods
.method constructor <init>(Lcom/example/scroll/ScrollableView;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/example/scroll/ScrollableView$1;->this$0:Lcom/example/scroll/ScrollableView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/example/scroll/ScrollableView$1;->this$0:Lcom/example/scroll/ScrollableView;

    #calls: Lcom/example/scroll/ScrollableView;->actStep()V
    invoke-static {v0}, Lcom/example/scroll/ScrollableView;->access$000(Lcom/example/scroll/ScrollableView;)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/example/scroll/ScrollableView$1;->this$0:Lcom/example/scroll/ScrollableView;

    #calls: Lcom/example/scroll/ScrollableView;->onScrollEnd()V
    invoke-static {v0}, Lcom/example/scroll/ScrollableView;->access$100(Lcom/example/scroll/ScrollableView;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
