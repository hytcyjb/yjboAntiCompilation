.class public Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsHandlePicTransparentActivity.java"

# interfaces
.implements Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;,
        Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;
    }
.end annotation


# static fields
.field public static final BUNDLE_OPEN_TYPE:Ljava/lang/String; = "bundle_open_type"

.field public static final BUNDLE_UPLOAD_URL:Ljava/lang/String; = "bundle_upload_url"

.field private static final MSG_RESIZE_PHOTO_FAIL:I = 0x66

.field private static final MSG_RESIZE_PHOTO_SUCCESS:I = 0x65

.field private static final REQ_OPEN_CAMERA:I = 0x66

.field private static final REQ_OPEN_CROP:I = 0x67

.field private static final REQ_OPEN_GALLERY:I = 0x65


# instance fields
.field private mCameraPhotoPath:Ljava/lang/String;

.field private mCropPhotoPath:Ljava/lang/String;

.field private final mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

.field private mOpenType:I

.field private mResizePhotoReqId:J

.field private final mUploadListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/role/BtsRegisterResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 75
    new-instance v0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;-><init>(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mUploadListener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 118
    new-instance v0, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;-><init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    .line 485
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z

    move-result v0

    return v0
.end method

.method private extractIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 317
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    const-string v1, "bundle_upload_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mUploadUrl:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mUploadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string v0, "bundle_open_type"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mOpenType:I

    .line 324
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleCropPhoto(I)V
    .locals 8
    .parameter "resultCode"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b006e

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 230
    if-ne p1, v5, :cond_0

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    :cond_0
    if-ne p1, v5, :cond_1

    .line 232
    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 233
    :cond_1
    invoke-virtual {p0, v4}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    .line 251
    :goto_0
    return-void

    .line 238
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, cropFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 241
    invoke-virtual {p0, v4}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0

    .line 247
    :cond_3
    const v3, 0x7f0b006b

    invoke-virtual {p0, v3}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4, v7}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 248
    new-instance v1, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;

    iget-wide v3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mResizePhotoReqId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mResizePhotoReqId:J

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;-><init>(JLjava/lang/String;)V

    .line 249
    .local v1, object:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;
    new-instance v2, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    invoke-direct {v2, v3, v1, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;-><init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$1;)V

    .line 250
    .local v2, thread:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;
    invoke-virtual {v2}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoThread;->start()V

    goto :goto_0
.end method

.method private handleGalleryOrCameraPhoto(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v8, 0x7f0b006e

    const/4 v7, 0x0

    .line 260
    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    .line 261
    invoke-virtual {p0, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 262
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v3, 0x0

    .line 266
    .local v3, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Android/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, dirFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 297
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 298
    invoke-static {v8}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 299
    invoke-virtual {p0, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 300
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0

    .line 268
    .end local v0           #dir:Ljava/lang/String;
    .end local v1           #dirFile:Ljava/io/File;
    :pswitch_0
    if-nez p3, :cond_3

    .line 269
    invoke-static {v8}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 270
    invoke-virtual {p0, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 271
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0

    .line 274
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 275
    goto :goto_1

    .line 277
    :pswitch_1
    iget-object v4, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCameraPhotoPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    invoke-static {v8}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 279
    invoke-virtual {p0, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0

    .line 283
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCameraPhotoPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, photoFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 285
    invoke-static {v8}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 286
    invoke-virtual {p0, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 287
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto/16 :goto_0

    .line 290
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 303
    .end local v2           #photoFile:Ljava/io/File;
    .restart local v0       #dir:Ljava/lang/String;
    .restart local v1       #dirFile:Ljava/io/File;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bts_crop_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    .line 304
    if-eqz v3, :cond_7

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startCropActivity(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    :cond_7
    invoke-static {v8}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 307
    invoke-virtual {p0, v7}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 308
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startCameraActivity()V
    .locals 8

    .prologue
    const v7, 0x7f0b006e

    const/4 v6, 0x0

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, dirFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 366
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    invoke-static {v7}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 368
    invoke-virtual {p0, v6}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 369
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    .line 384
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bts_upload_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCameraPhotoPath:Ljava/lang/String;

    .line 375
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCameraPhotoPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 378
    const/16 v3, 0x66

    invoke-virtual {p0, v2, v3}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {v7}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 382
    invoke-virtual {p0, v6}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 383
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0
.end method

.method private startCropActivity(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 4
    .parameter "photoUri"
    .parameter "cropUri"

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x1

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v2, "crop"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v2, "outputX"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v2, "output"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 400
    const/16 v2, 0x67

    invoke-virtual {p0, v0, v2}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startGalleryActivity()V
    .locals 1

    .prologue
    .line 332
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startGalleryActivity(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startGalleryActivity(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const v0, 0x7f0b006e

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 339
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0
.end method

.method private startGalleryActivity(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    const/4 v1, 0x1

    .line 354
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->isViewValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;

    .line 202
    .local v0, obj:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;
    iget-wide v2, v0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;->mReqId:J

    iget-wide v4, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mResizePhotoReqId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 206
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 208
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, photoFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const v2, 0x7f0b006c

    invoke-virtual {p0, v2}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v6, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 211
    const-string v2, "snowman"

    const-string v3, ""

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mCropPhotoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mUploadListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v2, v3, v4, v5}, Lcom/didi/beatles/net/BtsRequest;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 216
    .end local v0           #obj:Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity$ResizePhotoObject;
    .end local v1           #photoFile:Ljava/io/File;
    :pswitch_1
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 217
    const v2, 0x7f0b006e

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 218
    invoke-virtual {p0, v6}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onActivityResult(IILandroid/content/Intent;)V

    .line 185
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->handleGalleryOrCameraPhoto(IILandroid/content/Intent;)V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->handleCropPhoto(I)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->extractIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const v0, 0x7f0b006d

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v0, p0, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->mOpenType:I

    packed-switch v0, :pswitch_data_0

    .line 166
    const v0, 0x7f0b006f

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->setResult(I)V

    .line 168
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->finish()V

    goto :goto_0

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startGalleryActivity()V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsHandlePicTransparentActivity;->startCameraActivity()V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 191
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 192
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 193
    return-void
.end method
