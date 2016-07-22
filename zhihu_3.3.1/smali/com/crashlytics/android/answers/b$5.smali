.class Lcom/crashlytics/android/answers/b$5;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/SessionEvent$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/answers/SessionEvent$a;

.field final synthetic b:Z

.field final synthetic c:Lcom/crashlytics/android/answers/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/b;Lcom/crashlytics/android/answers/SessionEvent$a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/crashlytics/android/answers/b$5;->c:Lcom/crashlytics/android/answers/b;

    iput-object p2, p0, Lcom/crashlytics/android/answers/b$5;->a:Lcom/crashlytics/android/answers/SessionEvent$a;

    iput-boolean p3, p0, Lcom/crashlytics/android/answers/b$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/b$5;->c:Lcom/crashlytics/android/answers/b;

    iget-object v0, v0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/b$5;->a:Lcom/crashlytics/android/answers/SessionEvent$a;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/answers/q;->a(Lcom/crashlytics/android/answers/SessionEvent$a;)V

    .line 149
    iget-boolean v0, p0, Lcom/crashlytics/android/answers/b$5;->b:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/crashlytics/android/answers/b$5;->c:Lcom/crashlytics/android/answers/b;

    iget-object v0, v0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/q;

    invoke-interface {v0}, Lcom/crashlytics/android/answers/q;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to process event"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
