.class Landroid/support/v7/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2129
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/LinearLayoutManager$a;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2129
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2159
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 2160
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->e()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->e()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 2134
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 2135
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 2137
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2165
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->b()I

    move-result v0

    .line 2166
    if-ltz v0, :cond_1

    .line 2167
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$a;->b(Landroid/view/View;)V

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 2171
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v1, :cond_2

    .line 2172
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 2173
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v1

    .line 2174
    sub-int/2addr v0, v1

    .line 2175
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->d()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2177
    if-lez v0, :cond_0

    .line 2178
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v1

    .line 2179
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    sub-int v1, v2, v1

    .line 2180
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    .line 2181
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2183
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2184
    sub-int/2addr v1, v2

    .line 2185
    if-gez v1, :cond_0

    .line 2187
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    .line 2191
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v1

    .line 2192
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    sub-int v2, v1, v2

    .line 2193
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2194
    if-lez v2, :cond_0

    .line 2195
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2197
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->d()I

    move-result v3

    sub-int v0, v3, v0

    .line 2199
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2201
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->d()I

    move-result v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2203
    sub-int/2addr v0, v1

    .line 2204
    if-gez v0, :cond_0

    .line 2205
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2144
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2147
    return-void

    .line 2144
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 2212
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 2219
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 2220
    return-void

    .line 2216
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
