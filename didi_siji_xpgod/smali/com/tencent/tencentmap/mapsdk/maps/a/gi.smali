.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
.super Ljava/lang/Object;
.source "CityData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation
.end field

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:Lcom/tencent/tencentmap/mapsdk/maps/a/gi$a;

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:I

.field public u:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "pinyin"
    .parameter "shotPinyin"

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a:I

    .line 245
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    .line 247
    invoke-static {p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->d:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->e:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->D:Ljava/util/ArrayList;

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    .line 252
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "pinyin"
    .parameter "shotPinyin"
    .parameter "area"

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput-object p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->f:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "pinyin"
    .parameter "shotPinyin"
    .parameter "area"
    .parameter "roadId"

    .prologue
    .line 271
    invoke-direct/range {p0 .. p5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput p6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->i:I

    .line 273
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mPinYin"

    .prologue
    .line 410
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 420
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 413
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 414
    .local v2, chars:[C
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 415
    .local v5, sb:Ljava/lang/StringBuffer;
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-char v1, v0, v3

    .line 416
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 417
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 415
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 162
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->q:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    .line 164
    :cond_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    return v0
.end method

.method public final a(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 328
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    .line 331
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->p:I

    if-nez v0, :cond_0

    .line 332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->o:J

    .line 334
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)V
    .locals 1
    .parameter "cityData"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public final b()J
    .locals 6

    .prologue
    .line 301
    const-wide/16 v2, 0x0

    .line 302
    .local v2, size:J
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->D:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 304
    .local v0, child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 305
    goto :goto_0

    .line 307
    .end local v0           #child:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->n:J

    .line 310
    :cond_1
    return-wide v2
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 374
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 376
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    .line 379
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a:I

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
