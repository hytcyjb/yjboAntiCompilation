.class public abstract Lcom/zhihu/android/app/ui/activity/c;
.super Lcom/zhihu/android/app/ui/activity/a;
.source "SocialOauthActivity.java"

# interfaces
.implements Lcom/zhihu/android/social/a/a;


# instance fields
.field protected m:Z

.field protected n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/zhihu/android/api/b/a;

.field private q:Landroid/app/ProgressDialog;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/activity/c;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/c;->t()V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/activity/c;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/zhihu/android/app/ui/activity/c;->r:I

    return v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/ui/activity/c;)Lcom/zhihu/android/api/b/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->p:Lcom/zhihu/android/api/b/a;

    return-object v0
.end method

.method static synthetic d(Lcom/zhihu/android/app/ui/activity/c;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/zhihu/android/app/ui/activity/c;->o:I

    return v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->q:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->q:Landroid/app/ProgressDialog;

    .line 296
    return-void
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    new-instance v0, Lcom/zhihu/android/app/ui/activity/c$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/zhihu/android/app/ui/activity/c$4;-><init>(Lcom/zhihu/android/app/ui/activity/c;ILandroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public a(Lcom/zhihu/android/social/utils/c;)V
    .locals 8
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/zhihu/android/social/utils/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p1}, Lcom/zhihu/android/social/utils/c;->f()Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-virtual {p1}, Lcom/zhihu/android/social/utils/c;->e()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Lcom/zhihu/android/social/utils/c;->a()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {p1}, Lcom/zhihu/android/social/utils/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {p1}, Lcom/zhihu/android/social/utils/c;->d()Ljava/lang/String;

    move-result-object v5

    .line 203
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/activity/c;->m:Z

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    const-string v1, "social_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "access_token"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "expires_in"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/zhihu/android/app/ui/activity/c;->a(ILandroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->finish()V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/c;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->q()Lcom/zhihu/android/api/util/GrantType;

    move-result-object v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zhihu/android/app/ui/activity/c;->a(Ljava/lang/String;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lcom/zhihu/android/app/ui/activity/c$2;

    invoke-direct {v0, p0, p1}, Lcom/zhihu/android/app/ui/activity/c$2;-><init>(Lcom/zhihu/android/app/ui/activity/c;Lcom/zhihu/android/social/utils/c;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/activity/c;->a(ILandroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->finish()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Lcom/zhihu/android/app/ui/activity/c$3;

    invoke-direct {v0, p0, p1}, Lcom/zhihu/android/app/ui/activity/c$3;-><init>(Lcom/zhihu/android/app/ui/activity/c;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/activity/c;->a(ILandroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->finish()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 102
    :goto_0
    const/4 v0, 0x0

    const v1, 0x7f090228

    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/activity/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->q:Landroid/app/ProgressDialog;

    .line 104
    invoke-static {p0, p2}, Lcom/zhihu/android/app/util/t;->a(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/zhihu/android/api/model/Authorisation;->createSocial(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Authorisation;

    move-result-object v9

    .line 106
    iget-object v10, p0, Lcom/zhihu/android/app/ui/activity/c;->p:Lcom/zhihu/android/api/b/a;

    new-instance v0, Lcom/zhihu/android/app/ui/activity/c$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p7

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/zhihu/android/app/ui/activity/c$1;-><init>(Lcom/zhihu/android/app/ui/activity/c;Ljava/lang/String;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v9, v0}, Lcom/zhihu/android/api/b/a;->a(Lcom/zhihu/android/api/model/Authorisation;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 186
    return-void

    .line 96
    :catch_0
    move-exception v0

    move-object/from16 v6, p6

    .line 97
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/c;->setContentView(I)V

    .line 81
    const-class v0, Lcom/zhihu/android/api/b/a;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/a;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->p:Lcom/zhihu/android/api/b/a;

    .line 83
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_bind"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/activity/c;->m:Z

    .line 85
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_request_code"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/activity/c;->o:I

    .line 87
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_callback_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/activity/c;->n:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_account_source"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/ui/activity/c;->r:I

    .line 90
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lcom/zhihu/android/app/ui/activity/a;->onPause()V

    .line 260
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/c;->t()V

    .line 261
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    return-void
.end method

.method protected abstract q()Lcom/zhihu/android/api/util/GrantType;
.end method

.method public r()V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/activity/c;->a(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->finish()V

    goto :goto_0
.end method

.method protected s()Z
    .locals 1

    .prologue
    .line 282
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/activity/c;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
