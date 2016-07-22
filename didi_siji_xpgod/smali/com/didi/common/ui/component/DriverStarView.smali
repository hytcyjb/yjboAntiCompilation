.class public Lcom/didi/common/ui/component/DriverStarView;
.super Landroid/widget/RelativeLayout;
.source "DriverStarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/DriverStarView$StarListener;
    }
.end annotation


# static fields
.field private static sBrightStarDrawableId:I

.field private static sDarkStarDrawableId:I


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

.field private mListener:Lcom/didi/common/ui/component/DriverStarView$StarListener;

.field private mOneStar:Lx/ImageView;

.field private mStarTxt:Ljava/lang/String;

.field private mThreeStar:Lx/ImageView;

.field private mTwoStar:Lx/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f0201a4

    sput v0, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    .line 24
    const v0, 0x7f0201a5

    sput v0, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/didi/common/ui/component/DriverStarView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/DriverStarView$1;-><init>(Lcom/didi/common/ui/component/DriverStarView;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->changeListener:Landroid/view/View$OnTouchListener;

    .line 28
    const v0, 0x7f03009f

    invoke-static {p1, v0, p0}, Lcom/didi/common/ui/component/DriverStarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DriverStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLayout:Landroid/widget/RelativeLayout;

    .line 30
    const v0, 0x7f0801e9

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DriverStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    .line 31
    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DriverStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    .line 32
    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DriverStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    .line 33
    const v0, 0x7f0801ec

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DriverStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    .line 34
    const v0, 0x7f0801ed

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/DriverStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 41
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/component/DriverStarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DriverStarView;->isMove:Z

    return v0
.end method

.method static synthetic access$002(Lcom/didi/common/ui/component/DriverStarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/didi/common/ui/component/DriverStarView;->isMove:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/component/DriverStarView;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DriverStarView;->setSelect(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/component/DriverStarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    return v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/component/DriverStarView;)Lcom/didi/common/ui/component/DriverStarView$StarListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mListener:Lcom/didi/common/ui/component/DriverStarView$StarListener;

    return-object v0
.end method

.method private setSelect(F)I
    .locals 4
    .parameter "x"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 101
    iput v2, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 102
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DriverStarView;->isOnePlayed:Z

    if-nez v0, :cond_0

    .line 103
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isOnePlayed:Z

    .line 104
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 117
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DriverStarView;->isTwoPlayed:Z

    if-nez v0, :cond_1

    .line 118
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isTwoPlayed:Z

    .line 119
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 128
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 132
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DriverStarView;->isThreePlayed:Z

    if-nez v0, :cond_2

    .line 133
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isThreePlayed:Z

    .line 134
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 143
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 147
    const/4 v0, 0x4

    iput v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 148
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DriverStarView;->isFourPlayed:Z

    if-nez v0, :cond_3

    .line 149
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isFourPlayed:Z

    .line 150
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 157
    :goto_3
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 164
    iget-boolean v0, p0, Lcom/didi/common/ui/component/DriverStarView;->isFivePlayed:Z

    if-nez v0, :cond_4

    .line 165
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isFivePlayed:Z

    .line 166
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 174
    :goto_4
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mListener:Lcom/didi/common/ui/component/DriverStarView$StarListener;

    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/didi/common/ui/component/DriverStarView$StarListener;->onStarTxtListener(Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    return v0

    .line 109
    :cond_5
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DriverStarView;->isOnePlayed:Z

    goto/16 :goto_0

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 124
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DriverStarView;->isTwoPlayed:Z

    goto/16 :goto_1

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 139
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DriverStarView;->isThreePlayed:Z

    goto/16 :goto_2

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 155
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DriverStarView;->isFourPlayed:Z

    goto :goto_3

    .line 170
    :cond_9
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 171
    iput-boolean v3, p0, Lcom/didi/common/ui/component/DriverStarView;->isFivePlayed:Z

    goto :goto_4
.end method


# virtual methods
.method public getStarLevel()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    return v0
.end method

.method public setDarkResource(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 45
    sput p1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    .line 46
    return-void
.end method

.method public setIsCanTouch(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/component/DriverStarView;->changeListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 180
    iput p1, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    .line 181
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 188
    :goto_0
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 190
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 195
    :goto_1
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b051f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 202
    :goto_2
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 204
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 208
    :goto_3
    iget v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 209
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sBrightStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 210
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DriverStarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    .line 214
    :goto_4
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isOnePlayed:Z

    .line 215
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isTwoPlayed:Z

    .line 216
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isThreePlayed:Z

    .line 217
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isFourPlayed:Z

    .line 218
    iput-boolean v2, p0, Lcom/didi/common/ui/component/DriverStarView;->isFivePlayed:Z

    .line 219
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mOneStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mStarTxt:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mTwoStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mThreeStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFourStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/didi/common/ui/component/DriverStarView;->mFiveStar:Lx/ImageView;

    sget v1, Lcom/didi/common/ui/component/DriverStarView;->sDarkStarDrawableId:I

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public setLightResource()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public setListener(Lcom/didi/common/ui/component/DriverStarView$StarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/common/ui/component/DriverStarView;->mListener:Lcom/didi/common/ui/component/DriverStarView$StarListener;

    .line 68
    return-void
.end method
