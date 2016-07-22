.class Lcom/crashlytics/android/answers/d;
.super Lio/fabric/sdk/android/a$b;
.source "AnswersLifecycleCallbacks.java"


# instance fields
.field private final a:Lcom/crashlytics/android/answers/p;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/answers/p;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/crashlytics/android/answers/d;->a:Lcom/crashlytics/android/answers/p;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/crashlytics/android/answers/d;->a:Lcom/crashlytics/android/answers/p;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/p;->a(Landroid/app/Activity;Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    .line 24
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crashlytics/android/answers/d;->a:Lcom/crashlytics/android/answers/p;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/p;->a(Landroid/app/Activity;Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    .line 29
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/crashlytics/android/answers/d;->a:Lcom/crashlytics/android/answers/p;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/p;->a(Landroid/app/Activity;Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    .line 34
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/crashlytics/android/answers/d;->a:Lcom/crashlytics/android/answers/p;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/answers/p;->a(Landroid/app/Activity;Lcom/crashlytics/android/answers/SessionEvent$Type;)V

    .line 39
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    return-void
.end method
