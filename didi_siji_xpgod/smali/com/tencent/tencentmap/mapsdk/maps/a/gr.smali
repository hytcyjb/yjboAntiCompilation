.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gr;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ad;
.source "CSConfCheckReq.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gs;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic c:Z


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, vConfInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/gs;>;"
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ab;)V
    .locals 4
    .parameter "_is"

    .prologue
    .line 86
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->b:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gs;-><init>()V

    .line 90
    .local v0, __var_3:Lcom/tencent/tencentmap/mapsdk/maps/a/gs;
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v0           #__var_3:Lcom/tencent/tencentmap/mapsdk/maps/a/gs;
    :cond_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ab;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/util/Collection;I)V

    .line 79
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 98
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    invoke-direct {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 99
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    const-string v2, "vConfInfos"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/z;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/z;

    .line 100
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 66
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    .end local v0           #o:Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 70
    .restart local v0       #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->c:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 43
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;

    .line 43
    .local v0, t:Lcom/tencent/tencentmap/mapsdk/maps/a/gr;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gr;->a:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v0, 0x0

    return v0
.end method
