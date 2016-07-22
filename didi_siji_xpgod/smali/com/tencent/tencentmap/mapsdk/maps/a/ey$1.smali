.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;
.super Landroid/os/AsyncTask;
.source "AuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
