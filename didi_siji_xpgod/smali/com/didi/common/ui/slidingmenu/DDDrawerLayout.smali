.class public Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "DDDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;
    }
.end annotation


# instance fields
.field private isDragging:Z

.field private isOpen:Z

.field private mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-boolean v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDragging:Z

    .line 13
    iput-boolean v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isOpen:Z

    .line 26
    new-instance v0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$1;-><init>(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)V

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 59
    new-instance v0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$2;-><init>(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)V

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDragging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isOpen:Z

    return v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;

    return-object v0
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDragging:Z

    return v0
.end method

.method public setDrawerLayoutListener(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->mDrawerLayoutListener:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;

    .line 18
    return-void
.end method
