.class public Lcom/didi/frame/search/CommonAddrItem;
.super Landroid/widget/RelativeLayout;
.source "CommonAddrItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;
    }
.end annotation


# instance fields
.field private icon:Lx/ImageView;

.field private line:Landroid/widget/ImageView;

.field private listener:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

.field private tag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/didi/frame/search/CommonAddrItem;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/didi/frame/search/CommonAddrItem;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/didi/frame/search/CommonAddrItem;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/didi/frame/search/CommonAddrItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030078

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0802e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/search/CommonAddrItem;->icon:Lx/ImageView;

    .line 43
    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/search/CommonAddrItem;->tag:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/search/CommonAddrItem;->line:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrItem;->listener:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrItem;->listener:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    invoke-interface {v0}, Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;->onItemClick()V

    .line 72
    :cond_0
    return-void
.end method

.method public setLineShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrItem;->line:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrItem;->line:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/didi/frame/search/CommonAddrItem;->listener:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 62
    return-void
.end method

.method public setView(II)V
    .locals 1
    .parameter "ic"
    .parameter "t"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrItem;->icon:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageResource(I)V

    .line 50
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrItem;->tag:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method
