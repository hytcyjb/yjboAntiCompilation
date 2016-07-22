.class final Lcom/tencent/bugly/unity/UnityAgent$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/unity/UnityAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/unity/UnityAgent;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/unity/UnityAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/bugly/unity/UnityAgent$1;->a:Lcom/tencent/bugly/unity/UnityAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    const-string v0, "%s - init the sdk with \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "UnityAgent"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/tencent/bugly/unity/UnityAgent$1;->a:Lcom/tencent/bugly/unity/UnityAgent;

    invoke-static {v2}, Lcom/tencent/bugly/unity/UnityAgent;->a(Lcom/tencent/bugly/unity/UnityAgent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/bugly/unity/UnityAgent$1;->a:Lcom/tencent/bugly/unity/UnityAgent;

    invoke-static {v1}, Lcom/tencent/bugly/unity/UnityAgent;->a(Lcom/tencent/bugly/unity/UnityAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/unity/UnityAgent$1;->a:Lcom/tencent/bugly/unity/UnityAgent;

    invoke-static {v2}, Lcom/tencent/bugly/unity/UnityAgent;->b(Lcom/tencent/bugly/unity/UnityAgent;)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/bugly/unity/UnityAgent$1;->a:Lcom/tencent/bugly/unity/UnityAgent;

    invoke-static {v3}, Lcom/tencent/bugly/unity/UnityAgent;->c(Lcom/tencent/bugly/unity/UnityAgent;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 119
    iget-object v0, p0, Lcom/tencent/bugly/unity/UnityAgent$1;->a:Lcom/tencent/bugly/unity/UnityAgent;

    invoke-static {v0, v4}, Lcom/tencent/bugly/unity/UnityAgent;->a(Lcom/tencent/bugly/unity/UnityAgent;Z)Z

    .line 120
    return-void
.end method
