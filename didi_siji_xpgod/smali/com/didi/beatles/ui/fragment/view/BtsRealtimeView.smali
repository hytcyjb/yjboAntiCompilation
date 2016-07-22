.class public Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;
.super Landroid/widget/RelativeLayout;
.source "BtsRealtimeView.java"


# instance fields
.field private bottom:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    iput-object v1, p0, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->bottom:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    .line 33
    return-void
.end method


# virtual methods
.method public getBottomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->bottom:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    return-object v0
.end method
