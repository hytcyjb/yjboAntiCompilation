.class public Lcom/didi/common/ui/component/MyProgressBar;
.super Landroid/widget/RelativeLayout;
.source "MyProgressBar.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "contex"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/component/MyProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f0300d3

    invoke-static {p1, v0, p0}, Lcom/didi/common/ui/component/MyProgressBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/MyProgressBar;->setClickable(Z)V

    .line 24
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/MyProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/common/ui/component/MyProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 25
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/didi/common/ui/component/MyProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 31
    return-void
.end method
