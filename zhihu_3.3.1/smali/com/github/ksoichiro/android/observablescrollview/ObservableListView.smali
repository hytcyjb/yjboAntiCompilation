.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.super Landroid/widget/ListView;
.source "ObservableListView.java"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/util/SparseIntArray;

.field private g:Lcom/github/ksoichiro/android/observablescrollview/a;

.field private h:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/view/MotionEvent;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/AbsListView$OnScrollListener;

.field private o:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    .line 53
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->o:Landroid/widget/AbsListView$OnScrollListener;

    .line 85
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 243
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->o:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 244
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    if-eqz v0, :cond_9

    .line 248
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 249
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getFirstVisiblePosition()I

    move-result v3

    .line 250
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getFirstVisiblePosition()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v2, v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 257
    if-eqz v4, :cond_9

    .line 258
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    if-ge v0, v3, :cond_a

    .line 261
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    sub-int v0, v3, v0

    if-eq v0, v6, :cond_4

    .line 262
    add-int/lit8 v0, v3, -0x1

    move v2, v1

    :goto_1
    iget v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    if-le v0, v5, :cond_5

    .line 263
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 264
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 262
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 269
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_2

    :cond_4
    move v2, v1

    .line 273
    :cond_5
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    iget v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    .line 274
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    .line 295
    :cond_6
    :goto_3
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    if-gez v0, :cond_7

    .line 296
    iput v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    .line 298
    :cond_7
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    .line 299
    iput v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    .line 301
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Z

    iget-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->j:Z

    invoke-interface {v0, v2, v3, v4}, Lcom/github/ksoichiro/android/observablescrollview/a;->a(IZZ)V

    .line 302
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Z

    if-eqz v0, :cond_8

    .line 303
    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Z

    .line 306
    :cond_8
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    if-ge v0, v1, :cond_f

    .line 307
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->UP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    .line 313
    :goto_4
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:I

    .line 317
    :cond_9
    return-void

    .line 275
    :cond_a
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    if-ge v3, v0, :cond_e

    .line 278
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    sub-int/2addr v0, v3

    if-eq v0, v6, :cond_c

    .line 279
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    :goto_5
    if-le v2, v3, :cond_d

    .line 280
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_b

    .line 281
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 279
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 286
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_6

    :cond_c
    move v0, v1

    .line 290
    :cond_d
    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    sub-int v0, v2, v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    .line 291
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    goto :goto_3

    .line 292
    :cond_e
    if-nez v3, :cond_6

    .line 293
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    goto :goto_3

    .line 308
    :cond_f
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:I

    if-ge v0, v1, :cond_10

    .line 309
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->DOWN:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    goto :goto_4

    .line 311
    :cond_10
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->STOP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    goto :goto_4
.end method

.method static synthetic b(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b()V

    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 124
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->j:Z

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Z

    .line 125
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    invoke-interface {v0}, Lcom/github/ksoichiro/android/observablescrollview/a;->a()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;

    .line 91
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->a:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    .line 92
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    .line 93
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->c:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    .line 94
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->d:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:I

    .line 95
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->e:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    .line 96
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    .line 97
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 98
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;

    invoke-direct {v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 104
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->a:I

    .line 105
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->b:I

    .line 106
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->c:I

    .line 107
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->d:I

    .line 108
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->e:I

    .line 109
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    .line 110
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 138
    :pswitch_0
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->k:Z

    .line 139
    iput-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->j:Z

    .line 140
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    invoke-interface {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/a;->a(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 144
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/view/MotionEvent;

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 147
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/view/MotionEvent;

    .line 148
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getCurrentScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->k:Z

    if-eqz v0, :cond_2

    move v0, v4

    .line 153
    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_2
    move-object v5, p0

    move v0, v2

    .line 168
    :goto_3
    if-eqz v5, :cond_4

    if-eq v5, v1, :cond_4

    .line 169
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 170
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 172
    :try_start_0
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    move v0, v2

    move v2, v3

    .line 175
    goto :goto_3

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->m:Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    move v0, v2

    move v2, v3

    .line 177
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 178
    invoke-virtual {v3, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 180
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->k:Z

    .line 186
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 190
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;

    invoke-direct {v0, p0, v1, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->post(Ljava/lang/Runnable;)Z

    move v0, v4

    .line 196
    goto/16 :goto_1

    .line 201
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 214
    return-void
.end method

.method public setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/a;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Lcom/github/ksoichiro/android/observablescrollview/a;

    .line 219
    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->m:Landroid/view/ViewGroup;

    .line 224
    return-void
.end method
