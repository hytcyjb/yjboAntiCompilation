.class public Lcom/zhihu/android/app/push/b;
.super Ljava/lang/Object;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/push/b$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/zhihu/android/app/push/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Push;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Push;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/zhihu/android/app/push/b;->c:Lcom/zhihu/android/app/push/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/push/b;->a:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/push/b;->b:Ljava/util/List;

    .line 112
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;IILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 292
    new-instance v1, Landroid/support/v4/app/ad$d;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ad$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p4}, Landroid/support/v4/app/ad$d;->a(I)Landroid/support/v4/app/ad$d;

    move-result-object v1

    const v2, 0x7f0f0041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ad$d;->c(I)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ad$d;->b(I)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ad$d;->a(Z)Landroid/support/v4/app/ad$d;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad$d;->a(Ljava/lang/String;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/support/v4/app/ad$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/support/v4/app/ad$c;

    invoke-direct {v1, v0}, Landroid/support/v4/app/ad$c;-><init>(Landroid/support/v4/app/ad$d;)V

    .line 294
    iget-object v2, p2, Lcom/zhihu/android/api/model/Push;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ad$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$c;

    .line 297
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad$d;->a(Landroid/support/v4/app/ad$p;)Landroid/support/v4/app/ad$d;

    .line 298
    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->avatarUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-static {}, Lcom/facebook/drawee/a/a/a;->c()Lcom/facebook/imagepipeline/d/c;

    move-result-object v1

    .line 300
    iget-object v2, p2, Lcom/zhihu/android/api/model/Push;->avatarUrl:Ljava/lang/String;

    sget-object v3, Lcom/zhihu/android/app/util/ImageUtils$ImageSize;->XL:Lcom/zhihu/android/app/util/ImageUtils$ImageSize;

    invoke-static {v2, v3}, Lcom/zhihu/android/app/util/ImageUtils;->a(Ljava/lang/String;Lcom/zhihu/android/app/util/ImageUtils$ImageSize;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 304
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    new-instance v5, Lcom/facebook/imagepipeline/common/c;

    invoke-direct {v5, v4, v3}, Lcom/facebook/imagepipeline/common/c;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 305
    invoke-virtual {v1, v2, p0}, Lcom/facebook/imagepipeline/d/c;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;

    move-result-object v1

    .line 306
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 307
    new-instance v3, Lcom/zhihu/android/app/push/b$a;

    iget-object v4, p2, Lcom/zhihu/android/api/model/Push;->avatarUrl:Ljava/lang/String;

    invoke-direct {v3, v2, v0, v4, p3}, Lcom/zhihu/android/app/push/b$a;-><init>(Ljava/lang/ref/WeakReference;Landroid/support/v4/app/ad$d;Ljava/lang/String;I)V

    invoke-static {}, Lcom/facebook/common/c/a;->a()Lcom/facebook/common/c/a;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/facebook/datasource/b;->a(Lcom/facebook/datasource/d;Ljava/util/concurrent/Executor;)V

    .line 309
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;ZILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Push;",
            ">;ZI",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/support/v4/app/ad$d;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 316
    new-instance v2, Landroid/support/v4/app/ad$d;

    invoke-direct {v2, p1}, Landroid/support/v4/app/ad$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p4}, Landroid/support/v4/app/ad$d;->a(I)Landroid/support/v4/app/ad$d;

    move-result-object v2

    const-string v3, "notifications"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ad$d;->b(Ljava/lang/String;)Landroid/support/v4/app/ad$d;

    move-result-object v2

    const v3, 0x7f0f0041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ad$d;->c(I)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ad$d;->b(Z)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ad$d;->a(Z)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ad$d;->b(I)Landroid/support/v4/app/ad$d;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ad$d;->a(Ljava/lang/String;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    const v2, 0x7f09006c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ad$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;

    move-result-object v2

    .line 318
    invoke-virtual {v2, p5}, Landroid/support/v4/app/ad$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    .line 320
    if-eqz p3, :cond_0

    const v0, 0x7f0903b4

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 322
    new-instance v4, Landroid/support/v4/app/ad$f;

    invoke-direct {v4}, Landroid/support/v4/app/ad$f;-><init>()V

    .line 324
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 325
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/Push;

    .line 326
    if-eqz p3, :cond_1

    .line 327
    iget-object v0, v0, Lcom/zhihu/android/api/model/Push;->message:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/ad$f;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$f;

    .line 324
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 320
    :cond_0
    const v0, 0x7f0903b5

    goto :goto_0

    .line 329
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/zhihu/android/api/model/Push;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/zhihu/android/api/model/Push;->message:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v4/app/ad$f;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$f;

    goto :goto_2

    .line 338
    :cond_2
    invoke-virtual {v2, v3}, Landroid/support/v4/app/ad$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ad$d;->a(Landroid/support/v4/app/ad$p;)Landroid/support/v4/app/ad$d;

    .line 339
    return-object v2
.end method

.method static synthetic a(Lcom/zhihu/android/app/push/b;Landroid/content/Context;Lcom/zhihu/android/api/model/Push;IILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;IILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/zhihu/android/app/push/b;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/zhihu/android/app/push/b;->c:Lcom/zhihu/android/app/push/b;

    if-nez v0, :cond_1

    .line 100
    const-class v1, Lcom/zhihu/android/app/push/b;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Lcom/zhihu/android/app/push/b;->c:Lcom/zhihu/android/app/push/b;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/zhihu/android/app/push/b;

    invoke-direct {v0}, Lcom/zhihu/android/app/push/b;-><init>()V

    sput-object v0, Lcom/zhihu/android/app/push/b;->c:Lcom/zhihu/android/app/push/b;

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    sget-object v0, Lcom/zhihu/android/app/push/b;->c:Lcom/zhihu/android/app/push/b;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 343
    invoke-static {p1}, Landroid/support/v4/app/am;->a(Landroid/content/Context;)Landroid/support/v4/app/am;

    move-result-object v1

    .line 345
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    .line 347
    :try_start_0
    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->d()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/ad$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ad$d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p2, v3}, Landroid/support/v4/app/ad$d;->a(Z)Landroid/support/v4/app/ad$d;

    .line 354
    invoke-virtual {p2}, Landroid/support/v4/app/ad$d;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Landroid/support/v4/app/am;->a(ILandroid/app/Notification;)V

    .line 355
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhihu/android/app/push/b;Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 185
    iget-object v0, p2, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/android/app/util/p;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    const-string v1, "extra_push"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    const/16 v1, 0x20

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 188
    const v4, 0x7f020139

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;IILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    .line 189
    invoke-direct {p0, p1, v0, v3}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V

    .line 190
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0200c9

    const/4 v3, 0x1

    .line 196
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/c/a$b;

    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->senderId:Ljava/lang/String;

    iget-object v2, p2, Lcom/zhihu/android/api/model/Push;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/app/ui/fragment/c/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/b/b;->c(Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/c/b;->u()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/p;->a(Lcom/zhihu/android/app/util/bb;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    const-string v1, "extra_push"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const/16 v1, 0x10

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 202
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 203
    invoke-static {p1}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v0

    .line 204
    const-class v1, Lcom/zhihu/android/api/b/i;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/bumblebee/http/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/i;

    .line 206
    invoke-virtual {p2}, Lcom/zhihu/android/api/model/Push;->parseMessageId()Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    new-instance v2, Lcom/zhihu/android/app/push/b$1;

    invoke-direct {v2, p0, p1, p2, v5}, Lcom/zhihu/android/app/push/b$1;-><init>(Lcom/zhihu/android/app/push/b;Landroid/content/Context;Lcom/zhihu/android/api/model/Push;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/i;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 234
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;IILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    .line 228
    invoke-direct {p0, p1, v0, v3}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/zhihu/android/app/push/b;->b:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Ljava/util/List;ZILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    .line 232
    invoke-direct {p0, p1, v0, v3}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020139

    const/4 v3, 0x0

    .line 240
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/k/g;->e()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/p;->a(Lcom/zhihu/android/app/util/bb;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    const-string v1, "extra_push"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    const/high16 v1, 0x800

    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 244
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 245
    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;IILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    .line 249
    :goto_0
    invoke-direct {p0, p1, v0, v3}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Landroid/support/v4/app/ad$d;I)V

    .line 250
    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/zhihu/android/app/push/b;->a:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zhihu/android/app/push/b;->a(Landroid/content/Context;Ljava/util/List;ZILandroid/app/PendingIntent;)Landroid/support/v4/app/ad$d;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-static {p1}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v0

    .line 257
    const-class v1, Lcom/zhihu/android/api/b/y;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/bumblebee/http/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/y;

    .line 258
    invoke-virtual {p2}, Lcom/zhihu/android/api/model/Push;->parseThreadId()Ljava/lang/String;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    .line 260
    new-instance v2, Lcom/zhihu/android/app/push/b$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/zhihu/android/app/push/b$2;-><init>(Lcom/zhihu/android/app/push/b;Lcom/zhihu/android/api/model/Push;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/y;->b(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    invoke-static {p1}, Landroid/support/v4/app/am;->a(Landroid/content/Context;)Landroid/support/v4/app/am;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/am;->a(I)V

    .line 134
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {p1}, Landroid/support/v4/app/am;->a(Landroid/content/Context;)Landroid/support/v4/app/am;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p2}, Landroid/support/v4/app/am;->a(I)V

    .line 124
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 148
    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->c(Ljava/lang/String;)V

    .line 175
    :goto_1
    const-string v0, "zhihu.intent.action.OPEN_URL"

    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zhihu.intent.action.PROMOTION"

    iget-object v1, p2, Lcom/zhihu/android/api/model/Push;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wifi"

    invoke-static {}, Lcom/zhihu/android/app/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    invoke-static {p1}, Lcom/zhihu/android/app/ZhihuApplication;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ZhihuApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a()Lcom/zhihu/android/bumblebee/http/a;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/b/y;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/bumblebee/http/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/android/api/b/y;

    .line 177
    iget-wide v2, p2, Lcom/zhihu/android/api/model/Push;->sendAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/zhihu/android/api/model/Push;->getPushTypeForMark()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/zhihu/android/api/model/Push;->pushId:Ljava/lang/String;

    new-instance v9, Lcom/zhihu/android/app/util/n;

    invoke-direct {v9}, Lcom/zhihu/android/app/util/n;-><init>()V

    invoke-interface/range {v1 .. v9}, Lcom/zhihu/android/api/b/y;->a(JJILjava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 179
    :cond_2
    return-void

    .line 148
    :sswitch_0
    const-string v2, "zhihu.intent.action.NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "zhihu.intent.action.MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    goto :goto_0

    :sswitch_2
    const-string v2, "zhihu.intent.action.OPEN_URL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "zhihu.intent.action.PROMOTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 152
    invoke-virtual {p2}, Lcom/zhihu/android/api/model/Push;->isInviteNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/push/b;->e(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V

    goto/16 :goto_1

    .line 155
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/push/b;->d(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V

    goto/16 :goto_1

    .line 158
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/push/b;->d(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V

    goto/16 :goto_1

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/push/b;->c(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V

    goto/16 :goto_1

    .line 167
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/app/push/b;->b(Landroid/content/Context;Lcom/zhihu/android/api/model/Push;)V

    goto/16 :goto_1

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77b0e049 -> :sswitch_0
        -0x32014ec9 -> :sswitch_3
        0x1bba56a6 -> :sswitch_2
        0x4309cd9b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zhihu/android/app/push/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    invoke-static {p1}, Landroid/support/v4/app/am;->a(Landroid/content/Context;)Landroid/support/v4/app/am;

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/am;->a(I)V

    .line 144
    return-void
.end method
