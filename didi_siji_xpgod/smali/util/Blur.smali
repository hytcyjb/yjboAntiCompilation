.class public Lutil/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Blur"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 46
    .parameter "context"
    .parameter "sentBitmap"
    .parameter "radius"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 19
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v4, v6, :cond_0

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 22
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v31

    .line 23
    .local v31, rs:Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v23

    .line 25
    .local v23, input:Landroid/renderscript/Allocation;
    invoke-virtual/range {v23 .. v23}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 26
    .local v24, output:Landroid/renderscript/Allocation;
    invoke-static/range {v31 .. v31}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v33

    .line 27
    .local v33, script:Landroid/renderscript/ScriptIntrinsicBlur;
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 28
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 29
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 30
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    move-object v4, v2

    .line 259
    .end local v23           #input:Landroid/renderscript/Allocation;
    .end local v24           #output:Landroid/renderscript/Allocation;
    .end local v31           #rs:Landroid/renderscript/RenderScript;
    .end local v33           #script:Landroid/renderscript/ScriptIntrinsicBlur;
    :goto_0
    return-object v4

    .line 62
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_1

    .line 65
    const/4 v4, 0x0

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 69
    .local v5, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 71
    .local v9, h:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 73
    .local v3, pix:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 75
    add-int/lit8 v40, v5, -0x1

    .line 76
    .local v40, wm:I
    add-int/lit8 v21, v9, -0x1

    .line 77
    .local v21, hm:I
    mul-int v39, v5, v9

    .line 78
    .local v39, wh:I
    add-int v4, p2, p2

    add-int/lit8 v14, v4, 0x1

    .line 80
    .local v14, div:I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 81
    .local v26, r:[I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 82
    .local v17, g:[I
    move/from16 v0, v39

    new-array v10, v0, [I

    .line 84
    .local v10, b:[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 86
    .local v38, vmin:[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 87
    .local v15, divsum:I
    mul-int/2addr v15, v15

    .line 88
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 89
    .local v16, dv:[I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 90
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 89
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 93
    :cond_2
    const/16 v43, 0x0

    .local v43, yi:I
    move/from16 v45, v43

    .line 95
    .local v45, yw:I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    .line 100
    .local v35, stack:[[I
    add-int/lit8 v27, p2, 0x1

    .line 104
    .local v27, r1:I
    const/16 v42, 0x0

    .local v42, y:I
    :goto_2
    move/from16 v0, v42

    if-ge v0, v9, :cond_7

    .line 105
    const/4 v13, 0x0

    .local v13, bsum:I
    move/from16 v20, v13

    .local v20, gsum:I
    move/from16 v32, v13

    .local v32, rsum:I
    move v12, v13

    .local v12, boutsum:I
    move/from16 v19, v13

    .local v19, goutsum:I
    move/from16 v30, v13

    .local v30, routsum:I
    move v11, v13

    .local v11, binsum:I
    move/from16 v18, v13

    .local v18, ginsum:I
    move/from16 v29, v13

    .line 106
    .local v29, rinsum:I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    .line 107
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v43

    aget v25, v3, v4

    .line 108
    .local v25, p:I
    add-int v4, v22, p2

    aget-object v34, v35, v4

    .line 109
    .local v34, sir:[I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 110
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 111
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 112
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 113
    .local v28, rbs:I
    const/4 v4, 0x0

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 114
    const/4 v4, 0x1

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 115
    const/4 v4, 0x2

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 116
    if-lez v22, :cond_3

    .line 117
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 118
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 119
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 106
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 121
    :cond_3
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 122
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 123
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 126
    .end local v25           #p:I
    .end local v28           #rbs:I
    .end local v34           #sir:[I
    :cond_4
    move/from16 v36, p2

    .line 128
    .local v36, stackpointer:I
    const/16 v41, 0x0

    .local v41, x:I
    :goto_5
    move/from16 v0, v41

    if-ge v0, v5, :cond_6

    .line 130
    aget v4, v16, v32

    aput v4, v26, v43

    .line 131
    aget v4, v16, v20

    aput v4, v17, v43

    .line 132
    aget v4, v16, v13

    aput v4, v10, v43

    .line 134
    sub-int v32, v32, v30

    .line 135
    sub-int v20, v20, v19

    .line 136
    sub-int/2addr v13, v12

    .line 138
    sub-int v4, v36, p2

    add-int v37, v4, v14

    .line 139
    .local v37, stackstart:I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 141
    .restart local v34       #sir:[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 142
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 143
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 145
    if-nez v42, :cond_5

    .line 146
    add-int v4, v41, p2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v38, v41

    .line 148
    :cond_5
    aget v4, v38, v41

    add-int v4, v4, v45

    aget v25, v3, v4

    .line 150
    .restart local v25       #p:I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 151
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 152
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 154
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 155
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 156
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 158
    add-int v32, v32, v29

    .line 159
    add-int v20, v20, v18

    .line 160
    add-int/2addr v13, v11

    .line 162
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 163
    rem-int v4, v36, v14

    aget-object v34, v35, v4

    .line 165
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 166
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 167
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 169
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 170
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 171
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 173
    add-int/lit8 v43, v43, 0x1

    .line 128
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_5

    .line 175
    .end local v25           #p:I
    .end local v34           #sir:[I
    .end local v37           #stackstart:I
    :cond_6
    add-int v45, v45, v5

    .line 104
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_2

    .line 177
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v29           #rinsum:I
    .end local v30           #routsum:I
    .end local v32           #rsum:I
    .end local v36           #stackpointer:I
    .end local v41           #x:I
    :cond_7
    const/16 v41, 0x0

    .restart local v41       #x:I
    :goto_6
    move/from16 v0, v41

    if-ge v0, v5, :cond_d

    .line 178
    const/4 v13, 0x0

    .restart local v13       #bsum:I
    move/from16 v20, v13

    .restart local v20       #gsum:I
    move/from16 v32, v13

    .restart local v32       #rsum:I
    move v12, v13

    .restart local v12       #boutsum:I
    move/from16 v19, v13

    .restart local v19       #goutsum:I
    move/from16 v30, v13

    .restart local v30       #routsum:I
    move v11, v13

    .restart local v11       #binsum:I
    move/from16 v18, v13

    .restart local v18       #ginsum:I
    move/from16 v29, v13

    .line 179
    .restart local v29       #rinsum:I
    move/from16 v0, p2

    neg-int v4, v0

    mul-int v44, v4, v5

    .line 180
    .local v44, yp:I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_a

    .line 181
    const/4 v4, 0x0

    move/from16 v0, v44

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v43, v4, v41

    .line 183
    add-int v4, v22, p2

    aget-object v34, v35, v4

    .line 185
    .restart local v34       #sir:[I
    const/4 v4, 0x0

    aget v6, v26, v43

    aput v6, v34, v4

    .line 186
    const/4 v4, 0x1

    aget v6, v17, v43

    aput v6, v34, v4

    .line 187
    const/4 v4, 0x2

    aget v6, v10, v43

    aput v6, v34, v4

    .line 189
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 191
    .restart local v28       #rbs:I
    aget v4, v26, v43

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 192
    aget v4, v17, v43

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 193
    aget v4, v10, v43

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 195
    if-lez v22, :cond_9

    .line 196
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 197
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 198
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 205
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 206
    add-int v44, v44, v5

    .line 180
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 200
    :cond_9
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 201
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 202
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 209
    .end local v28           #rbs:I
    .end local v34           #sir:[I
    :cond_a
    move/from16 v43, v41

    .line 210
    move/from16 v36, p2

    .line 211
    .restart local v36       #stackpointer:I
    const/16 v42, 0x0

    :goto_9
    move/from16 v0, v42

    if-ge v0, v9, :cond_c

    .line 213
    const/high16 v4, -0x100

    aget v6, v3, v43

    and-int/2addr v4, v6

    aget v6, v16, v32

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v43

    .line 215
    sub-int v32, v32, v30

    .line 216
    sub-int v20, v20, v19

    .line 217
    sub-int/2addr v13, v12

    .line 219
    sub-int v4, v36, p2

    add-int v37, v4, v14

    .line 220
    .restart local v37       #stackstart:I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 222
    .restart local v34       #sir:[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 223
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 224
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 226
    if-nez v41, :cond_b

    .line 227
    add-int v4, v42, v27

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v38, v42

    .line 229
    :cond_b
    aget v4, v38, v42

    add-int v25, v41, v4

    .line 231
    .restart local v25       #p:I
    const/4 v4, 0x0

    aget v6, v26, v25

    aput v6, v34, v4

    .line 232
    const/4 v4, 0x1

    aget v6, v17, v25

    aput v6, v34, v4

    .line 233
    const/4 v4, 0x2

    aget v6, v10, v25

    aput v6, v34, v4

    .line 235
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 236
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 237
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 239
    add-int v32, v32, v29

    .line 240
    add-int v20, v20, v18

    .line 241
    add-int/2addr v13, v11

    .line 243
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 244
    aget-object v34, v35, v36

    .line 246
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 247
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 248
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 250
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 251
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 252
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 254
    add-int v43, v43, v5

    .line 211
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_9

    .line 177
    .end local v25           #p:I
    .end local v34           #sir:[I
    .end local v37           #stackstart:I
    :cond_c
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    .line 258
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v29           #rinsum:I
    .end local v30           #routsum:I
    .end local v32           #rsum:I
    .end local v36           #stackpointer:I
    .end local v44           #yp:I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object v4, v2

    .line 259
    goto/16 :goto_0
.end method
