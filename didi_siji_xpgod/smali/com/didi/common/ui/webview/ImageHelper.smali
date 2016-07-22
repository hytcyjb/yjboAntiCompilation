.class public Lcom/didi/common/ui/webview/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# static fields
.field private static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final REQ_ALBUM_ACTIVITY:I = 0x64

.field public static final REQ_CAMERA_ACTIVITY:I = 0x65


# instance fields
.field private mAcContext:Landroid/app/Activity;

.field private mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

.field private mImage2StringResultListener:Lcom/didi/common/ui/webview/IImg2StrListener;

.field private mOutPutFile:Ljava/io/File;

.field private mTargetHeight:I

.field private mTargetQuality:I

.field private mTargetWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "ac"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "the param should not be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/ImageHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->dispatchTakePictureIntent()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/ImageHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->dispatchPickPictureIntent()V

    return-void
.end method

.method private computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 218
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 219
    .local v4, w:D
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 221
    .local v0, h:D
    if-ne p3, v11, :cond_1

    move v2, v6

    .line 222
    .local v2, lowerBound:I
    :goto_0
    if-ne p2, v11, :cond_2

    const/16 v3, 0x80

    .line 224
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 233
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 221
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p3

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 222
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p2

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p2

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 228
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p3, v11, :cond_4

    if-ne p2, v11, :cond_4

    move v2, v6

    .line 229
    goto :goto_2

    .line 230
    :cond_4
    if-eq p2, v11, :cond_0

    move v2, v3

    .line 233
    goto :goto_2
.end method

.method private computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/webview/ImageHelper;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 205
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 207
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 208
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 214
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method private deleteTmpOutputFile()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    .line 199
    return-void
.end method

.method private dispatchPickPictureIntent()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, pickPictureIntent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    :cond_0
    return-void
.end method

.method private dispatchTakePictureIntent()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, takePictureIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "output"

    iget-object v2, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    goto :goto_0
.end method

.method private encodeBitmapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 168
    const-string v2, ""

    .line 169
    .local v2, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 170
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/didi/common/ui/webview/ImageHelper;->mTargetQuality:I

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 173
    .local v0, b:[B
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/ImageHelper;->encodeByBase64([B)Ljava/lang/String;

    move-result-object v2

    .line 175
    .end local v0           #b:[B
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-object v2
.end method

.method private processImgAndCallback(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/ImageHelper;->resizeImageIfNecessary(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/ImageHelper;->encodeBitmapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/webview/ImageHelper;->mImage2StringResultListener:Lcom/didi/common/ui/webview/IImg2StrListener;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/didi/common/ui/webview/ImageHelper;->mImage2StringResultListener:Lcom/didi/common/ui/webview/IImg2StrListener;

    invoke-interface {v2, v1}, Lcom/didi/common/ui/webview/IImg2StrListener;->onResult(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    .line 143
    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/ImageHelper;->recycleBmp(Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method private recycleBmp(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    const/4 p1, 0x0

    .line 194
    :cond_0
    return-void
.end method

.method private resizeImageIfNecessary(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "uri"

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 150
    .local v2, srcBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 151
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    iget-object v3, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    const/4 v3, -0x1

    iget v4, p0, Lcom/didi/common/ui/webview/ImageHelper;->mTargetHeight:I

    iget v5, p0, Lcom/didi/common/ui/webview/ImageHelper;->mTargetWidth:I

    mul-int/2addr v4, v5

    invoke-direct {p0, v1, v3, v4}, Lcom/didi/common/ui/webview/ImageHelper;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 156
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    iget-object v3, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    .line 164
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/didi/common/ui/webview/ImageHelper;->recycleBmp(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    throw v3
.end method


# virtual methods
.method public encodeByBase64([B)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 179
    const-string v0, ""

    .line 180
    .local v0, base64:Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 182
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/common/ui/webview/ImageHelper;->handleTakePicResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/common/ui/webview/ImageHelper;->handleSelectPicResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleImageChoose(IIILcom/didi/common/ui/webview/IImg2StrListener;)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "quality"
    .parameter "l"

    .prologue
    .line 65
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    const/16 v0, 0x64

    if-gt p3, v0, :cond_0

    if-eqz p4, :cond_0

    .line 66
    iput p2, p0, Lcom/didi/common/ui/webview/ImageHelper;->mTargetHeight:I

    .line 67
    iput p1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mTargetWidth:I

    .line 68
    iput p3, p0, Lcom/didi/common/ui/webview/ImageHelper;->mTargetQuality:I

    .line 69
    iput-object p4, p0, Lcom/didi/common/ui/webview/ImageHelper;->mImage2StringResultListener:Lcom/didi/common/ui/webview/IImg2StrListener;

    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/didi/common/ui/userinfo/BottomListMenu;

    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAcContext:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f060001

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/common/ui/userinfo/BottomListMenu;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    new-instance v1, Lcom/didi/common/ui/webview/ImageHelper$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/ImageHelper$1;-><init>(Lcom/didi/common/ui/webview/ImageHelper;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/BottomListMenu;->setListMenuListener(Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;)V

    .line 83
    iget-object v0, p0, Lcom/didi/common/ui/webview/ImageHelper;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->showDialog()V

    .line 86
    :cond_0
    return-void
.end method

.method protected handleSelectPicResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 126
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 127
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/ImageHelper;->processImgAndCallback(Landroid/net/Uri;)V

    .line 134
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected handleTakePicResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 111
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/didi/common/ui/webview/ImageHelper;->mOutPutFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/ImageHelper;->processImgAndCallback(Landroid/net/Uri;)V

    .line 123
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    goto :goto_0

    .line 121
    .end local v0           #uri:Landroid/net/Uri;
    :cond_2
    invoke-direct {p0}, Lcom/didi/common/ui/webview/ImageHelper;->deleteTmpOutputFile()V

    goto :goto_0
.end method
