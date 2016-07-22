.class final Lcom/instabug/library/network/a;
.super Ljava/lang/Object;
.source "UploadCacheService.java"

# interfaces
.implements Lcom/instabug/library/network/b/b$a;


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/instabug/library/internal/a/a;

.field private synthetic c:Lcom/instabug/library/network/UploadCacheService;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/UploadCacheService;Landroid/content/Intent;Lcom/instabug/library/internal/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    iput-object p2, p0, Lcom/instabug/library/network/a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/instabug/library/network/a;->b:Lcom/instabug/library/internal/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/toolbox/f;)V
    .locals 5
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-static {v0, p1}, Lcom/android/volley/toolbox/o;->a(Landroid/content/Context;Lcom/android/volley/toolbox/f;)Lcom/android/volley/h;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/instabug/library/network/a/a;

    iget-object v2, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-virtual {v2}, Lcom/instabug/library/network/UploadCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/network/a/c;

    invoke-direct {v3}, Lcom/instabug/library/network/a/c;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/instabug/library/network/a/a;-><init>(Landroid/content/Context;Lcom/instabug/library/network/a/c;)V

    .line 64
    iget-object v2, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    iget-object v3, p0, Lcom/instabug/library/network/a;->a:Landroid/content/Intent;

    iget-object v4, p0, Lcom/instabug/library/network/a;->b:Lcom/instabug/library/internal/a/a;

    invoke-static {v2, v3, v0, v4}, Lcom/instabug/library/network/UploadCacheService;->a(Lcom/instabug/library/network/UploadCacheService;Landroid/content/Intent;Lcom/android/volley/h;Lcom/instabug/library/internal/a/a;)V

    .line 66
    iget-object v0, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-virtual {v0}, Lcom/instabug/library/network/UploadCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/db/d;->a(Landroid/content/Context;)Lcom/instabug/library/internal/storage/db/d;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/instabug/library/internal/storage/q;

    invoke-direct {v2, v0}, Lcom/instabug/library/internal/storage/q;-><init>(Lcom/instabug/library/internal/storage/db/d;)V

    .line 69
    new-instance v0, Lcom/instabug/library/internal/storage/d;

    invoke-direct {v0, v2}, Lcom/instabug/library/internal/storage/d;-><init>(Lcom/instabug/library/internal/storage/q;)V

    .line 71
    new-instance v2, Lcom/instabug/library/internal/storage/a;

    iget-object v3, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-virtual {v3}, Lcom/instabug/library/network/UploadCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instabug/library/internal/storage/a;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Lcom/instabug/library/internal/storage/f;

    invoke-direct {v3, v0, v1, v2}, Lcom/instabug/library/internal/storage/f;-><init>(Lcom/instabug/library/internal/storage/d;Lcom/instabug/library/network/a/a;Lcom/instabug/library/internal/storage/a;)V

    .line 75
    iget-object v0, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-static {v3}, Lcom/instabug/library/internal/storage/o;->a(Lcom/instabug/library/internal/storage/f;)Lcom/instabug/library/internal/storage/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/network/UploadCacheService;->a(Lcom/instabug/library/network/UploadCacheService;Lcom/instabug/library/internal/storage/o;)Lcom/instabug/library/internal/storage/o;

    .line 77
    iget-object v0, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-static {v0}, Lcom/instabug/library/network/UploadCacheService;->a(Lcom/instabug/library/network/UploadCacheService;)Lcom/instabug/library/internal/storage/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/library/network/a;->c:Lcom/instabug/library/network/UploadCacheService;

    invoke-static {v1, v0}, Lcom/instabug/library/network/UploadCacheService;->a(Lcom/instabug/library/network/UploadCacheService;Ljava/util/ArrayList;)V

    .line 79
    :cond_0
    return-void
.end method
