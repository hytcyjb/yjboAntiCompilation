.class public Lcom/didi/common/ui/component/FiveStar;
.super Landroid/widget/LinearLayout;
.source "FiveStar.java"


# instance fields
.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const v0, 0x7f0300a5

    invoke-static {p1, v0, p0}, Lcom/didi/common/ui/component/FiveStar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    const v0, 0x7f080394

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/FiveStar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/didi/common/ui/component/FiveStar;->mParent:Landroid/view/ViewGroup;

    .line 19
    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x5

    .line 22
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 23
    :cond_0
    if-le p1, v2, :cond_1

    move p1, v2

    .line 25
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 26
    iget-object v3, p0, Lcom/didi/common/ui/component/FiveStar;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 27
    .local v1, im:Landroid/widget/ImageView;
    if-ge v0, p1, :cond_2

    .line 28
    const v3, 0x7f0200ee

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_2
    const v3, 0x7f0200ec

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 33
    .end local v1           #im:Landroid/widget/ImageView;
    :cond_3
    return-void
.end method
