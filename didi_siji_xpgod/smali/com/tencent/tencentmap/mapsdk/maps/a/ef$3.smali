.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;
.super Ljava/lang/Object;
.source "GLMapView.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/cl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Lcom/tencent/tencentmap/mapsdk/maps/a/gd;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gd;->a(Ljava/lang/String;)Z

    move-result v4

    .line 161
    if-nez v4, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v3

    .line 165
    :cond_1
    move-object v1, p1

    .local v1, myUrl:Ljava/lang/String;
    move-object v0, p1

    .line 166
    .local v0, debugUrl:Ljava/lang/String;
    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_2
    :goto_1
    :try_start_0
    const-string v4, "androidsdk"

    invoke-static {v0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/cz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    .local v2, resp:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    if-eqz v2, :cond_0

    .line 181
    const-string v3, "qt=rtt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Lcom/tencent/tencentmap/mapsdk/maps/a/gd;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gd;->b(Ljava/lang/String;)V

    .line 185
    :cond_3
    iget-object v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    goto :goto_0

    .line 168
    .end local v2           #resp:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :cond_4
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 169
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ef$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ef;

    invoke-static {v4, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ef;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v4

    goto :goto_0
.end method
