.class Lcom/crashlytics/android/core/x$a;
.super Lio/fabric/sdk/android/services/common/h;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/x;

.field private final b:F


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/x;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/crashlytics/android/core/x$a;->a:Lcom/crashlytics/android/core/x;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/h;-><init>()V

    .line 125
    iput p2, p0, Lcom/crashlytics/android/core/x$a;->b:F

    .line 126
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    .line 141
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting report processing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/crashlytics/android/core/x$a;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/crashlytics/android/core/x$a;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 146
    :try_start_0
    iget v0, p0, Lcom/crashlytics/android/core/x$a;->b:F

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/core/e;->f()Lcom/crashlytics/android/core/e;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->o()Lcom/crashlytics/android/core/i;

    move-result-object v2

    .line 155
    iget-object v1, p0, Lcom/crashlytics/android/core/x$a;->a:Lcom/crashlytics/android/core/x;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/x;->a()Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-virtual {v2}, Lcom/crashlytics/android/core/i;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/crashlytics/android/core/e;->z()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User declined to send. Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/w;

    .line 167
    invoke-interface {v0}, Lcom/crashlytics/android/core/w;->a()Z

    goto :goto_1

    .line 172
    :cond_3
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 173
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-static {}, Lcom/crashlytics/android/core/e;->f()Lcom/crashlytics/android/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/e;->o()Lcom/crashlytics/android/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/i;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " report(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/w;

    .line 190
    iget-object v3, p0, Lcom/crashlytics/android/core/x$a;->a:Lcom/crashlytics/android/core/x;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/core/x;->a(Lcom/crashlytics/android/core/w;)Z

    goto :goto_3

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/crashlytics/android/core/x$a;->a:Lcom/crashlytics/android/core/x;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/x;->a()Ljava/util/List;

    move-result-object v2

    .line 195
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 196
    invoke-static {}, Lcom/crashlytics/android/core/x;->b()[S

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    invoke-static {}, Lcom/crashlytics/android/core/x;->b()[S

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v1, v3, v1

    int-to-long v4, v1

    .line 198
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v3, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    move-object v0, v2

    .line 207
    goto/16 :goto_2

    .line 203
    :catch_1
    move-exception v0

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/x$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/core/x$a;->a:Lcom/crashlytics/android/core/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/x;->a(Lcom/crashlytics/android/core/x;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 138
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
