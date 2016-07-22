.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bx;
.super Ljava/lang/Object;
.source "MapResources.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

.field private h:Ljava/util/concurrent/Semaphore;

.field private i:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "rttcfg.dat"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->a:Ljava/lang/String;

    .line 29
    const-string v0, "streetcfg.dat"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->b:Ljava/lang/String;

    .line 31
    const-string v0, "mapconfig.dat"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/at;Lcom/tencent/tencentmap/mapsdk/maps/a/bz;Lcom/tencent/tencentmap/mapsdk/maps/a/ag;)V
    .locals 2
    .parameter "context"
    .parameter "mapContext"
    .parameter "manager"
    .parameter "engineCallback"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->h:Ljava/util/concurrent/Semaphore;

    .line 181
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->i:Ljava/util/concurrent/Semaphore;

    .line 45
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->d:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 47
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

    .line 48
    iput-object p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "name"

    .prologue
    .line 55
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "name"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

    if-nez v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 69
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

    invoke-interface {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ag;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 158
    return-void
.end method
