.class Lcom/didi/frame/switcher/SwitcherPanel$4;
.super Ljava/lang/Object;
.source "SwitcherPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherPanel;->triggerSwitch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/switcher/SwitcherPanel;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/SwitcherPanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherPanel$4;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    iput p2, p0, Lcom/didi/frame/switcher/SwitcherPanel$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    iget v1, p0, Lcom/didi/frame/switcher/SwitcherPanel$4;->val$index:I

    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel$4;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    #getter for: Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;
    invoke-static {v2}, Lcom/didi/frame/switcher/SwitcherPanel;->access$100(Lcom/didi/frame/switcher/SwitcherPanel;)Lcom/didi/frame/switcher/SwitcherAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherPanel$4;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    #getter for: Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;
    invoke-static {v1}, Lcom/didi/frame/switcher/SwitcherPanel;->access$100(Lcom/didi/frame/switcher/SwitcherPanel;)Lcom/didi/frame/switcher/SwitcherAdapter;

    move-result-object v1

    iget v2, p0, Lcom/didi/frame/switcher/SwitcherPanel$4;->val$index:I

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherAdapter;->getBusiness(I)Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 325
    .local v0, business:Lcom/didi/frame/business/Business;
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method
