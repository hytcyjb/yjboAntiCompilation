.class public Lcom/didi/frame/realtime/slide/SlideItemNormalView;
.super Landroid/widget/RelativeLayout;
.source "SlideItemNormalView.java"


# instance fields
.field private mIcon:Lx/ImageView;

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e7

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0804f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->mIcon:Lx/ImageView;

    .line 41
    const v1, 0x7f0804f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->mName:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method public setItemHome()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->mIcon:Lx/ImageView;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->mName:Landroid/widget/TextView;

    const v1, 0x7f0b04a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-void
.end method

.method public setItemWork()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->mIcon:Lx/ImageView;

    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideItemNormalView;->mName:Landroid/widget/TextView;

    const v1, 0x7f0b04a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    return-void
.end method
