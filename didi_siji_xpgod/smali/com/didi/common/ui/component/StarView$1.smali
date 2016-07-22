.class Lcom/didi/common/ui/component/StarView$1;
.super Ljava/lang/Object;
.source "StarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/StarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/StarView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/StarView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 95
    :cond_1
    return v1

    .line 76
    :pswitch_0
    iget-object v3, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #getter for: Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;
    invoke-static {v3}, Lcom/didi/common/ui/component/StarView;->access$000(Lcom/didi/common/ui/component/StarView;)Lcom/didi/common/ui/component/StarView$StarListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #getter for: Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;
    invoke-static {v3}, Lcom/didi/common/ui/component/StarView;->access$000(Lcom/didi/common/ui/component/StarView;)Lcom/didi/common/ui/component/StarView$StarListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/didi/common/ui/component/StarView$StarListener;->onTouchDownListener()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #setter for: Lcom/didi/common/ui/component/StarView;->isMove:Z
    invoke-static {v3, v1}, Lcom/didi/common/ui/component/StarView;->access$102(Lcom/didi/common/ui/component/StarView;Z)Z

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #setter for: Lcom/didi/common/ui/component/StarView;->isMove:Z
    invoke-static {v1, v2}, Lcom/didi/common/ui/component/StarView;->access$102(Lcom/didi/common/ui/component/StarView;Z)Z

    .line 83
    iget-object v1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #calls: Lcom/didi/common/ui/component/StarView;->setSelect(F)I
    invoke-static {v1, v3}, Lcom/didi/common/ui/component/StarView;->access$200(Lcom/didi/common/ui/component/StarView;F)I

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #getter for: Lcom/didi/common/ui/component/StarView;->isMove:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/StarView;->access$100(Lcom/didi/common/ui/component/StarView;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 88
    .local v0, upX:F
    iget-object v1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #calls: Lcom/didi/common/ui/component/StarView;->setSelect(F)I
    invoke-static {v1, v0}, Lcom/didi/common/ui/component/StarView;->access$200(Lcom/didi/common/ui/component/StarView;F)I

    .line 91
    .end local v0           #upX:F
    :cond_3
    iget-object v1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #getter for: Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;
    invoke-static {v1}, Lcom/didi/common/ui/component/StarView;->access$000(Lcom/didi/common/ui/component/StarView;)Lcom/didi/common/ui/component/StarView$StarListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/didi/common/ui/component/StarView$1;->this$0:Lcom/didi/common/ui/component/StarView;

    #getter for: Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;
    invoke-static {v1}, Lcom/didi/common/ui/component/StarView;->access$000(Lcom/didi/common/ui/component/StarView;)Lcom/didi/common/ui/component/StarView$StarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/common/ui/component/StarView$StarListener;->onTouchUpListener()Z

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
