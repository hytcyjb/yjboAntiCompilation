.class final Lcom/tencent/bugly/crashreport/common/strategy/c$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/common/strategy/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/common/strategy/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/c;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/b;->e:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/crashreport/common/strategy/c;)Lcom/tencent/bugly/proguard/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/d;)V

    .line 292
    :cond_0
    return-void
.end method
