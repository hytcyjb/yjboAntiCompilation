.class Landroid/support/v7/widget/GridLayout$6$1;
.super Landroid/support/v7/widget/GridLayout$Bounds;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/GridLayout$6;->getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Landroid/support/v7/widget/GridLayout$6;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayout$6;)V
    .locals 1
    .parameter

    .prologue
    .line 2593
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$6$1;->this$0:Landroid/support/v7/widget/GridLayout$6;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Bounds;-><init>(Landroid/support/v7/widget/GridLayout$1;)V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;I)I
    .locals 2
    .parameter "c"
    .parameter "alignment"
    .parameter "size"

    .prologue
    .line 2621
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected include(II)V
    .locals 2
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2610
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$Bounds;->include(II)V

    .line 2611
    iget v0, p0, Landroid/support/v7/widget/GridLayout$6$1;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$6$1;->size:I

    .line 2612
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 2604
    invoke-super {p0}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    .line 2605
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$6$1;->size:I

    .line 2606
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .parameter "min"

    .prologue
    .line 2616
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$6$1;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
