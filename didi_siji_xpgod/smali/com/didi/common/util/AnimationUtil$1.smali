.class final Lcom/didi/common/util/AnimationUtil$1;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/util/AnimationUtil;->move(Landroid/view/View;IIJLandroid/view/animation/Interpolator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/common/util/AnimationUtil$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/didi/common/util/AnimationUtil$1;->val$left:I

    iput p3, p0, Lcom/didi/common/util/AnimationUtil$1;->val$top:I

    iput p4, p0, Lcom/didi/common/util/AnimationUtil$1;->val$right:I

    iput p5, p0, Lcom/didi/common/util/AnimationUtil$1;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/common/util/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 86
    iget-object v0, p0, Lcom/didi/common/util/AnimationUtil$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/didi/common/util/AnimationUtil$1;->val$left:I

    iget v2, p0, Lcom/didi/common/util/AnimationUtil$1;->val$top:I

    iget v3, p0, Lcom/didi/common/util/AnimationUtil$1;->val$right:I

    iget v4, p0, Lcom/didi/common/util/AnimationUtil$1;->val$bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 87
    iget-object v0, p0, Lcom/didi/common/util/AnimationUtil$1;->val$view:Landroid/view/View;

    const v1, 0x7f08001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    return-void
.end method
