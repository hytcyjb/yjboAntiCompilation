.class Lcom/zhihu/android/app/ui/activity/c$1;
.super Ljava/lang/Object;
.source "SocialOauthActivity.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/c;->a(Ljava/lang/String;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhihu/android/bumblebee/b/c",
        "<",
        "Lcom/zhihu/android/api/model/Token;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zhihu/android/api/util/GrantType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/zhihu/android/app/ui/activity/c;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/c;Ljava/lang/String;Lcom/zhihu/android/api/util/GrantType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    iput-object p2, p0, Lcom/zhihu/android/app/ui/activity/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zhihu/android/app/ui/activity/c$1;->b:Lcom/zhihu/android/api/util/GrantType;

    iput-object p4, p0, Lcom/zhihu/android/app/ui/activity/c$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zhihu/android/app/ui/activity/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/zhihu/android/app/ui/activity/c$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/zhihu/android/app/ui/activity/c$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/zhihu/android/app/ui/activity/c$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/api/model/Token;)V
    .locals 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/c;->a(Lcom/zhihu/android/app/ui/activity/c;)V

    .line 158
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/c;->c(Lcom/zhihu/android/app/ui/activity/c;)Lcom/zhihu/android/api/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/zhihu/android/api/model/Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhihu/android/app/ui/activity/c$1$1;

    invoke-direct {v2, p0, p1}, Lcom/zhihu/android/app/ui/activity/c$1$1;-><init>(Lcom/zhihu/android/app/ui/activity/c$1;Lcom/zhihu/android/api/model/Token;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/a;->c(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/c;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/c;->a(Lcom/zhihu/android/app/ui/activity/c;)V

    .line 119
    :try_start_0
    invoke-static {p1}, Lcom/zhihu/android/api/model/ApiError;->from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getCode()I

    move-result v1

    const v3, 0x186a0

    if-ne v1, v3, :cond_1

    .line 125
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/c$1;->b:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/GrantType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhihu/android/api/util/RegisterType;->valueOf(Ljava/lang/String;)Lcom/zhihu/android/api/util/RegisterType;

    move-result-object v1

    iget-object v3, p0, Lcom/zhihu/android/app/ui/activity/c$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/activity/c$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhihu/android/app/ui/activity/c$1;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    iget-object v7, p0, Lcom/zhihu/android/app/ui/activity/c$1;->b:Lcom/zhihu/android/api/util/GrantType;

    invoke-static {v6, v7}, Lcom/zhihu/android/app/util/t;->a(Landroid/content/Context;Lcom/zhihu/android/api/util/GrantType;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zhihu/android/app/ui/activity/c$1;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/zhihu/android/app/ui/activity/c$1;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/zhihu/android/app/ui/activity/c$1;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-static {v10}, Lcom/zhihu/android/app/ui/activity/c;->b(Lcom/zhihu/android/app/ui/activity/c;)I

    move-result v10

    invoke-static/range {v0 .. v10}, Lcom/zhihu/android/app/ui/dialog/q;->a(Ljava/lang/String;Lcom/zhihu/android/api/util/RegisterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/zhihu/android/app/ui/dialog/q;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/activity/c;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_social_register"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/q;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 126
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getData()Lcom/zhihu/android/api/model/ExtraData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getCode()I

    move-result v1

    const v2, 0x186cd

    if-ne v1, v2, :cond_2

    .line 127
    invoke-virtual {v0}, Lcom/zhihu/android/api/model/ApiError;->getData()Lcom/zhihu/android/api/model/ExtraData;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/zhihu/android/api/model/SocialBindInfo;

    invoke-direct {v1}, Lcom/zhihu/android/api/model/SocialBindInfo;-><init>()V

    .line 129
    iget-object v2, v0, Lcom/zhihu/android/api/model/ExtraData;->email:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->email:Ljava/lang/String;

    .line 130
    iget-object v2, v0, Lcom/zhihu/android/api/model/ExtraData;->hint:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->hint:Ljava/lang/String;

    .line 131
    iget-object v2, v0, Lcom/zhihu/android/api/model/ExtraData;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->id:Ljava/lang/String;

    .line 132
    iget-object v2, v0, Lcom/zhihu/android/api/model/ExtraData;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->name:Ljava/lang/String;

    .line 133
    iget-object v2, v0, Lcom/zhihu/android/api/model/ExtraData;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->url:Ljava/lang/String;

    .line 134
    iget-object v2, v0, Lcom/zhihu/android/api/model/ExtraData;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->phoneNo:Ljava/lang/String;

    .line 135
    iget-object v0, v0, Lcom/zhihu/android/api/model/ExtraData;->avatarUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->avatarUrl:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->platformName:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->b:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v0}, Lcom/zhihu/android/api/util/GrantType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->grantType:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->socialId:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->accessToken:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->refreshToken:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/zhihu/android/api/model/SocialBindInfo;->expired:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-static {v2}, Lcom/zhihu/android/app/ui/activity/c;->b(Lcom/zhihu/android/app/ui/activity/c;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/o;->a(Ljava/lang/String;Lcom/zhihu/android/api/model/SocialBindInfo;I)Lcom/zhihu/android/app/ui/dialog/o;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/activity/c;->f()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_social_bind"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/o;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/c$1;->h:Lcom/zhihu/android/app/ui/activity/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/c;->finish()V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    check-cast p1, Lcom/zhihu/android/api/model/Token;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/activity/c$1;->a(Lcom/zhihu/android/api/model/Token;)V

    return-void
.end method
