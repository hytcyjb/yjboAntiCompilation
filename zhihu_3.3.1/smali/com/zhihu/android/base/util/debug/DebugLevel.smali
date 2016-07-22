.class public final enum Lcom/zhihu/android/base/util/debug/DebugLevel;
.super Ljava/lang/Enum;
.source "DebugLevel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhihu/android/base/util/debug/DebugLevel;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/zhihu/android/base/util/debug/DebugLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static ALL:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static final enum DEBUG:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static final enum ERROR:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static final enum INFO:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static final enum NONE:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static final enum VERBOSE:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field public static final enum WARNING:Lcom/zhihu/android/base/util/debug/DebugLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/zhihu/android/base/util/debug/DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->NONE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    new-instance v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/zhihu/android/base/util/debug/DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->ERROR:Lcom/zhihu/android/base/util/debug/DebugLevel;

    new-instance v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v5}, Lcom/zhihu/android/base/util/debug/DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->WARNING:Lcom/zhihu/android/base/util/debug/DebugLevel;

    new-instance v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v6}, Lcom/zhihu/android/base/util/debug/DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->INFO:Lcom/zhihu/android/base/util/debug/DebugLevel;

    new-instance v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v7}, Lcom/zhihu/android/base/util/debug/DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->DEBUG:Lcom/zhihu/android/base/util/debug/DebugLevel;

    new-instance v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/base/util/debug/DebugLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->VERBOSE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zhihu/android/base/util/debug/DebugLevel;

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->NONE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->ERROR:Lcom/zhihu/android/base/util/debug/DebugLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->WARNING:Lcom/zhihu/android/base/util/debug/DebugLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->INFO:Lcom/zhihu/android/base/util/debug/DebugLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->DEBUG:Lcom/zhihu/android/base/util/debug/DebugLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zhihu/android/base/util/debug/DebugLevel;->VERBOSE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->$VALUES:[Lcom/zhihu/android/base/util/debug/DebugLevel;

    .line 24
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->VERBOSE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    sput-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->ALL:Lcom/zhihu/android/base/util/debug/DebugLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zhihu/android/base/util/debug/DebugLevel;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/base/util/debug/DebugLevel;

    return-object v0
.end method

.method public static values()[Lcom/zhihu/android/base/util/debug/DebugLevel;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->$VALUES:[Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-virtual {v0}, [Lcom/zhihu/android/base/util/debug/DebugLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/base/util/debug/DebugLevel;

    return-object v0
.end method


# virtual methods
.method public isSameOrLessThan(Lcom/zhihu/android/base/util/debug/DebugLevel;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/zhihu/android/base/util/debug/DebugLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
