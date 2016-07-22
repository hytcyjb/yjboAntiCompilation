.class Landroid/support/v7/app/l$a;
.super Landroid/support/v7/app/k$a;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v7/app/l;


# direct methods
.method constructor <init>(Landroid/support/v7/app/l;Landroid/view/Window$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Landroid/support/v7/app/l$a;->c:Landroid/support/v7/app/l;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/k$a;-><init>(Landroid/support/v7/app/k;Landroid/view/Window$Callback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v7/app/l$a;->c:Landroid/support/v7/app/l;

    invoke-virtual {v0}, Landroid/support/v7/app/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    packed-switch p2, :pswitch_data_0

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/k$a;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/l$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
