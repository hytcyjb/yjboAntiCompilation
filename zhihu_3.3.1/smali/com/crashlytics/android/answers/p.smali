.class Lcom/crashlytics/android/answers/p;
.super Ljava/lang/Object;
.source "SessionAnalyticsManager.java"


# instance fields
.field final a:Lcom/crashlytics/android/answers/b;

.field final b:Lio/fabric/sdk/android/a;

.field final c:Lcom/crashlytics/android/answers/e;

.field final d:Lcom/crashlytics/android/answers/d;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/b;Lio/fabric/sdk/android/a;Lcom/crashlytics/android/answers/e;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/crashlytics/android/answers/d;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/d;-><init>(Lcom/crashlytics/android/answers/p;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/p;->d:Lcom/crashlytics/android/answers/d;

    .line 52
    iput-object p1, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    .line 53
    iput-object p2, p0, Lcom/crashlytics/android/answers/p;->b:Lio/fabric/sdk/android/a;

    .line 54
    iput-object p3, p0, Lcom/crashlytics/android/answers/p;->c:Lcom/crashlytics/android/answers/e;

    .line 55
    iput-wide p4, p0, Lcom/crashlytics/android/answers/p;->e:J

    .line 56
    return-void
.end method

.method public static a(Lio/fabric/sdk/android/h;Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/p;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v4, Lcom/crashlytics/android/answers/t;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/crashlytics/android/answers/t;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v3, Lcom/crashlytics/android/answers/c;

    new-instance v0, Lio/fabric/sdk/android/services/c/b;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/b;-><init>(Lio/fabric/sdk/android/h;)V

    invoke-direct {v3, p1, v0}, Lcom/crashlytics/android/answers/c;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/a;)V

    .line 38
    new-instance v5, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    invoke-direct {v5, v0}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    .line 40
    new-instance v6, Lio/fabric/sdk/android/a;

    invoke-direct {v6, p1}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/crashlytics/android/answers/b;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/b;-><init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Lcom/crashlytics/android/answers/c;Lcom/crashlytics/android/answers/t;Lio/fabric/sdk/android/services/network/c;)V

    .line 43
    invoke-static {p1}, Lcom/crashlytics/android/answers/e;->a(Landroid/content/Context;)Lcom/crashlytics/android/answers/e;

    move-result-object v5

    .line 44
    new-instance v2, Lcom/crashlytics/android/answers/p;

    move-object v3, v0

    move-object v4, v6

    move-wide v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/crashlytics/android/answers/p;-><init>(Lcom/crashlytics/android/answers/b;Lio/fabric/sdk/android/a;Lcom/crashlytics/android/answers/e;J)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/b;->b()V

    .line 63
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->b:Lio/fabric/sdk/android/a;

    iget-object v1, p0, Lcom/crashlytics/android/answers/p;->d:Lcom/crashlytics/android/answers/d;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/a$b;)Z

    .line 65
    iget-wide v0, p0, Lcom/crashlytics/android/answers/p;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/p;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/p;->c()V

    .line 67
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->c:Lcom/crashlytics/android/answers/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/e;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/crashlytics/android/answers/SessionEvent$Type;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged lifecycle event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/crashlytics/android/answers/SessionEvent$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {p2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/SessionEvent$a;)V

    .line 119
    return-void
.end method

.method public a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/answers/b;->a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged crash"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->c(Lcom/crashlytics/android/answers/SessionEvent$a;)V

    .line 105
    return-void
.end method

.method a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->c:Lcom/crashlytics/android/answers/e;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/p;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->b:Lio/fabric/sdk/android/a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/a;->a()V

    .line 76
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/b;->a()V

    .line 77
    return-void
.end method

.method b(J)Z
    .locals 5
    .parameter

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 147
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged install"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/crashlytics/android/answers/p;->a:Lcom/crashlytics/android/answers/b;

    invoke-static {}, Lcom/crashlytics/android/answers/SessionEvent;->a()Lcom/crashlytics/android/answers/SessionEvent$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->b(Lcom/crashlytics/android/answers/SessionEvent$a;)V

    .line 114
    return-void
.end method
