.class public Lcom/didi/beatles/business/order/BtsPullRefreshListView;
.super Landroid/widget/ListView;
.source "BtsPullRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DOWN_DONE:I = 0x67

.field private static final DOWN_LOADING:I = 0x68

.field private static final DOWN_PULL_TO_REFRESH:I = 0x65

.field private static final DOWN_REFRESHING:I = 0x66

.field private static final DOWN_RELEASE_TO_REFRESH:I = 0x64

.field private static final INIT:I = 0x12d

.field private static final RATIO:I = 0x2

.field private static final UP_DONE:I = 0xcb

.field private static final UP_LOADING:I = 0xcc

.field private static final UP_PULL_TO_REFRESH:I = 0xc9

.field private static final UP_REFRESHING:I = 0xca

.field private static final UP_RELEASE_TO_REFRESH:I = 0xc8


# instance fields
.field private firstItemIndex:I

.field private footAnimation:Landroid/view/animation/RotateAnimation;

.field private footArrowImageView:Landroid/widget/ImageView;

.field private footContentHeight:I

.field private footContentWidth:I

.field private footLastUpdate:Landroid/widget/TextView;

.field private footProgressBar:Landroid/widget/ProgressBar;

.field private footReverseAnimation:Landroid/view/animation/RotateAnimation;

.field private footTitle:Landroid/widget/TextView;

.field private footView:Landroid/widget/LinearLayout;

.field private headAnimation:Landroid/view/animation/RotateAnimation;

.field private headArrowImageView:Landroid/widget/ImageView;

.field private headContentHeight:I

.field private headContentWidth:I

.field private headLastUpdate:Landroid/widget/TextView;

.field private headProgressBar:Landroid/widget/ProgressBar;

.field private headReverseAnimation:Landroid/view/animation/RotateAnimation;

.field private headTitle:Landroid/widget/TextView;

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isDownBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private isSecondPullDown:Z

.field private isUpBack:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private refreshListener:Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;

.field private startY:I

.field private state:I

.field private totalItemIndex:I

.field private visibleItemIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isSecondPullDown:Z

    .line 86
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isSecondPullDown:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method private changeHeaderFootViewByState()V
    .locals 6

    .prologue
    const v5, 0x7f02028b

    const v4, 0x7f02028a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 338
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    sparse-switch v0, :sswitch_data_0

    .line 425
    :goto_0
    return-void

    .line 340
    :sswitch_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 344
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5373\u53ef\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 351
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 354
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isDownBack:Z

    if-eqz v0, :cond_0

    .line 355
    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isDownBack:Z

    .line 356
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 357
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headReverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    :sswitch_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 365
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 367
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isSecondPullDown:Z

    goto :goto_0

    .line 372
    :sswitch_3
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 373
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 375
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 378
    :sswitch_4
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 382
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 386
    :sswitch_5
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 389
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 392
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isUpBack:Z

    if-eqz v0, :cond_1

    .line 393
    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isUpBack:Z

    .line 394
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 395
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footReverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :sswitch_6
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 403
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 405
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 409
    :sswitch_7
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 410
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 412
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 415
    :sswitch_8
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 416
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 418
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 420
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 422
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
        0xcb -> :sswitch_7
        0x12d -> :sswitch_8
    .end sparse-switch
.end method

.method private getLastUpdadeTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 472
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 474
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleMoveAction(I)V
    .locals 10
    .parameter "tempY"

    .prologue
    const/16 v9, 0x64

    const/16 v8, 0xc9

    const/16 v7, 0x65

    const-wide v5, 0x3ff199999999999aL

    const/4 v4, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRecored:Z

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    .line 274
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    .line 276
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v0, v9, :cond_2

    .line 277
    invoke-virtual {p0, v4}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setSelection(I)V

    .line 278
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    if-lez v0, :cond_c

    .line 279
    iput v7, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 280
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 286
    :cond_2
    :goto_1
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v0, v7, :cond_3

    .line 287
    invoke-virtual {p0, v4}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setSelection(I)V

    .line 288
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_d

    .line 289
    iput v9, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isDownBack:Z

    .line 291
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 297
    :cond_3
    :goto_2
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 298
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->totalItemIndex:I

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setSelection(I)V

    .line 299
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    .line 300
    iput v8, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 301
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 304
    :cond_4
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v0, v8, :cond_5

    .line 305
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->totalItemIndex:I

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setSelection(I)V

    .line 306
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    .line 307
    const/16 v0, 0xc8

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isUpBack:Z

    .line 309
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 312
    :cond_5
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_8

    .line 313
    :cond_6
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    if-lez v0, :cond_7

    .line 314
    iput v7, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 315
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 317
    :cond_7
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    if-gez v0, :cond_8

    .line 318
    iput v8, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 319
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 322
    :cond_8
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v0, v7, :cond_9

    .line 323
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 325
    :cond_9
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v0, v9, :cond_a

    .line 326
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 328
    :cond_a
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v0, v8, :cond_b

    .line 329
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentHeight:I

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 331
    :cond_b
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentHeight:I

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 281
    :cond_c
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    if-gtz v0, :cond_2

    .line 282
    const/16 v0, 0x67

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 283
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    goto/16 :goto_1

    .line 292
    :cond_d
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    sub-int v0, p1, v0

    if-gtz v0, :cond_3

    .line 293
    const/16 v0, 0x67

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 294
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    goto/16 :goto_2
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

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070044

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setCacheColorHint(I)V

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 102
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300df

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c6

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headArrowImageView:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c7

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headProgressBar:Landroid/widget/ProgressBar;

    .line 105
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c9

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headTitle:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804ca

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headLastUpdate:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headLastUpdate:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300df

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c6

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footArrowImageView:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c7

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footProgressBar:Landroid/widget/ProgressBar;

    .line 112
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804c9

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footTitle:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    const v5, 0x7f0804ca

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footLastUpdate:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footLastUpdate:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->measureView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->measureView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentWidth:I

    .line 119
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    .line 120
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentWidth:I

    .line 121
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentHeight:I

    .line 123
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 124
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 125
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 128
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 130
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 131
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headAnimation:Landroid/view/animation/RotateAnimation;

    .line 132
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 133
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 134
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 135
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headReverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 136
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headReverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headReverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0x104

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 138
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headReverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 140
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footAnimation:Landroid/view/animation/RotateAnimation;

    .line 141
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 144
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footReverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 145
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footReverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footReverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 147
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footReverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 149
    const/16 v0, 0x12d

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 150
    iput-boolean v12, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRefreshable:Z

    .line 151
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 152
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 157
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 158
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 162
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 165
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 169
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 170
    return-void

    .line 167
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private onLoadMore()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->refreshListener:Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->refreshListener:Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;->onUpRefresh()V

    .line 436
    :cond_0
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->refreshListener:Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->refreshListener:Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;->onDownRefresh()V

    .line 431
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 478
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setSelection(I)V

    .line 483
    iput v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 484
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 485
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onRefresh()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    const/16 v0, 0xcb

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 457
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->measureView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentWidth:I

    .line 459
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footContentHeight:I

    .line 460
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 461
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 462
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 463
    return-void
.end method

.method public onRefreshComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    const/16 v0, 0x67

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 441
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isSecondPullDown:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headLastUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->measureView(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentWidth:I

    .line 445
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    .line 447
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 448
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 449
    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isSecondPullDown:Z

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headLastUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u540e\u66f4\u65b0\u65f6\u95f4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->getLastUpdadeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 453
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 184
    :cond_0
    iput p2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->firstItemIndex:I

    .line 185
    iput p3, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->visibleItemIndex:I

    .line 186
    iput p4, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->totalItemIndex:I

    .line 187
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 177
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0xc8

    const/16 v6, 0x65

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    iget-boolean v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 228
    :pswitch_0
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->firstItemIndex:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->firstItemIndex:I

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->visibleItemIndex:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->totalItemIndex:I

    if-ne v1, v2, :cond_0

    :cond_1
    iget-boolean v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRecored:Z

    if-nez v1, :cond_0

    .line 229
    iput-boolean v4, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRecored:Z

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    goto :goto_0

    .line 234
    :pswitch_1
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_5

    .line 235
    :cond_2
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v1, v6, :cond_3

    .line 236
    const/16 v1, 0x67

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 237
    :cond_3
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_4

    .line 238
    const/16 v1, 0xcb

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 241
    :cond_5
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v1, v7, :cond_9

    .line 242
    :cond_6
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v1, v5, :cond_7

    .line 243
    const/16 v1, 0x66

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 244
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onRefresh()V

    .line 246
    :cond_7
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    if-ne v1, v7, :cond_8

    .line 247
    const/16 v1, 0xca

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->state:I

    .line 248
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onLoadMore()V

    .line 250
    :cond_8
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->changeHeaderFootViewByState()V

    .line 252
    :cond_9
    iput-boolean v3, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRecored:Z

    .line 253
    iput-boolean v3, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isDownBack:Z

    .line 254
    iput-boolean v3, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isUpBack:Z

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 258
    .local v0, tempY:I
    iget-boolean v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRecored:Z

    if-nez v1, :cond_b

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->firstItemIndex:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->firstItemIndex:I

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->visibleItemIndex:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->totalItemIndex:I

    if-ne v1, v2, :cond_b

    .line 259
    :cond_a
    iput-boolean v4, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRecored:Z

    .line 260
    iput v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->startY:I

    .line 262
    :cond_b
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->handleMoveAction(I)V

    goto/16 :goto_0

    .line 226
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
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->headLastUpdate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u540e\u66f4\u65b0\u65f6\u95f4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->getLastUpdadeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 469
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 97
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 194
    return-void
.end method

.method public setRefreshable(Z)V
    .locals 0
    .parameter "isRefreshable"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRefreshable:Z

    .line 216
    return-void
.end method

.method public setonRefreshListener(Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;)V
    .locals 1
    .parameter "refreshListener"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->refreshListener:Lcom/didi/beatles/business/order/BtsPullRefreshListView$OnRefreshListener;

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPullRefreshListView;->isRefreshable:Z

    .line 212
    return-void
.end method
