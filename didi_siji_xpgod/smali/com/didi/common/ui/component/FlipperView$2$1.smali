.class Lcom/didi/common/ui/component/FlipperView$2$1;
.super Ljava/lang/Object;
.source "FlipperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/FlipperView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/component/FlipperView$2;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/FlipperView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/common/ui/component/FlipperView$2$1;->this$1:Lcom/didi/common/ui/component/FlipperView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/common/ui/component/FlipperView$2$1;->this$1:Lcom/didi/common/ui/component/FlipperView$2;

    iget-object v0, v0, Lcom/didi/common/ui/component/FlipperView$2;->this$0:Lcom/didi/common/ui/component/FlipperView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/FlipperView;->onSlideOut()V

    .line 94
    return-void
.end method
