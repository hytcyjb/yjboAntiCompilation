.class public Lcom/didi/frame/departure/DepartSearchTitle;
.super Lx/RelativeLayout;
.source "DepartSearchTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    }
.end annotation


# instance fields
.field private back:Lx/ImageView;

.field private backListener:Landroid/view/View$OnClickListener;

.field private changeListener:Landroid/text/TextWatcher;

.field private clear:Landroid/widget/ImageView;

.field private clearListener:Landroid/view/View$OnClickListener;

.field private confirm:Landroid/widget/TextView;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private editLayout:Lx/RelativeLayout;

.field private input:Landroid/widget/EditText;

.field private layoutListener:Landroid/view/View$OnClickListener;

.field private listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

.field private search:Landroid/widget/TextView;

.field private searchListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$1;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->layoutListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$2;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->backListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$3;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clearListener:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$4;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->searchListener:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$5;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirmListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$6;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->changeListener:Landroid/text/TextWatcher;

    .line 34
    invoke-direct {p0}, Lcom/didi/frame/departure/DepartSearchTitle;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$1;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->layoutListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$2;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->backListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$3;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clearListener:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$4;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->searchListener:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$5;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirmListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$6;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->changeListener:Landroid/text/TextWatcher;

    .line 44
    invoke-direct {p0}, Lcom/didi/frame/departure/DepartSearchTitle;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$1;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->layoutListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$2;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->backListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$3;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clearListener:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$4;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->searchListener:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$5;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirmListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/didi/frame/departure/DepartSearchTitle$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/departure/DepartSearchTitle$6;-><init>(Lcom/didi/frame/departure/DepartSearchTitle;)V

    iput-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->changeListener:Landroid/text/TextWatcher;

    .line 39
    invoke-direct {p0}, Lcom/didi/frame/departure/DepartSearchTitle;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/departure/DepartSearchTitle;)Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/departure/DepartSearchTitle;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/frame/departure/DepartSearchTitle;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clear:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/didi/frame/departure/DepartSearchTitle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f03009a

    invoke-virtual {v2, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080367

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/RelativeLayout;

    iput-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->editLayout:Lx/RelativeLayout;

    .line 51
    const v2, 0x7f080364

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/ImageView;

    iput-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->back:Lx/ImageView;

    .line 52
    const v2, 0x7f080368

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    .line 53
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    .line 54
    .local v0, flagShowDDrive:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    const v4, 0x7f0b059b

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 59
    :goto_1
    const v2, 0x7f080369

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clear:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f080365

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->search:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f080366

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirm:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->editLayout:Lx/RelativeLayout;

    iget-object v4, p0, Lcom/didi/frame/departure/DepartSearchTitle;->layoutListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->back:Lx/ImageView;

    iget-object v4, p0, Lcom/didi/frame/departure/DepartSearchTitle;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clear:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->search:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/didi/frame/departure/DepartSearchTitle;->searchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirm:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirm:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/didi/frame/departure/DepartSearchTitle;->changeListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/didi/frame/departure/DepartSearchTitle;->layoutListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void

    .end local v0           #flagShowDDrive:Z
    :cond_0
    move v0, v3

    .line 53
    goto :goto_0

    .line 57
    .restart local v0       #flagShowDDrive:Z
    :cond_1
    iget-object v2, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    const v4, 0x7f0b059a

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearInput()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->clear:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/departure/DepartSearchTitle;->hideView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    invoke-interface {v0}, Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;->onClear()V

    .line 100
    return-void
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public hideView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 85
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public setInputHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 104
    return-void
.end method

.method public setListener(Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;Z)V
    .locals 3
    .parameter "l"
    .parameter "showConfirm"

    .prologue
    const/16 v2, 0x8

    .line 73
    iput-object p1, p0, Lcom/didi/frame/departure/DepartSearchTitle;->listener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    .line 74
    if-eqz p2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_0
    sget-boolean v0, Lcom/didi/common/util/Constant;->isCloseInput:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->search:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/departure/DepartSearchTitle;->confirm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/departure/DepartSearchTitle;->input:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public showView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void
.end method
