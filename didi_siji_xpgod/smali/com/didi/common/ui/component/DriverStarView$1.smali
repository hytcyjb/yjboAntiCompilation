.class Lcom/didi/common/ui/component/DriverStarView$1;
.super Ljava/lang/Object;
.source "DriverStarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/DriverStarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/DriverStarView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/DriverStarView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 77
    :pswitch_0
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    const/4 v2, 0x0

    #setter for: Lcom/didi/common/ui/component/DriverStarView;->isMove:Z
    invoke-static {v1, v2}, Lcom/didi/common/ui/component/DriverStarView;->access$002(Lcom/didi/common/ui/component/DriverStarView;Z)Z

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    #setter for: Lcom/didi/common/ui/component/DriverStarView;->isMove:Z
    invoke-static {v1, v3}, Lcom/didi/common/ui/component/DriverStarView;->access$002(Lcom/didi/common/ui/component/DriverStarView;Z)Z

    .line 81
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    #calls: Lcom/didi/common/ui/component/DriverStarView;->setSelect(F)I
    invoke-static {v1, v2}, Lcom/didi/common/ui/component/DriverStarView;->access$100(Lcom/didi/common/ui/component/DriverStarView;F)I

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    #getter for: Lcom/didi/common/ui/component/DriverStarView;->isMove:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/DriverStarView;->access$000(Lcom/didi/common/ui/component/DriverStarView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 86
    .local v0, upX:F
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    #calls: Lcom/didi/common/ui/component/DriverStarView;->setSelect(F)I
    invoke-static {v1, v0}, Lcom/didi/common/ui/component/DriverStarView;->access$100(Lcom/didi/common/ui/component/DriverStarView;F)I

    .line 89
    .end local v0           #upX:F
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    #getter for: Lcom/didi/common/ui/component/DriverStarView;->mLevel:I
    invoke-static {v1}, Lcom/didi/common/ui/component/DriverStarView;->access$200(Lcom/didi/common/ui/component/DriverStarView;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView$1;->this$0:Lcom/didi/common/ui/component/DriverStarView;

    #getter for: Lcom/didi/common/ui/component/DriverStarView;->mListener:Lcom/didi/common/ui/component/DriverStarView$StarListener;
    invoke-static {v1}, Lcom/didi/common/ui/component/DriverStarView;->access$300(Lcom/didi/common/ui/component/DriverStarView;)Lcom/didi/common/ui/component/DriverStarView$StarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/common/ui/component/DriverStarView$StarListener;->onTouchListener()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
