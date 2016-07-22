.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;
.super Landroid/widget/LinearLayout;
.source "PlatformGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridView"
.end annotation


# instance fields
.field private beans:[Ljava/lang/Object;

.field private callback:Landroid/view/View$OnClickListener;

.field private lines:I

.field private platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V
    .locals 1
    .parameter "platformAdapter"

    .prologue
    .line 352
    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$800(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 353
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    .line 354
    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$900(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    .line 355
    return-void
.end method

.method private getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "plat"

    .prologue
    const/4 v3, 0x0

    .line 452
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-object v3

    .line 456
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, resName:Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 463
    .local v1, resId:I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 4
    .parameter "plat"

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    const-string v2, ""

    .line 480
    :goto_0
    return-object v2

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 473
    const-string v2, ""

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, resId:I
    if-lez v1, :cond_2

    .line 478
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 11
    .parameter "position"
    .parameter "ocL"
    .parameter "context"

    .prologue
    .line 408
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    instance-of v9, v9, Lcn/sharesdk/framework/Platform;

    if-eqz v9, :cond_0

    .line 409
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v9}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 410
    .local v5, logo:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v9}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, label:Ljava/lang/String;
    move-object v3, p2

    .line 418
    .local v3, listener:Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 419
    .local v4, ll:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 422
    .local v1, iv:Landroid/widget/ImageView;
    const/4 v9, 0x5

    invoke-static {p3, v9}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 423
    .local v0, dp_5:I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 424
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 425
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 427
    .local v6, lpIv:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    const/4 v9, 0x1

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 429
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 434
    .local v8, tv:Landroid/widget/TextView;
    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    const/4 v9, 0x1

    const/high16 v10, 0x4160

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 436
    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 437
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 438
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 440
    .local v7, lpTv:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 441
    const/high16 v9, 0x3f80

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 442
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 443
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    return-object v4

    .line 413
    .end local v0           #dp_5:I
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    .end local v4           #ll:Landroid/widget/LinearLayout;
    .end local v5           #logo:Landroid/graphics/Bitmap;
    .end local v6           #lpIv:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #lpTv:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v5, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 414
    .restart local v5       #logo:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v2, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 415
    .restart local v2       #label:Ljava/lang/String;
    move-object v3, p2

    .restart local v3       #listener:Landroid/view/View$OnClickListener;
    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x0

    .line 364
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcn/sharesdk/framework/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 365
    .local v1, dp_5:I
    invoke-virtual {p0, v10, v1, v10, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setPadding(IIII)V

    .line 366
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setOrientation(I)V

    .line 368
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    if-nez v11, :cond_2

    move v9, v10

    .line 369
    .local v9, size:I
    :goto_0
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$800(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v11

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 370
    .local v0, COLUMN_PER_LINE:I
    div-int v5, v9, v0

    .line 371
    .local v5, lineSize:I
    rem-int v11, v9, v0

    if-lez v11, :cond_0

    .line 372
    add-int/lit8 v5, v5, 0x1

    .line 374
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 376
    .local v8, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f80

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 377
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    if-ge v2, v11, :cond_5

    .line 378
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 379
    .local v7, llLine:Landroid/widget/LinearLayout;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-virtual {v7, v1, v10, v1, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 381
    invoke-virtual {p0, v7}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->addView(Landroid/view/View;)V

    .line 383
    if-lt v2, v5, :cond_3

    .line 377
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    .end local v0           #COLUMN_PER_LINE:I
    .end local v2           #i:I
    .end local v5           #lineSize:I
    .end local v7           #llLine:Landroid/widget/LinearLayout;
    .end local v8           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #size:I
    :cond_2
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    array-length v9, v11

    goto :goto_0

    .line 387
    .restart local v0       #COLUMN_PER_LINE:I
    .restart local v2       #i:I
    .restart local v5       #lineSize:I
    .restart local v7       #llLine:Landroid/widget/LinearLayout;
    .restart local v8       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9       #size:I
    :cond_3
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 388
    mul-int v11, v2, v0

    add-int v3, v11, v4

    .line 389
    .local v3, index:I
    if-lt v3, v9, :cond_4

    .line 390
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 391
    .local v6, llItem:Landroid/widget/LinearLayout;
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 396
    .end local v6           #llItem:Landroid/widget/LinearLayout;
    :cond_4
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 397
    .restart local v6       #llItem:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v11, v11, v3

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 398
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 402
    .end local v3           #index:I
    .end local v4           #j:I
    .end local v6           #llItem:Landroid/widget/LinearLayout;
    .end local v7           #llLine:Landroid/widget/LinearLayout;
    :cond_5
    return-void
.end method


# virtual methods
.method public setData(I[Ljava/lang/Object;)V
    .locals 0
    .parameter "lines"
    .parameter "beans"

    .prologue
    .line 358
    iput p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    .line 359
    iput-object p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    .line 360
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->init()V

    .line 361
    return-void
.end method
