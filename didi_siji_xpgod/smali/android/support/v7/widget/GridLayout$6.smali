.class final Landroid/support/v7/widget/GridLayout$6;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2579
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;I)I
    .locals 2
    .parameter "view"
    .parameter "viewSize"

    .prologue
    .line 2587
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2588
    .local v0, baseline:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x8000

    .end local v0           #baseline:I
    :cond_0
    return v0
.end method

.method public getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
    .locals 1

    .prologue
    .line 2593
    new-instance v0, Landroid/support/v7/widget/GridLayout$6$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/GridLayout$6$1;-><init>(Landroid/support/v7/widget/GridLayout$6;)V

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    .line 2582
    const/4 v0, 0x0

    return v0
.end method
