.class public final enum Lcom/instabug/library/Instabug$IBGInvocationEvent;
.super Ljava/lang/Enum;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/Instabug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IBGInvocationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instabug/library/Instabug$IBGInvocationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/Instabug$IBGInvocationEvent;

.field public static final enum IBGInvocationEventFloatingButton:Lcom/instabug/library/Instabug$IBGInvocationEvent;

.field public static final enum IBGInvocationEventNone:Lcom/instabug/library/Instabug$IBGInvocationEvent;

.field public static final enum IBGInvocationEventShake:Lcom/instabug/library/Instabug$IBGInvocationEvent;

.field public static final enum IBGInvocationEventTwoFingersSwipeLeft:Lcom/instabug/library/Instabug$IBGInvocationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;

    const-string v1, "IBGInvocationEventNone"

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/Instabug$IBGInvocationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventNone:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    new-instance v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;

    const-string v1, "IBGInvocationEventShake"

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/Instabug$IBGInvocationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventShake:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    new-instance v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;

    const-string v1, "IBGInvocationEventTwoFingersSwipeLeft"

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/Instabug$IBGInvocationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventTwoFingersSwipeLeft:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    new-instance v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;

    const-string v1, "IBGInvocationEventFloatingButton"

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/Instabug$IBGInvocationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventFloatingButton:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instabug/library/Instabug$IBGInvocationEvent;

    sget-object v1, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventNone:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventShake:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventTwoFingersSwipeLeft:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instabug/library/Instabug$IBGInvocationEvent;->IBGInvocationEventFloatingButton:Lcom/instabug/library/Instabug$IBGInvocationEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;->$VALUES:[Lcom/instabug/library/Instabug$IBGInvocationEvent;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/Instabug$IBGInvocationEvent;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;

    return-object v0
.end method

.method public static values()[Lcom/instabug/library/Instabug$IBGInvocationEvent;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/instabug/library/Instabug$IBGInvocationEvent;->$VALUES:[Lcom/instabug/library/Instabug$IBGInvocationEvent;

    invoke-virtual {v0}, [Lcom/instabug/library/Instabug$IBGInvocationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/Instabug$IBGInvocationEvent;

    return-object v0
.end method
