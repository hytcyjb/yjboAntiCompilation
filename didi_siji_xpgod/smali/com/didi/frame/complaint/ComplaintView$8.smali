.class Lcom/didi/frame/complaint/ComplaintView$8;
.super Ljava/lang/Object;
.source "ComplaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/complaint/ComplaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/complaint/ComplaintView;


# direct methods
.method constructor <init>(Lcom/didi/frame/complaint/ComplaintView;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/didi/frame/complaint/ComplaintView$8;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$8;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #calls: Lcom/didi/frame/complaint/ComplaintView;->resetInputLayout()V
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$500(Lcom/didi/frame/complaint/ComplaintView;)V

    .line 287
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$8;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->hideInputMethod()V

    .line 288
    return-void
.end method
