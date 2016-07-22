.class Lcom/didi/common/ui/component/FlipperView$1;
.super Lcom/didi/common/ui/component/FlipperView$BaseAnimationListener;
.source "FlipperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/FlipperView;->setInAnimation(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/FlipperView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/FlipperView;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/common/ui/component/FlipperView$1;->this$0:Lcom/didi/common/ui/component/FlipperView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/FlipperView$BaseAnimationListener;-><init>(Lcom/didi/common/ui/component/FlipperView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/common/ui/component/FlipperView$1;->this$0:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/FlipperView;->onSlideIn()V

    .line 77
    return-void
.end method
