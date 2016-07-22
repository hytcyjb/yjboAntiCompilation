.class Lcom/example/timepicker/TimePicker$2;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/example/scroll/ScrollableView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/timepicker/TimePicker;->createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/timepicker/TimePicker;


# direct methods
.method constructor <init>(Lcom/example/timepicker/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/example/timepicker/TimePicker$2;->this$0:Lcom/example/timepicker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/example/timepicker/TimePicker$2;->this$0:Lcom/example/timepicker/TimePicker;

    invoke-virtual {v0, p1}, Lcom/example/timepicker/TimePicker;->onSelected(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/example/timepicker/TimePicker$2;->this$0:Lcom/example/timepicker/TimePicker;

    #getter for: Lcom/example/timepicker/TimePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/example/timepicker/TimePicker;->access$100(Lcom/example/timepicker/TimePicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcom/example/timepicker/TimePicker$2;->this$0:Lcom/example/timepicker/TimePicker;

    #getter for: Lcom/example/timepicker/TimePicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/example/timepicker/TimePicker;->access$100(Lcom/example/timepicker/TimePicker;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method
