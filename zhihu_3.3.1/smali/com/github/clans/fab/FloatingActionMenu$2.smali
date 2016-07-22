.class Lcom/github/clans/fab/FloatingActionMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->d:Lcom/github/clans/fab/FloatingActionMenu;

    iput p2, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->a:I

    iput p3, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->b:I

    iput p4, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->d:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->a:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->b:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu$2;->c:I

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setBackgroundColor(I)V

    .line 221
    return-void
.end method
