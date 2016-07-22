.class public final enum Lcom/zhihu/android/api/util/GrantType;
.super Ljava/lang/Enum;
.source "GrantType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhihu/android/api/util/GrantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhihu/android/api/util/GrantType;

.field public static final enum DIGITS:Lcom/zhihu/android/api/util/GrantType;

.field public static final enum PASSWORD:Lcom/zhihu/android/api/util/GrantType;

.field public static final enum QQCONN:Lcom/zhihu/android/api/util/GrantType;

.field public static final enum REFRESH_TOKEN:Lcom/zhihu/android/api/util/GrantType;

.field public static final enum SINA:Lcom/zhihu/android/api/util/GrantType;

.field public static final enum WECHAT:Lcom/zhihu/android/api/util/GrantType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/zhihu/android/api/util/GrantType;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/zhihu/android/api/util/GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->PASSWORD:Lcom/zhihu/android/api/util/GrantType;

    .line 26
    new-instance v0, Lcom/zhihu/android/api/util/GrantType;

    const-string v1, "DIGITS"

    invoke-direct {v0, v1, v4}, Lcom/zhihu/android/api/util/GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->DIGITS:Lcom/zhihu/android/api/util/GrantType;

    .line 28
    new-instance v0, Lcom/zhihu/android/api/util/GrantType;

    const-string v1, "REFRESH_TOKEN"

    invoke-direct {v0, v1, v5}, Lcom/zhihu/android/api/util/GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->REFRESH_TOKEN:Lcom/zhihu/android/api/util/GrantType;

    .line 30
    new-instance v0, Lcom/zhihu/android/api/util/GrantType;

    const-string v1, "SINA"

    invoke-direct {v0, v1, v6}, Lcom/zhihu/android/api/util/GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->SINA:Lcom/zhihu/android/api/util/GrantType;

    .line 32
    new-instance v0, Lcom/zhihu/android/api/util/GrantType;

    const-string v1, "QQCONN"

    invoke-direct {v0, v1, v7}, Lcom/zhihu/android/api/util/GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->QQCONN:Lcom/zhihu/android/api/util/GrantType;

    .line 34
    new-instance v0, Lcom/zhihu/android/api/util/GrantType;

    const-string v1, "WECHAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/api/util/GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->WECHAT:Lcom/zhihu/android/api/util/GrantType;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zhihu/android/api/util/GrantType;

    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->PASSWORD:Lcom/zhihu/android/api/util/GrantType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->DIGITS:Lcom/zhihu/android/api/util/GrantType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->REFRESH_TOKEN:Lcom/zhihu/android/api/util/GrantType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->SINA:Lcom/zhihu/android/api/util/GrantType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zhihu/android/api/util/GrantType;->QQCONN:Lcom/zhihu/android/api/util/GrantType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zhihu/android/api/util/GrantType;->WECHAT:Lcom/zhihu/android/api/util/GrantType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhihu/android/api/util/GrantType;->$VALUES:[Lcom/zhihu/android/api/util/GrantType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhihu/android/api/util/GrantType;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/zhihu/android/api/util/GrantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/util/GrantType;

    return-object v0
.end method

.method public static values()[Lcom/zhihu/android/api/util/GrantType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->$VALUES:[Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v0}, [Lcom/zhihu/android/api/util/GrantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/api/util/GrantType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
