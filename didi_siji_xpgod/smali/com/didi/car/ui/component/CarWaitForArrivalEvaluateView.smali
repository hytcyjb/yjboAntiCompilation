.class public Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalEvaluateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    }
.end annotation


# instance fields
.field private mBadComments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckBoxCommentItem1:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08028f
    .end annotation
.end field

.field private mCheckBoxCommentItem2:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080292
    .end annotation
.end field

.field private mCheckBoxCommentItem3:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080295
    .end annotation
.end field

.field private mCheckBoxCommentItem4:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080298
    .end annotation
.end field

.field private mCommentLayout:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08028d
    .end annotation
.end field

.field private mConfirmBtn:Lx/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onEvaluateSubmitClicked"
        id = 0x7f08029c
    .end annotation
.end field

.field private mEditContent:Ljava/lang/String;

.field private mEditLayout:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08028c
    .end annotation
.end field

.field private mEditView:Landroid/widget/EditText;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08029b
    .end annotation
.end field

.field private mGoodComments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelTxt:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08028b
    .end annotation
.end field

.field private mLayoutCommentItem1:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f08028e
    .end annotation
.end field

.field private mLayoutCommentItem2:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f080291
    .end annotation
.end field

.field private mLayoutCommentItem3:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f080294
    .end annotation
.end field

.field private mLayoutCommentItem4:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f080297
    .end annotation
.end field

.field private mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

.field private mMarkLineLayout:Lx/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801db
    .end annotation
.end field

.field private mOrder:Lcom/didi/car/model/CarOrder;

.field private mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

.field private mStartView:Lcom/didi/common/ui/component/StarView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08028a
    .end annotation
.end field

.field private mTxtCommentItem1:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080290
    .end annotation
.end field

.field private mTxtCommentItem2:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080293
    .end annotation
.end field

.field private mTxtCommentItem3:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080296
    .end annotation
.end field

.field private mTxtCommentItem4:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080299
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 339
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 123
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 339
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 118
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 339
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 113
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->init()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)Lcom/didi/car/model/CarOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mOrder:Lcom/didi/car/model/CarOrder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;)Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    return-object v0
.end method

.method private getCommentLabels()Ljava/lang/String;
    .locals 3

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v0, labels:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCommentTypes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v0, types:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :goto_0
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 336
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 337
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->loadGoodComments()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mGoodComments:Ljava/util/Map;

    .line 133
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->loadBadComments()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mBadComments:Ljava/util/Map;

    .line 135
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setListener(Lcom/didi/common/ui/component/StarView$StarListener;)V

    .line 136
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setIsCanTouch(Z)V

    .line 137
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 138
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->updateCommentItems()V

    .line 139
    return-void
.end method

.method private loadBadComments()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, badLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getArrayCarBadComment()[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, badArray:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->sampleRandom(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private loadGoodComments()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, goodLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getArrayCarGoodComment()[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, goodArray:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->sampleRandom(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private onEvaluateEditShown()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditView.requestFocus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditView.isFocusable() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditView.isFocusableInTouchMode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocusableInTouchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const v2, 0x7f0b0336

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    .line 252
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateEditShown()V

    .line 255
    :cond_0
    return-void
.end method

.method private onEvaluateViewShown()V
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 232
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const v2, 0x7f0b033c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    .line 236
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateShown()V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->hideInputMethod()V

    .line 241
    return-void
.end method

.method private onEvaluatedViewShown()V
    .locals 4

    .prologue
    .line 258
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    .line 262
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateFinishShown()V

    .line 265
    :cond_0
    return-void
.end method

.method private sampleRandom(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, src:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    :goto_0
    return-object v0

    .line 171
    :cond_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 172
    .local v2, random:Ljava/util/Random;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 174
    .local v3, startIndex:I
    const/4 v1, 0x0

    .line 175
    .local v1, index:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, dst:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v1, v3

    .line 177
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int v1, v4, v5

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int v1, v4, v5

    .line 181
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int v1, v4, v5

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 330
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 331
    .local v0, flag:Z
    return-void
.end method


# virtual methods
.method public getOrder()Lcom/didi/car/model/CarOrder;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mOrder:Lcom/didi/car/model/CarOrder;

    return-object v0
.end method

.method public isEvaluating()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCommentItemClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 377
    :sswitch_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 380
    :sswitch_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 383
    :sswitch_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 386
    :sswitch_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x7f08028e -> :sswitch_0
        0x7f080291 -> :sswitch_1
        0x7f080294 -> :sswitch_2
        0x7f080297 -> :sswitch_3
    .end sparse-switch
.end method

.method public onEvaluateSubmitClicked(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 268
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 269
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->hideInputMethod()V

    .line 271
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, editContent:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v5}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v2

    .line 273
    .local v2, level:I
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getCommentTypes()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, types:Ljava/lang/String;
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->getCommentLabels()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, typesText:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    .line 277
    .local v1, l:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    .line 282
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f03006e

    return v0
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;

    .line 189
    return-void
.end method

.method public setOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mOrder:Lcom/didi/car/model/CarOrder;

    .line 197
    iget v0, p1, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p1, Lcom/didi/car/model/CarOrder;->evaluateContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    iget v1, p1, Lcom/didi/car/model/CarOrder;->evaluateScore:I

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 203
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->showEvaluatedView()V

    goto :goto_0
.end method

.method public showEvaluateEditView()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 218
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->onEvaluateEditShown()V

    .line 219
    return-void
.end method

.method public showEvaluateView()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mMarkLineLayout:Lx/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->invisible(Landroid/view/View;)V

    .line 213
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->onEvaluateViewShown()V

    .line 214
    return-void
.end method

.method public showEvaluatedView()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mMarkLineLayout:Lx/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->invisible(Landroid/view/View;)V

    .line 227
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->onEvaluatedViewShown()V

    .line 228
    return-void
.end method

.method protected updateCommentItems()V
    .locals 6

    .prologue
    .line 392
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v4}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v3

    .line 393
    .local v3, level:I
    const/4 v1, 0x0

    .line 395
    .local v1, comments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 396
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mBadComments:Ljava/util/Map;

    .line 401
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 402
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 404
    .local v0, commentLabel:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #commentLabel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 406
    .restart local v0       #commentLabel:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem1:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 410
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #commentLabel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 412
    .restart local v0       #commentLabel:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem2:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 416
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #commentLabel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 418
    .restart local v0       #commentLabel:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem3:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 422
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #commentLabel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 424
    .restart local v0       #commentLabel:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mTxtCommentItem4:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 428
    :cond_3
    return-void

    .line 398
    .end local v0           #commentLabel:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView;->mGoodComments:Ljava/util/Map;

    goto :goto_0
.end method
