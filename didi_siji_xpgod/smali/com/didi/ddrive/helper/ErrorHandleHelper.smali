.class public Lcom/didi/ddrive/helper/ErrorHandleHelper;
.super Ljava/lang/Object;
.source "ErrorHandleHelper.java"


# static fields
.field public static final ALERT_STYLE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/didi/common/ui/component/CommonDialog$IconType;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_ALERT_END:I = 0x2bf1f

.field public static final CODE_ALERT_START:I = 0x29810

.field public static CODE_SERVER:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_TICKET_TIMEOUT:I = 0x94ed1

.field public static final CODE_TOAST_END:I = 0x2e62f

.field public static final CODE_TOAST_START:I = 0x2bf20

.field public static CODE_TOKEN_TIMEOUT:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_VOUCHER_NOT_AVAILABLE:I = 0x30d91

.field public static final ERR_CODE_UNPAY:I = 0x29810

.field public static EXCEPT_CODES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ErrorHandleHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->ALERT_STYLE:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->EXCEPT_CODES:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_TOKEN_TIMEOUT:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    .line 49
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->EXCEPT_CODES:Ljava/util/Set;

    const v1, 0x29810

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_TOKEN_TIMEOUT:Ljava/util/Set;

    const v1, 0xf40b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_TOKEN_TIMEOUT:Ljava/util/Set;

    const v1, 0xf40b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3e58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3f8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3fe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3fea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3feb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0xf3fec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0x94ed2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0x94ed3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    const v1, 0x334a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/util/Collection;I)Z
    .locals 3
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 134
    .local v1, integer:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 135
    const/4 v2, 0x1

    .line 138
    .end local v1           #integer:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static handle(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 83
    const-string v1, "ErrorHandleHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v1, 0x94ed1

    if-ne p0, v1, :cond_1

    .line 85
    invoke-static {}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->refreshTicket()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const v1, 0x29810

    if-lt p0, v1, :cond_3

    const v1, 0x2bf1f

    if-gt p0, v1, :cond_3

    .line 87
    sget-object v1, Lcom/didi/ddrive/helper/ErrorHandleHelper;->EXCEPT_CODES:Ljava/util/Set;

    invoke-static {v1, p0}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->contains(Ljava/util/Collection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    sget-object v1, Lcom/didi/ddrive/helper/ErrorHandleHelper;->ALERT_STYLE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/CommonDialog$IconType;

    .line 92
    .local v0, type:Lcom/didi/common/ui/component/CommonDialog$IconType;
    if-nez v0, :cond_2

    .line 93
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    .line 95
    :cond_2
    invoke-static {v0, p1}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->showDialog(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0           #type:Lcom/didi/common/ui/component/CommonDialog$IconType;
    :cond_3
    const v1, 0x2bf20

    if-lt p0, v1, :cond_4

    const v1, 0x2e62f

    if-gt p0, v1, :cond_4

    .line 97
    invoke-static {p0, p1}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    sget-object v1, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_TOKEN_TIMEOUT:Ljava/util/Set;

    invoke-static {v1, p0}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->contains(Ljava/util/Collection;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/DriveAccountManager;->clear()V

    .line 100
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/DriveAccountManager;->reLogin()V

    goto :goto_0

    .line 101
    :cond_5
    sget-object v1, Lcom/didi/ddrive/helper/ErrorHandleHelper;->CODE_SERVER:Ljava/util/Set;

    invoke-static {v1, p0}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->contains(Ljava/util/Collection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const v1, 0x30d91

    if-ne p0, v1, :cond_6

    .line 104
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/didi/ddrive/payment/PaymentManager;->notifyOrderChange(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_6
    invoke-static {p0, p1}, Lcom/didi/ddrive/helper/ErrorHandleHelper;->showToast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static refreshTicket()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lcom/didi/ddrive/helper/ErrorHandleHelper$1;

    invoke-direct {v1}, Lcom/didi/ddrive/helper/ErrorHandleHelper$1;-><init>()V

    invoke-static {v0, v1}, Lcom/didi/common/helper/GThirdTokenManager;->refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V

    goto :goto_0
.end method

.method public static showDialog(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "msg"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v1, "ErrorHandleHelper"

    const-string v2, "show dialog"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/didi/ddrive/eventbus/event/AlertEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/AlertEvent;-><init>()V

    .line 165
    .local v0, event:Lcom/didi/ddrive/eventbus/event/AlertEvent;
    iput-object p0, v0, Lcom/didi/ddrive/eventbus/event/AlertEvent;->type:Lcom/didi/common/ui/component/CommonDialog$IconType;

    .line 166
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/AlertEvent;->msg:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static showToast(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 149
    const-string v1, "ErrorHandleHelper"

    const-string v2, "show toast"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Lcom/didi/ddrive/eventbus/event/ToastEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/ToastEvent;-><init>()V

    .line 154
    .local v0, event:Lcom/didi/ddrive/eventbus/event/ToastEvent;
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/ToastEvent;->msg:Ljava/lang/String;

    .line 155
    iput p0, v0, Lcom/didi/ddrive/eventbus/event/ToastEvent;->code:I

    .line 156
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 142
    const-string v1, "ErrorHandleHelper"

    const-string v2, "show toast"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/didi/ddrive/eventbus/event/ToastEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/ToastEvent;-><init>()V

    .line 144
    .local v0, event:Lcom/didi/ddrive/eventbus/event/ToastEvent;
    iput-object p0, v0, Lcom/didi/ddrive/eventbus/event/ToastEvent;->msg:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
