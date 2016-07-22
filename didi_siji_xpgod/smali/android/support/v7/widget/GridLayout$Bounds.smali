.class Landroid/support/v7/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2121
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    .line 2122
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/GridLayout$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2115
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;I)I
    .locals 2
    .parameter "c"
    .parameter "alignment"
    .parameter "size"

    .prologue
    .line 2145
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2131
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    .line 2132
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    .line 2133
    return-void
.end method

.method protected final include(Landroid/view/View;Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout;Landroid/support/v7/widget/GridLayout$Axis;)V
    .locals 5
    .parameter "c"
    .parameter "spec"
    .parameter "gridLayout"
    .parameter "axis"

    .prologue
    .line 2149
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayout$Spec;->getFlexibility()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    .line 2150
    iget-boolean v3, p4, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, p1, v3}, Landroid/support/v7/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v2

    .line 2151
    .local v2, size:I
    iget-object v3, p2, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget-boolean v4, p4, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, v3, v4}, Landroid/support/v7/widget/GridLayout;->getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    .line 2153
    .local v0, alignment:Landroid/support/v7/widget/GridLayout$Alignment;
    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    .line 2154
    .local v1, before:I
    sub-int v3, v2, v1

    invoke-virtual {p0, v1, v3}, Landroid/support/v7/widget/GridLayout$Bounds;->include(II)V

    .line 2155
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 2125
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    .line 2126
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    .line 2127
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    .line 2128
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .parameter "min"

    .prologue
    .line 2136
    if-nez p1, :cond_0

    .line 2137
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    const v0, 0x186a0

    .line 2141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
