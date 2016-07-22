.class public Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;
.super Lcom/didi/common/base/BaseLayout;
.source "DDriveWaitForArrivalEvaluateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DDriveWaitForArrivalEvaluateView"


# instance fields
.field private mCheckBoxCommentItem1:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08033a
    .end annotation
.end field

.field private mCheckBoxCommentItem2:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08033d
    .end annotation
.end field

.field private mCheckBoxCommentItem3:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080340
    .end annotation
.end field

.field private mCheckBoxCommentItem4:Landroid/widget/CheckBox;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080343
    .end annotation
.end field

.field private mCommentLayout:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08028d
    .end annotation
.end field

.field private mComments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/didi/ddrive/net/http/response/CommentTags$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmBtn:Lx/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onEvaluateSubmitClicked"
        id = 0x7f080347
    .end annotation
.end field

.field private mEditContent:Ljava/lang/String;

.field private mEditLayout:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080338
    .end annotation
.end field

.field private mEditView:Landroid/widget/EditText;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080346
    .end annotation
.end field

.field private mLabelTxt:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080337
    .end annotation
.end field

.field private mLayoutCommentItem1:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f080339
    .end annotation
.end field

.field private mLayoutCommentItem2:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f08033c
    .end annotation
.end field

.field private mLayoutCommentItem3:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f08033f
    .end annotation
.end field

.field private mLayoutCommentItem4:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCommentItemClicked"
        id = 0x7f080342
    .end annotation
.end field

.field private mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

.field private mMarkLineLayout:Lx/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801db
    .end annotation
.end field

.field private mOrder:Lcom/didi/ddrive/model/DDriveOrder;

.field private mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

.field private mStartView:Lcom/didi/common/ui/component/StarView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080336
    .end annotation
.end field

.field private mTxtCommentItem1:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08033b
    .end annotation
.end field

.field private mTxtCommentItem2:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08033e
    .end annotation
.end field

.field private mTxtCommentItem3:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080341
    .end annotation
.end field

.field private mTxtCommentItem4:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080344
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mComments:Ljava/util/Map;

    .line 322
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 140
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->init()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mComments:Ljava/util/Map;

    .line 322
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 135
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->init()V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mComments:Ljava/util/Map;

    .line 322
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 130
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->init()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Lcom/didi/ddrive/model/DDriveOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    return-object v0
.end method

.method private getCommentTypes()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, types:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getTag(Landroid/view/View;)Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getTag(Landroid/view/View;)Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getTag(Landroid/view/View;)Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getTag(Landroid/view/View;)Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 307
    :cond_4
    :goto_0
    return-object v1

    .line 305
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTag(Landroid/view/View;)Lcom/didi/ddrive/net/http/response/CommentTags$Tag;
    .locals 1
    .parameter "view"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    return-object v0
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 319
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 320
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    .line 149
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    .line 150
    .local v2, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getCommentTags()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, json:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    const-class v7, Lcom/didi/ddrive/net/http/response/CommentTags;

    invoke-static {v4, v7}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/net/http/response/CommentTags;

    .line 155
    .local v1, comments:Lcom/didi/ddrive/net/http/response/CommentTags;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/didi/ddrive/net/http/response/CommentTags;->tagAll:[Lcom/didi/ddrive/net/http/response/CommentTags$TagList;

    if-eqz v7, :cond_1

    .line 156
    iget-object v0, v1, Lcom/didi/ddrive/net/http/response/CommentTags;->tagAll:[Lcom/didi/ddrive/net/http/response/CommentTags$TagList;

    .local v0, arr$:[Lcom/didi/ddrive/net/http/response/CommentTags$TagList;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 157
    .local v6, list:Lcom/didi/ddrive/net/http/response/CommentTags$TagList;
    iget-object v7, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mComments:Ljava/util/Map;

    iget v8, v6, Lcom/didi/ddrive/net/http/response/CommentTags$TagList;->star:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v6, Lcom/didi/ddrive/net/http/response/CommentTags$TagList;->tags:[Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v0           #arr$:[Lcom/didi/ddrive/net/http/response/CommentTags$TagList;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #list:Lcom/didi/ddrive/net/http/response/CommentTags$TagList;
    :cond_1
    iget-object v7, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    iget-object v8, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStarListener:Lcom/didi/common/ui/component/StarView$StarListener;

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/StarView;->setListener(Lcom/didi/common/ui/component/StarView$StarListener;)V

    .line 162
    iget-object v7, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/StarView;->setIsCanTouch(Z)V

    .line 163
    iget-object v7, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 164
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->updateCommentItems()V

    goto :goto_0
.end method

.method private onEvaluateEditShown()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 235
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$1;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditView.requestFocus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditView.isFocusable() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEditView.isFocusableInTouchMode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocusableInTouchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    .line 250
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateEditShown()V

    .line 253
    :cond_0
    return-void
.end method

.method private onEvaluateViewShown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v1, v3}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 221
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const v2, 0x7f0b0148

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    .line 226
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateShown()V

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->hideInputMethod()V

    .line 231
    return-void
.end method

.method private onEvaluatedViewShown()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    .line 265
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateFinishShown()V

    .line 268
    :cond_0
    return-void

    .line 260
    .end local v0           #l:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getOrder()Lcom/didi/ddrive/model/DDriveOrder;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    return-object v0
.end method

.method public isEvaluating()Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCommentItemClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 359
    const-string v0, "pdjxcomment_12_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 375
    :goto_0
    return-void

    .line 363
    :sswitch_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 366
    :sswitch_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 369
    :sswitch_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 372
    :sswitch_3
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 361
    :sswitch_data_0
    .sparse-switch
        0x7f080339 -> :sswitch_0
        0x7f08033c -> :sswitch_1
        0x7f08033f -> :sswitch_2
        0x7f080342 -> :sswitch_3
    .end sparse-switch
.end method

.method public onEvaluateSubmitClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 271
    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 272
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->hideInputMethod()V

    .line 274
    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, editContent:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v4}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v2

    .line 276
    .local v2, level:I
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->getCommentTypes()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, types:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    .line 279
    .local v1, l:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    if-eqz v1, :cond_0

    .line 280
    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    .line 284
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f030091

    return v0
.end method

.method public setListener(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    .line 174
    return-void
.end method

.method public setOrder(Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 184
    iget v0, p1, Lcom/didi/ddrive/model/DDriveOrder;->evaluateMark:I

    if-nez v0, :cond_0

    .line 185
    const-string v0, "DDriveWaitForArrivalEvaluateView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0 , star : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/ddrive/model/DDriveOrder;->evaluateScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->showEvaluateView()V

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v0, "DDriveWaitForArrivalEvaluateView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 , star : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/ddrive/model/DDriveOrder;->evaluateScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p1, Lcom/didi/ddrive/model/DDriveOrder;->evaluateContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditContent:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    iget v1, p1, Lcom/didi/ddrive/model/DDriveOrder;->evaluateScore:I

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/StarView;->setLevel(I)V

    .line 192
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->showEvaluatedView()V

    goto :goto_0
.end method

.method public showEvaluateEditView()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 207
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->onEvaluateEditShown()V

    .line 208
    return-void
.end method

.method public showEvaluateView()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mMarkLineLayout:Lx/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->invisible(Landroid/view/View;)V

    .line 202
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->onEvaluateViewShown()V

    .line 203
    return-void
.end method

.method public showEvaluatedView()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mMarkLineLayout:Lx/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->show(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mEditLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->invisible(Landroid/view/View;)V

    .line 216
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->onEvaluatedViewShown()V

    .line 217
    return-void
.end method

.method protected updateCommentItems()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mStartView:Lcom/didi/common/ui/component/StarView;

    invoke-virtual {v2}, Lcom/didi/common/ui/component/StarView;->getStarLevel()I

    move-result v0

    .line 379
    .local v0, level:I
    if-ne v0, v7, :cond_1

    .line 380
    const-string v2, "pdjxcomment_06_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mComments:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 441
    :goto_1
    return-void

    .line 382
    :cond_1
    if-ne v0, v9, :cond_2

    .line 383
    const-string v2, "pdjxcomment_07_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    if-ne v0, v10, :cond_3

    .line 386
    const-string v2, "pdjxcomment_08_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 389
    const-string v2, "pdjxcomment_09_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 392
    const-string v2, "pdjxcomment_10_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_5
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mComments:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/didi/ddrive/net/http/response/CommentTags$Tag;

    .line 400
    .local v1, tags:[Lcom/didi/ddrive/net/http/response/CommentTags$Tag;
    array-length v2, v1

    if-lez v2, :cond_6

    .line 401
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem1:Landroid/widget/TextView;

    aget-object v3, v1, v6

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 404
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 410
    :goto_2
    array-length v2, v1

    if-le v2, v7, :cond_7

    .line 411
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem2:Landroid/widget/TextView;

    aget-object v3, v1, v7

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 413
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 414
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem2:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 420
    :goto_3
    array-length v2, v1

    if-le v2, v9, :cond_8

    .line 421
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem3:Landroid/widget/TextView;

    aget-object v3, v1, v9

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    aget-object v3, v1, v9

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 423
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem3:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 430
    :goto_4
    array-length v2, v1

    if-le v2, v10, :cond_9

    .line 431
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem4:Landroid/widget/TextView;

    aget-object v3, v1, v10

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/CommentTags$Tag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    aget-object v3, v1, v10

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 434
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem4:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 407
    :cond_6
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem1:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem1:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 417
    :cond_7
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem2:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 427
    :cond_8
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem3:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem3:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 437
    :cond_9
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mTxtCommentItem4:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mCheckBoxCommentItem4:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1
.end method
