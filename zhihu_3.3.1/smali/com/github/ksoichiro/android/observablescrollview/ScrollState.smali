.class public final enum Lcom/github/ksoichiro/android/observablescrollview/ScrollState;
.super Ljava/lang/Enum;
.source "ScrollState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/ksoichiro/android/observablescrollview/ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

.field public static final enum DOWN:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

.field public static final enum STOP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

.field public static final enum UP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->STOP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    .line 32
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->UP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    .line 37
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->DOWN:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    sget-object v1, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->STOP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->UP:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->DOWN:Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->$VALUES:[Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/ksoichiro/android/observablescrollview/ScrollState;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    return-object v0
.end method

.method public static values()[Lcom/github/ksoichiro/android/observablescrollview/ScrollState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->$VALUES:[Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    invoke-virtual {v0}, [Lcom/github/ksoichiro/android/observablescrollview/ScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/ksoichiro/android/observablescrollview/ScrollState;

    return-object v0
.end method
