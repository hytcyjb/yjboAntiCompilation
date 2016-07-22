.class public final enum Lorg/simple/eventbus/ThreadMode;
.super Ljava/lang/Enum;
.source "ThreadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simple/eventbus/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASYNC:Lorg/simple/eventbus/ThreadMode;

.field private static final synthetic ENUM$VALUES:[Lorg/simple/eventbus/ThreadMode;

.field public static final enum MAIN:Lorg/simple/eventbus/ThreadMode;

.field public static final enum POST:Lorg/simple/eventbus/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/simple/eventbus/ThreadMode;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lorg/simple/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lorg/simple/eventbus/ThreadMode;->MAIN:Lorg/simple/eventbus/ThreadMode;

    .line 29
    new-instance v0, Lorg/simple/eventbus/ThreadMode;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lorg/simple/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lorg/simple/eventbus/ThreadMode;->POST:Lorg/simple/eventbus/ThreadMode;

    .line 33
    new-instance v0, Lorg/simple/eventbus/ThreadMode;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v4}, Lorg/simple/eventbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lorg/simple/eventbus/ThreadMode;->ASYNC:Lorg/simple/eventbus/ThreadMode;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/simple/eventbus/ThreadMode;

    sget-object v1, Lorg/simple/eventbus/ThreadMode;->MAIN:Lorg/simple/eventbus/ThreadMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/simple/eventbus/ThreadMode;->POST:Lorg/simple/eventbus/ThreadMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/simple/eventbus/ThreadMode;->ASYNC:Lorg/simple/eventbus/ThreadMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/simple/eventbus/ThreadMode;->ENUM$VALUES:[Lorg/simple/eventbus/ThreadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simple/eventbus/ThreadMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/simple/eventbus/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simple/eventbus/ThreadMode;

    return-object v0
.end method

.method public static values()[Lorg/simple/eventbus/ThreadMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/simple/eventbus/ThreadMode;->ENUM$VALUES:[Lorg/simple/eventbus/ThreadMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/simple/eventbus/ThreadMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
