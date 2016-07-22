.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/a/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field i:I

.field j:Landroid/support/v7/widget/ab;

.field k:Z

.field l:I

.field m:I

.field n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final o:Landroid/support/v7/widget/LinearLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 115
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 127
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    .line 155
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 156
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    .line 157
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 109
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 115
    iput-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 127
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    .line 170
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$h$a;

    move-result-object v0

    .line 171
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$h$a;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 172
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$h$a;->c:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Z)V

    .line 173
    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$h$a;->d:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 174
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)V

    .line 175
    return-void
.end method

.method private L()Landroid/view/View;
    .locals 1

    .prologue
    .line 1517
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 863
    if-lez v0, :cond_1

    .line 864
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    neg-int v0, v0

    .line 869
    add-int v1, p1, v0

    .line 870
    if-eqz p4, :cond_0

    .line 872
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 873
    if-lez v1, :cond_0

    .line 874
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ab;->a(I)V

    .line 875
    add-int/2addr v0, v1

    .line 878
    :cond_0
    :goto_0
    return v0

    .line 866
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1529
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1530
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1533
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$r;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1131
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->h()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    .line 1132
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1133
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 1135
    if-ne p1, v1, :cond_3

    .line 1136
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1138
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v0

    .line 1140
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 1142
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1143
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1145
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1158
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1159
    if-eqz p3, :cond_1

    .line 1160
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1162
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1163
    return-void

    .line 1131
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1149
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v0

    .line 1150
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v5}, Landroid/support/v7/widget/ab;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1151
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_4

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 1153
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 1154
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1155
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1}, Landroid/support/v7/widget/ab;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1151
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2
    .parameter

    .prologue
    .line 907
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 908
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1231
    if-gez p2, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    .line 1241
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_3

    .line 1242
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1243
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1244
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_2

    .line 1245
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1242
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1250
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1251
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1252
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    .line 1253
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1250
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1205
    if-ne p2, p3, :cond_1

    .line 1220
    :cond_0
    return-void

    .line 1211
    :cond_1
    if-le p3, p2, :cond_2

    .line 1212
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1213
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 1212
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1216
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1217
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;)V

    .line 1216
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1311
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-eqz v0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1315
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0

    .line 1317
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    .line 723
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x8000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 775
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    .line 853
    :goto_0
    return v1

    .line 779
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 780
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 781
    iput v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    move v1, v2

    .line 785
    goto :goto_0

    .line 790
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 794
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 795
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    .line 799
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0

    .line 805
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ne v0, v4, :cond_e

    .line 806
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_a

    .line 808
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v3

    .line 809
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 811
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    goto :goto_0

    .line 814
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 816
    if-gez v3, :cond_7

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 818
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto :goto_0

    .line 821
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 823
    if-gez v2, :cond_8

    .line 824
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    .line 825
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto/16 :goto_0

    .line 828
    :cond_8
    iget-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 833
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_c

    .line 835
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 836
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 839
    :cond_c
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 836
    goto :goto_2

    .line 844
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 846
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_f

    .line 847
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 850
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_0
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 888
    if-lez v0, :cond_1

    .line 890
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    neg-int v0, v0

    .line 894
    add-int v1, p1, v0

    .line 895
    if-eqz p4, :cond_0

    .line 897
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 898
    if-lez v1, :cond_0

    .line 899
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ab;->a(I)V

    .line 900
    sub-int/2addr v0, v1

    .line 903
    :cond_0
    :goto_0
    return v0

    .line 892
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1547
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1551
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 342
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2
    .parameter

    .prologue
    .line 921
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 922
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1270
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    .line 1271
    if-gez p2, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->e()I

    move-result v0

    sub-int v3, v0, p2

    .line 1279
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 1280
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1281
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v4

    .line 1282
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1283
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1288
    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 1289
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1290
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 1291
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;II)V

    goto :goto_0

    .line 1288
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 661
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$n;->a()Ljava/util/List;

    move-result-object v5

    .line 662
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    .line 664
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    .line 665
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 666
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    .line 664
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 669
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v1

    .line 670
    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    .line 672
    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 673
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 670
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    .line 675
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    .line 683
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-object v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    .line 684
    if-lez v3, :cond_7

    .line 685
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v0

    .line 686
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 688
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 689
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 693
    :cond_7
    if-lez v2, :cond_8

    .line 694
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v0

    .line 695
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 696
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 697
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;->a()V

    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 701
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    if-nez v2, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v0

    .line 737
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->E()Landroid/view/View;

    move-result-object v2

    .line 738
    if-eqz v2, :cond_2

    invoke-static {p3, v2, p2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/support/v7/widget/LinearLayoutManager$a;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 739
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;)V

    move v0, v1

    .line 740
    goto :goto_0

    .line 742
    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v2, v3, :cond_0

    .line 745
    iget-boolean v2, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    .line 748
    :goto_1
    if-eqz v2, :cond_0

    .line 749
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->b(Landroid/view/View;)V

    .line 752
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 754
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 759
    :cond_4
    if-eqz v0, :cond_5

    .line 760
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    :goto_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$a;->b:I

    :cond_5
    move v0, v1

    .line 765
    goto :goto_0

    .line 745
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 760
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v0

    goto :goto_2
.end method

.method private c()Landroid/view/View;
    .locals 1

    .prologue
    .line 1507
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1569
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private f(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 911
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 912
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 914
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 915
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 917
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x8000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 918
    return-void

    :cond_0
    move v0, v1

    .line 912
    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1586
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 925
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 926
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 927
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    .line 929
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    .line 930
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 931
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x8000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 933
    return-void

    :cond_0
    move v0, v1

    .line 927
    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1065
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    :goto_0
    return v4

    .line 1068
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1069
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/ab;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1591
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1076
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return v4

    .line 1079
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1080
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/ab;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1087
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    :goto_0
    return v4

    .line 1090
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1091
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ah;->b(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/ab;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1016
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1017
    const/4 v0, 0x0

    .line 1019
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, -0x8000

    .line 1335
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1336
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v0, v6, :cond_1

    .line 1338
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v0, :cond_0

    .line 1339
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1341
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    .line 1343
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v0, v2

    .line 1344
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    .line 1345
    :cond_2
    iget-boolean v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1346
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$b;->a()V

    .line 1347
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V

    .line 1348
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    if-eqz v3, :cond_5

    .line 1379
    :cond_4
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int v0, v1, v0

    return v0

    .line 1351
    :cond_5
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1358
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v3, :cond_6

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1360
    :cond_6
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 1362
    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v0, v3

    .line 1365
    :cond_7
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v3, v6, :cond_9

    .line 1366
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1367
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v3, :cond_8

    .line 1368
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1370
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    .line 1372
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->f()I

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$i;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 182
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$i;-><init>(II)V

    return-object v0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1711
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    .line 1712
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v4

    .line 1713
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1714
    :goto_0
    const/4 v2, 0x0

    .line 1715
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1716
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1717
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v5

    .line 1718
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v6

    .line 1719
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1720
    if-eqz p3, :cond_0

    .line 1721
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1731
    :cond_0
    :goto_2
    return-object v1

    .line 1713
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1723
    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    .line 1715
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1731
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;III)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1601
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1604
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->c()I

    move-result v5

    .line 1605
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v6

    .line 1606
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1607
    :goto_1
    if-eq p3, p4, :cond_3

    .line 1608
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1609
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1610
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 1611
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1612
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1607
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1606
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1615
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1617
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1618
    goto :goto_2

    .line 1625
    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x8000

    const/4 v0, 0x0

    .line 1737
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 1738
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    if-nez v1, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return-object v0

    .line 1742
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)I

    move-result v3

    .line 1743
    if-eq v3, v5, :cond_0

    .line 1746
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1748
    if-ne v3, v6, :cond_2

    .line 1749
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1753
    :goto_1
    if-eqz v2, :cond_0

    .line 1760
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1761
    const v1, 0x3eaaaaab

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v4}, Landroid/support/v7/widget/ab;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1762
    invoke-direct {p0, v3, v1, v7, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$r;)V

    .line 1763
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    .line 1764
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v7, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1765
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v1, p4, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 1767
    if-ne v3, v6, :cond_3

    .line 1768
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v1

    .line 1772
    :goto_2
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1775
    goto :goto_0

    .line 1751
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1770
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v1

    goto :goto_2
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1001
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 1002
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 1007
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 264
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 265
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 272
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1384
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v1

    .line 1385
    if-nez v1, :cond_0

    .line 1391
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 1454
    :goto_0
    return-void

    .line 1394
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$i;

    .line 1395
    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1396
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    .line 1398
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    .line 1410
    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    .line 1411
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 1413
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v7, :cond_a

    .line 1414
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1415
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1416
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .line 1421
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v4, :cond_9

    .line 1422
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1423
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    .line 1442
    :goto_4
    iget v5, v6, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v6, Landroid/support/v7/widget/RecyclerView$i;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v6, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1450
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$i;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1451
    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 1453
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1396
    goto :goto_1

    .line 1400
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1403
    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    .line 1405
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1403
    goto :goto_5

    .line 1407
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 1418
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->A()I

    move-result v2

    .line 1419
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    .line 1425
    :cond_9
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1426
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    goto :goto_4

    .line 1429
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()I

    move-result v3

    .line 1430
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ab;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1432
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v2, v4, :cond_b

    .line 1433
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1434
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4

    .line 1436
    :cond_b
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 1437
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v2, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$n;)V

    .line 217
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 219
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$n;->clear()V

    .line 221
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/LinearLayoutManager$1;-><init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V

    .line 434
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/z;->d(I)V

    .line 435
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$q;)V

    .line 436
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1852
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1854
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 1855
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1856
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    .line 1857
    if-ge v0, v3, :cond_0

    move v0, v1

    .line 1859
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_2

    .line 1860
    if-ne v0, v1, :cond_1

    .line 1861
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 1879
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1857
    goto :goto_0

    .line 1866
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    goto :goto_1

    .line 1871
    :cond_2
    if-ne v0, v2, :cond_3

    .line 1872
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    goto :goto_1

    .line 1874
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ab;->c(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    goto :goto_1
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 226
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/o;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->b(I)V

    .line 230
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->c(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1194
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->a(Ljava/lang/String;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1031
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 323
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 331
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 375
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 379
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    goto :goto_0
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1166
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1188
    :goto_0
    return p1

    .line 1169
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1170
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 1171
    if-lez p1, :cond_2

    move v0, v1

    .line 1172
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1173
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$r;)V

    .line 1174
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1176
    if-gez v1, :cond_3

    move p1, v2

    .line 1180
    goto :goto_0

    .line 1171
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1182
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1183
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ab;->a(I)V

    .line 1187
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    .line 388
    if-nez v0, :cond_1

    .line 389
    const/4 v0, 0x0

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 392
    sub-int v1, p1, v1

    .line 393
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 394
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 395
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 400
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, -0x8000

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v0, v5, :cond_1

    .line 467
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 631
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 476
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 479
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 481
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->a()V

    .line 482
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    .line 484
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 493
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    .line 496
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->j:I

    if-ltz v2, :cond_8

    move v2, v1

    .line 503
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->c()I

    move-result v3

    add-int/2addr v2, v3

    .line 504
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->g()I

    move-result v3

    add-int/2addr v0, v3

    .line 505
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-eq v3, v8, :cond_3

    .line 510
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_3

    .line 514
    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v6, :cond_9

    .line 515
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v6}, Landroid/support/v7/widget/ab;->d()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v3

    sub-int v3, v6, v3

    .line 517
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v3, v6

    .line 523
    :goto_2
    if-lez v3, :cond_a

    .line 524
    add-int/2addr v2, v3

    .line 533
    :cond_3
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v3, :cond_c

    .line 534
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_b

    move v3, v4

    .line 541
    :goto_4
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    .line 542
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 543
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3}, Landroid/support/v7/widget/ab;->h()I

    move-result v3

    if-nez v3, :cond_e

    move v3, v4

    :goto_5
    iput-boolean v3, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->l:Z

    .line 544
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v6

    iput-boolean v6, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    .line 545
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v3, :cond_f

    .line 547
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 548
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 549
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 550
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 551
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 552
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v3, :cond_4

    .line 553
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v3

    .line 556
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 557
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 558
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v7

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v0, :cond_12

    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 565
    invoke-direct {p0, v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 566
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 567
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    :goto_6
    move v2, v0

    move v0, v3

    .line 600
    :cond_5
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v3

    if-lez v3, :cond_6

    .line 604
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v3, v6

    if-eqz v3, :cond_11

    .line 605
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v3

    .line 606
    add-int/2addr v2, v3

    .line 607
    add-int/2addr v0, v3

    .line 608
    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v1

    .line 609
    add-int/2addr v2, v1

    .line 610
    add-int/2addr v0, v1

    .line 620
    :cond_6
    :goto_8
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V

    .line 621
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 622
    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 623
    iput v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/widget/ab;->a()V

    .line 626
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    goto/16 :goto_0

    :cond_8
    move v2, v0

    move v0, v1

    .line 501
    goto/16 :goto_1

    .line 519
    :cond_9
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v6}, Landroid/support/v7/widget/ab;->c()I

    move-result v6

    sub-int/2addr v3, v6

    .line 521
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    sub-int v3, v6, v3

    goto/16 :goto_2

    .line 526
    :cond_a
    sub-int/2addr v0, v3

    goto/16 :goto_3

    :cond_b
    move v3, v5

    .line 534
    goto/16 :goto_4

    .line 537
    :cond_c
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_d

    move v3, v5

    goto/16 :goto_4

    :cond_d
    move v3, v4

    goto/16 :goto_4

    :cond_e
    move v3, v1

    .line 543
    goto/16 :goto_5

    .line 572
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 573
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 576
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 577
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v6, :cond_10

    .line 578
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v2, v6

    .line 581
    :cond_10
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 582
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v2, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 583
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 584
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 585
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 587
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v6, :cond_5

    .line 588
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$c;->c:I

    .line 590
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v6, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$r;Z)I

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    goto/16 :goto_7

    .line 612
    :cond_11
    invoke-direct {p0, v2, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v3

    .line 613
    add-int/2addr v2, v3

    .line 614
    add-int/2addr v0, v3

    .line 615
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;Z)I

    move-result v1

    .line 616
    add-int/2addr v2, v1

    .line 617
    add-int/2addr v0, v1

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_6
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 439
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    if-nez v2, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 447
    :goto_0
    return-object v0

    .line 442
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    .line 443
    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    .line 444
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    .line 445
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 447
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public e()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 258
    :goto_0
    return-object v0

    .line 239
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    if-lez v1, :cond_2

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()V

    .line 242
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    .line 243
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 244
    if-eqz v1, :cond_1

    .line 245
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()Landroid/view/View;

    move-result-object v1

    .line 246
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ab;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 248
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v1

    .line 251
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 252
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ab;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    invoke-virtual {v2}, Landroid/support/v7/widget/ab;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    goto :goto_0
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 973
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 974
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 975
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    .line 978
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()V

    .line 979
    return-void
.end method

.method f(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x8000

    .line 1474
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1495
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 1478
    goto :goto_0

    .line 1480
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1483
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1486
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1489
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 1474
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1
    .parameter

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 287
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    return v0
.end method

.method protected i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 936
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()Landroid/support/v7/widget/LinearLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/LinearLayoutManager$c;

    .line 943
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    if-nez v0, :cond_1

    .line 944
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/ab;->a(Landroid/support/v7/widget/RecyclerView$h;I)Landroid/support/v7/widget/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Landroid/support/v7/widget/ab;

    .line 946
    :cond_1
    return-void
.end method

.method k()Landroid/support/v7/widget/LinearLayoutManager$c;
    .locals 1

    .prologue
    .line 954
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    return-object v0
.end method

.method l()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 1458
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1647
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1648
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public n()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1664
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1665
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public o()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1687
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1688
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
