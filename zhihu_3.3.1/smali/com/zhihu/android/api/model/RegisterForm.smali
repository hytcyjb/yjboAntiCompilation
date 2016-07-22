.class public Lcom/zhihu/android/api/model/RegisterForm;
.super Lcom/google/api/client/json/GenericJson;
.source "RegisterForm.java"


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field

.field public appkey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "appkey"
    .end annotation
.end field

.field public digits:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "digits"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "email"
    .end annotation
.end field

.field public expiresAt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "expires_at"
    .end annotation
.end field

.field public fullname:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fullname"
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "password"
    .end annotation
.end field

.field public phoneNo:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "phone_no"
    .end annotation
.end field

.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field

.field public registerType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "register_type"
    .end annotation
.end field

.field public socialId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "social_id"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 17
    return-void
.end method

.method public static createBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/zhihu/android/api/model/RegisterForm;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/RegisterForm;-><init>()V

    .line 127
    iput-object p1, v0, Lcom/zhihu/android/api/model/RegisterForm;->socialId:Ljava/lang/String;

    .line 128
    iput-object p2, v0, Lcom/zhihu/android/api/model/RegisterForm;->appkey:Ljava/lang/String;

    .line 129
    iput-object p3, v0, Lcom/zhihu/android/api/model/RegisterForm;->accessToken:Ljava/lang/String;

    .line 130
    iput-object p4, v0, Lcom/zhihu/android/api/model/RegisterForm;->expiresAt:Ljava/lang/String;

    .line 131
    iput-object p5, v0, Lcom/zhihu/android/api/model/RegisterForm;->refreshToken:Ljava/lang/String;

    .line 132
    invoke-static {p0}, Lcom/zhihu/android/base/util/SystemUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/RegisterForm;->source:Ljava/lang/String;

    .line 133
    return-object v0
.end method

.method public static createEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/zhihu/android/api/model/RegisterForm;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/RegisterForm;-><init>()V

    .line 84
    sget-object v1, Lcom/zhihu/android/api/util/RegisterType;->EMAIL:Lcom/zhihu/android/api/util/RegisterType;

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/RegisterType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/RegisterForm;->registerType:Ljava/lang/String;

    .line 85
    iput-object p0, v0, Lcom/zhihu/android/api/model/RegisterForm;->email:Ljava/lang/String;

    .line 86
    iput-object p1, v0, Lcom/zhihu/android/api/model/RegisterForm;->password:Ljava/lang/String;

    .line 87
    iput-object p2, v0, Lcom/zhihu/android/api/model/RegisterForm;->fullname:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public static createPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/zhihu/android/api/model/RegisterForm;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/RegisterForm;-><init>()V

    .line 66
    sget-object v1, Lcom/zhihu/android/api/util/RegisterType;->PHONE_DIGITS:Lcom/zhihu/android/api/util/RegisterType;

    invoke-virtual {v1}, Lcom/zhihu/android/api/util/RegisterType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/RegisterForm;->registerType:Ljava/lang/String;

    .line 67
    iput-object p0, v0, Lcom/zhihu/android/api/model/RegisterForm;->phoneNo:Ljava/lang/String;

    .line 68
    iput-object p1, v0, Lcom/zhihu/android/api/model/RegisterForm;->password:Ljava/lang/String;

    .line 69
    iput-object p2, v0, Lcom/zhihu/android/api/model/RegisterForm;->digits:Ljava/lang/String;

    .line 70
    iput-object p3, v0, Lcom/zhihu/android/api/model/RegisterForm;->fullname:Ljava/lang/String;

    .line 71
    return-object v0
.end method

.method public static createSocial(Landroid/content/Context;Lcom/zhihu/android/api/util/RegisterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/zhihu/android/api/model/RegisterForm;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/RegisterForm;-><init>()V

    .line 102
    invoke-virtual {p1}, Lcom/zhihu/android/api/util/RegisterType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/RegisterForm;->registerType:Ljava/lang/String;

    .line 103
    iput-object p2, v0, Lcom/zhihu/android/api/model/RegisterForm;->socialId:Ljava/lang/String;

    .line 104
    iput-object p3, v0, Lcom/zhihu/android/api/model/RegisterForm;->appkey:Ljava/lang/String;

    .line 105
    iput-object p4, v0, Lcom/zhihu/android/api/model/RegisterForm;->accessToken:Ljava/lang/String;

    .line 106
    iput-object p5, v0, Lcom/zhihu/android/api/model/RegisterForm;->expiresAt:Ljava/lang/String;

    .line 107
    iput-object p6, v0, Lcom/zhihu/android/api/model/RegisterForm;->refreshToken:Ljava/lang/String;

    .line 108
    iput-object p7, v0, Lcom/zhihu/android/api/model/RegisterForm;->fullname:Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/zhihu/android/base/util/SystemUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhihu/android/api/model/RegisterForm;->source:Ljava/lang/String;

    .line 110
    return-object v0
.end method
