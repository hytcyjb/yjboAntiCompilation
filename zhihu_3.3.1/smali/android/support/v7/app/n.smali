.class public Landroid/support/v7/app/n;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroid/support/v7/app/g;


# instance fields
.field private a:Landroid/support/v7/app/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p1, p2}, Landroid/support/v7/app/n;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/h;->a(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->i()Z

    .line 52
    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 155
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 157
    :cond_0
    return p1
.end method


# virtual methods
.method public a()Landroid/support/v7/app/h;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/h;

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0, p0}, Landroid/support/v7/app/h;->a(Landroid/app/Dialog;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/h;

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v7/view/b;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->b(I)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method public b(Landroid/support/v7/view/b;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->e()V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->h()V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 112
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->c()V

    .line 113
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(I)V

    .line 80
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/h;->a(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
