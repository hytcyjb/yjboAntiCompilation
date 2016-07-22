.class public Lcom/didi/car/helper/CarPopupHelper;
.super Ljava/lang/Object;
.source "CarPopupHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static instance:Lcom/didi/car/helper/CarPopupHelper;


# instance fields
.field private btnCancel:Lx/Button;

.field private btnConfirm:Lx/Button;

.field private checked:Z

.field private mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

.field private mPopupwindow:Landroid/widget/PopupWindow;

.field private popupView:Landroid/view/View;

.field private txtContent:Landroid/widget/TextView;

.field private txtFare:Lcom/didi/common/richtextview/RichTextView;

.field private txtTitle:Landroid/widget/TextView;

.field private viewClickListener:Landroid/view/View$OnClickListener;

.field private viewTag:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarPopupHelper;->instance:Lcom/didi/car/helper/CarPopupHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/helper/CarPopupHelper;->checked:Z

    .line 108
    new-instance v0, Lcom/didi/car/helper/CarPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/car/helper/CarPopupHelper$1;-><init>(Lcom/didi/car/helper/CarPopupHelper;)V

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->viewClickListener:Landroid/view/View$OnClickListener;

    .line 42
    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarPopupHelper;->initPopupWindow(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/helper/CarPopupHelper;)Lcom/didi/car/listener/DynamicUpdatePriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/helper/CarPopupHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/didi/car/helper/CarPopupHelper;->checked:Z

    return v0
.end method

.method public static getDialogHelper(Landroid/content/Context;)Lcom/didi/car/helper/CarPopupHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    sget-object v0, Lcom/didi/car/helper/CarPopupHelper;->instance:Lcom/didi/car/helper/CarPopupHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/didi/car/helper/CarPopupHelper;

    invoke-direct {v0, p0}, Lcom/didi/car/helper/CarPopupHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/car/helper/CarPopupHelper;->instance:Lcom/didi/car/helper/CarPopupHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/didi/car/helper/CarPopupHelper;->instance:Lcom/didi/car/helper/CarPopupHelper;

    return-object v0
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarPopupHelper;->initViews(Landroid/content/Context;)V

    .line 58
    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0801cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->txtTitle:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->txtContent:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->viewTag:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->txtFare:Lcom/didi/common/richtextview/RichTextView;

    .line 69
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0801d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->btnCancel:Lx/Button;

    .line 70
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->btnConfirm:Lx/Button;

    .line 72
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->btnConfirm:Lx/Button;

    iget-object v1, p0, Lcom/didi/car/helper/CarPopupHelper;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->btnCancel:Lx/Button;

    iget-object v1, p0, Lcom/didi/car/helper/CarPopupHelper;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public disMissPopupWindow()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarPopupHelper;->instance:Lcom/didi/car/helper/CarPopupHelper;

    .line 106
    return-void
.end method

.method public initData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"
    .parameter "tag"
    .parameter "fare"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->txtContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->txtFare:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p4}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->viewTag:Landroid/view/View;

    const v1, 0x7f0201d2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->viewTag:Landroid/view/View;

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setListeners(Lcom/didi/car/listener/DynamicUpdatePriceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/car/helper/CarPopupHelper;->mListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    .line 78
    return-void
.end method

.method public showPopupWindow(Landroid/view/View;)V
    .locals 5
    .parameter "contentView"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 81
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 83
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/didi/car/helper/CarPopupHelper;->popupView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/car/helper/CarPopupHelper;->mPopupwindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 88
    return-void
.end method
