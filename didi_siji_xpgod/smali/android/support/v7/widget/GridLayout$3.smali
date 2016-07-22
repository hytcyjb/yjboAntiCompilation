.class final Landroid/support/v7/widget/GridLayout$3;
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
    .line 2493
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;I)I
    .locals 0
    .parameter "view"
    .parameter "viewSize"

    .prologue
    .line 2501
    return p2
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 0
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    .line 2496
    return p2
.end method
