.class public Landroid/support/v7/widget/ac;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/support/v7/view/menu/f$a;
.implements Landroid/support/v7/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ac$b;,
        Landroid/support/v7/widget/ac$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/view/menu/f;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v7/view/menu/k;

.field private e:Landroid/support/v7/widget/ac$b;

.field private f:Landroid/support/v7/widget/ac$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    sget v4, Landroid/support/v7/a/a$a;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ac;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/support/v7/widget/ac;->a:Landroid/content/Context;

    .line 108
    new-instance v0, Landroid/support/v7/view/menu/f;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ac;->b:Landroid/support/v7/view/menu/f;

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/ac;->b:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/f$a;)V

    .line 110
    iput-object p2, p0, Landroid/support/v7/widget/ac;->c:Landroid/view/View;

    .line 111
    new-instance v0, Landroid/support/v7/view/menu/k;

    iget-object v2, p0, Landroid/support/v7/widget/ac;->b:Landroid/support/v7/view/menu/f;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/k;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/f;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/view/menu/k;

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/view/menu/k;

    invoke-virtual {v0, p3}, Landroid/support/v7/view/menu/k;->a(I)V

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/view/menu/k;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/k;->a(Landroid/support/v7/view/menu/l$a;)V

    .line 114
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/support/v7/view/g;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/support/v7/widget/ac;->a()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ac;->b:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/ac;->f:Landroid/support/v7/widget/ac$a;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/ac;->f:Landroid/support/v7/widget/ac$a;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/ac$a;->a(Landroid/support/v7/widget/ac;)V

    .line 262
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/ac$b;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ac$b;

    .line 234
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ac$b;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ac$b;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/ac$b;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Landroid/support/v7/view/menu/f;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 268
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/f;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Landroid/support/v7/view/menu/k;

    iget-object v2, p0, Landroid/support/v7/widget/ac;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ac;->c:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Landroid/support/v7/view/menu/k;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/f;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/view/menu/k;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/k;->d()V

    .line 217
    return-void
.end method
