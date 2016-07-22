.class public Lcom/didi/common/ui/userinfo/ListPickerWindow;
.super Ljava/lang/Object;
.source "ListPickerWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBtnCancel:Landroid/widget/TextView;

.field private mBtnConfirm:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParent:Landroid/view/View;

.field private mPickerListener:Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSexWheel:Lcom/example/wheel/WheelView;

.field private final mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/example/wheel/adapter/CommonWheelAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter "parentView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    .local p3, dataList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;-><init>(Lcom/didi/common/ui/userinfo/ListPickerWindow;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 51
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mParent:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f0300c3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContentView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContentView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContentView:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mBtnConfirm:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContentView:Landroid/view/View;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mBtnCancel:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContentView:Landroid/view/View;

    const v1, 0x7f08042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/wheel/WheelView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mSexWheel:Lcom/example/wheel/WheelView;

    .line 59
    new-instance v0, Lcom/example/wheel/adapter/CommonWheelAdapter;

    invoke-direct {v0, p3}, Lcom/example/wheel/adapter/CommonWheelAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mSexWheel:Lcom/example/wheel/WheelView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mBtnConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mBtnCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->newSelectPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "parentView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    .local p3, dataArray:[Ljava/lang/Object;,"[TT;"
    invoke-static {p3}, Lnet/tsz/afinal/core/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/common/ui/userinfo/ListPickerWindow;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPickerListener:Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/example/wheel/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mSexWheel:Lcom/example/wheel/WheelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/example/wheel/adapter/CommonWheelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;

    return-object v0
.end method

.method private newSelectPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4
    .parameter "view"

    .prologue
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    const/4 v3, 0x1

    .line 69
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 70
    .local v0, popupWindow:Landroid/widget/PopupWindow;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 74
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 81
    :cond_0
    return-void
.end method

.method public setListPickerListener(Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    .local p1, listener:Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;,"Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener<TT;>;"
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPickerListener:Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;

    .line 117
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mSexWheel:Lcom/example/wheel/WheelView;

    invoke-virtual {v0, p1}, Lcom/example/wheel/WheelView;->select(I)V

    .line 121
    return-void
.end method

.method public setSelectedItem(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;

    invoke-virtual {v1, p1}, Lcom/example/wheel/adapter/CommonWheelAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 125
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mSexWheel:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->select(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow;,"Lcom/didi/common/ui/userinfo/ListPickerWindow<TT;>;"
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow;->mParent:Landroid/view/View;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 87
    :cond_0
    return-void
.end method
