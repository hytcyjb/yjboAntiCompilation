.class public abstract Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory$1;

    invoke-direct {v0}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory$1;-><init>()V

    return-object v0
.end method

.method public static setTencentHttpClientFactory(Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    sput-object p0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public getTencentHttpClient(Landroid/content/Context;Landroid/os/Bundle;)Lcom/tencent/map/geolocation/internal/TencentHttpClient;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    sget-object v1, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->getTencentHttpClient(Landroid/content/Context;Landroid/os/Bundle;)Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    move-result-object v0

    .line 33
    const-string v1, "http client should NOT be null"

    invoke-static {v0, v1}, Lct/b$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lct/bv;

    const-string v1, "channelId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lct/bv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
