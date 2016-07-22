.class Lcom/crashlytics/android/answers/l;
.super Ljava/lang/Object;
.source "RetryManager.java"


# instance fields
.field a:J

.field private b:Lio/fabric/sdk/android/services/concurrency/internal/e;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/internal/e;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "retryState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/crashlytics/android/answers/l;->b:Lio/fabric/sdk/android/services/concurrency/internal/e;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/answers/l;->a:J

    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->b:Lio/fabric/sdk/android/services/concurrency/internal/e;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/e;->c()Lio/fabric/sdk/android/services/concurrency/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/l;->b:Lio/fabric/sdk/android/services/concurrency/internal/e;

    .line 51
    return-void
.end method

.method public a(J)Z
    .locals 5
    .parameter

    .prologue
    .line 33
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lcom/crashlytics/android/answers/l;->b:Lio/fabric/sdk/android/services/concurrency/internal/e;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/concurrency/internal/e;->a()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 34
    iget-wide v2, p0, Lcom/crashlytics/android/answers/l;->a:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/crashlytics/android/answers/l;->a:J

    .line 42
    iget-object v0, p0, Lcom/crashlytics/android/answers/l;->b:Lio/fabric/sdk/android/services/concurrency/internal/e;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/e;->b()Lio/fabric/sdk/android/services/concurrency/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/l;->b:Lio/fabric/sdk/android/services/concurrency/internal/e;

    .line 43
    return-void
.end method
