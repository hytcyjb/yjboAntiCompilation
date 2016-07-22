.class public Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final g:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

.field public static final h:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

.field public static final i:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

.field public static final j:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;


# instance fields
.field public a:I

.field public b:[D

.field public c:J

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field private k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-direct {v0, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 98
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[DZ)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 100
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v1, 0x68

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 102
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v1, 0x69

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->d:Z

    .line 109
    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 1
    .parameter "type"
    .parameter "params"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[DZ)V

    .line 113
    return-void
.end method

.method public constructor <init>(I[DZ)V
    .locals 2
    .parameter "type"
    .parameter "params"
    .parameter "cantBeCanceled"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->d:Z

    .line 116
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a:I

    .line 117
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    .line 118
    iput-boolean p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->e:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->d:Z

    .line 122
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a:I

    .line 123
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->f:Ljava/lang/Runnable;

    .line 124
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method a(Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;)Z
    .locals 7
    .parameter "executor"

    .prologue
    .line 162
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;

    if-eqz v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a()Z

    move-result v0

    .line 169
    .local v0, canbeRemoved:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 170
    .local v1, performStart:J
    invoke-interface {p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 172
    .local v3, usedTime:J
    const-wide/16 v5, 0x14

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mActionExecutor.onPerformAction action used time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 176
    :cond_1
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;

    .line 186
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bd;

    .line 195
    :cond_0
    return-void
.end method
