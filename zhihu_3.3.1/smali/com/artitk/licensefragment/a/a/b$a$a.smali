.class public Lcom/artitk/licensefragment/a/a/b$a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewLicenseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artitk/licensefragment/a/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field final synthetic n:Lcom/artitk/licensefragment/a/a/b$a;


# direct methods
.method public constructor <init>(Lcom/artitk/licensefragment/a/a/b$a;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/artitk/licensefragment/a/a/b$a$a;->n:Lcom/artitk/licensefragment/a/a/b$a;

    .line 150
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 152
    sget v0, Lcom/artitk/licensefragment/a$b;->tvItemTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a$a;->l:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/artitk/licensefragment/a$b;->tvItemLicense:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a$a;->m:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a$a;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/artitk/licensefragment/a/a/b$a;->a:Lcom/artitk/licensefragment/a/a/b;

    iget-object v1, v1, Lcom/artitk/licensefragment/a/a/b;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a$a;->m:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/artitk/licensefragment/a/a/b$a;->a:Lcom/artitk/licensefragment/a/a/b;

    iget-object v1, v1, Lcom/artitk/licensefragment/a/a/b;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 157
    iget-object v0, p0, Lcom/artitk/licensefragment/a/a/b$a$a;->m:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/artitk/licensefragment/a/a/b$a;->a:Lcom/artitk/licensefragment/a/a/b;

    iget-object v1, v1, Lcom/artitk/licensefragment/a/a/b;->b:Lcom/artitk/licensefragment/model/a;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    return-void
.end method
