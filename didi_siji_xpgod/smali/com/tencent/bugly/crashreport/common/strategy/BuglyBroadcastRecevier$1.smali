.class final Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field private synthetic b:Lcom/tencent/bugly/proguard/r;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;->b:Lcom/tencent/bugly/proguard/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/crashreport/common/strategy/b;)Ljava/util/List;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 170
    const-string v1, "upload crash on network changed "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;->b:Lcom/tencent/bugly/proguard/r;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/BuglyBroadcastRecevier$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;)V

    .line 173
    :cond_0
    return-void
.end method
