.class public Lcom/didi/common/ui/component/TabGroup;
.super Landroid/widget/LinearLayout;
.source "TabGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/TabGroup$1;,
        Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;,
        Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;,
        Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;,
        Lcom/didi/common/ui/component/TabGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    .line 68
    iput-boolean v1, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    .line 77
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/TabGroup;->setOrientation(I)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/TabGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 79
    invoke-direct {p0}, Lcom/didi/common/ui/component/TabGroup;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v5, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    .line 68
    iput-boolean v6, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    .line 92
    sget-object v3, Lcom/sdu/didi/psnger/R$styleable;->TabGroup:[I

    const v4, 0x7f010027

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 95
    .local v2, value:I
    if-eq v2, v5, :cond_0

    .line 96
    iput v2, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    .line 99
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 100
    .local v1, index:I
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/TabGroup;->setOrientation(I)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p0, v7}, Lcom/didi/common/ui/component/TabGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 104
    invoke-direct {p0}, Lcom/didi/common/ui/component/TabGroup;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/component/TabGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/didi/common/ui/component/TabGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/component/TabGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/component/TabGroup;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/TabGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/ui/component/TabGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/TabGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/common/ui/component/TabGroup;)Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mChildOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v0, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/component/TabGroup$CheckedStateTracker;-><init>(Lcom/didi/common/ui/component/TabGroup;Lcom/didi/common/ui/component/TabGroup$1;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mChildOnCheckedChangeListener:Lcom/didi/common/ui/component/TabButton$OnCheckedChangeListener;

    .line 109
    new-instance v0, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/didi/common/ui/component/TabGroup;Lcom/didi/common/ui/component/TabGroup$1;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mPassThroughListener:Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;

    .line 110
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mPassThroughListener:Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 111
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 192
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    if-ne v0, p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iput p1, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    .line 197
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/didi/common/ui/component/TabGroup;I)V

    goto :goto_0
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .parameter "viewId"
    .parameter "checked"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/TabGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, checkedView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/common/ui/component/TabButton;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/didi/common/ui/component/TabButton;

    .end local v0           #checkedView:Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/didi/common/ui/component/TabButton;->setChecked(Z)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 140
    instance-of v2, p1, Lcom/didi/common/ui/component/TabButton;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/didi/common/ui/component/TabButton;

    .line 143
    .local v0, button:Lcom/didi/common/ui/component/TabButton;
    invoke-virtual {v0}, Lcom/didi/common/ui/component/TabButton;->getId()I

    move-result v1

    .line 144
    .local v1, id:I
    if-ne v1, v3, :cond_0

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/ui/component/TabButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    .line 150
    iget v2, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    if-eq v2, v3, :cond_1

    .line 151
    iget v2, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    invoke-direct {p0, v2, v4}, Lcom/didi/common/ui/component/TabGroup;->setCheckedStateForView(IZ)V

    .line 153
    :cond_1
    iput-boolean v4, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    .line 154
    invoke-virtual {v0}, Lcom/didi/common/ui/component/TabButton;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/didi/common/ui/component/TabGroup;->setCheckedId(I)V

    .line 158
    .end local v0           #button:Lcom/didi/common/ui/component/TabButton;
    .end local v1           #id:I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public check(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 176
    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 181
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/component/TabGroup;->setCheckedStateForView(IZ)V

    .line 184
    :cond_1
    if-eq p1, v2, :cond_2

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/component/TabGroup;->setCheckedStateForView(IZ)V

    .line 188
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/TabGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 262
    instance-of v0, p1, Lcom/didi/common/ui/component/TabGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/TabGroup;->check(I)V

    .line 235
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 267
    new-instance v0, Lcom/didi/common/ui/component/TabGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/didi/common/ui/component/TabGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/TabGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/didi/common/ui/component/TabGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/TabGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/didi/common/ui/component/TabGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/didi/common/ui/component/TabGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 254
    new-instance v0, Lcom/didi/common/ui/component/TabGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/didi/common/ui/component/TabGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/didi/common/ui/component/TabGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedTabButtonId()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 443
    iget v2, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/component/TabGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_1

    .line 458
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 448
    .restart local p2
    :cond_1
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/TabGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 449
    .local v0, mSelectedTab:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 453
    add-int/lit8 v2, p1, -0x1

    if-ne p2, v2, :cond_2

    move p2, v0

    .line 454
    goto :goto_0

    .line 455
    :cond_2
    if-lt p2, v0, :cond_0

    .line 456
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 130
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 131
    iput-boolean v2, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    .line 132
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/didi/common/ui/component/TabGroup;->setCheckedStateForView(IZ)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/TabGroup;->mProtectFromCheckedChange:Z

    .line 134
    iget v0, p0, Lcom/didi/common/ui/component/TabGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/TabGroup;->setCheckedId(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/didi/common/ui/component/TabGroup;->mOnCheckedChangeListener:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

    .line 247
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/common/ui/component/TabGroup;->mPassThroughListener:Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;

    #setter for: Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/didi/common/ui/component/TabGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 120
    return-void
.end method
