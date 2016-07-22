.class public Lcom/artitk/licensefragment/a/a/b;
.super Lcom/artitk/licensefragment/a/a/a;
.source "RecyclerViewLicenseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artitk/licensefragment/a/a/b$a;
    }
.end annotation


# instance fields
.field private g:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/artitk/licensefragment/a/a/a;-><init>()V

    .line 111
    return-void
.end method

.method public static b()Lcom/artitk/licensefragment/a/a/b;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/artitk/licensefragment/a/a/b;

    invoke-direct {v0}, Lcom/artitk/licensefragment/a/a/b;-><init>()V

    invoke-static {v0}, Lcom/artitk/licensefragment/a/a/b;->a(Lcom/artitk/licensefragment/a/a/a;)Lcom/artitk/licensefragment/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/artitk/licensefragment/a/a/b;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 98
    const-string v0, "license_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    const-string v1, "license_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/artitk/licensefragment/a/a/b;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v3}, Lcom/artitk/licensefragment/model/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    .line 102
    iget-object v2, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/artitk/licensefragment/a/a/b$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/artitk/licensefragment/a/a/b$a;-><init>(Lcom/artitk/licensefragment/a/a/b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 103
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artitk/licensefragment/model/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artitk/licensefragment/model/b;

    .line 88
    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/artitk/licensefragment/a/a/b;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v3}, Lcom/artitk/licensefragment/model/a;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    .line 93
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/artitk/licensefragment/a/a/b$a;

    invoke-direct {v3, p0, v1, v2}, Lcom/artitk/licensefragment/a/a/b$a;-><init>(Lcom/artitk/licensefragment/a/a/b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 94
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    const-string v1, "license_title"

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/artitk/licensefragment/a/a/b$a;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/a/a/b$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    const-string v1, "license_text"

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/artitk/licensefragment/a/a/b$a;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/a/a/b$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    sget v0, Lcom/artitk/licensefragment/a$c;->fragment_recycler_view_license:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    sget v0, Lcom/artitk/licensefragment/a$b;->recyclerView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/artitk/licensefragment/a/a/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 79
    return-object v1
.end method
