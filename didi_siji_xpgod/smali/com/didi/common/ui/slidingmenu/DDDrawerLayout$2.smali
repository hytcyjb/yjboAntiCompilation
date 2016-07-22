.class Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;
.super Ljava/lang/Object;
.source "DDDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 59
    iput-object p1, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    #getter for: Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isOpen:Z
    invoke-static {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->access$100(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    invoke-virtual {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->clearAnimation()V

    .line 65
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;->this$0:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    new-instance v1, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2$1;-><init>(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
