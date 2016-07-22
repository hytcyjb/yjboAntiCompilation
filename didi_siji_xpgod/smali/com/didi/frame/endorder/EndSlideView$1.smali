.class Lcom/didi/frame/endorder/EndSlideView$1;
.super Ljava/lang/Object;
.source "EndSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/endorder/EndSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/endorder/EndSlideView;


# direct methods
.method constructor <init>(Lcom/didi/frame/endorder/EndSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/frame/endorder/EndSlideView$1;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$1;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->isEditShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$1;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    #getter for: Lcom/didi/frame/endorder/EndSlideView;->mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndSlideView;->access$000(Lcom/didi/frame/endorder/EndSlideView;)Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/endorder/EndSlideView$TitleListener;->onHideAnimate()V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$1;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    #getter for: Lcom/didi/frame/endorder/EndSlideView;->mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndSlideView;->access$000(Lcom/didi/frame/endorder/EndSlideView;)Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/endorder/EndSlideView$TitleListener;->onShowAnimate()V

    goto :goto_0
.end method
