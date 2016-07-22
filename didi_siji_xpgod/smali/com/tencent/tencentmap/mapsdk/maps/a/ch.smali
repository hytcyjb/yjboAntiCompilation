.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
.super Ljava/lang/Object;
.source "LineOptions.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field b:[I

.field c:[I

.field d:Z

.field e:F

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Z

.field l:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->e:F

    .line 47
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->f:I

    .line 52
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->g:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->h:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->i:Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->j:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->k:Z

    .line 77
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->l:F

    .line 9
    return-void
.end method


# virtual methods
.method public final a(F)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    .locals 0
    .parameter "width"

    .prologue
    .line 189
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->e:F

    .line 190
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ch;"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/bg;>;"
    const/4 v3, 0x2

    .line 83
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u53c2\u6570points\u4e0d\u80fd\u5c0f\u4e8e2!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u53c2\u6570points\u5b58\u5728null\u503c"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 89
    .local v0, point:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    if-eqz v0, :cond_2

    .line 90
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v0           #point:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_4
    return-object p0
.end method

.method public final a(Z)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    .locals 0
    .parameter "hasArrow"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->d:Z

    .line 182
    return-object p0
.end method

.method public final a([I)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    .locals 2
    .parameter "startIndexes"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53c2\u6570startIndexes\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->b:[I

    .line 109
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "textureName"
    .parameter "textureCapName"
    .parameter "textureRowCount"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->h:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->i:Ljava/lang/String;

    .line 146
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->j:I

    .line 147
    return-void
.end method

.method public final b([I)Lcom/tencent/tencentmap/mapsdk/maps/a/ch;
    .locals 2
    .parameter "colors"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53c2\u6570colors\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ch;->c:[I

    .line 174
    return-object p0
.end method
