.class public Lcom/didi/common/ui/userinfo/BottomListMenu;
.super Ljava/lang/Object;
.source "BottomListMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;,
        Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;
    }
.end annotation


# instance fields
.field private mCancelView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/app/Activity;

.field private mDismissListener:Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListMenu:Landroid/widget/ListView;

.field private mListMenuListener:Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;

.field private mParent:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "parentView"
    .parameter "strArray"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContext:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mParent:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContext:Landroid/app/Activity;

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContentView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContentView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 51
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContentView:Landroid/view/View;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mCancelView:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mCancelView:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/common/ui/userinfo/BottomListMenu$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/userinfo/BottomListMenu$1;-><init>(Lcom/didi/common/ui/userinfo/BottomListMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContentView:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenu:Landroid/widget/ListView;

    .line 60
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContext:Landroid/app/Activity;

    const v2, 0x7f03000e

    invoke-direct {v0, v1, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenu:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenu:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/userinfo/BottomListMenu$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/userinfo/BottomListMenu$2;-><init>(Lcom/didi/common/ui/userinfo/BottomListMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->newSelectPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/BottomListMenu;)Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenuListener:Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/BottomListMenu;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private newSelectPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 79
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 80
    .local v0, popupWindow:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 81
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 85
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mDismissListener:Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mDismissListener:Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;

    invoke-interface {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;->dismiss()V

    .line 109
    :cond_0
    return-void
.end method

.method public setDismissListener(Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mDismissListener:Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;

    .line 117
    return-void
.end method

.method public setListMenuListener(Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mListMenuListener:Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;

    .line 102
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/BottomListMenu;->mParent:Landroid/view/View;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 98
    :cond_0
    return-void
.end method
