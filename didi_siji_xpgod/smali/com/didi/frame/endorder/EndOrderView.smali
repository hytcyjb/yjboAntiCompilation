.class public Lcom/didi/frame/endorder/EndOrderView;
.super Landroid/widget/RelativeLayout;
.source "EndOrderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/endorder/EndOrderView$ViewListener;
    }
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private code:[Ljava/lang/String;

.field private confirmBtn:Lx/Button;

.field private content:Ljava/lang/String;

.field private currentCode:Ljava/lang/String;

.field private mAccident:Lcom/didi/frame/endorder/EndSlideView;

.field private mAccidentListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

.field private mArgreeListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

.field private mArgreement:Lcom/didi/frame/endorder/EndSlideView;

.field private mComplaint:Lcom/didi/frame/endorder/EndSlideView;

.field private mComplaintListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

.field private noticeView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$1;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreeListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 117
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$2;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaintListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 157
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$3;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccidentListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 194
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$4;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->clickListener:Landroid/view/View$OnClickListener;

    .line 42
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndOrderView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$1;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreeListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 117
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$2;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaintListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 157
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$3;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccidentListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 194
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$4;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->clickListener:Landroid/view/View$OnClickListener;

    .line 37
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndOrderView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$1;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreeListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 117
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$2;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaintListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 157
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$3;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccidentListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 194
    new-instance v0, Lcom/didi/frame/endorder/EndOrderView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndOrderView$4;-><init>(Lcom/didi/frame/endorder/EndOrderView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->clickListener:Landroid/view/View$OnClickListener;

    .line 32
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndOrderView;->init()V

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView;->currentCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/frame/endorder/EndOrderView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->code:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView;->content:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/frame/endorder/EndOrderView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/didi/frame/endorder/EndOrderView;->setLayoutClickable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndOrderView$ViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const v5, 0x7f070021

    const v4, 0x7f0200ef

    .line 46
    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndOrderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08037e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 48
    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->noticeView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f080380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/endorder/EndSlideView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    .line 50
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    iget-object v2, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreeListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    invoke-virtual {v1, v2}, Lcom/didi/frame/endorder/EndSlideView;->setTitleListener(Lcom/didi/frame/endorder/EndSlideView$TitleListener;)V

    .line 51
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndOrderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0320

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/endorder/EndSlideView;->setTitleContent(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    const v2, 0x7f020180

    invoke-virtual {v1, v2, v5, v4}, Lcom/didi/frame/endorder/EndSlideView;->setTitleResource(III)V

    .line 54
    const v1, 0x7f080381

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/endorder/EndSlideView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    .line 55
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    iget-object v2, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaintListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    invoke-virtual {v1, v2}, Lcom/didi/frame/endorder/EndSlideView;->setTitleListener(Lcom/didi/frame/endorder/EndSlideView$TitleListener;)V

    .line 56
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndOrderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0321

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/endorder/EndSlideView;->setTitleContent(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    const v2, 0x7f02017e

    invoke-virtual {v1, v2, v5, v4}, Lcom/didi/frame/endorder/EndSlideView;->setTitleResource(III)V

    .line 59
    const v1, 0x7f080382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/endorder/EndSlideView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    .line 60
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    iget-object v2, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccidentListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    invoke-virtual {v1, v2}, Lcom/didi/frame/endorder/EndSlideView;->setTitleListener(Lcom/didi/frame/endorder/EndSlideView$TitleListener;)V

    .line 61
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndOrderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b031f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/endorder/EndSlideView;->setTitleContent(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    const v2, 0x7f02017c

    invoke-virtual {v1, v2, v5, v4}, Lcom/didi/frame/endorder/EndSlideView;->setTitleResource(III)V

    .line 63
    const v1, 0x7f080383

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->confirmBtn:Lx/Button;

    .line 64
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->confirmBtn:Lx/Button;

    iget-object v2, p0, Lcom/didi/frame/endorder/EndOrderView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-static {p0}, Lcom/didi/frame/endorder/EndOrderViewHelper;->setEndOrderView(Lcom/didi/frame/endorder/EndOrderView;)V

    .line 66
    return-void
.end method

.method private setLayoutClickable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/endorder/EndSlideView;->setTitleClickable(Z)V

    .line 71
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/endorder/EndSlideView;->setTitleClickable(Z)V

    .line 72
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/endorder/EndSlideView;->setTitleClickable(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->currentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 216
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->noticeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 217
    return-void
.end method

.method public setCode([Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView;->code:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setNoticeText(Ljava/lang/String;)V
    .locals 1
    .parameter "notice"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->noticeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public setReason([Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/endorder/EndSlideView;->setTitleContent(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/endorder/EndSlideView;->setTitleContent(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/endorder/EndSlideView;->setTitleContent(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setViewListener(Lcom/didi/frame/endorder/EndOrderView$ViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView;->viewListener:Lcom/didi/frame/endorder/EndOrderView$ViewListener;

    .line 236
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 222
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView;->noticeView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 223
    return-void
.end method
