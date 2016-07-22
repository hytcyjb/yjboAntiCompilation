.class final Lcom/instabug/library/network/b;
.super Ljava/lang/Object;
.source "UploadCacheService.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/d$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/UploadCacheService;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instabug/library/e/a;)V
    .locals 4
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UploadCacheService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/instabug/library/e/a;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uploaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/g/b;->a(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UploadCacheService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/g/b;->a(Ljava/lang/String;)V

    .line 153
    return-void
.end method
