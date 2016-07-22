.class abstract Landroid/support/v7/widget/ViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewGroup.java"


# static fields
.field protected static final MEASURED_STATE_MASK:I = -0x1000000

.field protected static final MEASURED_STATE_TOO_SMALL:I = 0x1000000


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method protected static isLayoutRtl(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 5
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 56
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 57
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 77
    :goto_0
    return v3

    .line 59
    :cond_0
    move v0, p0

    .line 60
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 61
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 62
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 77
    :goto_1
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    goto :goto_0

    .line 64
    :sswitch_0
    move v0, p0

    .line 65
    goto :goto_1

    .line 67
    :sswitch_1
    if-ge v2, p0, :cond_1

    .line 68
    const/high16 v3, 0x100

    or-int v0, v2, v3

    goto :goto_1

    .line 70
    :cond_1
    move v0, p0

    .line 72
    goto :goto_1

    .line 74
    :sswitch_2
    move v0, v2

    goto :goto_1

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method
