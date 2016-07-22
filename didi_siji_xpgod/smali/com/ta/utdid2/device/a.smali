.class public final Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->b:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->c:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 15
    iput-wide v1, p0, Lcom/ta/utdid2/device/a;->e:J

    .line 16
    iput-wide v1, p0, Lcom/ta/utdid2/device/a;->f:J

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->e:J

    return-wide v0
.end method

.method final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->f:J

    .line 24
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->e:J

    .line 32
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    return-object v0
.end method
