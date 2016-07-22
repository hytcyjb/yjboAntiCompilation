.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
.super Lx/RelativeLayout;
.source "TaxiWaitForArrivalEvaluateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;
    }
.end annotation


# instance fields
.field private contentWatcher:Landroid/text/TextWatcher;

.field private mConfirmBtn:Lx/Button;

.field private mEditLayout:Landroid/widget/LinearLayout;

.field private mEvaContent:Landroid/widget/TextView;

.field private mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

.field private mEvaluateEdit:Landroid/widget/EditText;

.field private mEvaluateLine:Lx/RelativeLayout;

.field private mEvaluateTip:Landroid/widget/TextView;

.field private mListener:Lcom/didi/common/ui/component/StarView$StarListener;

.field private mOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private mStar:Lcom/didi/common/ui/component/StarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->contentWatcher:Landroid/text/TextWatcher;

    .line 272
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 61
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->contentWatcher:Landroid/text/TextWatcher;

    .line 272
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 66
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->contentWatcher:Landroid/text/TextWatcher;

    .line 272
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 71
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateTip:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030102

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateLine:Lx/RelativeLayout;

    .line 78
    const v1, 0x7f0805b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/StarView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    .line 79
    const v1, 0x7f0805b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateTip:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0805b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    .line 83
    const v1, 0x7f080346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    .line 85
    const v1, 0x7f0805b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mConfirmBtn:Lx/Button;

    .line 88
    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 91
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/StarView;->setListener(Lcom/didi/common/ui/component/StarView$StarListener;)V

    .line 92
    return-void
.end method

.method private setStarLayout(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setIsCanTouch(Z)V

    .line 177
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 178
    return-void
.end method

.method private showEvaluatedView(Ljava/lang/String;I)V
    .locals 3
    .parameter "content"
    .parameter "level"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateLine:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setIsCanTouch(Z)V

    .line 164
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v0, p2}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 165
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    const v1, 0x7f07001e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateFinishShown()V

    .line 172
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 249
    return-void
.end method

.method private updateEva()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateMark(I)V

    .line 151
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateContent(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateScore(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public clearEva()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public getEditText()Z
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 209
    .local v0, flag:Z
    return v0
.end method

.method public hideEditLayoutView()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->hideInputMethod()Z

    .line 118
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateLine:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateEditHidden()V

    .line 122
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mConfirmBtn:Lx/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->updateEvaluateHintText()V

    .line 124
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 126
    return-void
.end method

.method public hideInputMethod()Z
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    return v1
.end method

.method public isEvaing()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 262
    :pswitch_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 263
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->hideInputMethod()Z

    .line 264
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v3}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateSubmitBtnClicked(Ljava/lang/String;I)V

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "score"

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "pay_comment_score"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x7f0805b6
        :pswitch_0
    .end packed-switch
.end method

.method public setCanTouch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/StarView;->setIsCanTouch(Z)V

    .line 182
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    .line 96
    return-void
.end method

.method public setOrder(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x4

    .line 186
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 188
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->setStarLayout(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 190
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateLine:Lx/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateScore()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->showEvaluatedView(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showEditLayoutView()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEditLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->contentWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, p0}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEditView.requestFocus() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEditView.isFocusable() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEditView.isFocusableInTouchMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocusableInTouchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;->onEvaulateEditShown()V

    .line 112
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->showInputMethod()V

    .line 113
    return-void
.end method

.method public showEvaToEvaed()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->hideInputMethod()Z

    .line 131
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mStar:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->showEvaluatedView(Ljava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateEditHidden()V

    .line 133
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->updateEva()V

    .line 134
    return-void
.end method

.method public updateEvaluateHintText()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    const v1, 0x7f0b033a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaContent:Landroid/widget/TextView;

    const v1, 0x7f0b0339

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
