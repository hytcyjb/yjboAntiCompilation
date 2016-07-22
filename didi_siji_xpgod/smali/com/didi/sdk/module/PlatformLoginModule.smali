.class public Lcom/didi/sdk/module/PlatformLoginModule;
.super Ljava/lang/Object;
.source "PlatformLoginModule.java"

# interfaces
.implements Lcom/didi/common/listener/LoginListener;


# static fields
.field private static final KEY_PHONENUMBER:Ljava/lang/String; = "phoneNumber"

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"

.field private static final KEY_USER_STATE:Ljava/lang/String; = "user_state"

.field private static sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

.field private static sInstance:Lcom/didi/sdk/module/PlatformLoginModule;


# instance fields
.field private mDHandler:Lcom/didi/sdk/component/DHandler;

.field private mLoginState:I

.field private mSdkMsgWhat:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/didi/sdk/module/PlatformLoginModule$1;

    invoke-direct {v0, p0}, Lcom/didi/sdk/module/PlatformLoginModule$1;-><init>(Lcom/didi/sdk/module/PlatformLoginModule;)V

    iput-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    .line 81
    invoke-direct {p0}, Lcom/didi/sdk/module/PlatformLoginModule;->init()V

    .line 82
    invoke-direct {p0}, Lcom/didi/sdk/module/PlatformLoginModule;->registerEvent()V

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/didi/sdk/module/PlatformLoginModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mSdkMsgWhat:I

    return p1
.end method

.method static synthetic access$100(Lcom/didi/sdk/module/PlatformLoginModule;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/didi/sdk/module/PlatformLoginModule;->awakeDidiLoginPage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/sdk/module/PlatformLoginModule;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/didi/sdk/module/PlatformLoginModule;->getUserHistroy(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/sdk/module/PlatformLoginModule;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/didi/sdk/module/PlatformLoginModule;->userTicketCheck(Landroid/os/Message;)V

    return-void
.end method

.method private awakeDidiLoginPage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 151
    const-string v1, "-------->PlatformLoginModule awakeDidiLoginPage"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    const-string v1, "function_code"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public static getInstance()Lcom/didi/sdk/module/PlatformLoginModule;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sInstance:Lcom/didi/sdk/module/PlatformLoginModule;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/didi/sdk/module/PlatformLoginModule;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sInstance:Lcom/didi/sdk/module/PlatformLoginModule;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/didi/sdk/module/PlatformLoginModule;

    invoke-direct {v0}, Lcom/didi/sdk/module/PlatformLoginModule;-><init>()V

    sput-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sInstance:Lcom/didi/sdk/module/PlatformLoginModule;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sInstance:Lcom/didi/sdk/module/PlatformLoginModule;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUserHistroy(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x5

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------>PlatformLoginModule getUserHistroy msg.what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/didi/sdk/module/PlatformLoginModule;->getDidiAppLoginInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/didi/sdk/module/PlatformLoginModule;->notifySdkClientLoginRsp(ILandroid/os/Bundle;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/didi/sdk/module/PlatformLoginModule;->notifySdkClientLoginRsp(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->getInstance()Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    move-result-object v0

    sput-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    .line 87
    return-void
.end method

.method private registerEvent()V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 91
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 92
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 93
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 94
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 95
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 96
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 97
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 98
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 99
    sget-object v0, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mDHandler:Lcom/didi/sdk/component/DHandler;

    invoke-virtual {v0, v1, v2}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->registerSdkClientHandler(ILcom/didi/sdk/component/DHandler;)V

    .line 100
    return-void
.end method

.method private userTicketCheck(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------>PlatformLoginModule userTicketCheck msg.what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/didi/sdk/module/PlatformLoginModule$2;

    invoke-direct {v0, p0}, Lcom/didi/sdk/module/PlatformLoginModule$2;-><init>(Lcom/didi/sdk/module/PlatformLoginModule;)V

    invoke-static {v0}, Lcom/didi/common/net/PassPortRequest;->passportTicketCheck(Lcom/didi/common/net/ResponseListener;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/sdk/module/PlatformLoginModule;->notifySdkClientLoginRsp(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getDidiAppLoginInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "phoneNumber"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "ticket"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object v0
.end method

.method public getLoginListener()Lcom/didi/common/listener/LoginListener;
    .locals 0

    .prologue
    .line 210
    return-object p0
.end method

.method public getLoginState()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mLoginState:I

    return v0
.end method

.method public notifySdkClientLoginRsp(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "what"
    .parameter "data"

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------->PlatformLoginModule notifySdkClientLoginRsp loginState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/didi/sdk/module/PlatformLoginModule;->getLoginState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, serverMsg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 188
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/didi/sdk/module/PlatformLoginModule;->getLoginState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 190
    sget-object v1, Lcom/didi/sdk/module/PlatformLoginModule;->sBus:Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    invoke-virtual {v1, v0}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->sendToSdkClient(Landroid/os/Message;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onLogin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "oldPhone"
    .parameter "newPhone"

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------->PlatformLoginModule onLogin mSdkMsgWhat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mSdkMsgWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mSdkMsgWhat:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/didi/sdk/module/PlatformLoginModule;->notifySdkClientLoginRsp(ILandroid/os/Bundle;)V

    .line 177
    :goto_0
    return-void

    .line 165
    :pswitch_1
    if-nez p1, :cond_0

    .line 166
    iget v0, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mSdkMsgWhat:I

    invoke-virtual {p0}, Lcom/didi/sdk/module/PlatformLoginModule;->getDidiAppLoginInfo()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/didi/sdk/module/PlatformLoginModule;->notifySdkClientLoginRsp(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 168
    :cond_0
    iget v0, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mSdkMsgWhat:I

    invoke-virtual {p0, v0, v2}, Lcom/didi/sdk/module/PlatformLoginModule;->notifySdkClientLoginRsp(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRedPoint(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 182
    return-void
.end method

.method public registerLoginListener()V
    .locals 0

    .prologue
    .line 202
    invoke-static {p0}, Lcom/didi/common/listener/ListenerHub;->addLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 203
    return-void
.end method

.method public setLoginState(I)V
    .locals 0
    .parameter "loginState"

    .prologue
    .line 225
    iput p1, p0, Lcom/didi/sdk/module/PlatformLoginModule;->mLoginState:I

    .line 226
    return-void
.end method

.method public unregisterLoginListener()V
    .locals 0

    .prologue
    .line 206
    invoke-static {p0}, Lcom/didi/common/listener/ListenerHub;->removeLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 207
    return-void
.end method
