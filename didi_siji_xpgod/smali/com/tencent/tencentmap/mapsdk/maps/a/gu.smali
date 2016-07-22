.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gu;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
.source "SCConfCheckRsp.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gt;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic d:Z


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    .line 97
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->c:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gt;-><init>()V

    .line 101
    .local v0, __var_4:Lcom/tencent/tencentmap/mapsdk/maps/a/gt;
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v0           #__var_4:Lcom/tencent/tencentmap/mapsdk/maps/a/gt;
    :cond_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 84
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 85
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/util/Collection;I)V

    .line 89
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 109
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 110
    .local v0, _ds:Lcom/tencent/tencentmap/mapsdk/maps/a/z;
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    const-string v2, "iRet"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(ILjava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 111
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    const-string v2, "vConfInfos"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 112
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 72
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    .end local v0           #o:Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 76
    .restart local v0       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->d:Z

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

    .line 42
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;

    .line 48
    .local v0, t:Lcom/tencent/tencentmap/mapsdk/maps/a/gu;
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->a:I

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gu;->b:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    return v0
.end method
