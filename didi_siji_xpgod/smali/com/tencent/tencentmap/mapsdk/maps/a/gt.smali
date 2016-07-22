.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gt;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
.source "ConfInfoRsp.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static g:[B

.field static final synthetic h:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->a:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    .line 25
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    .line 27
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    .line 29
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->a:Ljava/lang/String;

    .line 129
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    .line 130
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    .line 131
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    .line 132
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    .line 133
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->g:[B

    if-nez v0, :cond_0

    .line 135
    new-array v0, v3, [B

    .line 136
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->g:[B

    aput-byte v2, v0, v2

    .line 139
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->g:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->b(IZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    .line 140
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    .line 113
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 114
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 115
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 116
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 117
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a([BI)V

    .line 121
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 145
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 146
    .local v0, _ds:Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->a:Ljava/lang/String;

    const-string v2, "sName"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 147
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    const-string v2, "iRet"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 148
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    const-string v2, "iUpdated"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 149
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    const-string v2, "iVersion"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 150
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    const-string v2, "iZipped"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 151
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    const-string v2, "vConfData"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a([BLjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 152
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 100
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    .end local v0           #o:Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 104
    .restart local v0       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->h:Z

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

    .line 66
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;

    .line 72
    .local v0, t:Lcom/tencent/tencentmap/mapsdk/maps/a/gt;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->b:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->c:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->d:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->e:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;->f:[B

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v0, 0x0

    return v0
.end method
