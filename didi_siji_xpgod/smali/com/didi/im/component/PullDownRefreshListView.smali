.class public Lcom/didi/im/component/PullDownRefreshListView;
.super Landroid/widget/ListView;
.source "PullDownRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_TO_REFRESH:I = 0x1

.field private static final RATIO:I = 0x2

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_TO_REFRESH:I


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private firstItemIndex:I

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isConversationList:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private isSecondPullDown:Z

.field private lastUpdate:Landroid/widget/TextView;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isSecondPullDown:Z

    .line 64
    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isConversationList:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/didi/im/component/PullDownRefreshListView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isSecondPullDown:Z

    .line 64
    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isConversationList:Z

    .line 73
    invoke-direct {p0, p1}, Lcom/didi/im/component/PullDownRefreshListView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 290
    iget v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 297
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5373\u53ef\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 305
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 308
    iget-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 309
    iput-boolean v2, p0, Lcom/didi/im/component/PullDownRefreshListView;->isBack:Z

    .line 310
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 311
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 319
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 321
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isSecondPullDown:Z

    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 328
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 330
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getLastUpdadeTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 375
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 377
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/4 v12, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070044

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/im/component/PullDownRefreshListView;->setCacheColorHint(I)V

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 84
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300df

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c6

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->arrowImageView:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c7

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->progressBar:Landroid/widget/ProgressBar;

    .line 91
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c9

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->title:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804ca

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->lastUpdate:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->lastUpdate:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/im/component/PullDownRefreshListView;->measureView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentWidth:I

    .line 96
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    .line 98
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 99
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 101
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/im/component/PullDownRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 102
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 103
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 110
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 112
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 114
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/didi/im/component/PullDownRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 115
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 117
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 120
    iput-boolean v12, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRefreshable:Z

    .line 122
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 123
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 128
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 129
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 132
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 133
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 136
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 140
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 141
    return-void

    .line 138
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->refreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->refreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;->onRefresh()V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 381
    iget v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 386
    iput v2, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 387
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 388
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefresh()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onRefreshComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 346
    iget-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isConversationList:Z

    if-nez v0, :cond_0

    .line 347
    iget-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isSecondPullDown:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->lastUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/im/component/PullDownRefreshListView;->measureView(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentWidth:I

    .line 351
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    .line 353
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 354
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 355
    iput-boolean v2, p0, Lcom/didi/im/component/PullDownRefreshListView;->isSecondPullDown:Z

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->lastUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u540e\u66f4\u65b0\u65f6\u95f4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->getLastUpdadeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 360
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 155
    :cond_0
    iput p2, p0, Lcom/didi/im/component/PullDownRefreshListView;->firstItemIndex:I

    .line 156
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 148
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const-wide v8, 0x3ff199999999999aL

    const/4 v3, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    iget-boolean v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 196
    :pswitch_0
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->firstItemIndex:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRecored:Z

    if-nez v1, :cond_0

    .line 197
    iput-boolean v6, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRecored:Z

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    goto :goto_0

    .line 202
    :pswitch_1
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 205
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-ne v1, v6, :cond_1

    .line 206
    iput v7, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 208
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 210
    :cond_1
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-nez v1, :cond_2

    .line 211
    iput v3, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 213
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 214
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefresh()V

    .line 217
    :cond_2
    iput-boolean v5, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRecored:Z

    .line 218
    iput-boolean v5, p0, Lcom/didi/im/component/PullDownRefreshListView;->isBack:Z

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 222
    .local v0, tempY:I
    iget-boolean v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRecored:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->firstItemIndex:I

    if-nez v1, :cond_3

    .line 223
    iput-boolean v6, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRecored:Z

    .line 224
    iput v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    .line 226
    :cond_3
    iget-boolean v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 229
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-nez v1, :cond_4

    .line 230
    invoke-virtual {p0, v5}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 232
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v3, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    .line 234
    iput v6, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 235
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 249
    :cond_4
    :goto_1
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-ne v1, v6, :cond_5

    .line 250
    invoke-virtual {p0, v5}, Lcom/didi/im/component/PullDownRefreshListView;->setSelection(I)V

    .line 252
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget v3, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_9

    .line 254
    iput v5, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 255
    iput-boolean v6, p0, Lcom/didi/im/component/PullDownRefreshListView;->isBack:Z

    .line 256
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 266
    :cond_5
    :goto_2
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-ne v1, v7, :cond_6

    .line 267
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_6

    .line 269
    iput v6, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 270
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    .line 274
    :cond_6
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-ne v1, v6, :cond_7

    .line 275
    iget-object v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 278
    :cond_7
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/didi/im/component/PullDownRefreshListView;->headContentHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 238
    :cond_8
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_4

    .line 240
    iput v7, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 241
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    goto :goto_1

    .line 259
    :cond_9
    iget v1, p0, Lcom/didi/im/component/PullDownRefreshListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    .line 261
    iput v7, p0, Lcom/didi/im/component/PullDownRefreshListView;->state:I

    .line 262
    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->changeHeaderViewByState()V

    goto :goto_2

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->lastUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u540e\u66f4\u65b0\u65f6\u95f4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/didi/im/component/PullDownRefreshListView;->getLastUpdadeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    return-void
.end method

.method public setFooter(I)V
    .locals 5
    .parameter "height"

    .prologue
    .line 392
    iget-object v2, p0, Lcom/didi/im/component/PullDownRefreshListView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 393
    .local v0, footView:Landroid/widget/LinearLayout;
    if-lez p1, :cond_0

    .line 394
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v1, param:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    .end local v1           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/didi/im/component/PullDownRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/didi/im/component/PullDownRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 79
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/didi/im/component/PullDownRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 163
    return-void
.end method

.method public setRefreshable(Z)V
    .locals 0
    .parameter "isRefreshable"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRefreshable:Z

    .line 185
    return-void
.end method

.method public setTimeViewVisible()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isConversationList:Z

    .line 372
    return-void
.end method

.method public setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V
    .locals 1
    .parameter "refreshListener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/didi/im/component/PullDownRefreshListView;->refreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/im/component/PullDownRefreshListView;->isRefreshable:Z

    .line 181
    return-void
.end method
