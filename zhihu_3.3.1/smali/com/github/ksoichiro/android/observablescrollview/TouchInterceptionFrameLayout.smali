.class public Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TouchInterceptionFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/view/MotionEvent;

.field private g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 241
    return-object v0
.end method

.method private varargs a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 254
    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_0

    .line 258
    invoke-virtual {p0, v3}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 259
    if-eqz v4, :cond_2

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 261
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 262
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 263
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v6, v0

    .line 267
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v7, v0

    .line 269
    if-eqz p2, :cond_5

    .line 270
    array-length v8, p2

    move v2, v1

    move v0, v1

    :goto_2
    if-ge v2, v8, :cond_6

    aget-object v9, p2, v2

    .line 271
    if-eqz v9, :cond_4

    .line 272
    invoke-static {v9}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 273
    invoke-virtual {v9, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 274
    invoke-virtual {v4, v9}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v0, v9

    .line 270
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 278
    :cond_6
    invoke-virtual {v5, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 279
    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 280
    if-eqz v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 117
    :pswitch_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    .line 118
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->f:Landroid/view/MotionEvent;

    .line 119
    iput-boolean v5, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->b:Z

    .line 120
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v1, p1, v0, v4, v4}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->a(Landroid/view/MotionEvent;ZFF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    .line 121
    iget-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->c:Z

    .line 122
    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->d:Z

    .line 123
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 134
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v2, p1, v5, v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->a(Landroid/view/MotionEvent;ZFF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    .line 135
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 145
    :pswitch_0
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->a(Landroid/view/MotionEvent;)V

    .line 147
    new-array v0, v4, [Landroid/view/MotionEvent;

    invoke-direct {p0, p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    move v0, v2

    .line 148
    goto :goto_1

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v0, v1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    .line 161
    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v3, p1, v2, v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->a(Landroid/view/MotionEvent;ZFF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    .line 162
    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    if-eqz v3, :cond_4

    .line 165
    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->c:Z

    if-nez v3, :cond_2

    .line 166
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->c:Z

    .line 168
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->f:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 170
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->a(Landroid/view/MotionEvent;)V

    .line 172
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->e:Landroid/graphics/PointF;

    .line 173
    const/4 v0, 0x0

    move v1, v0

    .line 177
    :cond_2
    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->d:Z

    if-nez v3, :cond_3

    .line 178
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->d:Z

    .line 179
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v3

    new-array v4, v4, [Landroid/view/MotionEvent;

    invoke-direct {p0, v3, v4}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    .line 182
    :cond_3
    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v3, p1, v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->a(Landroid/view/MotionEvent;FF)V

    .line 187
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->b:Z

    move v0, v2

    .line 191
    goto/16 :goto_1

    .line 193
    :cond_4
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->b:Z

    if-eqz v0, :cond_5

    .line 194
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->b:Z

    .line 195
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->f:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 197
    new-array v1, v2, [Landroid/view/MotionEvent;

    aput-object v0, v1, v4

    invoke-direct {p0, p1, v1}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    .line 206
    :goto_2
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->c:Z

    .line 209
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->d:Z

    goto/16 :goto_0

    .line 199
    :cond_5
    new-array v0, v4, [Landroid/view/MotionEvent;

    invoke-direct {p0, p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 214
    :pswitch_2
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->c:Z

    .line 215
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a:Z

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    invoke-interface {v0, p1}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;->b(Landroid/view/MotionEvent;)V

    .line 221
    :cond_6
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->d:Z

    if-nez v0, :cond_7

    .line 222
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->d:Z

    .line 223
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->b:Z

    if-eqz v0, :cond_8

    .line 224
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->b:Z

    .line 225
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->f:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 227
    new-array v1, v2, [Landroid/view/MotionEvent;

    aput-object v0, v1, v4

    invoke-direct {p0, p1, v1}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    :cond_7
    :goto_3
    move v0, v2

    .line 232
    goto/16 :goto_1

    .line 229
    :cond_8
    new-array v0, v4, [Landroid/view/MotionEvent;

    invoke-direct {p0, p1, v0}, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->a(Landroid/view/MotionEvent;[Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScrollInterceptionListener(Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout;->g:Lcom/github/ksoichiro/android/observablescrollview/TouchInterceptionFrameLayout$a;

    .line 104
    return-void
.end method
