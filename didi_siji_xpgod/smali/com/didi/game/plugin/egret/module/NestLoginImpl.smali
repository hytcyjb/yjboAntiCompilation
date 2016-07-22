.class public Lcom/didi/game/plugin/egret/module/NestLoginImpl;
.super Ljava/lang/Object;
.source "NestLoginImpl.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGame:Lcom/didi/game/model/H5game;

.field private result:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/didi/game/model/H5game;)V
    .locals 1
    .parameter "activity"
    .parameter "game"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "1"

    iput-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->result:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mGame:Lcom/didi/game/model/H5game;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)Lcom/didi/game/model/H5game;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mGame:Lcom/didi/game/model/H5game;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private showDidiLogin()V
    .locals 4

    .prologue
    .line 121
    const-string v0, "------>call  callDidiLogin"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;

    invoke-direct {v1, p0}, Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;-><init>(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "------>egret login activity is null"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkLogin(Ljava/lang/Object;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---->NestLoginImpl result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->result:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "result"

    iget-object v3, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->result:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "token"

    iget-object v3, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-static {p1, v1}, Lcom/didi/game/plugin/egret/EgretUtils;->invockNestProxyCallback(Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupport(Ljava/lang/Object;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 103
    const-string v3, "---->NestLoginImpl isSupport "

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v2, obj:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 107
    .local v0, arr:Lorg/json/JSONArray;
    :try_start_0
    const-string v3, "status"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v3, "loginType"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-static {p1, v2}, Lcom/didi/game/plugin/egret/EgretUtils;->invockNestProxyCallback(Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public login(Ljava/lang/Object;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 116
    const-string v0, "------>call  login"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->showDidiLogin()V

    .line 118
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->result:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->token:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->userId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->userName:Ljava/lang/String;

    .line 88
    return-void
.end method
