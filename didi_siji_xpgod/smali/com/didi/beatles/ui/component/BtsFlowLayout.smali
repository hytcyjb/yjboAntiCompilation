.class public Lcom/didi/beatles/ui/component/BtsFlowLayout;
.super Landroid/view/ViewGroup;
.source "BtsFlowLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowLayout"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mLineHeight:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public addAllTags([Ljava/lang/String;)V
    .locals 2
    .parameter "mTags"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->inflater:Landroid/view/LayoutInflater;

    .line 208
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 214
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addTag(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030042

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 220
    .local v0, text:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 40
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 35
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getLineNum()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getPaddingRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getPaddingLeft()I

    move-result v22

    add-int v21, v21, v22

    sub-int v19, v20, v21

    .line 133
    .local v19, width:I
    const/4 v14, 0x0

    .line 134
    .local v14, lineWidth:I
    const/4 v11, 0x0

    .line 136
    .local v11, lineHeight:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v13, lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getChildCount()I

    move-result v3

    .line 139
    .local v3, cCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v3, :cond_1

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 141
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    .local v15, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 143
    .local v6, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 146
    .local v5, childHeight:I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v14

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v14, 0x0

    .line 152
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v13       #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v14, v14, v20

    .line 158
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 159
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 162
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v15           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v10, 0x0

    .line 166
    .local v10, left:I
    const/16 v18, 0x0

    .line 168
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    .line 169
    .local v12, lineNums:I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_4

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    check-cast v13, Ljava/util/List;

    .line 173
    .restart local v13       #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 179
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 180
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 181
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 179
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 184
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 187
    .restart local v15       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v10

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getPaddingLeft()I

    move-result v21

    add-int v9, v20, v21

    .line 188
    .local v9, lc:I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v18

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getPaddingTop()I

    move-result v21

    add-int v17, v20, v21

    .line 189
    .local v17, tc:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v16, v9, v20

    .line 190
    .local v16, rc:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v2, v17, v20

    .line 195
    .local v2, bc:I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 197
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v10, v10, v20

    goto :goto_3

    .line 199
    .end local v2           #bc:I
    .end local v4           #child:Landroid/view/View;
    .end local v9           #lc:I
    .end local v15           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16           #rc:I
    .end local v17           #tc:I
    :cond_3
    const/4 v10, 0x0

    .line 200
    add-int v18, v18, v11

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 203
    .end local v8           #j:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 53
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 55
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 56
    .local v16, sizeWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 57
    .local v15, sizeHeight:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 58
    .local v13, modeWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 60
    .local v12, modeHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getPaddingRight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    sub-int v14, v16, v18

    .line 65
    .local v14, realSizeWidth:I
    const/16 v17, 0x0

    .line 66
    .local v17, width:I
    const/4 v7, 0x0

    .line 70
    .local v7, height:I
    const/4 v10, 0x0

    .line 74
    .local v10, lineWidth:I
    const/4 v9, 0x0

    .line 75
    .local v9, lineHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getChildCount()I

    move-result v3

    .line 78
    .local v3, cCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 79
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    .local v11, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .line 87
    .local v6, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 91
    .local v5, childHeight:I
    add-int v18, v10, v6

    move/from16 v0, v18

    if-le v0, v14, :cond_1

    .line 92
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 93
    move v10, v6

    .line 95
    add-int/2addr v7, v9

    .line 97
    move v9, v5

    .line 105
    :goto_1
    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 106
    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 107
    add-int/2addr v7, v9

    .line 78
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 101
    :cond_1
    add-int/2addr v10, v6

    .line 102
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    .line 110
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v11           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .end local v16           #sizeWidth:I
    :goto_2
    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v7, :cond_3

    const v18, 0x7f090041

    invoke-static/range {v18 .. v18}, Lcom/didi/common/helper/ResourcesHelper;->getDimensionPixelSize(I)I

    move-result v15

    .end local v15           #sizeHeight:I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setMeasuredDimension(II)V

    .line 115
    return-void

    .restart local v15       #sizeHeight:I
    .restart local v16       #sizeWidth:I
    :cond_4
    move/from16 v16, v17

    .line 110
    goto :goto_2

    .end local v16           #sizeWidth:I
    :cond_5
    move v15, v7

    goto :goto_3
.end method
