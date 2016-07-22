.class public Lcom/didi/car/model/CarSNSConfig;
.super Lcom/didi/common/model/BaseObject;
.source "CarSNSConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;
    }
.end annotation


# static fields
.field private static final WEIBO_SHARE_PICTURE_FILE:Ljava/lang/String; = "weibo.jpg"


# instance fields
.field public actionId:I

.field public activityTitle:Ljava/lang/String;

.field public bitmap:Landroid/graphics/Bitmap;

.field public detail:Ljava/lang/String;

.field public redirect:Ljava/lang/String;

.field public shareType:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/didi/car/model/CarSNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/model/CarSNSConfig;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/car/model/CarSNSConfig;->loadPictureFromNet(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/car/model/CarSNSConfig;->writePictureToFile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private loadPictureFromNet(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 114
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/didi/common/util/BitmapCache;

    invoke-direct {v2}, Lcom/didi/common/util/BitmapCache;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    .line 99
    .local v0, loader:Lcom/android/volley/toolbox/ImageLoader;
    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->url:Ljava/lang/String;

    new-instance v2, Lcom/didi/car/model/CarSNSConfig$2;

    invoke-direct {v2, p0, p1}, Lcom/didi/car/model/CarSNSConfig$2;-><init>(Lcom/didi/car/model/CarSNSConfig;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method

.method private postLoaded(Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 1
    .parameter "b"
    .parameter "l"

    .prologue
    .line 123
    new-instance v0, Lcom/didi/car/model/CarSNSConfig$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/car/model/CarSNSConfig$3;-><init>(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method private writePictureToFile(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/DidiApp;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weibo.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, path:Ljava/lang/String;
    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public deleteWeiboSharePicture()Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const-string v2, "weibo.jpg"

    invoke-static {v1, v2}, Lcom/didi/common/util/FileUtil;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 57
    .local v0, result:Z
    return v0
.end method

.method public getBitmap(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/car/model/CarSNSConfig;->loadPicture(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    goto :goto_0
.end method

.method public loadPicture(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 66
    new-instance v0, Lcom/didi/car/model/CarSNSConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/car/model/CarSNSConfig$1;-><init>(Lcom/didi/car/model/CarSNSConfig;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    .line 85
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 154
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->title:Ljava/lang/String;

    .line 155
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->detail:Ljava/lang/String;

    .line 156
    const-string v0, "pic_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->url:Ljava/lang/String;

    .line 157
    const-string v0, "activity_redirect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->redirect:Ljava/lang/String;

    .line 158
    const-string v0, "activity_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig;->activityTitle:Ljava/lang/String;

    .line 159
    const-string v0, "activityid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarSNSConfig;->actionId:I

    .line 160
    const-string v0, "share_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarSNSConfig;->shareType:I

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarSNSConfig [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->redirect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->activityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarSNSConfig;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarSNSConfig;->shareType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarSNSConfig;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarSNSConfig;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
