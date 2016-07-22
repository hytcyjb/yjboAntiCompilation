.class public Lcom/didi/frame/endorder/EndSlideView;
.super Landroid/widget/RelativeLayout;
.source "EndSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/endorder/EndSlideView$TitleListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION:I = 0xfa


# instance fields
.field private hideLastItemListener:Landroid/view/animation/Animation$AnimationListener;

.field private hideListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCheck:Landroid/widget/ImageView;

.field private mEditLayout:Landroid/widget/LinearLayout;

.field private mEditView:Landroid/widget/EditText;

.field private mIcon:Landroid/widget/ImageView;

.field private mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

.field private mTitleContent:Landroid/widget/TextView;

.field private mTitleLayout:Lx/RelativeLayout;

.field private showLastItemListener:Landroid/view/animation/Animation$AnimationListener;

.field private showListener:Landroid/view/animation/Animation$AnimationListener;

.field private titleListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$1;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->titleListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$2;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->showListener:Landroid/view/animation/Animation$AnimationListener;

    .line 226
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$3;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->hideListener:Landroid/view/animation/Animation$AnimationListener;

    .line 246
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$4;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->showLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    .line 262
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$5;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->hideLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    .line 44
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndSlideView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$1;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->titleListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$2;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->showListener:Landroid/view/animation/Animation$AnimationListener;

    .line 226
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$3;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->hideListener:Landroid/view/animation/Animation$AnimationListener;

    .line 246
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$4;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->showLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    .line 262
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$5;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->hideLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    .line 54
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndSlideView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$1;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->titleListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$2;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->showListener:Landroid/view/animation/Animation$AnimationListener;

    .line 226
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$3;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->hideListener:Landroid/view/animation/Animation$AnimationListener;

    .line 246
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$4;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->showLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    .line 262
    new-instance v0, Lcom/didi/frame/endorder/EndSlideView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndSlideView$5;-><init>(Lcom/didi/frame/endorder/EndSlideView;)V

    iput-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->hideLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    .line 49
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndSlideView;->init()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/endorder/EndSlideView;)Lcom/didi/frame/endorder/EndSlideView$TitleListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/endorder/EndSlideView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndSlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0300a0

    invoke-static {v1, v2, p0}, Lcom/didi/frame/endorder/EndSlideView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f080376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleLayout:Lx/RelativeLayout;

    .line 62
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleLayout:Lx/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/endorder/EndSlideView;->titleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditView:Landroid/widget/EditText;

    .line 64
    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mIcon:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f080377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleContent:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f080378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mCheck:Landroid/widget/ImageView;

    .line 67
    return-void
.end method

.method public static remargin(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "top"

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    if-nez v2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 203
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 204
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public downLayoutAnimation()V
    .locals 5

    .prologue
    .line 145
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f090187

    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 148
    .local v0, showEditAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 149
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->showLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/didi/frame/endorder/EndSlideView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    return-void
.end method

.method public getReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideEditAnimation()V
    .locals 5

    .prologue
    .line 120
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleLayout:Lx/RelativeLayout;

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setXBackgroundResource(I)V

    .line 121
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mCheck:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f090187

    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v4

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 126
    .local v0, hideEditAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 127
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->hideListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 128
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    return-void
.end method

.method public isEditShow()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveLayoutAnimation()V
    .locals 5

    .prologue
    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f090187

    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v4

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 137
    .local v0, hideEditAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 138
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->hideLastItemListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/didi/frame/endorder/EndSlideView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    return-void
.end method

.method public setTitleClickable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleLayout:Lx/RelativeLayout;

    invoke-virtual {v0, p1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 91
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setTitleListener(Lcom/didi/frame/endorder/EndSlideView$TitleListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/didi/frame/endorder/EndSlideView;->mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    .line 169
    return-void
.end method

.method public setTitleResource(III)V
    .locals 2
    .parameter "icon"
    .parameter "textcolor"
    .parameter "bg"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndSlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleLayout:Lx/RelativeLayout;

    invoke-virtual {v0, p3}, Lx/RelativeLayout;->setXBackgroundResource(I)V

    .line 81
    return-void
.end method

.method public showEditAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mTitleLayout:Lx/RelativeLayout;

    const v2, 0x7f0200f9

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setXBackgroundResource(I)V

    .line 106
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 110
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f090187

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 113
    .local v0, showEditAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 114
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->showListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 115
    iget-object v1, p0, Lcom/didi/frame/endorder/EndSlideView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    return-void
.end method
