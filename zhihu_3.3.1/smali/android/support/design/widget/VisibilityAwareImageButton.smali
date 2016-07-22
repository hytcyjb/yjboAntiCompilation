.class Landroid/support/design/widget/VisibilityAwareImageButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "VisibilityAwareImageButton.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->a:I

    .line 39
    return-void
.end method


# virtual methods
.method final a(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->setVisibility(I)V

    .line 48
    if-eqz p2, :cond_0

    .line 49
    iput p1, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->a:I

    .line 51
    :cond_0
    return-void
.end method

.method final getUserSetVisibility()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->a:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    .line 44
    return-void
.end method
