.class public Lcom/instabug/library/InstabugFeedbackActivity;
.super Landroid/app/Activity;
.source "InstabugFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/library/c;


# instance fields
.field private a:Lcom/instabug/library/a;

.field private b:Lcom/instabug/library/internal/e/a;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/InstabugFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public a(Lcom/instabug/library/internal/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/instabug/library/InstabugFeedbackActivity;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/instabug/library/InstabugFeedbackActivity;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-void
.end method

.method b()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->c:Landroid/widget/TextView;

    .line 88
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 82
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 83
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->c:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->c:Landroid/widget/TextView;

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->n()V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v1}, Lcom/instabug/library/a;->u()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->d()V

    .line 146
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v1}, Lcom/instabug/library/a;->w()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->f()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v1}, Lcom/instabug/library/a;->x()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->c()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v1}, Lcom/instabug/library/a;->v()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 141
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->g()V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->requestWindowFeature(I)Z

    .line 25
    new-instance v0, Lcom/instabug/library/a;

    invoke-direct {v0, p0}, Lcom/instabug/library/a;-><init>(Lcom/instabug/library/c;)V

    iput-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    .line 26
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->a()V

    .line 28
    invoke-virtual {p0}, Lcom/instabug/library/InstabugFeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->p()I

    move-result v2

    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Lcom/instabug/library/InstabugFeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->s()I

    move-result v2

    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget-object v0, v0, Lcom/instabug/library/internal/e/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->a(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget-object v0, v0, Lcom/instabug/library/internal/e/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->b(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0}, Lcom/instabug/library/InstabugFeedbackActivity;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v0, v0, Lcom/instabug/library/internal/e/a;->e:I

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->e:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 41
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->v()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 43
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/InstabugFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 44
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/library/InstabugFeedbackActivity;->b:Lcom/instabug/library/internal/e/a;

    iget v1, v1, Lcom/instabug/library/internal/e/a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->b()V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/instabug/library/InstabugFeedbackActivity;->a:Lcom/instabug/library/a;

    invoke-virtual {v0}, Lcom/instabug/library/a;->m()V

    .line 52
    return-void
.end method
