.class Lcom/crashlytics/android/answers/f;
.super Ljava/lang/Object;
.source "AnswersRetryFilesSender.java"

# interfaces
.implements Lio/fabric/sdk/android/services/b/f;


# instance fields
.field private final a:Lcom/crashlytics/android/answers/o;

.field private final b:Lcom/crashlytics/android/answers/l;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/crashlytics/android/answers/f;->a:Lcom/crashlytics/android/answers/o;

    .line 42
    iput-object p2, p0, Lcom/crashlytics/android/answers/f;->b:Lcom/crashlytics/android/answers/l;

    .line 43
    return-void
.end method

.method public static a(Lcom/crashlytics/android/answers/o;)Lcom/crashlytics/android/answers/f;
    .locals 5
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/crashlytics/android/answers/k;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/internal/c;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lio/fabric/sdk/android/services/concurrency/internal/c;-><init>(JI)V

    const-wide v2, 0x3fb999999999999aL

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/answers/k;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/a;D)V

    .line 33
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/internal/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/concurrency/internal/b;-><init>(I)V

    .line 34
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/internal/e;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/concurrency/internal/e;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/a;Lio/fabric/sdk/android/services/concurrency/internal/d;)V

    .line 35
    new-instance v0, Lcom/crashlytics/android/answers/l;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/answers/l;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/e;)V

    .line 36
    new-instance v1, Lcom/crashlytics/android/answers/f;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/answers/f;-><init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/l;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 48
    iget-object v1, p0, Lcom/crashlytics/android/answers/f;->b:Lcom/crashlytics/android/answers/l;

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/l;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/crashlytics/android/answers/f;->a:Lcom/crashlytics/android/answers/o;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/answers/o;->a(Ljava/util/List;)Z

    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/answers/f;->b:Lcom/crashlytics/android/answers/l;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/l;->a()V

    .line 52
    const/4 v0, 0x1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/crashlytics/android/answers/f;->b:Lcom/crashlytics/android/answers/l;

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/l;->b(J)V

    goto :goto_0
.end method
