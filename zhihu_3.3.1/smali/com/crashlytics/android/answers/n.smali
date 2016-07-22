.class Lcom/crashlytics/android/answers/n;
.super Lio/fabric/sdk/android/services/b/b;
.source "SessionAnalyticsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/b/b",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lio/fabric/sdk/android/services/settings/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/s;Lio/fabric/sdk/android/services/common/j;Lio/fabric/sdk/android/services/b/c;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/b/b;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/a;Lio/fabric/sdk/android/services/common/j;Lio/fabric/sdk/android/services/b/c;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/n;->c:Lio/fabric/sdk/android/services/common/j;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/common/j;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lio/fabric/sdk/android/services/settings/b;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/crashlytics/android/answers/n;->g:Lio/fabric/sdk/android/services/settings/b;

    .line 63
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/crashlytics/android/answers/n;->g:Lio/fabric/sdk/android/services/settings/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lio/fabric/sdk/android/services/b/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/n;->g:Lio/fabric/sdk/android/services/settings/b;

    iget v0, v0, Lio/fabric/sdk/android/services/settings/b;->e:I

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/answers/n;->g:Lio/fabric/sdk/android/services/settings/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lio/fabric/sdk/android/services/b/b;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/n;->g:Lio/fabric/sdk/android/services/settings/b;

    iget v0, v0, Lio/fabric/sdk/android/services/settings/b;->c:I

    goto :goto_0
.end method
