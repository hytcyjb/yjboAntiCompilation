.class Lcom/didi/common/ui/component/FlipperView$2;
.super Lcom/didi/common/ui/component/FlipperView$BaseAnimationListener;
.source "FlipperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/FlipperView;->setOutAnimation(Landroid/view/animation/Animation;)V
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
    .line 85
    iput-object p1, p0, Lcom/didi/common/ui/component/FlipperView$2;->this$0:Lcom/didi/common/ui/component/FlipperView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/FlipperView$BaseAnimationListener;-><init>(Lcom/didi/common/ui/component/FlipperView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 89
    new-instance v0, Lcom/didi/common/ui/component/FlipperView$2$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/FlipperView$2$1;-><init>(Lcom/didi/common/ui/component/FlipperView$2;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void
.end method
