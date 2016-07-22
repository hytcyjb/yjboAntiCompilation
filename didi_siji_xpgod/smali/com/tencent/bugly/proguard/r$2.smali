.class final Lcom/tencent/bugly/proguard/r$2;
.super Lcom/tencent/bugly/proguard/s;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/tencent/bugly/proguard/r;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;Lcom/tencent/bugly/proguard/O;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/p;Lcom/tencent/bugly/proguard/r;ZLjava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r$2;->c:Lcom/tencent/bugly/proguard/r;

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/r$2;->a:Z

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/tencent/bugly/proguard/r$2;->b:Ljava/util/List;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/O;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/c;Lcom/tencent/bugly/proguard/p;Lcom/tencent/bugly/proguard/r;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 228
    invoke-super {p0}, Lcom/tencent/bugly/proguard/s;->a()V

    .line 229
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 230
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r$2;->c:Lcom/tencent/bugly/proguard/r;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(IJ)V

    .line 231
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/r$2;->a:Z

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r$2;->c:Lcom/tencent/bugly/proguard/r;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(IJ)V

    .line 235
    :cond_0
    return-void
.end method

.method protected final a(ZILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/s;->a(ZILjava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$2;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 244
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 245
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 246
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    .line 248
    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->f:J

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$2;->c:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r$2;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->e(Ljava/util/List;)V

    .line 252
    :cond_1
    return-void
.end method
