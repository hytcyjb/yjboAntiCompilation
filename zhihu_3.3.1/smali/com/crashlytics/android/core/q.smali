.class Lcom/crashlytics/android/core/q;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/q$1;,
        Lcom/crashlytics/android/core/q$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/crashlytics/android/core/q$a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/io/File;

.field private d:Lcom/crashlytics/android/core/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/crashlytics/android/core/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/q$a;-><init>(Lcom/crashlytics/android/core/q$1;)V

    sput-object v0, Lcom/crashlytics/android/core/q;->a:Lcom/crashlytics/android/core/q$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/core/q;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/crashlytics/android/core/q;->b:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/io/File;

    const-string v1, "log-files"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/q;->c:Ljava/io/File;

    .line 36
    sget-object v0, Lcom/crashlytics/android/core/q;->a:Lcom/crashlytics/android/core/q$a;

    iput-object v0, p0, Lcom/crashlytics/android/core/q;->d:Lcom/crashlytics/android/core/p;

    .line 37
    invoke-virtual {p0, p3}, Lcom/crashlytics/android/core/q;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 113
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "crashlytics-userlog-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/crashlytics/android/core/q;->c()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/crashlytics/android/core/q;->c:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->b:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/core/b;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->d:Lcom/crashlytics/android/core/p;

    invoke-interface {v0}, Lcom/crashlytics/android/core/p;->a()Lcom/crashlytics/android/core/b;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/io/File;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/crashlytics/android/core/v;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/core/v;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/q;->d:Lcom/crashlytics/android/core/p;

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->d:Lcom/crashlytics/android/core/p;

    invoke-interface {v0}, Lcom/crashlytics/android/core/p;->b()V

    .line 46
    sget-object v0, Lcom/crashlytics/android/core/q;->a:Lcom/crashlytics/android/core/q$a;

    iput-object v0, p0, Lcom/crashlytics/android/core/q;->d:Lcom/crashlytics/android/core/p;

    .line 48
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/q;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/q;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/q;->a(Ljava/io/File;I)V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 90
    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/q;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/crashlytics/android/core/q;->d:Lcom/crashlytics/android/core/p;

    invoke-interface {v0}, Lcom/crashlytics/android/core/p;->c()V

    .line 80
    return-void
.end method
