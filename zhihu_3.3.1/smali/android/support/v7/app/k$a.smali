.class Landroid/support/v7/app/k$a;
.super Landroid/support/v7/app/i$b;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/k;


# direct methods
.method constructor <init>(Landroid/support/v7/app/k;Landroid/view/Window$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Landroid/support/v7/app/k$a;->b:Landroid/support/v7/app/k;

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/i$b;-><init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V

    .line 181
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter

    .prologue
    .line 199
    new-instance v0, Landroid/support/v7/view/f$a;

    iget-object v1, p0, Landroid/support/v7/app/k$a;->b:Landroid/support/v7/app/k;

    iget-object v1, v1, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 203
    iget-object v1, p0, Landroid/support/v7/app/k$a;->b:Landroid/support/v7/app/k;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/k;->b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Landroid/support/v7/view/f$a;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/app/k$a;->b:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/app/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Landroid/support/v7/app/k$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/i$b;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
