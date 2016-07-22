.class Lcom/didi/common/ui/fragment/MenuFragment$11;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$11;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08047a

    if-ne v0, v1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$11;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->onTouchFoodSubMenuStyle(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v0, p1, p2}, Lcom/didi/common/ui/fragment/MenuFragment;->access$900(Lcom/didi/common/ui/fragment/MenuFragment;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 609
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080477

    if-ne v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$11;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->onTouchGameSubMenuStyle(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v0, p1, p2}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1000(Lcom/didi/common/ui/fragment/MenuFragment;Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
