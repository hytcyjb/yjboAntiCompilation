.class public Lcom/didi/ddrive/ui/component/DDriveRealtimeView;
.super Landroid/widget/RelativeLayout;
.source "DDriveRealtimeView.java"


# instance fields
.field private bottom:Lcom/didi/ddrive/ui/component/DDriveBottomBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030098

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->bottom:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    .line 34
    return-void
.end method


# virtual methods
.method public getBottomView()Lcom/didi/ddrive/ui/component/DDriveBottomBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->bottom:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    return-object v0
.end method
