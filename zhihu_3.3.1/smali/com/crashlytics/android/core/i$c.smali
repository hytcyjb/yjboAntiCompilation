.class final Lcom/crashlytics/android/core/i$c;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/crashlytics/android/core/e;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/e;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1301
    iput-object p1, p0, Lcom/crashlytics/android/core/i$c;->a:Lcom/crashlytics/android/core/e;

    .line 1302
    iput-object p2, p0, Lcom/crashlytics/android/core/i$c;->b:Ljava/io/File;

    .line 1303
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/crashlytics/android/core/i$c;->a:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 1314
    iget-object v1, p0, Lcom/crashlytics/android/core/i$c;->a:Lcom/crashlytics/android/core/e;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/e;->a(Lio/fabric/sdk/android/services/settings/s;)Lcom/crashlytics/android/core/k;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_0

    .line 1319
    new-instance v1, Lcom/crashlytics/android/core/x;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/x;-><init>(Lcom/crashlytics/android/core/k;)V

    new-instance v0, Lcom/crashlytics/android/core/z;

    iget-object v2, p0, Lcom/crashlytics/android/core/i$c;->b:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/core/i;->i()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/core/z;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/x;->a(Lcom/crashlytics/android/core/w;)Z

    goto :goto_0
.end method
