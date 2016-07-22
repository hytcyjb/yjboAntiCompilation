.class Lcom/crashlytics/android/answers/b$4;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/answers/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/b;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {v0}, Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/b;)Lcom/crashlytics/android/answers/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/t;->a()Lcom/crashlytics/android/answers/r;

    move-result-object v6

    .line 131
    iget-object v0, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {v0}, Lcom/crashlytics/android/answers/b;->b(Lcom/crashlytics/android/answers/b;)Lcom/crashlytics/android/answers/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/c;->a()Lcom/crashlytics/android/answers/n;

    move-result-object v4

    .line 133
    iget-object v0, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-virtual {v4, v0}, Lcom/crashlytics/android/answers/n;->a(Lio/fabric/sdk/android/services/b/d;)V

    .line 134
    iget-object v7, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    new-instance v0, Lcom/crashlytics/android/answers/h;

    iget-object v1, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {v1}, Lcom/crashlytics/android/answers/b;->c(Lcom/crashlytics/android/answers/b;)Lio/fabric/sdk/android/h;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {v2}, Lcom/crashlytics/android/answers/b;->d(Lcom/crashlytics/android/answers/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    iget-object v3, v3, Lcom/crashlytics/android/answers/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/crashlytics/android/answers/b$4;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {v5}, Lcom/crashlytics/android/answers/b;->e(Lcom/crashlytics/android/answers/b;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/answers/h;-><init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/n;Lio/fabric/sdk/android/services/network/c;Lcom/crashlytics/android/answers/r;)V

    iput-object v0, v7, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
