.class public Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;
.super Ljava/lang/Object;
.source "BtsLoadRoleInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;
    }
.end annotation


# static fields
.field private static count:I

.field private static listener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000()Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->listener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 8
    sget v0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->count:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    sput p0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->count:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 8
    sget v0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->count:I

    return v0
.end method

.method public static loadRoleInfo(Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 14
    sput-object p0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->listener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    .line 15
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$1;

    invoke-direct {v0}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$1;-><init>()V

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getUserInfo(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 46
    return-void
.end method

.method public static setListener(Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;)V
    .locals 0
    .parameter "lis"

    .prologue
    .line 50
    sput-object p0, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->listener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    .line 51
    return-void
.end method
