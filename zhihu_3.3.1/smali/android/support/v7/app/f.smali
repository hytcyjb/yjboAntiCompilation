.class public Landroid/support/v7/app/f;
.super Landroid/support/v4/app/l;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/at$a;
.implements Landroid/support/v7/app/b$b;
.implements Landroid/support/v7/app/g;


# instance fields
.field private m:Landroid/support/v7/app/h;

.field private n:I

.field private o:Z

.field private p:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/l;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/f;->n:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1
    .parameter

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/at;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    invoke-virtual {p1, p0}, Landroid/support/v4/app/at;->a(Landroid/app/Activity;)Landroid/support/v4/app/at;

    .line 320
    return-void
.end method

.method public a(Landroid/support/v7/view/b;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 418
    invoke-static {p0, p1}, Landroid/support/v4/app/y;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method public b()Landroid/support/v7/app/b$a;
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->g()Landroid/support/v7/app/b$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    invoke-static {p0, p1}, Landroid/support/v4/app/y;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 435
    return-void
.end method

.method public b(Landroid/support/v4/app/at;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    return-void
.end method

.method public b(Landroid/support/v7/view/b;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->e()V

    .line 212
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 498
    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    .line 499
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 500
    if-nez v1, :cond_0

    .line 501
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {p0}, Landroid/support/v7/app/f;->g()Landroid/support/v7/app/a;

    move-result-object v1

    .line 503
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    iput-boolean v0, p0, Landroid/support/v7/app/f;->o:Z

    .line 513
    :goto_0
    return v0

    .line 508
    :cond_0
    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/app/f;->o:Z

    if-eqz v1, :cond_1

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/f;->o:Z

    goto :goto_0

    .line 513
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/l;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->a()Landroid/support/v7/app/a;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v7/app/f;->p:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-super {p0}, Landroid/support/v4/app/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ao;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->p:Landroid/content/res/Resources;

    .line 521
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->p:Landroid/content/res/Resources;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j_()Landroid/content/Intent;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-static {p0}, Landroid/support/v4/app/at;->a(Landroid/content/Context;)Landroid/support/v4/app/at;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->a(Landroid/support/v4/app/at;)V

    .line 370
    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->b(Landroid/support/v4/app/at;)V

    .line 371
    invoke-virtual {v0}, Landroid/support/v4/app/at;->a()V

    .line 374
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    const/4 v0, 0x1

    .line 387
    :goto_1
    return v0

    .line 375
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {p0}, Landroid/support/v7/app/f;->finish()V

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public i()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->e()V

    .line 219
    return-void
.end method

.method public j()Landroid/support/v7/app/h;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/v7/app/f;->m:Landroid/support/v7/app/h;

    if-nez v0, :cond_0

    .line 490
    invoke-static {p0, p0}, Landroid/support/v7/app/h;->a(Landroid/app/Activity;Landroid/support/v7/app/g;)Landroid/support/v7/app/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/f;->m:Landroid/support/v7/app/h;

    .line 492
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->m:Landroid/support/v7/app/h;

    return-object v0
.end method

.method public j_()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 401
    invoke-static {p0}, Landroid/support/v4/app/y;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/content/res/Configuration;)V

    .line 151
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/support/v7/app/f;->i()V

    .line 441
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/support/v7/app/h;->h()V

    .line 69
    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/app/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/f;->n:I

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Landroid/support/v7/app/f;->n:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/f;->setTheme(I)V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/l;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/app/l;->onDestroy()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->f()V

    .line 183
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/l;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/f;->g()Landroid/support/v7/app/a;

    move-result-object v0

    .line 172
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/support/v7/app/f;->h()Z

    move-result v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/l;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/l;->onPanelClosed(ILandroid/view/Menu;)V

    .line 476
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/l;->onPostCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->b(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/l;->onPostResume()V

    .line 162
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->d()V

    .line 163
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/support/v4/app/l;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 481
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->c(Landroid/os/Bundle;)V

    .line 482
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/l;->onStop()V

    .line 156
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/h;->c()V

    .line 157
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/l;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(I)V

    .line 130
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v7/app/f;->j()Landroid/support/v7/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/h;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/l;->setTheme(I)V

    .line 81
    iput p1, p0, Landroid/support/v7/app/f;->n:I

    .line 82
    return-void
.end method
