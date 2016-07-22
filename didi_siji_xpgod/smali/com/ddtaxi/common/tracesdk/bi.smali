.class Lcom/ddtaxi/common/tracesdk/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/bg;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/bh;

.field private final synthetic b:Lcom/ddtaxi/common/tracesdk/f;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/bh;Lcom/ddtaxi/common/tracesdk/f;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    iput-object p2, p0, Lcom/ddtaxi/common/tracesdk/bi;->b:Lcom/ddtaxi/common/tracesdk/f;

    iput-object p3, p0, Lcom/ddtaxi/common/tracesdk/bi;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->d(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;I)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->d(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;I)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;I)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getTotalSucsFailTimes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v3}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v3

    invoke-static {v3}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/TraceManager;->setTotalSucsFailTimes(JJ)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->a(Lcom/ddtaxi/common/tracesdk/bh;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x4

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;I)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v2}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v2

    invoke-static {v2}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;I)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getTotalSucsFailTimes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v3}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v3

    invoke-static {v3}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/ddtaxi/common/tracesdk/TraceManager;->setTotalSucsFailTimes(JJ)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->b:Lcom/ddtaxi/common/tracesdk/f;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bi;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/f;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0, v6}, Lcom/ddtaxi/common/tracesdk/bh;->a(Lcom/ddtaxi/common/tracesdk/bh;Z)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/TraceManager;->setLastUploadFailTs(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bi;->a:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bh;->b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
