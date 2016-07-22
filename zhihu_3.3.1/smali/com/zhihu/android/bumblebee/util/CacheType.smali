.class public final enum Lcom/zhihu/android/bumblebee/util/CacheType;
.super Ljava/lang/Enum;
.source "CacheType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhihu/android/bumblebee/util/CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum ALWAYS:Lcom/zhihu/android/bumblebee/util/CacheType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum CACHE_ELSE_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum CACHE_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum IF_EXPIRED:Lcom/zhihu/android/bumblebee/util/CacheType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IGNORE_CACHE:Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum NETWORK_ELSE_CACHE:Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;

.field public static final enum NEVER:Lcom/zhihu/android/bumblebee/util/CacheType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v3}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->NEVER:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 25
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v4}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->ALWAYS:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 27
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "IF_EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->IF_EXPIRED:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 29
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "IGNORE_CACHE"

    invoke-direct {v0, v1, v6}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->IGNORE_CACHE:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 31
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "CACHE_ONLY"

    invoke-direct {v0, v1, v7}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 33
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "NETWORK_ONLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 35
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "CACHE_ELSE_NETWORK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_ELSE_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 37
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "NETWORK_ELSE_CACHE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ELSE_CACHE:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 39
    new-instance v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    const-string v1, "CACHE_THEN_NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/bumblebee/util/CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/zhihu/android/bumblebee/util/CacheType;

    sget-object v1, Lcom/zhihu/android/bumblebee/util/CacheType;->NEVER:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhihu/android/bumblebee/util/CacheType;->ALWAYS:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zhihu/android/bumblebee/util/CacheType;->IF_EXPIRED:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zhihu/android/bumblebee/util/CacheType;->IGNORE_CACHE:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ONLY:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_ELSE_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zhihu/android/bumblebee/util/CacheType;->NETWORK_ELSE_CACHE:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/zhihu/android/bumblebee/util/CacheType;->CACHE_THEN_NETWORK:Lcom/zhihu/android/bumblebee/util/CacheType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->$VALUES:[Lcom/zhihu/android/bumblebee/util/CacheType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhihu/android/bumblebee/util/CacheType;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/util/CacheType;

    return-object v0
.end method

.method public static values()[Lcom/zhihu/android/bumblebee/util/CacheType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zhihu/android/bumblebee/util/CacheType;->$VALUES:[Lcom/zhihu/android/bumblebee/util/CacheType;

    invoke-virtual {v0}, [Lcom/zhihu/android/bumblebee/util/CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/bumblebee/util/CacheType;

    return-object v0
.end method
