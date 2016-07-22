.class Lcom/artitk/licensefragment/a/a/b$a;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "RecyclerViewLicenseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artitk/licensefragment/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artitk/licensefragment/a/a/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/artitk/licensefragment/a/a/b$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/artitk/licensefragment/a/a/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/artitk/licensefragment/a/a/b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/artitk/licensefragment/a/a/b$a;->a:Lcom/artitk/licensefragment/a/a/b;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/artitk/licensefragment/a/a/b$a;->b:Ljava/util/ArrayList;

    .line 117
    iput-object p3, p0, Lcom/artitk/licensefragment/a/a/b$a;->c:Ljava/util/ArrayList;

    .line 118
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/artitk/licensefragment/a/a/b$a$a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/artitk/licensefragment/a$c;->layout_item_license:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/artitk/licensefragment/a/a/b$a$a;

    invoke-direct {v1, p0, v0}, Lcom/artitk/licensefragment/a/a/b$a$a;-><init>(Lcom/artitk/licensefragment/a/a/b$a;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    check-cast p1, Lcom/artitk/licensefragment/a/a/b$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/artitk/licensefragment/a/a/b$a;->a(Lcom/artitk/licensefragment/a/a/b$a$a;I)V

    return-void
.end method

.method public a(Lcom/artitk/licensefragment/a/a/b$a$a;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v1, p1, Lcom/artitk/licensefragment/a/a/b$a$a;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p1, Lcom/artitk/licensefragment/a/a/b$a$a;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/artitk/licensefragment/a/a/b$a;->a(Landroid/view/ViewGroup;I)Lcom/artitk/licensefragment/a/a/b$a$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a;->c:Ljava/util/ArrayList;

    return-object v0
.end method
