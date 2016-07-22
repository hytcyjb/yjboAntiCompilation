.class public Lcom/facebook/drawee/view/GenericDraweeView;
.super Lcom/facebook/drawee/view/DraweeView;
.source "GenericDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/view/DraweeView",
        "<",
        "Lcom/facebook/drawee/generic/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->setHierarchy(Lcom/facebook/drawee/d/b;)V

    .line 66
    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 357
    if-gez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->values()[Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v1

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 33
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 93
    const/16 v26, 0x12c

    .line 95
    const/16 v25, 0x0

    .line 96
    sget-object v24, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 98
    const/16 v23, 0x0

    .line 99
    sget-object v22, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 101
    const/16 v21, 0x0

    .line 102
    sget-object v20, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 104
    const/16 v19, 0x0

    .line 105
    sget-object v18, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 107
    sget-object v17, Lcom/facebook/drawee/generic/b;->b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 109
    const/16 v16, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    const/4 v14, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v11, 0x1

    .line 116
    const/4 v10, 0x1

    .line 117
    const/4 v9, 0x1

    .line 118
    const/4 v8, 0x1

    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v3, 0x0

    .line 126
    if-eqz p2, :cond_1a

    .line 127
    sget-object v27, Lcom/facebook/drawee/a$a;->GenericDraweeView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 132
    :try_start_0
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v30

    .line 134
    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    .line 135
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v31

    .line 138
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_actualImageScaleType:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 140
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_actualImageScaleType:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v17

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_placeholderImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 147
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_placeholderImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    goto :goto_1

    .line 151
    :cond_2
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_pressedStateOverlayImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 153
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_pressedStateOverlayImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_1

    .line 157
    :cond_3
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_progressBarImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 159
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_progressBarImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    goto :goto_1

    .line 164
    :cond_4
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_fadeDuration:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 166
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_fadeDuration:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    goto :goto_1

    .line 170
    :cond_5
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_viewAspectRatio:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 172
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_viewAspectRatio:I

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getAspectRatio()F

    move-result v32

    .line 172
    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->setAspectRatio(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v3

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 176
    :cond_6
    :try_start_1
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_placeholderImageScaleType:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 178
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_placeholderImageScaleType:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v24

    goto/16 :goto_1

    .line 183
    :cond_7
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_retryImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 185
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_retryImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    goto/16 :goto_1

    .line 189
    :cond_8
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_retryImageScaleType:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 191
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_retryImageScaleType:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v22

    goto/16 :goto_1

    .line 196
    :cond_9
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_failureImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 198
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_failureImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    goto/16 :goto_1

    .line 202
    :cond_a
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_failureImageScaleType:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 204
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_failureImageScaleType:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v20

    goto/16 :goto_1

    .line 209
    :cond_b
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_progressBarImageScaleType:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 211
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_progressBarImageScaleType:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/facebook/drawee/view/GenericDraweeView;->a(Landroid/content/res/TypedArray;ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v18

    goto/16 :goto_1

    .line 216
    :cond_c
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_progressBarAutoRotateInterval:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 218
    sget v3, Lcom/facebook/drawee/a$a;->GenericDraweeView_progressBarAutoRotateInterval:I

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    goto/16 :goto_1

    .line 222
    :cond_d
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_backgroundImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 224
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_backgroundImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    goto/16 :goto_1

    .line 228
    :cond_e
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_overlayImage:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 230
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_overlayImage:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto/16 :goto_1

    .line 234
    :cond_f
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundAsCircle:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 236
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundAsCircle:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    goto/16 :goto_1

    .line 240
    :cond_10
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundedCornerRadius:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 241
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundedCornerRadius:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    goto/16 :goto_1

    .line 245
    :cond_11
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundTopLeft:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 246
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundTopLeft:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    goto/16 :goto_1

    .line 250
    :cond_12
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundTopRight:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 251
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundTopRight:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    goto/16 :goto_1

    .line 255
    :cond_13
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundBottomRight:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 256
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundBottomRight:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    goto/16 :goto_1

    .line 260
    :cond_14
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundBottomLeft:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    .line 261
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundBottomLeft:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    goto/16 :goto_1

    .line 265
    :cond_15
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundWithOverlayColor:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    .line 266
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundWithOverlayColor:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    goto/16 :goto_1

    .line 270
    :cond_16
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundingBorderWidth:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 271
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundingBorderWidth:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto/16 :goto_1

    .line 275
    :cond_17
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundingBorderColor:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 276
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundingBorderColor:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto/16 :goto_1

    .line 280
    :cond_18
    sget v32, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundingBorderPadding:I

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 281
    sget v31, Lcom/facebook/drawee/a$a;->GenericDraweeView_roundingBorderPadding:I

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto/16 :goto_1

    .line 288
    :cond_19
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    :cond_1a
    new-instance v27, Lcom/facebook/drawee/generic/b;

    invoke-direct/range {v27 .. v28}, Lcom/facebook/drawee/generic/b;-><init>(Landroid/content/res/Resources;)V

    .line 294
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/b;->a(I)Lcom/facebook/drawee/generic/b;

    .line 296
    if-lez v25, :cond_1b

    .line 297
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/generic/b;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;

    .line 299
    :cond_1b
    if-lez v23, :cond_1c

    .line 300
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/generic/b;->b(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;

    .line 302
    :cond_1c
    if-lez v21, :cond_1d

    .line 303
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/generic/b;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;

    .line 305
    :cond_1d
    if-lez v19, :cond_1e

    .line 306
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 307
    if-lez v3, :cond_2c

    .line 308
    new-instance v19, Lcom/facebook/drawee/drawable/b;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/facebook/drawee/drawable/b;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object/from16 v3, v19

    .line 311
    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/facebook/drawee/generic/b;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;

    .line 313
    :cond_1e
    if-lez v16, :cond_1f

    .line 314
    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 316
    :cond_1f
    if-lez v15, :cond_20

    .line 317
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->b(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 319
    :cond_20
    if-lez v14, :cond_21

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/drawee/view/GenericDraweeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/b;->c(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;

    .line 323
    :cond_21
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/b;->a(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;

    .line 325
    if-nez v13, :cond_22

    if-lez v12, :cond_27

    .line 326
    :cond_22
    new-instance v14, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v14}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 327
    invoke-virtual {v14, v13}, Lcom/facebook/drawee/generic/RoundingParams;->a(Z)Lcom/facebook/drawee/generic/RoundingParams;

    .line 328
    if-lez v12, :cond_23

    .line 329
    if-eqz v11, :cond_28

    int-to-float v3, v12

    move v11, v3

    :goto_3
    if-eqz v10, :cond_29

    int-to-float v3, v12

    move v10, v3

    :goto_4
    if-eqz v9, :cond_2a

    int-to-float v3, v12

    move v9, v3

    :goto_5
    if-eqz v8, :cond_2b

    int-to-float v3, v12

    :goto_6
    invoke-virtual {v14, v11, v10, v9, v3}, Lcom/facebook/drawee/generic/RoundingParams;->a(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 335
    :cond_23
    if-eqz v7, :cond_24

    .line 336
    invoke-virtual {v14, v7}, Lcom/facebook/drawee/generic/RoundingParams;->a(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 338
    :cond_24
    if-eqz v5, :cond_25

    if-lez v6, :cond_25

    .line 339
    int-to-float v3, v6

    invoke-virtual {v14, v5, v3}, Lcom/facebook/drawee/generic/RoundingParams;->a(IF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 341
    :cond_25
    if-eqz v4, :cond_26

    .line 342
    int-to-float v3, v4

    invoke-virtual {v14, v3}, Lcom/facebook/drawee/generic/RoundingParams;->a(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 344
    :cond_26
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/facebook/drawee/generic/b;->a(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;

    .line 346
    :cond_27
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/drawee/generic/b;->s()Lcom/facebook/drawee/generic/a;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/GenericDraweeView;->setHierarchy(Lcom/facebook/drawee/d/b;)V

    .line 347
    return-void

    .line 329
    :cond_28
    const/4 v3, 0x0

    move v11, v3

    goto :goto_3

    :cond_29
    const/4 v3, 0x0

    move v10, v3

    goto :goto_4

    :cond_2a
    const/4 v3, 0x0

    move v9, v3

    goto :goto_5

    :cond_2b
    const/4 v3, 0x0

    goto :goto_6

    :cond_2c
    move-object/from16 v3, v20

    goto/16 :goto_2
.end method
