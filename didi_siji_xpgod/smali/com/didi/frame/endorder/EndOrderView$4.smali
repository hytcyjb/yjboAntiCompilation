.class Lcom/didi/frame/endorder/EndOrderView$4;
.super Ljava/lang/Object;
.source "EndOrderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/endorder/EndOrderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/endorder/EndOrderView;


# direct methods
.method constructor <init>(Lcom/didi/frame/endorder/EndOrderView;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView$4;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$4;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$800(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndOrderView$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/endorder/EndOrderView$ViewListener;->onConfirm()V

    .line 199
    return-void
.end method
