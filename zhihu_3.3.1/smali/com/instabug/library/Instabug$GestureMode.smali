.class public final enum Lcom/instabug/library/Instabug$GestureMode;
.super Ljava/lang/Enum;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/Instabug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instabug/library/Instabug$GestureMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/Instabug$GestureMode;

.field public static final enum NONE:Lcom/instabug/library/Instabug$GestureMode;

.field public static final enum TwoFingersSwipeLeft:Lcom/instabug/library/Instabug$GestureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/instabug/library/Instabug$GestureMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/Instabug$GestureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$GestureMode;->NONE:Lcom/instabug/library/Instabug$GestureMode;

    .line 66
    new-instance v0, Lcom/instabug/library/Instabug$GestureMode;

    const-string v1, "TwoFingersSwipeLeft"

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/Instabug$GestureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$GestureMode;->TwoFingersSwipeLeft:Lcom/instabug/library/Instabug$GestureMode;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instabug/library/Instabug$GestureMode;

    sget-object v1, Lcom/instabug/library/Instabug$GestureMode;->NONE:Lcom/instabug/library/Instabug$GestureMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instabug/library/Instabug$GestureMode;->TwoFingersSwipeLeft:Lcom/instabug/library/Instabug$GestureMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instabug/library/Instabug$GestureMode;->$VALUES:[Lcom/instabug/library/Instabug$GestureMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/Instabug$GestureMode;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/instabug/library/Instabug$GestureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/Instabug$GestureMode;

    return-object v0
.end method

.method public static values()[Lcom/instabug/library/Instabug$GestureMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/instabug/library/Instabug$GestureMode;->$VALUES:[Lcom/instabug/library/Instabug$GestureMode;

    invoke-virtual {v0}, [Lcom/instabug/library/Instabug$GestureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/Instabug$GestureMode;

    return-object v0
.end method
