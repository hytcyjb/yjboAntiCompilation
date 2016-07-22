.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/proguard/w;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/w;->a:J

    .line 17
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/w;->b:J

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/w;->d:Z

    .line 20
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/w;->e:Z

    .line 21
    iput v1, p0, Lcom/tencent/bugly/proguard/w;->f:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "x0"

    .prologue
    const-wide/16 v4, 0x0

    .line 14
    check-cast p1, Lcom/tencent/bugly/proguard/w;

    .end local p1
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->b:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/w;->b:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
