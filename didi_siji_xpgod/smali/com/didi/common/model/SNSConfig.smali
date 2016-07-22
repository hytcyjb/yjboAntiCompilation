.class public Lcom/didi/common/model/SNSConfig;
.super Lcom/didi/common/model/BaseObject;
.source "SNSConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/model/SNSConfig$ImageLoadListener;
    }
.end annotation


# static fields
.field private static final WEIBO_SHARE_PICTURE_FILE:Ljava/lang/String; = "weibo.jpg"


# instance fields
.field public actionId:I

.field public activityTitle:Ljava/lang/String;

.field public bitmap:Landroid/graphics/Bitmap;

.field public detail:Ljava/lang/String;

.field public iconName:Ljava/lang/String;

.field public iconType:I

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

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/model/SNSConfig;Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/didi/common/model/SNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/model/SNSConfig;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/common/model/SNSConfig;->loadPictureFromNet(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/model/SNSConfig;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/common/model/SNSConfig;->writePictureToFile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private loadPictureFromNet(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNSConfig loadPictureFromNet url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/didi/common/model/SNSConfig$ImageLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 130
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/didi/common/util/BitmapCache;

    invoke-direct {v2}, Lcom/didi/common/util/BitmapCache;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    .line 114
    .local v0, loader:Lcom/android/volley/toolbox/ImageLoader;
    iget-object v1, p0, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    new-instance v2, Lcom/didi/common/model/SNSConfig$2;

    invoke-direct {v2, p0, p1}, Lcom/didi/common/model/SNSConfig$2;-><init>(Lcom/didi/common/model/SNSConfig;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0
.end method

.method private postLoaded(Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 1
    .parameter "b"
    .parameter "l"

    .prologue
    .line 139
    new-instance v0, Lcom/didi/common/model/SNSConfig$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/common/model/SNSConfig$3;-><init>(Lcom/didi/common/model/SNSConfig;Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method private writePictureToFile(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 156
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

    .line 157
    .local v0, path:Ljava/lang/String;
    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public deleteWeiboSharePicture()Z
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const-string v2, "weibo.jpg"

    invoke-static {v1, v2}, Lcom/didi/common/util/FileUtil;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, result:Z
    return v0
.end method

.method public getActionId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/didi/common/model/SNSConfig;->actionId:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/didi/common/model/SNSConfig$ImageLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/common/model/SNSConfig;->loadPicture(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    goto :goto_0
.end method

.method public loadPicture(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 80
    new-instance v0, Lcom/didi/common/model/SNSConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/model/SNSConfig$1;-><init>(Lcom/didi/common/model/SNSConfig;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    .line 99
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 171
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig;->title:Ljava/lang/String;

    .line 172
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig;->detail:Ljava/lang/String;

    .line 173
    const-string v0, "pic_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    .line 174
    const-string v0, "icon_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/SNSConfig;->iconType:I

    .line 175
    const-string v0, "redirect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig;->redirect:Ljava/lang/String;

    .line 176
    const-string v0, "icon_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig;->iconName:Ljava/lang/String;

    .line 177
    const-string v0, "activity_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig;->activityTitle:Ljava/lang/String;

    .line 178
    const-string v0, "activityid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/SNSConfig;->actionId:I

    .line 179
    const-string v0, "share_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/SNSConfig;->shareType:I

    .line 180
    return-void
.end method

.method public setActionId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 57
    iput p1, p0, Lcom/didi/common/model/SNSConfig;->actionId:I

    .line 58
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{detail:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", title:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", pic_url:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", activityid:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/SNSConfig;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/didi/common/model/SNSConfig;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
