.class Lcom/didi/frame/switcher/SwitcherPanel$1;
.super Ljava/lang/Object;
.source "SwitcherPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherPanel;->init()V
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
    .line 120
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherPanel$1;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel$1;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/switcher/SwitcherPanel;->select(Lcom/didi/frame/business/Business;)V

    .line 125
    return-void
.end method
