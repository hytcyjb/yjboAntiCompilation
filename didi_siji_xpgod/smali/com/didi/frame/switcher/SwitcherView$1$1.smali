.class Lcom/didi/frame/switcher/SwitcherView$1$1;
.super Ljava/lang/Object;
.source "SwitcherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherView$1;->onChange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/switcher/SwitcherView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/SwitcherView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherView$1$1;->this$1:Lcom/didi/frame/switcher/SwitcherView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherView$1$1;->this$1:Lcom/didi/frame/switcher/SwitcherView$1;

    iget-object v0, v0, Lcom/didi/frame/switcher/SwitcherView$1;->this$0:Lcom/didi/frame/switcher/SwitcherView;

    #getter for: Lcom/didi/frame/switcher/SwitcherView;->mSwitcherPanel:Lcom/didi/frame/switcher/SwitcherPanel;
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherView;->access$100(Lcom/didi/frame/switcher/SwitcherView;)Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->notifyChanged()V

    .line 164
    return-void
.end method
