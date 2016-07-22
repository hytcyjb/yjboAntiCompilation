.class public Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.super Landroid/support/v4/app/FragmentActivity;
.source "BtsBaseAc.java"


# static fields
.field private static final FLING_MIN_VELOCITY:I = 0x2bc

.field private static final XDISTANCE_MIN:I = 0x32


# instance fields
.field isDrag:Z

.field private mContentView:Landroid/view/View;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewValid:Z

.field private mMaximumVelocity:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private xDown:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->isDrag:Z

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 15
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 213
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object/from16 v8, p1

    .line 214
    check-cast v8, Landroid/view/ViewGroup;

    .line 215
    .local v8, group:Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 216
    .local v12, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    .line 217
    .local v13, scrollY:I
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 219
    .local v7, count:I
    add-int/lit8 v9, v7, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_1

    .line 220
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, child:Landroid/view/View;
    add-int v14, p4, v12

    .line 222
    .local v14, xOffset:I
    add-int v6, p5, v13

    .line 223
    .local v6, yOffset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v11, v1, v3

    .line 224
    .local v11, realTop:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v10, v1, v3

    .line 225
    .local v10, realBottom:I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v14, v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge v14, v1, :cond_0

    if-lt v6, v11, :cond_0

    if-ge v6, v10, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v5, v14, v1

    move-object v1, p0

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x1

    .line 234
    .end local v2           #child:Landroid/view/View;
    .end local v6           #yOffset:I
    .end local v7           #count:I
    .end local v8           #group:Landroid/view/ViewGroup;
    .end local v9           #i:I
    .end local v10           #realBottom:I
    .end local v11           #realTop:I
    .end local v12           #scrollX:I
    .end local v13           #scrollY:I
    .end local v14           #xOffset:I
    :goto_1
    return v1

    .line 219
    .restart local v2       #child:Landroid/view/View;
    .restart local v6       #yOffset:I
    .restart local v7       #count:I
    .restart local v8       #group:Landroid/view/ViewGroup;
    .restart local v9       #i:I
    .restart local v10       #realBottom:I
    .restart local v11       #realTop:I
    .restart local v12       #scrollX:I
    .restart local v13       #scrollY:I
    .restart local v14       #xOffset:I
    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 234
    .end local v2           #child:Landroid/view/View;
    .end local v6           #yOffset:I
    .end local v7           #count:I
    .end local v8           #group:Landroid/view/ViewGroup;
    .end local v9           #i:I
    .end local v10           #realBottom:I
    .end local v11           #realTop:I
    .end local v12           #scrollX:I
    .end local v13           #scrollY:I
    .end local v14           #xOffset:I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v0, p3

    neg-int v1, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x3

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->isOnGestureBack(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 123
    .local v6, action:I
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 128
    packed-switch v6, :pswitch_data_0

    .line 192
    .end local v6           #action:I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 131
    .restart local v6       #action:I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->xDown:F

    .line 132
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 135
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_3

    .line 141
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 144
    :cond_3
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 145
    .local v8, x:F
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v9, v8, v0

    .line 146
    .local v9, xDiff:F
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 147
    .local v11, y:F
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    mul-float v12, v0, v1

    .line 149
    .local v12, yDiff:F
    iget v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mTouchSlop:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_1

    cmpl-float v0, v9, v12

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mContentView:Landroid/view/View;

    float-to-int v3, v9

    float-to-int v4, v8

    float-to-int v5, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->isDrag:Z

    .line 155
    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 161
    .end local v8           #x:F
    .end local v9           #xDiff:F
    .end local v11           #y:F
    .end local v12           #yDiff:F
    :pswitch_2
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->isDrag:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v7, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 163
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mMaximumVelocity:I

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 164
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    int-to-float v10, v0

    .line 169
    .local v10, xVelocity:F
    iput-boolean v2, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->isDrag:Z

    .line 171
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 173
    iput-object v3, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->xDown:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 176
    const/high16 v0, 0x442f

    cmpl-float v0, v10, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->xDown:F

    const/high16 v1, 0x4248

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onGestureBack()V

    .line 178
    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 185
    .end local v7           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v10           #xVelocity:F
    :pswitch_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 186
    iput-object v3, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 187
    iput-boolean v2, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->isDrag:Z

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getUriHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 245
    const-string v2, ""

    .line 249
    :goto_0
    return-object v2

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 248
    const-string v2, ""

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getUriParamByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 276
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 277
    const-string v2, ""

    .line 281
    :goto_0
    return-object v2

    .line 278
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 279
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 280
    const-string v2, ""

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getUriPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 259
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 260
    const-string v2, ""

    .line 264
    :goto_0
    return-object v2

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 262
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 263
    const-string v2, ""

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected isOnGestureBack(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected isViewValid()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mIsViewValid:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mHandler:Landroid/os/Handler;

    .line 57
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/didi/beatles/ui/activity/base/BtsBaseAc$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc$1;-><init>(Lcom/didi/beatles/ui/activity/base/BtsBaseAc;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mIsViewValid:Z

    .line 73
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 74
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mTouchSlop:I

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mMaximumVelocity:I

    .line 78
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mIsViewValid:Z

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 116
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method protected onGestureBack()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->finish()V

    .line 210
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 107
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 108
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 101
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/didi/common/service/DaemonService;->stop(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 82
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->setContentView(Landroid/view/View;Z)V

    .line 83
    return-void
.end method

.method public setContentView(IZ)V
    .locals 2
    .parameter "resId"
    .parameter "showTitle"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->setContentView(Landroid/view/View;Z)V

    .line 92
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->setContentView(Landroid/view/View;Z)V

    .line 88
    return-void
.end method

.method public setContentView(Landroid/view/View;Z)V
    .locals 0
    .parameter "contentView"
    .parameter "showTitle"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 96
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->mContentView:Landroid/view/View;

    .line 97
    return-void
.end method

.method public setDebugMode()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 299
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 302
    return-void
.end method
