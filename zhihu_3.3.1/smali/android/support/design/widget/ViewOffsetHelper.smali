.class Landroid/support/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    .line 43
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Landroid/support/v4/view/ah;->p(Landroid/view/View;)F

    move-result v0

    .line 70
    const/high16 v1, 0x3f80

    add-float/2addr v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    .line 71
    invoke-static {p0, v0}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    .line 72
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->d:I

    iget-object v2, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->e(Landroid/view/View;I)V

    .line 56
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->e:I

    iget-object v2, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->f(Landroid/view/View;I)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/ViewOffsetHelper;->a(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 62
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/ViewOffsetHelper;->a(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->b:I

    .line 48
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->c:I

    .line 51
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->c()V

    .line 52
    return-void
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->d:I

    if-eq v0, p1, :cond_0

    .line 82
    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->d:I

    .line 83
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->c()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->d:I

    return v0
.end method

.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->e:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->e:I

    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->c()V

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
