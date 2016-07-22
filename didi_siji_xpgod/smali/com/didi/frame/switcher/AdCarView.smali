.class public Lcom/didi/frame/switcher/AdCarView;
.super Landroid/widget/PopupWindow;
.source "AdCarView.java"


# instance fields
.field private img:Lx/ImageView;

.field private imgListener:Landroid/view/View$OnClickListener;

.field private logtxt:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 47
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 48
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->img:Lx/ImageView;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 65
    new-instance v0, Lcom/didi/frame/switcher/AdCarView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/AdCarView$1;-><init>(Lcom/didi/frame/switcher/AdCarView;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/switcher/AdCarView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->logtxt:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setGuideImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->img:Lx/ImageView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->img:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/switcher/AdCarView;->img:Lx/ImageView;

    iget-object v1, p0, Lcom/didi/frame/switcher/AdCarView;->imgListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setLogTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "log"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/frame/switcher/AdCarView;->logtxt:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 78
    return-void
.end method
