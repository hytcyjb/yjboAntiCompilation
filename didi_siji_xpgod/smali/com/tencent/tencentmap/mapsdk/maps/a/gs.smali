.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gs;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
.source "ConfInfoReq.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic d:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    .line 25
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "sName"
    .parameter "iVersion"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    .line 25
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    .line 39
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    .line 101
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    .line 102
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 91
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 92
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 93
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 107
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 108
    .local v0, _ds:Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    const-string v2, "sName"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 109
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    const-string v2, "iVersion"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 110
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    const-string v2, "iDataFlag"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 111
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 78
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    .end local v0           #o:Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 82
    .restart local v0       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->d:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;

    .line 53
    .local v0, t:Lcom/tencent/tencentmap/mapsdk/maps/a/gs;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->b:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;->c:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
