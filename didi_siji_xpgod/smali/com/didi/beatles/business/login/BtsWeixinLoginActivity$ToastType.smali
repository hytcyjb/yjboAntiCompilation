.class public final enum Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;
.super Ljava/lang/Enum;
.source "BtsWeixinLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

.field public static final enum COMPLETE:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

.field public static final enum ERROR:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

.field public static final enum INFO:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->INFO:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    .line 62
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->COMPLETE:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    .line 64
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->ERROR:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    sget-object v1, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->INFO:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->COMPLETE:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->ERROR:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->$VALUES:[Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    return-object v0
.end method

.method public static values()[Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->$VALUES:[Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    invoke-virtual {v0}, [Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    return-object v0
.end method
