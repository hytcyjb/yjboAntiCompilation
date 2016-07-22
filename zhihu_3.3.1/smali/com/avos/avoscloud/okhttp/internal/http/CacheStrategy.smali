.class public final Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;,
        Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

.field public final networkRequest:Lcom/avos/avoscloud/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    .line 39
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;)V

    return-void
.end method

.method public static isCacheable(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Request;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 69
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/CacheControl;->isPublic()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/CacheControl;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
