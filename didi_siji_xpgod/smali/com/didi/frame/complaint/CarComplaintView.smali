.class public Lcom/didi/frame/complaint/CarComplaintView;
.super Landroid/widget/RelativeLayout;
.source "CarComplaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;,
        Lcom/didi/frame/complaint/CarComplaintView$ReasonItemListener;
    }
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private commonListener:Landroid/view/View$OnClickListener;

.field private compListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

.field private confirm:Lx/Button;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private inputListener:Landroid/view/View$OnClickListener;

.field private isOtherCheck:Z

.field private noticeView:Landroid/widget/TextView;

.field private otherLayout:Landroid/widget/RelativeLayout;

.field private reasonOther:Landroid/widget/EditText;

.field private reasons:Landroid/widget/LinearLayout;

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$1;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->commonListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$2;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$3;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$4;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    .line 48
    invoke-direct {p0}, Lcom/didi/frame/complaint/CarComplaintView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$1;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->commonListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$2;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$3;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$4;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    .line 43
    invoke-direct {p0}, Lcom/didi/frame/complaint/CarComplaintView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$1;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->commonListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$2;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$3;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lcom/didi/frame/complaint/CarComplaintView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/CarComplaintView$4;-><init>(Lcom/didi/frame/complaint/CarComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    .line 38
    invoke-direct {p0}, Lcom/didi/frame/complaint/CarComplaintView;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/complaint/CarComplaintView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/frame/complaint/CarComplaintView;->resetInputLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/complaint/CarComplaintView;)Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->compListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/complaint/CarComplaintView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->isOtherCheck:Z

    return v0
.end method

.method static synthetic access$302(Lcom/didi/frame/complaint/CarComplaintView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/didi/frame/complaint/CarComplaintView;->isOtherCheck:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/didi/frame/complaint/CarComplaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004e

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->noticeView:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 55
    const v1, 0x7f0801c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    .line 56
    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasonOther:Landroid/widget/EditText;

    .line 57
    iget-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasonOther:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0801c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->confirm:Lx/Button;

    .line 61
    iget-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->confirm:Lx/Button;

    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private resetInputLayout()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->isOtherCheck:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->isOtherCheck:Z

    .line 126
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public getReasonTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    const-string v3, ""

    .line 98
    .local v3, title:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 100
    .local v0, child:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0           #child:Lcom/didi/frame/complaint/ComplaintReasonView;
    :cond_1
    iget-object v4, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasonOther:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, other:Ljava/lang/String;
    invoke-static {v2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    :goto_1
    return-object v3

    :cond_2
    move-object v3, v2

    .line 106
    goto :goto_1
.end method

.method public getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasonOther:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    return-void
.end method

.method public setCompNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView;->noticeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setReasons([Ljava/lang/String;Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;)V
    .locals 9
    .parameter "str"
    .parameter "listener"

    .prologue
    const/16 v8, 0x28

    .line 66
    iput-object p2, p0, Lcom/didi/frame/complaint/CarComplaintView;->compListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    .line 68
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 69
    .local v4, reason:Ljava/lang/String;
    new-instance v5, Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {p0}, Lcom/didi/frame/complaint/CarComplaintView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/didi/frame/complaint/ComplaintReasonView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v5, reasonView:Lcom/didi/frame/complaint/ComplaintReasonView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x390

    const/16 v7, 0x98

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 72
    iget-object v6, p0, Lcom/didi/frame/complaint/CarComplaintView;->commonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/didi/frame/complaint/ComplaintReasonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 75
    const-string v6, "["

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;)V

    .line 76
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 79
    :cond_0
    iget-object v6, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_1

    .line 80
    const-string v6, "]"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-virtual {v5, v3}, Lcom/didi/frame/complaint/ComplaintReasonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v6, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #reason:Ljava/lang/String;
    .end local v5           #reasonView:Lcom/didi/frame/complaint/ComplaintReasonView;
    :cond_2
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/complaint/CarComplaintView;->reasonOther:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 115
    return-void
.end method
