.class Lcom/crashlytics/android/answers/b;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Lio/fabric/sdk/android/services/b/d;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Lcom/crashlytics/android/answers/q;

.field private final c:Lio/fabric/sdk/android/h;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/crashlytics/android/answers/c;

.field private final f:Lcom/crashlytics/android/answers/t;

.field private final g:Lio/fabric/sdk/android/services/network/c;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Lcom/crashlytics/android/answers/c;Lcom/crashlytics/android/answers/t;Lio/fabric/sdk/android/services/network/c;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-string v0, "Answers Events Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/answers/b;-><init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Lcom/crashlytics/android/answers/c;Lcom/crashlytics/android/answers/t;Lio/fabric/sdk/android/services/network/c;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 37
    return-void
.end method

.method constructor <init>(Lio/fabric/sdk/android/h;Landroid/content/Context;Lcom/crashlytics/android/answers/c;Lcom/crashlytics/android/answers/t;Lio/fabric/sdk/android/services/network/c;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/crashlytics/android/answers/g;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/g;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/b;->b:Lcom/crashlytics/android/answers/q;

    .line 43
    iput-object p1, p0, Lcom/crashlytics/android/answers/b;->c:Lio/fabric/sdk/android/h;

    .line 44
    iput-object p2, p0, Lcom/crashlytics/android/answers/b;->d:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/crashlytics/android/answers/b;->e:Lcom/crashlytics/android/answers/c;

    .line 46
    iput-object p4, p0, Lcom/crashlytics/android/answers/b;->f:Lcom/crashlytics/android/answers/t;

    .line 47
    iput-object p5, p0, Lcom/crashlytics/android/answers/b;->g:Lio/fabric/sdk/android/services/network/c;

    .line 48
    iput-object p6, p0, Lcom/crashlytics/android/answers/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/answers/b;)Lcom/crashlytics/android/answers/t;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->f:Lcom/crashlytics/android/answers/t;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to run events task"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/crashlytics/android/answers/b;)Lcom/crashlytics/android/answers/c;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->e:Lcom/crashlytics/android/answers/c;

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to submit events task"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/crashlytics/android/answers/b;)Lio/fabric/sdk/android/h;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->c:Lio/fabric/sdk/android/h;

    return-object v0
.end method

.method static synthetic d(Lcom/crashlytics/android/answers/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/crashlytics/android/answers/b;)Lio/fabric/sdk/android/services/network/c;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->g:Lio/fabric/sdk/android/services/network/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/crashlytics/android/answers/b$2;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/b$2;-><init>(Lcom/crashlytics/android/answers/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/b;->b(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public a(Lcom/crashlytics/android/answers/SessionEvent$a;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0, v0}, Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/SessionEvent$a;ZZ)V

    .line 56
    return-void
.end method

.method a(Lcom/crashlytics/android/answers/SessionEvent$a;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/crashlytics/android/answers/b$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/crashlytics/android/answers/b$5;-><init>(Lcom/crashlytics/android/answers/b;Lcom/crashlytics/android/answers/SessionEvent$a;Z)V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/b;->a(Ljava/lang/Runnable;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/b;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/crashlytics/android/answers/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/answers/b$1;-><init>(Lcom/crashlytics/android/answers/b;Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/b;->b(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    new-instance v0, Lcom/crashlytics/android/answers/b$3;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/b$3;-><init>(Lcom/crashlytics/android/answers/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/b;->b(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/crashlytics/android/answers/b$4;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/b$4;-><init>(Lcom/crashlytics/android/answers/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/b;->b(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public b(Lcom/crashlytics/android/answers/SessionEvent$a;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/SessionEvent$a;ZZ)V

    .line 63
    return-void
.end method

.method public c(Lcom/crashlytics/android/answers/SessionEvent$a;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/SessionEvent$a;ZZ)V

    .line 70
    return-void
.end method
