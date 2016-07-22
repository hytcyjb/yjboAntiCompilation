.class public Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;
.super Lcom/zhihu/android/app/ui/activity/a;
.source "Oauth2AuthorizeCodeActivity.java"

# interfaces
.implements Lcom/zhihu/android/app/ui/dialog/t$a;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:[B

.field private q:Lcom/zhihu/android/api/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/activity/a;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    const-string v1, "authorization_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "INTENT_ERROR_INFO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->finish()V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090225

    const/16 v5, 0x103

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0, v6}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v7, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    :try_start_0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 147
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 148
    const-string v4, "app_id="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->m:Ljava/lang/String;

    .line 147
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_3
    const-string v4, "redirect_uri="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {p0, v6}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v7, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->p:[B

    invoke-static {v0, v1, p0}, Lcom/zhihu/android/app/ui/dialog/t;->a(Ljava/lang/String;[BLcom/zhihu/android/app/ui/dialog/t$a;)Lcom/zhihu/android/app/ui/dialog/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "zhihu_auth_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/t;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "Oauth2:login:callback:uri"

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/zhihu/android/app/ui/dialog/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/zhihu/android/app/ui/dialog/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "login_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/g;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a_(Z)V
    .locals 3
    .parameter

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->q:Lcom/zhihu/android/api/b/g;

    iget-object v1, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zhihu/android/api/model/Oauth2Body;->createOauth2Code(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/Oauth2Body;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;

    invoke-direct {v2, p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity$1;-><init>(Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/g;->a(Lcom/zhihu/android/api/model/Oauth2Body;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const/16 v0, 0x102

    const/4 v1, 0x0

    const v2, 0x7f090229

    invoke-virtual {p0, v2}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    const-string v1, "INTENT_ERROR_INFO"

    const v2, 0x7f090229

    invoke-virtual {p0, v2}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/16 v1, 0x102

    invoke-virtual {p0, v1, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-super {p0}, Lcom/zhihu/android/app/ui/activity/a;->onBackPressed()V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f0d0223

    invoke-virtual {p0, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->setTheme(I)V

    .line 60
    const-class v0, Lcom/zhihu/android/api/b/g;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/g;

    iput-object v0, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->q:Lcom/zhihu/android/api/b/g;

    .line 62
    invoke-virtual {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_ZHIHU_AUTHORIZATION_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "INTENT_ZHIHU_AUTHORIZATION_APPNAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->o:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "INTENT_ZHIHU_AUTHORIZATION_APPICON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->p:[B

    .line 66
    invoke-direct {p0, v0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/zhihu/android/app/util/g;->a(Lcom/zhihu/android/app/ui/activity/a;)V

    .line 70
    invoke-direct {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->s()V

    .line 71
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/zhihu/android/app/ui/activity/a;->onStart()V

    .line 76
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->s()V

    .line 113
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    .line 117
    const/16 v0, 0x102

    const/4 v1, 0x0

    const v2, 0x7f090229

    invoke-virtual {p0, v2}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zhihu/android/ui/activity/Oauth2AuthorizeCodeActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
