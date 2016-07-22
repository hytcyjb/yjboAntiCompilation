.class public Lcom/didi/beatles/upload/BtsCropActivity;
.super Landroid/app/Activity;
.source "BtsCropActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/upload/BtsCropActivity$CropHeadWorker;
    }
.end annotation


# static fields
.field public static final CROP_PIC_PASS_KEY:Ljava/lang/String; = "CROP_PIC_PASS_KEY"


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mCropImageView:Lcom/didi/beatles/upload/BtsCropImageView;

.field private mImageLoaded:Z

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputPath:Ljava/lang/String;

.field private mOutputX:I

.field private mOutputY:I

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private rightClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x1f4

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputX:I

    .line 34
    iput v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputY:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputPath:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mImageLoaded:Z

    .line 60
    new-instance v0, Lcom/didi/beatles/upload/BtsCropActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/upload/BtsCropActivity$1;-><init>(Lcom/didi/beatles/upload/BtsCropActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->rightClickListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/didi/beatles/upload/BtsCropActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/upload/BtsCropActivity$2;-><init>(Lcom/didi/beatles/upload/BtsCropActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/upload/BtsCropActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mImageLoaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/upload/BtsCropActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/upload/BtsCropActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputX:I

    return v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/upload/BtsCropActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputY:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/upload/BtsCropActivity;)Lcom/didi/beatles/upload/BtsCropImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mCropImageView:Lcom/didi/beatles/upload/BtsCropImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/beatles/upload/BtsCropActivity;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private initIntent()V
    .locals 13

    .prologue
    const/16 v12, 0x1f4

    .line 83
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 84
    .local v4, intent:Landroid/content/Intent;
    if-nez v4, :cond_0

    .line 85
    const-string v10, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v10}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 90
    .local v3, imageUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 91
    const-string v10, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v10}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_1
    const-string v10, "output"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mOutputPath:Ljava/lang/String;

    .line 97
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 106
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v10, v12, :cond_2

    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v10, v12, :cond_3

    .line 107
    :cond_2
    const-string v10, "\u56fe\u7247\u592a\u5c0f\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-static {v10}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v10, "\u6587\u4ef6\u65e0\u6cd5\u6253\u5f00"

    invoke-static {v10}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->finish()V

    goto :goto_0

    .line 112
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const/4 v8, 0x0

    .line 114
    .local v8, srcBitmap:Landroid/graphics/Bitmap;
    const/high16 v5, 0x4000

    .line 116
    .local v5, maxRatio:F
    :try_start_1
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_4

    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 117
    :cond_4
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getHeight()I

    move-result v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 118
    .local v2, heightRatio:I
    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getWidth()I

    move-result v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 119
    .local v9, widthRatio:I
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 129
    .end local v2           #heightRatio:I
    .end local v9           #widthRatio:I
    :goto_1
    invoke-static {p0, v3}, Lcom/didi/beatles/utils/BtsExifUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 130
    .local v0, degree:I
    if-eqz v0, :cond_6

    .line 131
    const/4 v10, 0x1

    invoke-static {v8, v0, v10}, Lcom/didi/beatles/utils/BtsBitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 132
    .local v7, resBitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mCropImageView:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v10, v7}, Lcom/didi/beatles/upload/BtsCropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    .end local v7           #resBitmap:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mImageLoaded:Z

    goto/16 :goto_0

    .line 124
    .end local v0           #degree:I
    :cond_5
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1

    .line 135
    .restart local v0       #degree:I
    :cond_6
    iget-object v10, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mCropImageView:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v10, v8}, Lcom/didi/beatles/upload/BtsCropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 54
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 55
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const-string v1, "\u4f7f\u7528"

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropActivity;->rightClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsCropActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->setTitlebar()V

    .line 49
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/upload/BtsCropImageView;

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropActivity;->mCropImageView:Lcom/didi/beatles/upload/BtsCropImageView;

    .line 50
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsCropActivity;->initIntent()V

    .line 51
    return-void
.end method
