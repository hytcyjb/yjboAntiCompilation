.class public Lcom/didi/im/component/CornerListView;
.super Landroid/widget/ListView;
.source "CornerListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 33
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 34
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 35
    .local v2, y:I
    invoke-virtual {p0, v1, v2}, Lcom/didi/im/component/CornerListView;->pointToPosition(II)I

    move-result v0

    .line 37
    .local v0, itemnum:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 40
    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/didi/im/component/CornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 42
    const v3, 0x7f020004

    invoke-virtual {p0, v3}, Lcom/didi/im/component/CornerListView;->setSelector(I)V

    goto :goto_0

    .line 44
    :cond_1
    const v3, 0x7f020006

    invoke-virtual {p0, v3}, Lcom/didi/im/component/CornerListView;->setSelector(I)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/didi/im/component/CornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    .line 47
    const v3, 0x7f020005

    invoke-virtual {p0, v3}, Lcom/didi/im/component/CornerListView;->setSelector(I)V

    goto :goto_0

    .line 49
    :cond_3
    const v3, 0x7f020007

    invoke-virtual {p0, v3}, Lcom/didi/im/component/CornerListView;->setSelector(I)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
