.class public Lcom/tendcloud/appcpa/TalkingDataAppCpa;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z = false

.field static a:Z = false

.field static b:Landroid/os/HandlerThread; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field public static sContext:Landroid/content/Context; = null

.field public static final sdkVersion:Ljava/lang/String; = "2.1.0.18"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->c:Ljava/lang/String;

    sput-object v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CPA Controller Message Processing Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Custom event called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tendcloud/appcpa/n;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appkey or channel could not be null or empty"

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TalkingData App Cpa SDK init--->appkey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.1.0.18"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Type:Android_Native_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V

    sput-object p1, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->c:Ljava/lang/String;

    sput-object p2, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->d:Ljava/lang/String;

    sput-object p0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/tendcloud/appcpa/n;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static onCustEvent1()V
    .locals 1

    const-string v0, "_cust1"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent10()V
    .locals 1

    const-string v0, "_cust10"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent2()V
    .locals 1

    const-string v0, "_cust2"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent3()V
    .locals 1

    const-string v0, "_cust3"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent4()V
    .locals 1

    const-string v0, "_cust4"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent5()V
    .locals 1

    const-string v0, "_cust5"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent6()V
    .locals 1

    const-string v0, "_cust6"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent7()V
    .locals 1

    const-string v0, "_cust7"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent8()V
    .locals 1

    const-string v0, "_cust8"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onCustEvent9()V
    .locals 1

    const-string v0, "_cust9"

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onLogin(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onLogin: account could not be null or empty"

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLogin called --> account is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tendcloud/appcpa/n;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static onPay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "default"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onPay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onPay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPay called --> account: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,orderid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,currencyType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " payType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "currencyType length must be 3 likes CNY so so"

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tendcloud/appcpa/j;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/appcpa/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tendcloud/appcpa/n;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static onRegister(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onRegister: account could not be null or empty"

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRegister called --> account is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/appcpa/n;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static setVerboseLogDisable()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->a:Z

    return-void
.end method
