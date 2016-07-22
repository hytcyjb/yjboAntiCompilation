.class Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;
.super Ljava/lang/Object;
.source "DDDrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isOpen:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$102(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;Z)Z

    .line 53
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    #getter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;
    invoke-static {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$200(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    #getter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;
    invoke-static {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$200(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;->onDrawerClosed(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isOpen:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$102(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;Z)Z

    .line 45
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    #getter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;
    invoke-static {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$200(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    #getter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;
    invoke-static {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$200(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;->onDrawerOpened(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 40
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDragging:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$002(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;Z)Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDragging:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$002(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;Z)Z

    goto :goto_0
.end method
