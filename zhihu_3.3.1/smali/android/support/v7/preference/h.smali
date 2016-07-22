.class public Landroid/support/v7/preference/h;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PreferenceViewHolder.java"


# instance fields
.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x1020016

    const v3, 0x1020010

    const v2, 0x1020006

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    .line 38
    iget-object v0, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    sget v1, Landroid/support/v7/preference/i$b;->icon_frame:I

    sget v2, Landroid/support/v7/preference/i$b;->icon_frame:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 53
    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/h;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Landroid/support/v7/preference/h;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Landroid/support/v7/preference/h;->m:Z

    .line 86
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/v7/preference/h;->m:Z

    return v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/support/v7/preference/h;->n:Z

    .line 110
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/support/v7/preference/h;->n:Z

    return v0
.end method
