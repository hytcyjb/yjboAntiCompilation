.class Lcom/crashlytics/android/answers/b$2;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/b;->a()V
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
    .line 94
    iput-object p1, p0, Lcom/crashlytics/android/answers/b$2;->a:Lcom/crashlytics/android/answers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/b$2;->a:Lcom/crashlytics/android/answers/b;

    iget-object v0, v0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/q;

    .line 99
    iget-object v1, p0, Lcom/crashlytics/android/answers/b$2;->a:Lcom/crashlytics/android/answers/b;

    new-instance v2, Lcom/crashlytics/android/answers/g;

    invoke-direct {v2}, Lcom/crashlytics/android/answers/g;-><init>()V

    iput-object v2, v1, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/q;

    .line 100
    invoke-interface {v0}, Lcom/crashlytics/android/answers/q;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to disable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
