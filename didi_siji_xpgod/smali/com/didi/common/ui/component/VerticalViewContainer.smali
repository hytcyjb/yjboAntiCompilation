.class public Lcom/didi/common/ui/component/VerticalViewContainer;
.super Landroid/widget/LinearLayout;
.source "VerticalViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;
    }
.end annotation


# instance fields
.field private mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->init()V

    .line 26
    return-void
.end method

.method private generateDivider()Landroid/widget/ImageView;
    .locals 5

    .prologue
    .line 60
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, dividerView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 62
    .local v1, height:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v2, layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 65
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/VerticalViewContainer;->setOrientation(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public appendView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "positionTag"

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    const v0, 0x7f0201c1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->generateDivider()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/VerticalViewContainer;->addView(Landroid/view/View;)V

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/VerticalViewContainer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getChildByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "positionTag"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildCount()I

    move-result v2

    .line 77
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 78
    invoke-virtual {p0, v3}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, child:Landroid/view/View;
    const v4, 0x7f0201c1

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, bindTag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    .end local v0           #bindTag:Ljava/lang/Object;
    .end local v1           #child:Landroid/view/View;
    :goto_1
    return-object v1

    .line 77
    .restart local v0       #bindTag:Ljava/lang/Object;
    .restart local v1       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v0           #bindTag:Ljava/lang/Object;
    .end local v1           #child:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/common/ui/component/VerticalViewContainer;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/didi/common/ui/component/VerticalViewContainer;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    const v0, 0x7f0201c1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p0, p1, v0}, Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;->onItemClick(Lcom/didi/common/ui/component/VerticalViewContainer;Landroid/view/View;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public setOnSonItemClickListener(Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/common/ui/component/VerticalViewContainer;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    .line 45
    return-void
.end method
