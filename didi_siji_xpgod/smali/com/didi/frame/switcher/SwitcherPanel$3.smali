.class Lcom/didi/frame/switcher/SwitcherPanel$3;
.super Ljava/lang/Object;
.source "SwitcherPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherPanel;->switchTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/switcher/SwitcherPanel;


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/SwitcherPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherPanel$3;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel$3;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    const/4 v1, 0x0

    #setter for: Lcom/didi/frame/switcher/SwitcherPanel;->switching:Z
    invoke-static {v0, v1}, Lcom/didi/frame/switcher/SwitcherPanel;->access$002(Lcom/didi/frame/switcher/SwitcherPanel;Z)Z

    .line 268
    return-void
.end method
