.class Lcom/didi/beatles/ui/component/BtsTimePicker$2;
.super Ljava/lang/Object;
.source "BtsTimePicker.java"

# interfaces
.implements Lcom/example/scroll/ScrollableView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/component/BtsTimePicker;->createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$2;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$2;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/ui/component/BtsTimePicker;->onSelected(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$2;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsTimePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->access$100(Lcom/didi/beatles/ui/component/BtsTimePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker$2;->this$0:Lcom/didi/beatles/ui/component/BtsTimePicker;

    #getter for: Lcom/didi/beatles/ui/component/BtsTimePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->access$100(Lcom/didi/beatles/ui/component/BtsTimePicker;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    return-void
.end method
