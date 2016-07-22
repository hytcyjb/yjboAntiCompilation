.class public Lcom/didi/common/ui/component/StarView;
.super Landroid/widget/RelativeLayout;
.source "StarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/StarView$StarListener;
    }
.end annotation


# static fields
.field private static final sBrightStarDrawableId:I = 0x7f0200eb

.field private static final sDarkStarDrawableId:I = 0x7f0200ea


# instance fields
.field private changeListener:Landroid/view/View$OnTouchListener;

.field private isFivePlayed:Z

.field private isFourPlayed:Z

.field private isMove:Z

.field private isOnePlayed:Z

.field private isThreePlayed:Z

.field private isTwoPlayed:Z

.field private mFiveStar:Lx/ImageView;

.field private mFourStar:Lx/ImageView;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLevel:I

.field private mListener:Lcom/didi/common/ui/component/StarView$StarListener;

.field private mOneStar:Lx/ImageView;

.field private mStarTxt:Ljava/lang/String;

.field private mThreeStar:Lx/ImageView;

.field private mTwoStar:Lx/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v1, 0x7f0200ea

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Lcom/didi/common/ui/component/StarView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/StarView$1;-><init>(Lcom/didi/common/ui/component/StarView;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->changeListener:Landroid/view/View$OnTouchListener;

    .line 34
    const v0, 0x7f0300f6

    invoke-static {p1, v0, p0}, Lcom/didi/common/ui/component/StarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/StarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mLayout:Landroid/widget/RelativeLayout;

    .line 36
    const v0, 0x7f0801e9

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/StarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    .line 37
    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/StarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    .line 38
    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/StarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    .line 39
    const v0, 0x7f0801ec

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/StarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    .line 40
    const v0, 0x7f0801ed

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/StarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    .line 41
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 43
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 47
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/component/StarView;)Lcom/didi/common/ui/component/StarView$StarListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/component/StarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/didi/common/ui/component/StarView;->isMove:Z

    return v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/component/StarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/didi/common/ui/component/StarView;->isMove:Z

    return p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/component/StarView;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/StarView;->setSelect(F)I

    move-result v0

    return v0
.end method

.method private setSelect(F)I
    .locals 6
    .parameter "x"

    .prologue
    const v5, 0x7f0200ea

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v2, 0x7f0200eb

    .line 164
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 165
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 166
    iput v3, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 167
    iget-boolean v0, p0, Lcom/didi/common/ui/component/StarView;->isOnePlayed:Z

    if-nez v0, :cond_0

    .line 168
    iput-boolean v3, p0, Lcom/didi/common/ui/component/StarView;->isOnePlayed:Z

    .line 169
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 181
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 182
    iget-boolean v0, p0, Lcom/didi/common/ui/component/StarView;->isTwoPlayed:Z

    if-nez v0, :cond_1

    .line 183
    iput-boolean v3, p0, Lcom/didi/common/ui/component/StarView;->isTwoPlayed:Z

    .line 184
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 193
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 194
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 197
    iget-boolean v0, p0, Lcom/didi/common/ui/component/StarView;->isThreePlayed:Z

    if-nez v0, :cond_2

    .line 198
    iput-boolean v3, p0, Lcom/didi/common/ui/component/StarView;->isThreePlayed:Z

    .line 199
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 213
    iget-boolean v0, p0, Lcom/didi/common/ui/component/StarView;->isFourPlayed:Z

    if-nez v0, :cond_3

    .line 214
    iput-boolean v3, p0, Lcom/didi/common/ui/component/StarView;->isFourPlayed:Z

    .line 215
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 222
    :goto_3
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    .line 223
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 225
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 226
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setImageResource(I)V

    .line 228
    const/4 v0, 0x5

    iput v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 229
    iget-boolean v0, p0, Lcom/didi/common/ui/component/StarView;->isFivePlayed:Z

    if-nez v0, :cond_4

    .line 230
    iput-boolean v3, p0, Lcom/didi/common/ui/component/StarView;->isFivePlayed:Z

    .line 231
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 239
    :goto_4
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    iget-object v1, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/didi/common/ui/component/StarView$StarListener;->onStarTxtListener(Ljava/lang/String;)V

    .line 242
    :cond_5
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    return v0

    .line 174
    :cond_6
    iput-boolean v4, p0, Lcom/didi/common/ui/component/StarView;->isOnePlayed:Z

    goto/16 :goto_0

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v5}, Lx/ImageView;->setImageResource(I)V

    .line 189
    iput-boolean v4, p0, Lcom/didi/common/ui/component/StarView;->isTwoPlayed:Z

    goto/16 :goto_1

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v5}, Lx/ImageView;->setImageResource(I)V

    .line 204
    iput-boolean v4, p0, Lcom/didi/common/ui/component/StarView;->isThreePlayed:Z

    goto/16 :goto_2

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0, v5}, Lx/ImageView;->setImageResource(I)V

    .line 220
    iput-boolean v4, p0, Lcom/didi/common/ui/component/StarView;->isFourPlayed:Z

    goto :goto_3

    .line 235
    :cond_a
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0, v5}, Lx/ImageView;->setImageResource(I)V

    .line 236
    iput-boolean v4, p0, Lcom/didi/common/ui/component/StarView;->isFivePlayed:Z

    goto :goto_4
.end method


# virtual methods
.method public getStarLevel()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    return v0
.end method

.method public setIsCanTouch(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/component/StarView;->changeListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 5
    .parameter "level"

    .prologue
    const v4, 0x7f0200eb

    const v3, 0x7f0200ea

    const/4 v2, 0x0

    .line 247
    iput p1, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    .line 248
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v4}, Lx/ImageView;->setImageResource(I)V

    .line 250
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 255
    :goto_0
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v4}, Lx/ImageView;->setImageResource(I)V

    .line 257
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 262
    :goto_1
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v4}, Lx/ImageView;->setImageResource(I)V

    .line 264
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 269
    :goto_2
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 270
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0, v4}, Lx/ImageView;->setImageResource(I)V

    .line 271
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 275
    :goto_3
    iget v0, p0, Lcom/didi/common/ui/component/StarView;->mLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 276
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0, v4}, Lx/ImageView;->setImageResource(I)V

    .line 277
    invoke-virtual {p0}, Lcom/didi/common/ui/component/StarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    .line 281
    :goto_4
    iput-boolean v2, p0, Lcom/didi/common/ui/component/StarView;->isOnePlayed:Z

    .line 282
    iput-boolean v2, p0, Lcom/didi/common/ui/component/StarView;->isTwoPlayed:Z

    .line 283
    iput-boolean v2, p0, Lcom/didi/common/ui/component/StarView;->isThreePlayed:Z

    .line 284
    iput-boolean v2, p0, Lcom/didi/common/ui/component/StarView;->isFourPlayed:Z

    .line 285
    iput-boolean v2, p0, Lcom/didi/common/ui/component/StarView;->isFivePlayed:Z

    .line 286
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setImageResource(I)V

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/component/StarView;->mStarTxt:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/didi/common/ui/component/StarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public setListener(Lcom/didi/common/ui/component/StarView$StarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/common/ui/component/StarView;->mListener:Lcom/didi/common/ui/component/StarView$StarListener;

    .line 66
    return-void
.end method
