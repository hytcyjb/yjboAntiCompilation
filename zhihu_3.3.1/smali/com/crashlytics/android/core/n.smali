.class Lcom/crashlytics/android/core/n;
.super Ljava/lang/Object;
.source "DialogStringResolver.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/settings/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crashlytics/android/core/n;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/crashlytics/android/core/n;->b:Lio/fabric/sdk/android/services/settings/o;

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/crashlytics/android/core/n;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/crashlytics/android/core/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, p1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v0, "com.crashlytics.CrashSubmissionPromptTitle"

    iget-object v1, p0, Lcom/crashlytics/android/core/n;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/o;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const-string v0, "com.crashlytics.CrashSubmissionPromptMessage"

    iget-object v1, p0, Lcom/crashlytics/android/core/n;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/o;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-string v0, "com.crashlytics.CrashSubmissionSendTitle"

    iget-object v1, p0, Lcom/crashlytics/android/core/n;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-string v0, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    iget-object v1, p0, Lcom/crashlytics/android/core/n;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/o;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    const-string v0, "com.crashlytics.CrashSubmissionCancelTitle"

    iget-object v1, p0, Lcom/crashlytics/android/core/n;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v1, v1, Lio/fabric/sdk/android/services/settings/o;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
